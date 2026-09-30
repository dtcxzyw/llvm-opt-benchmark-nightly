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
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = sext i32 %4 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 5 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.g = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.g, -16
  %i.h = add i64 %i.a, %i.d
  %i.i = sub i64 %i.h, %i.c
  %diff.check13 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i32 %3, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

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
  %wide.load15 = load <16 x i8>, ptr %i.m, align 1, !tbaa !9
  %i.n = sext <16 x i8> %wide.load15 to <16 x i32>
  %i.o = add nsw <16 x i32> %i.n, %i.l
  %5 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.o, <16 x i32> zeroinitializer)
  %6 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %5, <16 x i32> splat (i32 255))
  %i.p = trunc nuw <16 x i32> %6 to <16 x i8>
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.p, ptr %i.q, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index17
  %wide.load18 = load <4 x i8>, ptr %i.s, align 1, !tbaa !9
  %i.t = zext <4 x i8> %wide.load18 to <4 x i32>
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %index17
  %wide.load19 = load <4 x i8>, ptr %i.u, align 1, !tbaa !9
  %i.v = sext <4 x i8> %wide.load19 to <4 x i32>
  %i.w = add nsw <4 x i32> %i.v, %i.t
  %7 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.w, <4 x i32> zeroinitializer)
  %8 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %7, <4 x i32> splat (i32 255))
  %i.x = trunc nuw <4 x i32> %8 to <4 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !9
  %index.next20 = add nuw i64 %index17, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !54

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %n.vec16, %wide.trip.count
  br i1 %cmp.n21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec16, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.ph
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.ph
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, %i.ac
  %9 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  %.0.i11.prol = tail call i32 @llvm.umin.i32(i32 %9, i32 255)
  %i.ah = trunc nuw i32 %.0.i11.prol to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.ph
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = sext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, %i.an
  %10 = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %.0.i11 = tail call i32 @llvm.umin.i32(i32 %10, i32 255)
  %i.as = trunc nuw i32 %.0.i11 to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = sext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, %i.aw
  %11 = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %.0.i11.1 = tail call i32 @llvm.umin.i32(i32 %11, i32 255)
  %i.bb = trunc nuw i32 %.0.i11.1 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !9
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
  %i.k = getelementptr inbounds nuw [114976 x i8], ptr %i.b, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 332
  store i32 %., ptr %i.l, align 4, !tbaa !27
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [114976 x i8], ptr %i.j, i64 %indvars.iv
  store i32 %i.g, ptr %i.m, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [114976 x i8], ptr %i.b, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  store i32 %i.i, ptr %i.o, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !60

.preheader:                                       ; preds = %bb.f, %bb.h
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw [114976 x i8], ptr %i.j, i64 %indvars.iv36
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.r = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.s = tail call fastcc i32 @init_noise(ptr noundef nonnull %i.b, i32 noundef %i.r) #8 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, 4
  br i1 %exitcond39.not, label %bb.i, label %.preheader, !llvm.loop !61

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 459968
  store ptr @ff_line_noise_c, ptr %i.u, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 459976
  store ptr @ff_line_noise_avg_c, ptr %i.v, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.i
  %.026 = phi i32 [ 0, %bb.i ], [ %i.s, %bb.g ]
  ret i32 %.026
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [114976 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !65

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !67
  %i.b = tail call ptr @av_pix_fmt_desc_get(i32 noundef 0) #9
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = call ptr @av_pix_fmt_desc_get(i32 noundef %i.c) #9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  %i.g = and i64 %i.f, 16
  %.not14 = icmp eq i64 %i.g, 0
  br i1 %.not14, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !70
  %i.j = and i32 %i.i, 7
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %indvars.iv) #9 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = trunc nuw i64 %indvars.iv.next to i32
  %i.n = call ptr @av_pix_fmt_desc_get(i32 noundef %i.m) #9
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.o = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.p = call i32 @ff_set_common_formats2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.o) #9
  br label %.loopexit
end_hunk_0
begin_hunk_1_@init_noise:bb.a
  %i.bh = getelementptr inbounds i8, ptr @patt, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = sext i8 %i.bi to i32
  %i.bk = mul nsw i32 %i.f, %i.bj
  %i.bl = sitofp nsz i32 %i.bk to double
  %i.bm = tail call nsz double @llvm.fmuladd.f64(double %i.bl, double 2.500000e-01, double %i.be)
  %i.bn = fptosi double %i.bm to i8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.bo = trunc i32 %i.an to i8
  br label %bb.n

.preheader95:                                     ; preds = %bb.c, %.preheader95
  %i.bp = phi i32 [ %i.cx, %.preheader95 ], [ %i.t, %bb.c ] ; 7 uses
  %i.bq = add i32 %i.bp, 40
  %i.br = and i32 %i.bq, 63
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !47
  %i.bv = add i32 %i.bp, 9
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = add i32 %i.bz, %i.bu                    ; 2 uses
  %i.cb = and i32 %i.bp, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cc
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !47
  %i.ce = add i32 %i.bp, 1
  %i.cf = uitofp nsz i32 %i.ca to double
  %i.cg = fmul nnan nsz double %i.cf, 2.000000e+00
  %i.ch = fmul nnan nsz double %i.cg, f0x3DF0000000000000
  %i.ci = fadd nsz double %i.ch, -1.000000e+00    ; 3 uses
  %i.cj = add i32 %i.bp, 41
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !47
  %i.co = add i32 %i.bp, 10
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  %i.ct = add i32 %i.cs, %i.cn                    ; 2 uses
  %i.cu = and i32 %i.ce, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cv
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !47
  %i.cx = add i32 %i.bp, 2                        ; 2 uses
  %i.cy = uitofp nsz i32 %i.ct to double
  %i.cz = fmul nnan nsz double %i.cy, 2.000000e+00
  %i.da = fmul nnan nsz double %i.cz, f0x3DF0000000000000
  %i.db = fadd nsz double %i.da, -1.000000e+00    ; 2 uses
  %i.dc = fmul nsz double %i.db, %i.db
  %i.dd = tail call nsz double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.dc) ; 3 uses
  %i.de = fcmp nsz ult double %i.dd, 1.000000e+00
  br i1 %i.de, label %bb.k, label %.preheader95, !llvm.loop !84

bb.k:                                             ; preds = %.preheader95
  %i.df = tail call nnan nsz double @llvm.log.f64(double %i.dd)
  %i.dg = fmul nnan nsz double %i.df, -2.000000e+00
  %i.dh = fdiv nsz double %i.dg, %i.dd
  %i.di = tail call nsz double @llvm.sqrt.f64(double %i.dh)
  %i.dj = fmul nsz double %i.ci, %i.di
  %i.dk = fmul nsz double %i.r, %i.dj             ; 2 uses
  br i1 %.not91, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dl = fmul nsz double %i.dk, 5.000000e-01
  %i.dm = srem i32 %.07899, 4
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr @patt, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = sext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.f, %i.dq
  %i.ds = sitofp nsz i32 %i.dr to double
  %i.dt = tail call nsz double @llvm.fmuladd.f64(double %i.ds, double 3.500000e-01, double %i.dl)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi nsz double [ %i.dt, %bb.l ], [ %i.dk, %bb.k ]
  %i.du = fptrunc nsz double %.0 to float         ; 2 uses
  %i.dv = fcmp nsz ogt float %i.du, -1.280000e+02
  %i.dw = select nsz i1 %i.dv, float %i.du, float -1.280000e+02 ; 2 uses
  %i.dx = fcmp nsz ogt float %i.dw, 1.270000e+02
  %..i = select nsz i1 %i.dx, float 1.270000e+02, float %i.dw
  %i.dy = fpext nsz float %..i to double          ; 2 uses
  %i.dz = fdiv nsz double %i.dy, 3.000000e+00
  %.1 = select nsz i1 %.not88, double %i.dy, double %i.dz
  %i.ea = fptosi double %.1 to i32
  %i.eb = trunc i32 %i.ea to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.j, %bb.i, %bb.m
  %.sink = phi i8 [ %i.bc, %bb.g ], [ %i.ba, %bb.f ], [ %i.bo, %bb.j ], [ %i.bn, %bb.i ], [ %i.eb, %bb.m ]
  %i.ec = phi i32 [ %i.ai, %bb.g ], [ %i.ai, %bb.f ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %i.cx, %bb.m ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %.sink, ptr %i.ed, align 1, !tbaa !9
  %i.ee = add i32 %i.ec, 40
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !47
  %i.ej = add i32 %i.ec, 9
  %i.ek = and i32 %i.ej, 63
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !47
  %i.eo = add i32 %i.en, %i.ei                    ; 2 uses
  %i.ep = and i32 %i.ec, 63
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eq
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !47
  %i.es = add i32 %i.ec, 1                        ; 2 uses
  %i.et = uitofp nsz i32 %i.eo to double
  %i.eu = fmul nnan nsz double %i.et, 6.000000e+00
  %i.ev = fmul nnan nsz double %i.eu, f0x3DF0000000000000
  %i.ew = fptosi double %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = sext i1 %i.ex to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %spec.select = add i32 %.07899, 1
  %i.ez = add i32 %spec.select, %i.ey
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5120
  br i1 %exitcond.not, label %.preheader94, label %bb.c, !llvm.loop !85

.preheader:                                       ; preds = %.preheader94, %bb.p
  %indvars.iv117 = phi i64 [ 0, %.preheader94 ], [ %indvars.iv.next118, %bb.p ] ; 2 uses
  %.lcssa102105106 = phi i32 [ %i.es, %.preheader94 ], [ %i.fq, %bb.p ]
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %indvars.iv117
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.o
  %indvars.iv113 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next114, %bb.o ] ; 2 uses
  %i.fb = phi i32 [ %.lcssa102105106, %.preheader ], [ %i.fq, %bb.o ] ; 4 uses
  %i.fc = add i32 %i.fb, 40
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fh = add i32 %i.fb, 9
  %i.fi = and i32 %i.fh, 63
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !47
  %i.fm = add i32 %i.fl, %i.fg                    ; 2 uses
  %i.fn = and i32 %i.fb, 63
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fo
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !47
  %i.fq = add i32 %i.fb, 1                        ; 3 uses
  %i.fr = and i32 %i.fm, 1023
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv113
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !13
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next114, 3
  br i1 %exitcond116.not, label %bb.p, label %bb.o, !llvm.loop !86

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 4096
  br i1 %exitcond120.not, label %bb.q, label %.preheader, !llvm.loop !87

bb.q:                                             ; preds = %bb.p
  store i32 %i.fq, ptr %i.q, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr %i.a, ptr %i.fv, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  %.082 = phi i32 [ 0, %bb.q ], [ -12, %bb.a ]
  ret i32 %.082
}

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #5

declare void @av_lfg_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare i32 @ff_add_format(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ff_set_common_formats2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!15 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!16 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!19 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!20 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!21 = !{!"AVFilterContext", !14, i64 0, !15, i64 8, !12, i64 16, !16, i64 24, !18, i64 32, !6, i64 40, !16, i64 48, !18, i64 56, !6, i64 64, !11, i64 72, !19, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !20, i64 112, !6, i64 120}
!22 = !{!21, !11, i64 72}
!23 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!24 = !{!"NoiseContext", !14, i64 0, !6, i64 8, !5, i64 12, !5, i64 28, !6, i64 44, !23, i64 48, !5, i64 64, !11, i64 459968, !11, i64 459976}
!25 = !{!"AVLFG", !5, i64 0, !6, i64 256}
!26 = !{!"FilterParams", !6, i64 0, !6, i64 4, !25, i64 8, !6, i64 268, !12, i64 272, !5, i64 280, !5, i64 98584, !6, i64 114968}
!27 = !{!26, !6, i64 268}
!28 = !{!26, !6, i64 0}
!29 = !{!26, !6, i64 4}
!30 = !{!24, !11, i64 459968}
!31 = !{!24, !11, i64 459976}
!32 = !{!"p1 _ZTS15AVFilterFormats", !11, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !33, i64 16, !5, i64 24, !12, i64 104}
!35 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!36 = !{!"p1 _ZTS15AVFilterContext", !11, i64 0}
!37 = !{!"AVRational", !6, i64 0, !6, i64 4}
!38 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !11, i64 16}
!39 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!40 = !{!"p1 _ZTS22AVFilterChannelLayouts", !11, i64 0}
!41 = !{!"AVFilterFormatsConfig", !32, i64 0, !32, i64 8, !40, i64 16, !32, i64 24, !32, i64 32, !32, i64 40}
!42 = !{!"AVFilterLink", !36, i64 0, !16, i64 8, !36, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !37, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !38, i64 72, !37, i64 96, !39, i64 104, !6, i64 112, !6, i64 116, !41, i64 120, !41, i64 168}
!43 = !{!42, !36, i64 16}
!44 = !{!42, !6, i64 40}
!45 = !{!42, !6, i64 44}
!46 = !{!25, !6, i64 256}
!47 = !{!6, !6, i64 0}
!48 = !{!"ThreadData", !35, i64 0, !35, i64 8}
!49 = !{!48, !35, i64 0}
!50 = !{!48, !35, i64 8}
!51 = !{!24, !6, i64 8}
!52 = !{!26, !12, i64 272}
!53 = distinct !{!53, !10, !56, !57}
!54 = distinct !{!54, !10, !56, !57}
!55 = distinct !{!55, !10, !56}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"branch_weights", i32 4, i32 12}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = !{!24, !6, i64 48}
!63 = !{!24, !6, i64 52}
!64 = !{!24, !6, i64 56}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = !{!32, !32, i64 0}
!68 = !{!34, !33, i64 16}
!69 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!70 = !{!69, !6, i64 16}
!71 = distinct !{!71, !10}
!72 = !{!35, !35, i64 0}
!73 = !{!21, !18, i64 56}
!74 = !{!"p1 _ZTS12AVFilterLink", !11, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!26, !6, i64 114968}
!77 = !{!24, !6, i64 44}
!78 = !{!42, !6, i64 36}
!79 = !{!34, !5, i64 10}
!80 = distinct !{null}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
end_hunk_1
