#!/bin/bash
# Author lushuliang
# Ver 0.1
    
    _title=$KMPARAM_Title
	_subtitle=$KMPARAM_Subtitle
	_message=$KMPARAM_Message
	_messageAction=$KMPARAM_MessageAction
	_messageButton=$KMPARAM_MessageButton
	_messageButtonAction=$KMPARAM_MessageButtonAction
	_type=$KMPARAM_Type
	_sound=$KMPARAM_Sound
	_exe=/Applications/Utilities/Notifier.app/Contents/MacOS/Notifier

_typeStr="--type ${_type}"

_titleStr=""
if [ -n "$_title" ];then
	_titleStr="--title ${_title}"
fi

_subtitleStr=""
if [ -n "$_subtitle" ];then
	_subtitleStr="--subtitle ${_subtitle}" 
fi

_messageStr=""
if [ -n "$_message" ];then
	_messageStr="--message ${_message}" 
fi

_messageActionStr=""
if [ -n "$_messageAction" ];then
	_messageActionStr="--messageaction ${_messageAction}"
fi

_messageButtonStr=""
if [ -n "$_messageButton" ];then
	_messageButtonStr="--messagebutton ${_messageButton}"
fi

_messageButtonActionStr=""
if [ -n "$_messageButtonAction" ];then
	_messageButtonActionStr="--messagebuttonaction ${_messageButtonAction}"
fi


$_exe $_typeStr $_messageStr $_messageActionStr $_messageButtonStr $_messageButtonActionStr $_titleStr $_subtitleStr


