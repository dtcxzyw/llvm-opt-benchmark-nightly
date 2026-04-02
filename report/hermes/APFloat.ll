begin_hunk_0
@_ZN4llvhL8semBogusE = internal constant %"struct.llvh::fltSemantics" zeroinitializer, align 4
@_ZN4llvhL18semPPCDoubleDoubleE = internal constant %"struct.llvh::fltSemantics" { i16 -1, i16 0, i32 0, i32 0 }, align 4
@__const._ZN4llvh6detail9IEEEFloat28roundSignificandWithExponentEPKmjiNS_11APFloatBase12roundingModeE.calcSemantics = private unnamed_addr constant %"struct.llvh::fltSemantics" { i16 32767, i16 -32767, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"INFINITY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-INFINITY\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-nan\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-NaN\00", align 1
@_ZN4llvhL4NaNUE = internal unnamed_addr constant [4 x i8] c"NAN\00", align 1
@_ZN4llvhL4NaNLE = internal unnamed_addr constant [4 x i8] c"nan\00", align 1
@_ZN4llvhL14hexDigitsUpperE = internal unnamed_addr constant [18 x i8] c"0123456789ABCDEF0\00", align 16
end_hunk_0
begin_hunk_1
  ]

_ZNK4llvh9StringRef6equalsES0_.exit10:            ; preds = %bb.a
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @.str, i64 3)
  %i.a = icmp eq i32 %bcmp, 0
  br i1 %i.a, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit4

_ZNK4llvh9StringRef6equalsES0_.exit9:             ; preds = %bb.a
  %bcmp87 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @.str.1, i64 8)
  %i.b = icmp eq i32 %bcmp87, 0
  br i1 %i.b, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit8:             ; preds = %bb.a
  %bcmp88 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.2, i64 4)
  %i.c = icmp eq i32 %bcmp88, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit10.thread67, label %_ZNK4llvh9StringRef6equalsES0_.exit7

_ZNK4llvh9StringRef6equalsES0_.exit10.thread67:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit8, %_ZNK4llvh9StringRef6equalsES0_.exit9, %_ZNK4llvh9StringRef6equalsES0_.exit10
end_hunk_1
begin_hunk_2
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit7:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit8
  %bcmp89 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.3, i64 4)
  %i.s = icmp eq i32 %bcmp89, 0
  br i1 %i.s, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit5

_ZNK4llvh9StringRef6equalsES0_.exit6:             ; preds = %bb.a
  %bcmp90 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %1, ptr noundef nonnull dereferenceable(9) @.str.4, i64 9)
  %i.t = icmp eq i32 %bcmp90, 0
  br i1 %i.t, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit5:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit7
  %bcmp91 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %i.u = icmp eq i32 %bcmp91, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit7.thread73, label %_ZNK4llvh9StringRef6equalsES0_.exit2

_ZNK4llvh9StringRef6equalsES0_.exit7.thread73:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit5, %_ZNK4llvh9StringRef6equalsES0_.exit6, %_ZNK4llvh9StringRef6equalsES0_.exit7
end_hunk_2
begin_hunk_3
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit4:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit10
  %bcmp92 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @_ZN4llvhL4NaNLE, i64 3)
  %i.al = icmp eq i32 %bcmp92, 0
  br i1 %i.al, label %_ZNK4llvh9StringRef6equalsES0_.exit4.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit3

_ZNK4llvh9StringRef6equalsES0_.exit3:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit4
  %bcmp93 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @.str.7, i64 3)
  %i.am = icmp eq i32 %bcmp93, 0
  br i1 %i.am, label %_ZNK4llvh9StringRef6equalsES0_.exit4.thread79, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit4.thread79:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit3, %_ZNK4llvh9StringRef6equalsES0_.exit4
end_hunk_3
begin_hunk_4
  br label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit2:             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit5
  %bcmp94 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.8, i64 4)
  %i.an = icmp eq i32 %bcmp94, 0
  br i1 %i.an, label %_ZNK4llvh9StringRef6equalsES0_.exit2.thread83, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit2
  %bcmp95 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %1, ptr noundef nonnull dereferenceable(4) @.str.9, i64 4)
  %i.ao = icmp eq i32 %bcmp95, 0
  br i1 %i.ao, label %_ZNK4llvh9StringRef6equalsES0_.exit2.thread83, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit2.thread83:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit2
end_hunk_4
