export interface SMSPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
