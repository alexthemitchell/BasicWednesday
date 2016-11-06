#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *yearField;

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation ViewController
- (IBAction)didTapButton:(id)sender {
  _outputLabel.text = [self firstName:_firstNameField.text lastName:_lastNameField.text year:_yearField.text];
}

- (NSString *)firstName:(NSString *)fn lastName:(NSString *)ln year:(NSString *)year {
  return [NSString stringWithFormat:@"%@ %@ %@", fn, ln, [NSString stringWithFormat:@"'%@",[year substringFromIndex:2]]];
  
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
