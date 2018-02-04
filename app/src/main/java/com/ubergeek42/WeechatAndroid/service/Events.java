/**
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 */

package com.ubergeek42.WeechatAndroid.service;

import com.ubergeek42.WeechatAndroid.service.RelayService.STATE;

import java.util.EnumSet;

public class Events {

    public static class StateChangedEvent {
        final public EnumSet<STATE> state;

        public StateChangedEvent(EnumSet<STATE> state) {
            this.state = state;
        }

        @Override public String toString() {
            return StateChangedEvent.class.getSimpleName() + ": state = " + state;
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////

    public static class ExceptionEvent {
        final public Exception e;

        public ExceptionEvent(Exception e) {
            this.e = e;
        }

        @Override public String toString() {
            return ExceptionEvent.class.getSimpleName() + ": e = " + e.getClass().getSimpleName();
        }
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////

    public static class SendMessageEvent {
        final public String message;

        public SendMessageEvent(String message) {
            this.message = message;
        }

        @Override public String toString() {
            return SendMessageEvent.class.getSimpleName() + ": message = " + message;
        }
    }
}
