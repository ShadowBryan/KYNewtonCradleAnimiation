//
// UntitledView.m
// Generated by Core Animator version 1.0 on 2/23/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

#import "UntitledView.h"

@interface UntitledView ()
@property (strong, nonatomic) NSMapTable *completionBlocksByAnimation;
@end

@implementation UntitledView

#pragma mark - Life Cycle

- (instancetype)init
{
	return [self initWithFrame:CGRectMake(0,0,1136,768)];
}

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self)
	{
		[self setupHierarchy];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self)
	{
		[self setupHierarchy];
	}
	return self;
}

#pragma mark - Scaling

- (void)layoutSubviews
{
	[super layoutSubviews];

	UIView *scalingView = self.viewsByName[@"__scaling__"];
	float xScale = self.bounds.size.width / scalingView.bounds.size.width;
	float yScale = self.bounds.size.height / scalingView.bounds.size.height;
	switch (self.contentMode) {
		case UIViewContentModeScaleToFill:
			break;
		case UIViewContentModeScaleAspectFill:
		{
			float scale = MAX(xScale, yScale);
			xScale = scale;
			yScale = scale;
			break;
		}
		default:
		{
			float scale = MIN(xScale, yScale);
			xScale = scale;
			yScale = scale;
			break;
		}
	}
	scalingView.transform = CGAffineTransformMakeScale(xScale, yScale);
	scalingView.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
}

#pragma mark - Setup

- (void)setupHierarchy
{
	self.completionBlocksByAnimation = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];
	NSMutableDictionary *viewsByName = [NSMutableDictionary dictionary];
	NSBundle *bundle = [NSBundle bundleForClass:[self class]];

	UIView *__scaling__ = [UIView new];
	__scaling__.bounds = CGRectMake(0, 0, 1136, 768);
	__scaling__.center = CGPointMake(568.0, 384.0);
	[self addSubview:__scaling__];
	viewsByName[@"__scaling__"] = __scaling__;

	UIImageView *newtonBall2 = [UIImageView new];
	newtonBall2.bounds = CGRectMake(0, 0, 40.0, 40.0);
	UIImage *imgNewtonBall2 = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"Newton_ball 2.jpg" ofType:nil]];
	newtonBall2.image = imgNewtonBall2;
	newtonBall2.contentMode = UIViewContentModeCenter;
	newtonBall2.layer.position = CGPointMake(568.000, 384.000);
	[__scaling__ addSubview:newtonBall2];
	viewsByName[@"Newton_ball 2"] = newtonBall2;

	UIImageView *newtonBall3 = [UIImageView new];
	newtonBall3.bounds = CGRectMake(0, 0, 40.0, 40.0);
	newtonBall3.layer.anchorPoint = CGPointMake(-0.500, 0.494);
	UIImage *imgNewtonBall3 = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"Newton_ball 3.jpg" ofType:nil]];
	newtonBall3.image = imgNewtonBall3;
	newtonBall3.contentMode = UIViewContentModeCenter;
	newtonBall3.layer.position = CGPointMake(568.158, 383.752);
	[__scaling__ addSubview:newtonBall3];
	viewsByName[@"Newton_ball 3"] = newtonBall3;

	UIImageView *newtonBall = [UIImageView new];
	newtonBall.bounds = CGRectMake(0, 0, 40.0, 40.0);
	newtonBall.layer.anchorPoint = CGPointMake(1.501, 0.507);
	UIImage *imgNewtonBall = [UIImage imageWithContentsOfFile:[bundle pathForResource:@"Newton_ball.jpg" ofType:nil]];
	newtonBall.image = imgNewtonBall;
	newtonBall.contentMode = UIViewContentModeCenter;
	newtonBall.layer.position = CGPointMake(567.737, 384.297);
	[__scaling__ addSubview:newtonBall];
	viewsByName[@"Newton_ball"] = newtonBall;

	self.viewsByName = viewsByName;
}

#pragma mark - Untitled Animation

- (void)addUntitledAnimation
{
	[self addUntitledAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:NULL];
}

- (void)addUntitledAnimationWithCompletion:(void (^)(BOOL finished))completionBlock
{
	[self addUntitledAnimationWithBeginTime:0 andFillMode:kCAFillModeBoth andRemoveOnCompletion:NO completion:completionBlock];
}

- (void)addUntitledAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion
{
	[self addUntitledAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:NULL];
}

- (void)addUntitledAnimationAndRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	[self addUntitledAnimationWithBeginTime:0 andFillMode:removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth andRemoveOnCompletion:removedOnCompletion completion:completionBlock];
}

- (void)addUntitledAnimationWithBeginTime:(CFTimeInterval)beginTime andFillMode:(NSString *)fillMode andRemoveOnCompletion:(BOOL)removedOnCompletion completion:(void (^)(BOOL finished))completionBlock
{
	CAMediaTimingFunction *linearTiming = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];

	if (completionBlock)
	{
		CABasicAnimation *representativeAnimation = [CABasicAnimation animationWithKeyPath:@"not.a.real.key"];
		representativeAnimation.duration = 3.000;
		representativeAnimation.delegate = self;
		[self.layer addAnimation:representativeAnimation forKey:@"UntitledAnimation"];
		[self.completionBlocksByAnimation setObject:completionBlock forKey:[self.layer animationForKey:@"UntitledAnimation"]];
	}

	CAKeyframeAnimation *newtonBallRotationAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
	newtonBallRotationAnimation.duration = 3.000;
	newtonBallRotationAnimation.values = @[@(0.000), @(-3.142)];
	newtonBallRotationAnimation.keyTimes = @[@(0.000), @(1.000)];
	newtonBallRotationAnimation.timingFunctions = @[linearTiming];
	newtonBallRotationAnimation.beginTime = beginTime;
	newtonBallRotationAnimation.fillMode = fillMode;
	newtonBallRotationAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"Newton_ball"] layer] addAnimation:newtonBallRotationAnimation forKey:@"Untitled Animation_Rotation"];

	CAKeyframeAnimation *newtonBall3RotationAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation.z"];
	newtonBall3RotationAnimation.duration = 3.000;
	newtonBall3RotationAnimation.values = @[@(0.000), @(-3.142)];
	newtonBall3RotationAnimation.keyTimes = @[@(0.000), @(1.000)];
	newtonBall3RotationAnimation.timingFunctions = @[linearTiming];
	newtonBall3RotationAnimation.beginTime = beginTime;
	newtonBall3RotationAnimation.fillMode = fillMode;
	newtonBall3RotationAnimation.removedOnCompletion = removedOnCompletion;
	[[self.viewsByName[@"Newton_ball 3"] layer] addAnimation:newtonBall3RotationAnimation forKey:@"Untitled Animation_Rotation"];
}

- (void)removeUntitledAnimation
{
	[self.layer removeAnimationForKey:@"UntitledAnimation"];
	[[self.viewsByName[@"Newton_ball"] layer] removeAnimationForKey:@"Untitled Animation_Rotation"];
	[[self.viewsByName[@"Newton_ball 3"] layer] removeAnimationForKey:@"Untitled Animation_Rotation"];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
	void (^completion)(BOOL) = [self.completionBlocksByAnimation objectForKey:anim];
	[self.completionBlocksByAnimation removeObjectForKey:anim];
	if (completion)
	{
		completion(flag);
	}
}

- (void)removeAllAnimations
{
	for (UIView *view in self.viewsByName.allValues)
	{
		[view.layer removeAllAnimations];
	}
	[self.layer removeAnimationForKey:@"UntitledAnimation"];
}

@end