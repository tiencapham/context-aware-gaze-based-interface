
"use strict";

let HeadPoseSrv = require('./HeadPoseSrv.js')
let EmotionSrv = require('./EmotionSrv.js')
let ReidentificationSrv = require('./ReidentificationSrv.js')
let PeopleSrv = require('./PeopleSrv.js')
let ObjectsInMasksSrv = require('./ObjectsInMasksSrv.js')
let AgeGenderSrv = require('./AgeGenderSrv.js')

module.exports = {
  HeadPoseSrv: HeadPoseSrv,
  EmotionSrv: EmotionSrv,
  ReidentificationSrv: ReidentificationSrv,
  PeopleSrv: PeopleSrv,
  ObjectsInMasksSrv: ObjectsInMasksSrv,
  AgeGenderSrv: AgeGenderSrv,
};
