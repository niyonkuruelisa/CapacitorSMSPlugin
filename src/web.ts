import { WebPlugin } from '@capacitor/core';

import type { SMSPlugin } from './definitions';

export class SMSWeb extends WebPlugin implements SMSPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
