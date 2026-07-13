inline.NumInlined: 93
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Box = type { [6 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z13box_map_localRK3BoxiPKiiii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 1                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = load i32, ptr %0, align 4, !tbaa !4
  %i.f = sub i32 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add nsw i32 %i.i, %i.a
  %i.k = load i32, ptr %i.g, align 4, !tbaa !4
  %i.l = sub i32 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add nsw i32 %i.o, %i.a
  %i.q = load i32, ptr %i.m, align 4, !tbaa !4
  %i.r = sub i32 %i.p, %i.q
  %i.s = add nsw i32 %3, %1                       ; 3 uses
  %i.t = add nsw i32 %4, %1                       ; 3 uses
  %i.u = add nsw i32 %5, %1                       ; 3 uses
  %i.v = icmp sgt i32 %i.s, -1
  br i1 %i.v, label %bb.b, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.w = icmp slt i32 %i.s, %i.f
  %i.x = icmp sgt i32 %i.t, -1
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.y = icmp slt i32 %i.t, %i.l
  %i.z = icmp sgt i32 %i.u, -1
  %or.cond3.i = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp slt i32 %i.u, %i.r
  %or.cond38.i = select i1 %or.cond3.i, i1 %i.aa, i1 false
  br i1 %or.cond38.i, label %_ZL19box_map_local_entryRK3Boxiiii.exit, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread

_ZL19box_map_local_entryRK3Boxiiii.exit:          ; preds = %bb.c
  %i.ab = mul nsw i32 %i.l, %i.u
  %i.ac = add nuw i32 %i.ab, %i.t
  %i.ad = mul i32 %i.ac, %i.f
  %i.ae = add nuw nsw i32 %i.ad, %i.s             ; 3 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %bb.d, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread

bb.d:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  br label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread

_ZL19box_map_local_entryRK3Boxiiii.exit.thread:   ; preds = %bb.b, %bb.c, %bb.a, %bb.d, %_ZL19box_map_local_entryRK3Boxiiii.exit
  %.0 = phi i32 [ %i.ai, %bb.d ], [ %i.ae, %_ZL19box_map_local_entryRK3Boxiiii.exit ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.Box, align 16               ; 6 uses
  %6 = alloca %struct.Box, align 16               ; 6 uses
  %i.a = sub nsw i32 %1, %0                       ; 5 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 4, !tbaa !4
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [24 x i8], ptr %4, i64 %i.d ; 6 uses
  store i32 %i.c, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.j, ptr %i.k, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.p, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.u = shl nsw i32 %2, 1
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = load i32, ptr %i.w, align 4, !tbaa !4
  %i.aa = sub nsw i32 %i.y, %i.z                  ; 3 uses
  %i.ab = sdiv i32 %i.a, 2                        ; 3 uses
  %i.ac = sub nsw i32 %i.a, %i.ab
  %i.ad = sitofp i32 %i.aa to double
  %i.ae = sitofp i32 %i.ac to double
  %i.af = sitofp i32 %i.a to double
  %i.ag = fdiv double %i.ae, %i.af
  %i.ah = fmul double %i.ag, %i.ad
  %i.ai = fptosi double %i.ah to i32
  %i.aj = sub nsw i32 %i.aa, %i.ai                ; 2 uses
  %i.ak = add nsw i32 %2, 2
  %i.al = srem i32 %i.ak, 3                       ; 2 uses
  %.off = add i32 %i.a, 1
  %.not = icmp ult i32 %.off, 3
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.am = load <4 x i32>, ptr %3, align 4, !tbaa !4
  store <4 x i32> %i.am, ptr %5, align 16, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load <2 x i32>, ptr %i.an, align 4, !tbaa !4
  store <2 x i32> %i.ap, ptr %i.ao, align 16, !tbaa !4
  %i.aq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.v ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !4
  %i.as = add nsw i32 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = add nsw i32 %i.ab, %0
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %i.au, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not68 = icmp eq i32 %1, %0
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.av = load <4 x i32>, ptr %3, align 4, !tbaa !4
  store <4 x i32> %i.av, ptr %6, align 16, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !tbaa !4
  store <2 x i32> %i.ay, ptr %i.ax, align 16, !tbaa !4
  %i.az = add nsw i32 %i.ab, %0
  %i.ba = getelementptr inbounds [4 x i8], ptr %6, i64 %i.v ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !4  ; 2 uses
  %i.bc = add nsw i32 %i.bb, %i.aj
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !4
  %i.bd = add i32 %i.bb, %i.aa
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !4
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %i.az, i32 noundef %1, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 24) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  %i.d = extractvalue { i64, i1 } %i.b, 0
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #11 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !8
  tail call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef 0, i32 noundef %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull %i.f)
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4    ; 2 uses
  %i.p = sub nsw i32 %i.o, %i.i
  %.fr = freeze i32 %i.p                          ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = sub nsw i32 %i.r, %i.k
  %.fr742.i = freeze i32 %i.s                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.m
  %.fr.i = freeze i32 %i.v                        ; 3 uses
  %i.w = shl nsw i32 %3, 1                        ; 13 uses
  %i.x = add nsw i32 %.fr, %i.w
  %i.y = add nsw i32 %.fr742.i, %i.w
  %i.z = add nsw i32 %.fr.i, %i.w
  %i.aa = mul nsw i32 %i.y, %i.x
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #12 ; 6 uses
  %i.af = add nsw i32 %0, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2                    ; 2 uses
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #12 ; 5 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ah) #12 ; 5 uses
  %i.ak = sub nsw i32 %i.i, %3
  %i.al = add nsw i32 %i.o, %3
  %i.am = sub nsw i32 %i.k, %3
  %i.an = add nsw i32 %i.r, %3
  %i.ao = sub nsw i32 %i.m, %3
  %i.ap = add nsw i32 %i.u, %3
  %i.aq = icmp sgt i32 %i.ab, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %.preheader277.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.ar = zext nneg i32 %i.ab to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 -1, i64 %i.as, i1 false), !tbaa !4
  br label %.preheader277.i

.preheader277.i:                                  ; preds = %.lr.ph.preheader.i, %bb.a
  %i.at = icmp sgt i32 %0, 0
  br i1 %i.at, label %.lr.ph648.i, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

.lr.ph648.i:                                      ; preds = %.preheader277.i
  %i.au = sub i32 0, %3                           ; 13 uses
  %i.av = add i32 %.fr.i, %3                      ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %i.au
  %i.ax = add i32 %.fr742.i, %3                   ; 3 uses
  %i.ay = add i32 %.fr, %3                        ; 6 uses
  %i.az = icmp sgt i32 %i.ay, %i.au
  br i1 %i.aw, label %.lr.ph648.split.us.i, label %.lr.ph648.split.preheader.i

.lr.ph648.split.preheader.i:                      ; preds = %.lr.ph648.i
  %i.ba = zext nneg i32 %0 to i64
  br label %._crit_edge.sink.split.i

.lr.ph648.split.us.i:                             ; preds = %.lr.ph648.i
  %i.bb = icmp sgt i32 %i.ax, %i.au
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  br i1 %i.bb, label %.lr.ph648.split.us.split.us.i.preheader, label %._crit_edge.sink.split.i

.lr.ph648.split.us.split.us.i.preheader:          ; preds = %.lr.ph648.split.us.i
  br i1 %i.az, label %.lr.ph648.split.us.split.us.i.us.preheader, label %.lr.ph648.split.us.split.us.i.preheader45

.lr.ph648.split.us.split.us.i.us.preheader:       ; preds = %.lr.ph648.split.us.split.us.i.preheader
  %i.bc = add i32 %.fr, %i.w
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  %broadcast.splatinsert112.a = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat113.a = shufflevector <16 x i32> %broadcast.splatinsert112.a, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert118 = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat119 = shufflevector <16 x i32> %broadcast.splatinsert118, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction120 = add <16 x i32> %broadcast.splat119, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat104 = shufflevector <16 x i32> %broadcast.splatinsert103, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat104, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph648.split.us.split.us.i.us

.lr.ph648.split.us.split.us.i.preheader45:        ; preds = %.lr.ph648.split.us.split.us.i.preheader
  %i.be = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.be, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.be, i1 false), !tbaa !4
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

.lr.ph648.split.us.split.us.i.us:                 ; preds = %.lr.ph648.split.us.split.us.i.us.preheader, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 4 uses
  %.0647.us.us.i.us = phi i32 [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0159646.us.us.i.us = phi i32 [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0203644.us.us.i.us = phi ptr [ %.5208.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ null, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 7 uses
  %.0209643.us.us.i.us = phi i32 [ %.5214.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 7 uses
  %i.bf = trunc i64 %indvars.iv.i.us to i32
  %i.bg = add i32 %1, %i.bf
  %i.bh = srem i32 %i.bg, %0                      ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.us
  store i32 %.0647.us.us.i.us, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.us
  store i32 %.0159646.us.us.i.us, ptr %i.bj, align 4, !tbaa !4
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.bk ; 6 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 5 uses
  %.not.i.us.us.i.us = icmp sgt i32 %i.al, %i.bm
  br i1 %.not.i.us.us.i.us, label %bb.b, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.b:                                             ; preds = %.lr.ph648.split.us.split.us.i.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 5 uses
  %.not12.i.us.us.i.us = icmp sgt i32 %i.bo, %i.ak
  br i1 %.not12.i.us.us.i.us, label %bb.c, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 4 uses
  %.not13.i.us.us.i.us = icmp sgt i32 %i.an, %i.bq
  br i1 %.not13.i.us.us.i.us, label %bb.d, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 4 uses
  %.not14.i.us.us.i.us = icmp sgt i32 %i.bs, %i.am
  br i1 %.not14.i.us.us.i.us, label %bb.e, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 3 uses
  %.not15.i.us.us.i.us = icmp sgt i32 %i.ap, %i.bu
  br i1 %.not15.i.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us:       ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4  ; 3 uses
  %.not218.us.us.i.us = icmp sgt i32 %i.bw, %i.ao
  br i1 %.not218.us.us.i.us, label %.preheader276.lr.ph.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

.preheader276.lr.ph.us.us.i.us:                   ; preds = %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
  %i.bx = icmp ne i32 %1, %i.bh
  %i.by = sub nsw i32 %i.bu, %3
  %i.bz = add nsw i32 %i.bw, %3
  %i.ca = sub nsw i32 %i.bq, %3
  %i.cb = add nsw i32 %i.bs, %3
  %i.cc = sub nsw i32 %i.bm, %3
  %i.cd = add nsw i32 %i.bo, %3
  br label %.preheader276.us.us.us.us.i.us

.preheader276.us.us.us.us.i.us:                   ; preds = %.preheader276.lr.ph.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us
  %.1520.us.us.us.us.i.us = phi i32 [ %.us-phi511.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0647.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1160519.us.us.us.us.i.us = phi i32 [ %.us-phi510.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0159646.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.0168518.us.us.us.us.i.us = phi i32 [ %i.hy, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %i.au, %.preheader276.lr.ph.us.us.i.us ] ; 5 uses
  %.1204517.us.us.us.us.i.us = phi ptr [ %.us-phi509.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0203644.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1210516.us.us.us.us.i.us = phi i32 [ %.us-phi508.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0209643.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %i.ce = add nsw i32 %.0168518.us.us.us.us.i.us, %i.m ; 4 uses
  %i.cf = add i32 %.0168518.us.us.us.us.i.us, %3  ; 7 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  %.not179.us.us.us.us.i.us = icmp sle i32 %i.bu, %i.ce
  %i.ch = icmp slt i32 %i.ce, %i.bw
  %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us = and i1 %.not179.us.us.us.us.i.us, %i.ch ; 2 uses
  %i.ci = icmp slt i32 %.0168518.us.us.us.us.i.us, %.fr.i
  %.not182.us.us.us.us.i.us = icmp sle i32 %i.by, %i.ce
  %i.cj = icmp slt i32 %i.ce, %i.bz
  br i1 %i.cg, label %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us: ; preds = %.preheader276.us.us.us.us.i.us
  %i.ck = icmp sgt i32 %.0168518.us.us.us.us.i.us, -1
  %or.cond.us.us.us.us.i.us = and i1 %i.bx, %i.ck
  %or.cond.fr.us.us.us.us.i.us = freeze i1 %or.cond.us.us.us.us.i.us
  br i1 %or.cond.fr.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, label %.preheader.us.us.us526.us.us.us.i.us

.preheader.us.us.us526.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us
  %.2360.us.us.us527.us.us.us.i.us = phi i32 [ %.us-phi.us408.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ], [ %.1520.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 3 uses
  %.0169358.us.us.us528.us.us.us.i.us = phi i32 [ %i.ef, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 3 uses
  %i.cl = add nsw i32 %.0169358.us.us.us528.us.us.us.i.us, %i.k ; 2 uses
  %i.cm = add i32 %.0169358.us.us.us528.us.us.us.i.us, %3 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  %.not180.us.us.us529.us.us.us.i.us = icmp sle i32 %i.bq, %i.cl
  %i.co = icmp slt i32 %i.cl, %i.bs
  %i.cp = and i1 %.not180.us.us.us529.us.us.us.i.us, %i.co
  %or.cond187.not222.not227.us.us.us531.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.cp, i1 false
  br i1 %i.cn, label %.lr.ph299.split.us378.us.us533.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us378.us.us533.us.us.us.i.us:     ; preds = %.preheader.us.us.us526.us.us.us.i.us
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !4
  %i.cr = add i32 %i.cq, %i.w
  %i.cs = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ct = sub i32 %i.cr, %i.cs                    ; 5 uses
  %i.cu = load i32, ptr %i.q, align 4, !tbaa !4
  %i.cv = add nsw i32 %i.cu, %i.w
  %i.cw = load i32, ptr %i.j, align 4, !tbaa !4
  %i.cx = sub i32 %i.cv, %i.cw                    ; 2 uses
  %i.cy = load i32, ptr %i.t, align 4, !tbaa !4
  %i.cz = add nsw i32 %i.cy, %i.w
  %i.da = load i32, ptr %i.l, align 4, !tbaa !4
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = icmp slt i32 %i.cm, %i.cx
  %i.dd = icmp slt i32 %i.cf, %i.db
  %or.cond38.i.us370.us.us.us.us.us.i.us = select i1 %i.dc, i1 %i.dd, i1 false
  %i.de = mul nsw i32 %i.cx, %i.cf
  %i.df = add nuw i32 %i.de, %i.cm
  %i.dg = mul i32 %i.df, %i.ct                    ; 3 uses
  %or.cond38.i.us370.fr.us.us.us.us.us.i.us = freeze i1 %or.cond38.i.us370.us.us.us.us.us.i.us
  br i1 %or.cond38.i.us370.fr.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us533.us.us.us.i.us
  %or.cond187.not222.not227.us.fr.us.us.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us531.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.fr.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us
  %smax105 = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 0)
  %umin106 = tail call i32 @llvm.umin.i32(i32 %smax105, i32 %i.bd) ; 2 uses
  %i.dh = add nuw i32 %umin106, 1                 ; 2 uses
  %min.iters.check108 = icmp samesign ult i32 %umin106, 15
  br i1 %min.iters.check108, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader139, label %vector.ph109

vector.ph109:                                     ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader
  %n.vec111 = and i32 %i.dh, -16                  ; 3 uses
  %i.di = sub i32 %n.vec111, %3
  %broadcast.splatinsert114.a = insertelement <16 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat115.a = shufflevector <16 x i32> %broadcast.splatinsert114.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert116 = insertelement <16 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat117 = shufflevector <16 x i32> %broadcast.splatinsert116, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op = add <16 x i32> %broadcast.splat113.a, %broadcast.splat117
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body.interim126, %vector.ph109
  %index122 = phi i32 [ 0, %vector.ph109 ], [ %index.next124, %vector.body.interim126 ]
  %vec.ind123 = phi <16 x i32> [ %induction120, %vector.ph109 ], [ %vec.ind.next125, %vector.body.interim126 ] ; 3 uses
  %i.dj = add nsw <16 x i32> %vec.ind123, %broadcast.splat113.a
  %i.dk = icmp sge <16 x i32> %i.dj, %broadcast.splat115.a
  %.reass = add <16 x i32> %vec.ind123, %invariant.op
  %i.dl = icmp slt <16 x i32> %.reass, zeroinitializer
  %i.dm = select <16 x i1> %i.dk, <16 x i1> splat (i1 true), <16 x i1> %i.dl
  %i.dn = freeze <16 x i1> %i.dm
  %i.do = bitcast <16 x i1> %i.dn to i16
  %.not = icmp eq i16 %i.do, 0
  br i1 %.not, label %vector.body.interim126, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim126:                           ; preds = %vector.body121
  %vec.ind.next125 = add <16 x i32> %vec.ind123, splat (i32 16)
  %index.next124 = add nuw i32 %index122, 16      ; 2 uses
  %i.dp = icmp eq i32 %index.next124, %n.vec111
  br i1 %i.dp, label %middle.block127, label %vector.body121, !llvm.loop !11

middle.block127:                                  ; preds = %vector.body.interim126
  %cmp.n128 = icmp eq i32 %i.dh, %n.vec111
  br i1 %cmp.n128, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader139

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader139: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader, %middle.block127
  %.0167296.us366.us.us.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader ], [ %i.di, %middle.block127 ]
  br label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader139, %bb.f
  %.0167296.us366.us.us.us.us.us.us.us.i.us = phi i32 [ %i.du, %bb.f ], [ %.0167296.us366.us.us.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader139 ] ; 2 uses
  %i.dq = add nsw i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.dr = icmp sge i32 %i.dq, %i.ct
  %i.ds = add nuw nsw i32 %i.dq, %i.dg
  %i.dt = icmp slt i32 %i.ds, 0
  %or.cond730.i.us = select i1 %i.dr, i1 true, i1 %i.dt
  br i1 %or.cond730.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us
  %i.du = add i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.du, %i.ay
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us, !llvm.loop !15

.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us, %bb.i
  %.3298.us365.us.us.us.us.us.us.i.us = phi i32 [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us366.us.us404.us.us.us.us.i.us = phi i32 [ %i.ee, %bb.i ], [ %i.au, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.dv = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %i.i ; 2 uses
  %i.dw = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %3 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %i.ct
  br i1 %i.dx, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us
  %i.dy = add nuw nsw i32 %i.dw, %i.dg            ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us
  %.not181.us372.us.us.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.dv
  %i.ea = icmp slt i32 %i.dv, %i.bo
  %or.cond189.us374.us.us.us.us.us.us.i.us = and i1 %.not181.us372.us.us.us.us.us.us.i.us, %i.ea
  br i1 %or.cond189.us374.us.us.us.us.us.us.i.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.eb = add nsw i32 %.3298.us365.us.us.us.us.us.us.i.us, 1
  %i.ec = zext nneg i32 %i.dy to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ec
  store i32 %.3298.us365.us.us.us.us.us.us.i.us, ptr %i.ed, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4.us375.us.us.us.us.us.us.i.us = phi i32 [ %i.eb, %bb.h ], [ %.3298.us365.us.us.us.us.us.us.i.us, %bb.g ] ; 2 uses
  %i.ee = add i32 %.0167296.us366.us.us404.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond765.not.i.us = icmp eq i32 %i.ee, %i.ay
  br i1 %exitcond765.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, !llvm.loop !16

._crit_edge.split.us376.split.us.us.us.us.us.us.i.us: ; preds = %bb.f, %bb.i, %middle.block127
  %.us-phi.us408.us.us.us.us.i.us = phi i32 [ %.2360.us.us.us527.us.us.us.i.us, %middle.block127 ], [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %bb.f ] ; 2 uses
  %i.ef = add nsw i32 %.0169358.us.us.us528.us.us.us.i.us, 1 ; 2 uses
  %exitcond766.not.i.us = icmp eq i32 %i.ef, %i.ax
  br i1 %exitcond766.not.i.us, label %._crit_edge361.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us526.us.us.us.i.us, !llvm.loop !17

.preheader.us.us.us.us.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.2360.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi515.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1520.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2161359.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi514.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160519.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.0169358.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hx, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 5 uses
  %.2205357.us.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi513.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204517.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2211356.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi512.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210516.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %i.eg = add nsw i32 %.0169358.us.us.us.us.us.us.us.i.us, %i.k ; 4 uses
  %i.eh = add i32 %.0169358.us.us.us.us.us.us.us.i.us, %3 ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, -1
  %.not180.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.eg
  %i.ej = icmp slt i32 %i.eg, %i.bs
  %i.ek = and i1 %.not180.us.us.us.us.us.us.us.i.us, %i.ej
  %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.ek, i1 false
  %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us ; 2 uses
  %i.el = icmp slt i32 %.0169358.us.us.us.us.us.us.us.i.us, %.fr742.i
  %.not183.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.ca, %i.eg
  %i.em = icmp slt i32 %i.eg, %i.cb
  br i1 %i.ei, label %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us378.us.us.us.us.us.us.i.us:     ; preds = %.preheader.us.us.us.us.us.us.us.i.us
  %i.en = icmp sgt i32 %.0169358.us.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.us.i.us = and i1 %i.ci, %i.en
  %or.cond3.us.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us
  %i.eo = load i32, ptr %i.n, align 4, !tbaa !4
  %i.ep = add i32 %i.eo, %i.w
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !4
  %i.er = sub i32 %i.ep, %i.eq                    ; 5 uses
  %i.es = load i32, ptr %i.q, align 4, !tbaa !4
  %i.et = add nsw i32 %i.es, %i.w
  %i.eu = load i32, ptr %i.j, align 4, !tbaa !4
  %i.ev = sub i32 %i.et, %i.eu                    ; 2 uses
  %i.ew = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ex = add nsw i32 %i.ew, %i.w
  %i.ey = load i32, ptr %i.l, align 4, !tbaa !4
  %i.ez = sub i32 %i.ex, %i.ey
  %i.fa = icmp slt i32 %i.eh, %i.ev
  %i.fb = icmp slt i32 %i.cf, %i.ez
  %or.cond38.i.us.us.us.us.us542.us.us.us.i.us = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fc = mul nsw i32 %i.ev, %i.cf
  %i.fd = add nuw i32 %i.fc, %i.eh
  %i.fe = mul i32 %i.fd, %i.er                    ; 3 uses
  %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us.us542.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us
  %smax = tail call i32 @llvm.smax.i32(i32 %i.er, i32 0)
  %umin = tail call i32 @llvm.umin.i32(i32 %smax, i32 %i.bd) ; 2 uses
  %i.ff = add nuw i32 %umin, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %umin, 15
  br i1 %min.iters.check, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader
  %n.vec = and i32 %i.ff, -16                     ; 3 uses
  %i.fg = sub i32 %n.vec, %3
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.er, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <16 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat102 = shufflevector <16 x i32> %broadcast.splatinsert101, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op147 = add <16 x i32> %broadcast.splat, %broadcast.splat102
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.fh = add nsw <16 x i32> %vec.ind, %broadcast.splat
  %i.fi = icmp sge <16 x i32> %i.fh, %broadcast.splat100
  %.reass148 = add <16 x i32> %vec.ind, %invariant.op147
  %i.fj = icmp slt <16 x i32> %.reass148, zeroinitializer
  %i.fk = select <16 x i1> %i.fi, <16 x i1> splat (i1 true), <16 x i1> %i.fj
  %i.fl = freeze <16 x i1> %i.fk
  %i.fm = bitcast <16 x i1> %i.fl to i16
  %.not131 = icmp eq i16 %i.fm, 0
  br i1 %.not131, label %vector.body.interim, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fn = icmp eq i32 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.ff, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader134

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader134: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader, %middle.block
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader ], [ %i.fg, %middle.block ]
  br label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader134, %bb.j
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us = phi i32 [ %i.fs, %bb.j ], [ %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader134 ] ; 2 uses
  %i.fo = add nsw i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.fp = icmp sge i32 %i.fo, %i.er
  %i.fq = add nuw nsw i32 %i.fo, %i.fe
  %i.fr = icmp slt i32 %i.fq, 0
  %or.cond735.i.us = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %or.cond735.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us
  %i.fs = add i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond767.not.i.us = icmp eq i32 %i.fs, %i.ay
  br i1 %exitcond767.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us, !llvm.loop !19

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, %bb.m
  %.3298.us345.us.us.us.us537.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us547.us.us.us.us.i.us, %bb.m ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us = phi i32 [ %i.gc, %bb.m ], [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %i.ft = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %i.i ; 2 uses
  %i.fu = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %3 ; 2 uses
  %i.fv = icmp slt i32 %i.fu, %i.er
  br i1 %i.fv, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us
  %i.fw = add nuw nsw i32 %i.fu, %i.fe            ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us
  %.not181.us.us.us.us.us544.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.ft
  %i.fy = icmp slt i32 %i.ft, %i.bo
  %or.cond189.us.us.us.us.us546.us.us.us.us.i.us = and i1 %.not181.us.us.us.us.us544.us.us.us.us.i.us, %i.fy
  br i1 %or.cond189.us.us.us.us.us546.us.us.us.us.i.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fz = add nsw i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, 1
  %i.ga = zext nneg i32 %i.fw to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ga
  store i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, ptr %i.gb, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4.us.us.us.us.us547.us.us.us.us.i.us = phi i32 [ %i.fz, %bb.l ], [ %.3298.us345.us.us.us.us537.us.us.us.us.i.us, %bb.k ] ; 2 uses
  %i.gc = add i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, 1 ; 2 uses
  %exitcond768.not.i.us = icmp eq i32 %i.gc, %i.ay
  br i1 %exitcond768.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, !llvm.loop !16

.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, %bb.v
  %.3298.us345.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3162297.us346.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2161359.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.0167296.us347.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hw, %bb.v ], [ %i.au, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 5 uses
  %.3206295.us348.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205357.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.3212294.us349.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4213.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211356.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.gd = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %i.i ; 4 uses
  %i.ge = load i32, ptr %i.n, align 4, !tbaa !4
  %i.gf = add nsw i32 %i.ge, %i.w
  %i.gg = load i32, ptr %i.h, align 4, !tbaa !4
  %i.gh = sub i32 %i.gf, %i.gg                    ; 2 uses
  %i.gi = load i32, ptr %i.q, align 4, !tbaa !4
  %i.gj = add nsw i32 %i.gi, %i.w
  %i.gk = load i32, ptr %i.j, align 4, !tbaa !4
  %i.gl = sub i32 %i.gj, %i.gk                    ; 2 uses
  %i.gm = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, %i.gh
  br i1 %i.gn, label %bb.n, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

bb.n:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  %i.go = load i32, ptr %i.t, align 4, !tbaa !4
  %i.gp = add nsw i32 %i.go, %i.w
  %i.gq = load i32, ptr %i.l, align 4, !tbaa !4
  %i.gr = sub i32 %i.gp, %i.gq
  %i.gs = icmp slt i32 %i.eh, %i.gl
  %i.gt = icmp slt i32 %i.cf, %i.gr
  %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.n
  %i.gu = mul nsw i32 %i.gl, %i.cf
  %i.gv = add nuw i32 %i.gu, %i.eh
  %i.gw = mul i32 %i.gv, %i.gh
  %i.gx = add nuw nsw i32 %i.gw, %i.gm            ; 3 uses
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
  %.not181.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bm, %i.gd
  %i.gz = icmp slt i32 %i.gd, %i.bo
  %i.ha = and i1 %.not181.us.us.us.us.us.us.us.us.us.i.us, %i.gz
  %or.cond189.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, i1 %i.ha, i1 false
  br i1 %or.cond189.us.us.us.us.us.us.us.us.us.i.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hb = add nsw i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, 1
  %i.hc = zext nneg i32 %i.gx to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hc
  store i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, ptr %i.hd, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hb, %bb.p ], [ %.3298.us345.us.us.us.us.us.us.us.us.i.us, %bb.o ] ; 2 uses
  %i.he = icmp sgt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.el, %i.he
  %i.hf = icmp slt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %.fr
  %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.hf, %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us
  %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.i.us, i1 false
  %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us, i1 %i.cj, i1 false
  %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.us.i.us, i1 false
  %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us, i1 %i.em, i1 false
  %.not184.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.cc, %i.gd
  %or.cond197.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.us.i.us, i1 false
  %i.hg = icmp slt i32 %i.gd, %i.cd
  %or.cond199.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.us.i.us, i1 %i.hg, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %bb.v

.preheader.us:                                    ; preds = %bb.q, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hh, %.preheader.us ], [ 32, %bb.q ] ; 7 uses
  %.not.us.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %.3162297.us346.us.us.us.us.us.us.us.us.i.us
  %i.hh = shl i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, 1
  br i1 %.not.us.us.us.us.us.us.us.us.us.i.us, label %bb.r, label %.preheader.us, !llvm.loop !20

bb.r:                                             ; preds = %.preheader.us
  %i.hi = add nsw i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us, 1
  %i.hj = icmp eq ptr %.3206295.us348.us.us.us.us.us.us.us.us.i.us, null
  br i1 %i.hj, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hk = icmp slt i32 %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.us.i.us
  br i1 %i.hk, label %bb.t, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.t:                                             ; preds = %bb.s
  %i.hl = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.hm = shl nsw i64 %i.hl, 2
  %i.hn = tail call ptr @realloc(ptr noundef nonnull %.3206295.us348.us.us.us.us.us.us.us.us.i.us, i64 noundef %i.hm) #13
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.u:                                             ; preds = %bb.r
  %i.ho = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.hp) #12
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.u, %bb.t, %bb.s
  %.7.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.t ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.u ]
  %.6.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %i.hn, %bb.t ], [ %i.hq, %bb.u ] ; 2 uses
  %i.hr = zext nneg i32 %i.gx to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %i.hu = sext i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.6.us.us.us.us.us.us.us.us.us.i.us, i64 %i.hu
  store i32 %i.ht, ptr %i.hv, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, %bb.q
  %.4213.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4207.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.6.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4163.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hi, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3162297.us346.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %i.hw = add i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond769.not.i.us = icmp eq i32 %i.hw, %i.ay
  br i1 %exitcond769.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, !llvm.loop !16

end_hunk_0
