Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/save-tiff?download=true
inline.NumInlined: 98
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi1EEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !11 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !11 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7msdfgen13saveTiffFloatILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit, label %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit.i

_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, 1  ; 2 uses
  %i.b = add nsw i32 %.sroa.3.0.copyload, -1
  %i.c = mul nsw i32 %i.b, %.sroa.4.0.copyload
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.c
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.04.0.copyload, i64 %.sroa.0.0.idx
  tail call fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr noundef %i.a, i32 noundef %.sroa.2.0.copyload, i32 noundef %.sroa.3.0.copyload, i32 noundef 1)
  %i.d = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit.i
  %i.e = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.9.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.e
  %i.f = sext i32 %.sroa.2.0.copyload to i64
  %i.g = sext i32 %.sroa.9.0 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %_ZN7msdfgen18BitmapConstSectionIfLi1EE8reorientENS_16YAxisOrientationE.exit.i
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.a)
  %.not10.i = icmp eq i32 %i.h, 0
  br label %_ZN7msdfgen13saveTiffFloatILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = mul nsw i64 %indvars.iv.i, %i.g
  %i.j = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.i
  %i.k = tail call i64 @fwrite(ptr noundef %i.j, i64 noundef 4, i64 noundef %i.f, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !14

_ZN7msdfgen13saveTiffFloatILi1EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit: ; preds = %bb.a, %._crit_edge.i
  %.08.i = phi i1 [ %.not10.i, %._crit_edge.i ], [ false, %bb.a ]
  ret i1 %.08.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi3EEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !11 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !11 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7msdfgen13saveTiffFloatILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit, label %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit.i

_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, 1  ; 2 uses
  %i.b = add nsw i32 %.sroa.3.0.copyload, -1
  %i.c = mul nsw i32 %i.b, %.sroa.4.0.copyload
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.c
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.04.0.copyload, i64 %.sroa.0.0.idx
  tail call fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr noundef %i.a, i32 noundef %.sroa.2.0.copyload, i32 noundef %.sroa.3.0.copyload, i32 noundef 3)
  %i.d = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit.i
  %i.e = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.9.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.e
  %i.f = mul nsw i32 %.sroa.2.0.copyload, 3
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %.sroa.9.0 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %_ZN7msdfgen18BitmapConstSectionIfLi3EE8reorientENS_16YAxisOrientationE.exit.i
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.a)
  %.not10.i = icmp eq i32 %i.i, 0
  br label %_ZN7msdfgen13saveTiffFloatILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.j = mul nsw i64 %indvars.iv.i, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.j
  %i.l = tail call i64 @fwrite(ptr noundef %i.k, i64 noundef 4, i64 noundef %i.g, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !16

_ZN7msdfgen13saveTiffFloatILi3EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit: ; preds = %bb.a, %._crit_edge.i
  %.08.i = phi i1 [ %.not10.i, %._crit_edge.i ], [ false, %bb.a ]
  ret i1 %.08.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7msdfgen8saveTiffERKNS_18BitmapConstSectionIfLi4EEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !11 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !11 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7msdfgen13saveTiffFloatILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit, label %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i

_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.sroa.5.0.copyload, 1  ; 2 uses
  %i.b = add nsw i32 %.sroa.3.0.copyload, -1
  %i.c = mul nsw i32 %i.b, %.sroa.4.0.copyload
  %narrow = select i1 %.not.i.i, i32 0, i32 %i.c
  %.sroa.0.0.idx = sext i32 %narrow to i64
  %.sroa.0.0 = getelementptr inbounds [4 x i8], ptr %.sroa.04.0.copyload, i64 %.sroa.0.0.idx
  tail call fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr noundef %i.a, i32 noundef %.sroa.2.0.copyload, i32 noundef %.sroa.3.0.copyload, i32 noundef 4)
  %i.d = icmp sgt i32 %.sroa.3.0.copyload, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i
  %i.e = sub nsw i32 0, %.sroa.4.0.copyload
  %.sroa.9.0 = select i1 %.not.i.i, i32 %.sroa.4.0.copyload, i32 %i.e
  %i.f = shl nsw i32 %.sroa.2.0.copyload, 2
  %i.g = sext i32 %i.f to i64
  %i.h = sext i32 %.sroa.9.0 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.3.0.copyload to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %_ZN7msdfgen18BitmapConstSectionIfLi4EE8reorientENS_16YAxisOrientationE.exit.i
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.a)
  %.not10.i = icmp eq i32 %i.i, 0
  br label %_ZN7msdfgen13saveTiffFloatILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.j = mul nsw i64 %indvars.iv.i, %i.h
  %i.k = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %i.j
  %i.l = tail call i64 @fwrite(ptr noundef %i.k, i64 noundef 4, i64 noundef %i.g, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !17

_ZN7msdfgen13saveTiffFloatILi4EEEbNS_18BitmapConstSectionIfXT_EEEPKc.exit: ; preds = %bb.a, %._crit_edge.i
  %.08.i = phi i1 [ %.not10.i, %._crit_edge.i ], [ false, %bb.a ]
  ret i1 %.08.i
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN7msdfgenL15writeTiffHeaderEP8_IO_FILEiii(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 1, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i16, align 2                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca float, align 4                    ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %i.r = alloca i16, align 2                      ; 4 uses
  %i.s = alloca float, align 4                    ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i16, align 2                      ; 4 uses
  %i.w = alloca i16, align 2                      ; 4 uses
  %i.x = alloca i16, align 2                      ; 4 uses
  %i.y = alloca i16, align 2                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i16, align 2                     ; 4 uses
  %i.ac = alloca i16, align 2                     ; 4 uses
  %i.ad = alloca i16, align 2                     ; 4 uses
  %i.ae = alloca i16, align 2                     ; 4 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i16, align 2                     ; 4 uses
  %i.ah = alloca i16, align 2                     ; 4 uses
  %i.ai = alloca i32, align 4                     ; 4 uses
  %i.aj = alloca i32, align 4                     ; 4 uses
  %i.ak = alloca i16, align 2                     ; 4 uses
  %i.al = alloca i16, align 2                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i16, align 2                     ; 4 uses
  %i.ap = alloca i16, align 2                     ; 4 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %i.ar = alloca i32, align 4                     ; 4 uses
  %i.as = alloca i16, align 2                     ; 4 uses
  %i.at = alloca i16, align 2                     ; 4 uses
  %i.au = alloca i32, align 4                     ; 4 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca i16, align 2                     ; 4 uses
  %i.ax = alloca i16, align 2                     ; 4 uses
  %i.ay = alloca i16, align 2                     ; 4 uses
  %i.az = alloca i16, align 2                     ; 4 uses
  %i.ba = alloca i32, align 4                     ; 4 uses
  %i.bb = alloca i16, align 2                     ; 4 uses
  %i.bc = alloca i16, align 2                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 4 uses
  %i.be = alloca i32, align 4                     ; 4 uses
  %i.bf = alloca i16, align 2                     ; 4 uses
  %i.bg = alloca i16, align 2                     ; 4 uses
  %i.bh = alloca i16, align 2                     ; 4 uses
  %i.bi = alloca i16, align 2                     ; 4 uses
  %i.bj = alloca i32, align 4                     ; 4 uses
  %i.bk = alloca i16, align 2                     ; 4 uses
  %i.bl = alloca i16, align 2                     ; 4 uses
  %i.bm = alloca i16, align 2                     ; 4 uses
  %i.bn = alloca i16, align 2                     ; 4 uses
  %i.bo = alloca i32, align 4                     ; 4 uses
  %i.bp = alloca i16, align 2                     ; 4 uses
  %i.bq = alloca i16, align 2                     ; 4 uses
  %i.br = alloca i16, align 2                     ; 4 uses
  %i.bs = alloca i16, align 2                     ; 4 uses
  %i.bt = alloca i32, align 4                     ; 4 uses
  %i.bu = alloca i32, align 4                     ; 4 uses
  %i.bv = alloca i16, align 2                     ; 4 uses
  %i.bw = alloca i16, align 2                     ; 4 uses
  %i.bx = alloca i32, align 4                     ; 4 uses
  %i.by = alloca i32, align 4                     ; 4 uses
  %i.bz = alloca i16, align 2                     ; 4 uses
  %i.ca = alloca i16, align 2                     ; 4 uses
  %i.cb = alloca i32, align 4                     ; 4 uses
  %i.cc = alloca i32, align 4                     ; 4 uses
  %i.cd = alloca i16, align 2                     ; 4 uses
  %i.ce = alloca i16, align 2                     ; 4 uses
  %i.cf = alloca i16, align 2                     ; 4 uses
  %i.cg = alloca i32, align 4                     ; 4 uses
  %i.ch = alloca i16, align 2                     ; 4 uses
  %i.ci = alloca i16, align 2                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  store i16 18761, ptr %i.ci, align 2, !tbaa !18
  %i.cj = call i64 @fwrite(ptr noundef nonnull %i.ci, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store i16 42, ptr %i.ch, align 2, !tbaa !18
  %i.ck = call i64 @fwrite(ptr noundef nonnull %i.ch, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store i32 8, ptr %i.cg, align 4, !tbaa !11
  %i.cl = call i64 @fwrite(ptr noundef nonnull %i.cg, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  store i16 15, ptr %i.cf, align 2, !tbaa !18
  %i.cm = call i64 @fwrite(ptr noundef nonnull %i.cf, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i16 256, ptr %i.ce, align 2, !tbaa !18
  %i.cn = call i64 @fwrite(ptr noundef nonnull %i.ce, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  store i16 4, ptr %i.cd, align 2, !tbaa !18
  %i.co = call i64 @fwrite(ptr noundef nonnull %i.cd, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store i32 1, ptr %i.cc, align 4, !tbaa !11
  %i.cp = call i64 @fwrite(ptr noundef nonnull %i.cc, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i32 %1, ptr %i.cb, align 4, !tbaa !11
  %i.cq = call i64 @fwrite(ptr noundef nonnull %i.cb, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store i16 257, ptr %i.ca, align 2, !tbaa !18
  %i.cr = call i64 @fwrite(ptr noundef nonnull %i.ca, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  store i16 4, ptr %i.bz, align 2, !tbaa !18
  %i.cs = call i64 @fwrite(ptr noundef nonnull %i.bz, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i32 1, ptr %i.by, align 4, !tbaa !11
  %i.ct = call i64 @fwrite(ptr noundef nonnull %i.by, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store i32 %2, ptr %i.bx, align 4, !tbaa !11
  %i.cu = call i64 @fwrite(ptr noundef nonnull %i.bx, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i16 258, ptr %i.bw, align 2, !tbaa !18
  %i.cv = call i64 @fwrite(ptr noundef nonnull %i.bw, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i16 3, ptr %i.bv, align 2, !tbaa !18
  %i.cw = call i64 @fwrite(ptr noundef nonnull %i.bv, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  store i32 %3, ptr %i.bu, align 4, !tbaa !11
  %i.cx = call i64 @fwrite(ptr noundef nonnull %i.bu, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %i.cy = icmp samesign ugt i32 %3, 1             ; 4 uses
  br i1 %i.cy, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store i32 194, ptr %i.bt, align 4, !tbaa !11
  %i.cz = call i64 @fwrite(ptr noundef nonnull %i.bt, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  store i16 32, ptr %i.bs, align 2, !tbaa !18
  %i.da = call i64 @fwrite(ptr noundef nonnull %i.bs, i64 noundef 2, i64 noundef 1, ptr noundef nonnull %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
end_hunk_0
