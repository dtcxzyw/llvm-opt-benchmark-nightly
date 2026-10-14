Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_noise?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"noise\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Add noise.\00", align 1
@noise_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_vf_noise = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @noise_inputs, ptr @ff_video_default_filterpad, ptr @noise_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 459984, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@noise_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @noise_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"all_seed\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"set component #0 noise seed\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"all_strength\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"set component #0 strength\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"alls\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"all_flags\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"set component #0 flags\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"allf\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"c0_seed\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"c0_strength\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"c0s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"c0_flags\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"c0f\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"c1_seed\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"set component #1 noise seed\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"c1_strength\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"set component #1 strength\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"c1s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"c1_flags\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"set component #1 flags\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"c1f\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"c2_seed\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"set component #2 noise seed\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"c2_strength\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"set component #2 strength\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"c2s\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"c2_flags\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"set component #2 flags\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"c2f\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"c3_seed\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"set component #3 noise seed\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"c3_strength\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"set component #3 strength\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"c3s\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"c3_flags\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"set component #3 flags\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"c3f\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"averaged noise\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"(semi)regular pattern\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"temporal noise\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"uniform noise\00", align 1
@noise_options = internal constant [30 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 48, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 52, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.7, i32 52, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 56, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.10, i32 56, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.5, i32 332, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.7, i32 64, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.7, i32 64, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.10, i32 68, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.10, i32 68, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 115308, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 115040, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.21, i32 115040, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 115044, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.24, i32 115044, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 230284, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 230016, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.29, i32 230016, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 230020, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.32, i32 230020, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.34, ptr @.str.35, i32 345260, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.36, ptr @.str.37, i32 344992, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr @.str.37, i32 344992, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr @.str.40, i32 344996, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.40, i32 344996, i32 1, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.100000e+01, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 0, i32 11, %union.anon.2 { i64 8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.44, ptr @.str.45, i32 0, i32 11, %union.anon.2 { i64 16 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.49, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr @.str.11 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@patt = internal unnamed_addr constant [4 x i8] c"\FF\00\01\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_line_noise_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = sext i32 %4 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 5 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.g = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.g, -16
  %i.h = add i64 %i.c, %i.d
  %i.i = sub i64 %i.h, %i.b
  %diff.check14 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check14
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i32 %3, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !tbaa !9
  %i.l = zext <16 x i8> %wide.load to <16 x i32>
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.m, align 1, !tbaa !9
  %i.n = sext <16 x i8> %wide.load16 to <16 x i32>
  %i.o = add nsw <16 x i32> %i.n, %i.l
  %i.p = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.o, <16 x i32> zeroinitializer)
  %i.q = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.p, <16 x i32> splat (i32 255))
  %i.r = trunc nuw <16 x i32> %i.q to <16 x i8>
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.r, ptr %i.s, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index18
  %wide.load19 = load <4 x i8>, ptr %i.u, align 1, !tbaa !9
  %i.v = zext <4 x i8> %wide.load19 to <4 x i32>
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %index18
  %wide.load20 = load <4 x i8>, ptr %i.w, align 1, !tbaa !9
  %i.x = sext <4 x i8> %wide.load20 to <4 x i32>
  %i.y = add nsw <4 x i32> %i.x, %i.v
  %i.z = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.y, <4 x i32> zeroinitializer)
  %i.aa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.z, <4 x i32> splat (i32 255))
  %i.ab = trunc nuw <4 x i32> %i.aa to <4 x i8>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index18
  store <4 x i8> %i.ab, ptr %i.ac, align 1, !tbaa !9
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %n.vec17, %wide.trip.count
  br i1 %cmp.n22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.ph
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, %i.ag
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  %.0.i11.prol = tail call i32 @llvm.umin.i32(i32 %i.al, i32 255)
  %.0.i.prol = trunc nuw i32 %.0.i11.prol to i8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %.0.i.prol, ptr %i.am, align 1, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = add nsw i64 %wide.trip.count, -1
  %i.ao = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %.0.i11 = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 255)
  %.0.i = trunc nuw i32 %.0.i11 to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %.0.i, ptr %i.ax, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.ba
  %i.bf = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.0.i11.1 = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 255)
  %.0.i.1 = trunc nuw i32 %.0.i11.1 to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %.0.i.1, ptr %i.bg, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_line_noise_avg_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = sext i8 %i.f to i16
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = sext i8 %i.j to i16
  %i.l = add nsw i16 %i.k, %i.g
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = sext i8 %i.o to i16
  %i.q = add nsw i16 %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9     ; 2 uses
  %i.t = sext i8 %i.s to i16
  %i.u = mul i16 %i.q, %i.t
  %i.v = lshr i16 %i.u, 7
  %i.w = trunc i16 %i.v to i8
  %i.x = add i8 %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @init(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63   ; 2 uses
  %.not31 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %.not32 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %. = select i1 %i.e, i32 %i.d, i32 123457
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
end_hunk_0
