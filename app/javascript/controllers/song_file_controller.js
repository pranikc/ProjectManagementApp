import { Controller } from 'stimulus'
import WaveSurfer from 'wavesurfer'

export default class extends Controller {
  static targets = ['player', 'play', 'pause']
  initialize() {}
  connect() {
    this.wave()
  }
  disconnect() {}

  wave(){
    if (this._wave == undefined) {
      this._wave = WaveSurfer.create({
        container: this.playerTarget,
        backend: 'MediaElement',
        waveColor: 'violet',
        progressColor: 'purple'
      })
      this._wave.load(this.data.get('url'))
      var _this = this
      // var that = this
      _this.pauseTarget.style.display = 'none'
      this._wave.on('pause', function () {
        _this.playTarget.style.display = 'block'
        _this.pauseTarget.style.display = 'none'
      })
      this._wave.on('play', function () {
        _this.playTarget.style.display = 'none'
        _this.pauseTarget.style.display = 'block'
      })
    }
    return this._wave
  }

  play(){
    this.wave().play()
  }

  pause(){
    this.wave().pause()
  }
} 