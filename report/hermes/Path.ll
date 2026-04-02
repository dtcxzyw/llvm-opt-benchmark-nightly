begin_hunk_0
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-%%%%%%\00", align 1
@_ZN4llvh3sys2fs12kInvalidFileE = hidden local_unnamed_addr constant i32 -1, align 4
end_hunk_0
begin_hunk_1
  br i1 %i.i, label %.loopexit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit15:            ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit
  %4 = load i16, ptr %.sroa.3.0.copyload.i, align 1
  %5 = icmp ne i16 %4, 11822
  %6 = zext i1 %5 to i32
  %i.j = icmp eq i32 %6, 0
  br i1 %i.j, label %.loopexit, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit15
end_hunk_1
begin_hunk_2
  br i1 %i.j, label %.loopexit, label %.thread

_ZNK4llvh9StringRef6equalsES0_.exit11:            ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit
  %4 = load i16, ptr %.sroa.3.0.copyload.i, align 1
  %5 = icmp ne i16 %4, 11822
  %6 = zext i1 %5 to i32
  %i.k = icmp eq i32 %6, 0
  br i1 %i.k, label %.loopexit, label %.thread

.thread:                                          ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit11
end_hunk_2
begin_hunk_3
  br i1 %i.ae, label %_ZN4llvh3sys4path4stemENS_9StringRefENS1_5StyleE.exit, label %.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit15.i:          ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
  %4 = load i16, ptr %.sroa.3.0.copyload.i.i, align 1
  %5 = icmp ne i16 %4, 11822
  %6 = zext i1 %5 to i32
  %i.af = icmp eq i32 %6, 0
  br i1 %i.af, label %_ZN4llvh3sys4path4stemENS_9StringRefENS1_5StyleE.exit, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit15.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
end_hunk_3
begin_hunk_4
  br i1 %i.ae, label %_ZN4llvh3sys4path9extensionENS_9StringRefENS1_5StyleE.exit, label %.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit11.i:          ; preds = %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
  %4 = load i16, ptr %.sroa.3.0.copyload.i.i, align 1
  %5 = icmp ne i16 %4, 11822
  %6 = zext i1 %5 to i32
  %i.af = icmp eq i32 %6, 0
  br i1 %i.af, label %_ZN4llvh3sys4path9extensionENS_9StringRefENS1_5StyleE.exit, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit11.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef12find_last_ofEcm.exit.i
end_hunk_4
begin_hunk_5
  br i1 %i.bv, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread79.i, label %_ZNK4llvh9StringRef6equalsES0_.exit32.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit32.i:          ; preds = %.lr.ph.split.i
  %14 = load i16, ptr %.sroa.041.0.copyload.i, align 1
  %15 = icmp ne i16 %14, 11822
  %16 = zext i1 %15 to i32
  %i.bw = icmp eq i32 %16, 0
  br i1 %i.bw, label %_ZNK4llvh9StringRef6equalsES0_.exit32.thread81.i, label %_ZNK4llvh9StringRef6equalsES0_.exit32.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit32.thread81.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit32.i
end_hunk_5
begin_hunk_6
_ZNK4llvh9StringRef6equalsES0_.exit35.i:          ; preds = %bb.l
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -16
  %.sroa.09.0.copyload.i = load ptr, ptr %i.cc, align 8, !tbaa !7, !noalias !99
  %17 = load i16, ptr %.sroa.09.0.copyload.i, align 1
  %18 = icmp ne i16 %17, 11822
  %19 = zext i1 %18 to i32
  %.not87.i = icmp eq i32 %19, 0
  br i1 %.not87.i, label %_ZNK4llvh9StringRef6equalsES0_.exit35.thread83.i, label %_ZNK4llvh9StringRef6equalsES0_.exit35.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit35.thread.i:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit35.i, %bb.l
end_hunk_6
