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
  %.fr = freeze i32 %i.p                          ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = sub nsw i32 %i.r, %i.k
  %.fr742.i = freeze i32 %i.s                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.m
  %.fr.i = freeze i32 %i.v                        ; 3 uses
  %i.w = shl nsw i32 %3, 1                        ; 14 uses
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
  %i.bd = add i32 %i.bc, -1
  %broadcast.splatinsert109 = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat110 = shufflevector <16 x i32> %broadcast.splatinsert109, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert115 = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat116 = shufflevector <16 x i32> %broadcast.splatinsert115, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction117 = add <16 x i32> %broadcast.splat116, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.be = add i32 %.fr, %i.w
  %i.bf = add i32 %i.be, -1
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103.a = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat104.a = shufflevector <16 x i32> %broadcast.splatinsert103.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat104.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph648.split.us.split.us.i.us

.lr.ph648.split.us.split.us.i.preheader45:        ; preds = %.lr.ph648.split.us.split.us.i.preheader
  %i.bg = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.bg, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.bg, i1 false), !tbaa !4
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

.lr.ph648.split.us.split.us.i.us:                 ; preds = %.lr.ph648.split.us.split.us.i.us.preheader, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 4 uses
  %.0647.us.us.i.us = phi i32 [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0159646.us.us.i.us = phi i32 [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0203644.us.us.i.us = phi ptr [ %.5208.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ null, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 7 uses
  %.0209643.us.us.i.us = phi i32 [ %.5214.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph648.split.us.split.us.i.us.preheader ] ; 7 uses
  %i.bh = trunc i64 %indvars.iv.i.us to i32
  %i.bi = add i32 %1, %i.bh
  %i.bj = srem i32 %i.bi, %0                      ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.us
  store i32 %.0647.us.us.i.us, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.us
  store i32 %.0159646.us.us.i.us, ptr %i.bl, align 4, !tbaa !4
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.bm ; 6 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4  ; 5 uses
  %.not.i.us.us.i.us = icmp sgt i32 %i.al, %i.bo
  br i1 %.not.i.us.us.i.us, label %bb.b, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.b:                                             ; preds = %.lr.ph648.split.us.split.us.i.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 5 uses
  %.not12.i.us.us.i.us = icmp sgt i32 %i.bq, %i.ak
  br i1 %.not12.i.us.us.i.us, label %bb.c, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.c:                                             ; preds = %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 4 uses
  %.not13.i.us.us.i.us = icmp sgt i32 %i.an, %i.bs
  br i1 %.not13.i.us.us.i.us, label %bb.d, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.d:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4  ; 4 uses
  %.not14.i.us.us.i.us = icmp sgt i32 %i.bu, %i.am
  br i1 %.not14.i.us.us.i.us, label %bb.e, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4  ; 3 uses
  %.not15.i.us.us.i.us = icmp sgt i32 %i.ap, %i.bw
  br i1 %.not15.i.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us:       ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4  ; 3 uses
  %.not218.us.us.i.us = icmp sgt i32 %i.by, %i.ao
  br i1 %.not218.us.us.i.us, label %.preheader276.lr.ph.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

.preheader276.lr.ph.us.us.i.us:                   ; preds = %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
  %i.bz = icmp ne i32 %1, %i.bj
  %i.ca = sub nsw i32 %i.bw, %3
  %i.cb = add nsw i32 %i.by, %3
  %i.cc = sub nsw i32 %i.bs, %3
  %i.cd = add nsw i32 %i.bu, %3
  %i.ce = sub nsw i32 %i.bo, %3
  %i.cf = add nsw i32 %i.bq, %3
  br label %.preheader276.us.us.us.us.i.us

.preheader276.us.us.us.us.i.us:                   ; preds = %.preheader276.lr.ph.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us
  %.1520.us.us.us.us.i.us = phi i32 [ %.us-phi511.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0647.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1160519.us.us.us.us.i.us = phi i32 [ %.us-phi510.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0159646.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.0168518.us.us.us.us.i.us = phi i32 [ %i.hn, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %i.au, %.preheader276.lr.ph.us.us.i.us ] ; 5 uses
  %.1204517.us.us.us.us.i.us = phi ptr [ %.us-phi509.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0203644.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1210516.us.us.us.us.i.us = phi i32 [ %.us-phi508.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ], [ %.0209643.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %i.cg = add nsw i32 %.0168518.us.us.us.us.i.us, %i.m ; 4 uses
  %i.ch = add i32 %.0168518.us.us.us.us.i.us, %3  ; 7 uses
  %9 = icmp sgt i32 %i.ch, -1
  %.not179.us.us.us.us.i.us = icmp sle i32 %i.bw, %i.cg
  %10 = icmp slt i32 %i.cg, %i.by
  %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us.a = and i1 %.not179.us.us.us.us.i.us, %10 ; 2 uses
  %i.ci = icmp slt i32 %.0168518.us.us.us.us.i.us, %.fr.i
  %.not182.us.us.us.us.i.us = icmp sle i32 %i.ca, %i.cg
  %i.cj = icmp slt i32 %i.cg, %i.cb
  br i1 %9, label %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us: ; preds = %.preheader276.us.us.us.us.i.us
  %11 = icmp sgt i32 %.0168518.us.us.us.us.i.us, -1
  %or.cond.us.us.us.us.i.us = and i1 %i.bz, %11
  %or.cond.fr.us.us.us.us.i.us = freeze i1 %or.cond.us.us.us.us.i.us
  br i1 %or.cond.fr.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, label %.preheader.us.us.us526.us.us.us.i.us

.preheader.us.us.us526.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us
  %.2360.us.us.us527.us.us.us.i.us = phi i32 [ %.us-phi.us408.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ], [ %.1520.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 3 uses
  %.0169358.us.us.us528.us.us.us.i.us = phi i32 [ %i.du, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 3 uses
  %12 = add nsw i32 %.0169358.us.us.us528.us.us.us.i.us, %i.k ; 2 uses
  %13 = add i32 %.0169358.us.us.us528.us.us.us.i.us, %3 ; 3 uses
  %14 = icmp sgt i32 %13, -1
  %.not180.us.us.us529.us.us.us.i.us = icmp sle i32 %i.bs, %12
  %15 = icmp slt i32 %12, %i.bu
  %16 = and i1 %.not180.us.us.us529.us.us.us.i.us, %15
  %or.cond187.not222.not227.us.us.us531.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us.a, i1 %16, i1 false
  br i1 %14, label %.lr.ph299.split.us378.us.us533.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us378.us.us533.us.us.us.i.us:     ; preds = %.preheader.us.us.us526.us.us.us.i.us
  %i.ck = load i32, ptr %i.n, align 4, !tbaa !4
  %i.cl = add i32 %i.ck, %i.w
  %i.cm = load i32, ptr %i.h, align 4, !tbaa !4
  %i.cn = sub i32 %i.cl, %i.cm                    ; 5 uses
  %i.co = load i32, ptr %i.q, align 4, !tbaa !4
  %i.cp = add nsw i32 %i.co, %i.w
  %i.cq = load i32, ptr %i.j, align 4, !tbaa !4
  %i.cr = sub i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, %i.w
  %i.cu = load i32, ptr %i.l, align 4, !tbaa !4
  %i.cv = sub i32 %i.ct, %i.cu
  %i.cw = icmp slt i32 %13, %i.cr
  %17 = icmp slt i32 %i.ch, %i.cv
  %or.cond38.i.us370.us.us.us.us.us.i.us = select i1 %i.cw, i1 %17, i1 false
  %18 = mul nsw i32 %i.cr, %i.ch
  %i.cx = add nuw i32 %18, %13
  %19 = mul i32 %i.cx, %i.cn                      ; 3 uses
  %or.cond38.i.us370.fr.us.us.us.us.us.i.us = freeze i1 %or.cond38.i.us370.us.us.us.us.us.i.us
  br i1 %or.cond38.i.us370.fr.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us533.us.us.us.i.us
  %or.cond187.not222.not227.us.fr.us.us.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us531.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.fr.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us
  %20 = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 0)
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %i.bd) ; 2 uses
  %22 = add nuw i32 %21, 1                        ; 2 uses
  %min.iters.check106 = icmp samesign ult i32 %21, 15
  br i1 %min.iters.check106, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader136, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader
  %n.vec108 = and i32 %22, -16                    ; 3 uses
  %23 = sub i32 %n.vec108, %3
  %broadcast.splatinsert111 = insertelement <16 x i32> poison, i32 %i.cn, i64 0
  %broadcast.splat112 = shufflevector <16 x i32> %broadcast.splatinsert111, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <16 x i32> poison, i32 %19, i64 0
  %broadcast.splat114 = shufflevector <16 x i32> %broadcast.splatinsert113, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op = add <16 x i32> %broadcast.splat110, %broadcast.splat114
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body.interim123, %vector.ph107
  %index119 = phi i32 [ 0, %vector.ph107 ], [ %index.next121, %vector.body.interim123 ]
  %vec.ind120 = phi <16 x i32> [ %induction117, %vector.ph107 ], [ %vec.ind.next122, %vector.body.interim123 ] ; 3 uses
  %i.cy = add nsw <16 x i32> %vec.ind120, %broadcast.splat110
  %i.cz = icmp sge <16 x i32> %i.cy, %broadcast.splat112
  %.reass = add <16 x i32> %vec.ind120, %invariant.op
  %i.da = icmp slt <16 x i32> %.reass, zeroinitializer
  %i.db = select <16 x i1> %i.cz, <16 x i1> splat (i1 true), <16 x i1> %i.da
  %i.dc = freeze <16 x i1> %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %.not = icmp eq i16 %i.dd, 0
  br i1 %.not, label %vector.body.interim123, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim123:                           ; preds = %vector.body118
  %vec.ind.next122 = add <16 x i32> %vec.ind120, splat (i32 16)
  %index.next121 = add nuw i32 %index119, 16      ; 2 uses
  %i.de = icmp eq i32 %index.next121, %n.vec108
  br i1 %i.de, label %middle.block124, label %vector.body118, !llvm.loop !11

middle.block124:                                  ; preds = %vector.body.interim123
  %cmp.n125 = icmp eq i32 %22, %n.vec108
  br i1 %cmp.n125, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader136

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader136: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader, %middle.block124
  %.0167296.us366.us.us.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader ], [ %23, %middle.block124 ]
  br label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us

.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader136, %bb.f
  %.0167296.us366.us.us.us.us.us.us.us.i.us = phi i32 [ %i.dj, %bb.f ], [ %.0167296.us366.us.us.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us.preheader136 ] ; 2 uses
  %i.df = add nsw i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.dg = icmp sge i32 %i.df, %i.cn
  %i.dh = add nuw nsw i32 %i.df, %19
  %i.di = icmp slt i32 %i.dh, 0
  %or.cond730.i.us = select i1 %i.dg, i1 true, i1 %i.di
  br i1 %or.cond730.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us
  %i.dj = add i32 %.0167296.us366.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.dj, %i.ay
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us, !llvm.loop !15

.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us, %bb.i
  %.3298.us365.us.us.us.us.us.us.i.us = phi i32 [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us366.us.us404.us.us.us.us.i.us = phi i32 [ %i.dt, %bb.i ], [ %i.au, %.lr.ph299.split.split.split.us380.split.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.dk = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %i.i ; 2 uses
  %i.dl = add nsw i32 %.0167296.us366.us.us404.us.us.us.us.i.us, %3 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.cn
  br i1 %i.dm, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us
  %i.dn = add nuw nsw i32 %i.dl, %19              ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us
  %.not181.us372.us.us.us.us.us.us.i.us = icmp sle i32 %i.bo, %i.dk
  %i.dp = icmp slt i32 %i.dk, %i.bq
  %or.cond189.us374.us.us.us.us.us.us.i.us = and i1 %.not181.us372.us.us.us.us.us.us.i.us, %i.dp
  br i1 %or.cond189.us374.us.us.us.us.us.us.i.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dq = add nsw i32 %.3298.us365.us.us.us.us.us.us.i.us, 1
  %i.dr = zext nneg i32 %i.dn to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dr
  store i32 %.3298.us365.us.us.us.us.us.us.i.us, ptr %i.ds, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4.us375.us.us.us.us.us.us.i.us = phi i32 [ %i.dq, %bb.h ], [ %.3298.us365.us.us.us.us.us.us.i.us, %bb.g ] ; 2 uses
  %i.dt = add i32 %.0167296.us366.us.us404.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond765.not.i.us = icmp eq i32 %i.dt, %i.ay
  br i1 %exitcond765.not.i.us, label %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, !llvm.loop !16

._crit_edge.split.us376.split.us.us.us.us.us.us.i.us: ; preds = %bb.f, %bb.i, %middle.block124
  %.us-phi.us408.us.us.us.us.i.us = phi i32 [ %.2360.us.us.us527.us.us.us.i.us, %middle.block124 ], [ %.4.us375.us.us.us.us.us.us.i.us, %bb.i ], [ %.2360.us.us.us527.us.us.us.i.us, %bb.f ] ; 2 uses
  %i.du = add nsw i32 %.0169358.us.us.us528.us.us.us.i.us, 1 ; 2 uses
  %exitcond766.not.i.us = icmp eq i32 %i.du, %i.ax
  br i1 %exitcond766.not.i.us, label %._crit_edge361.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us526.us.us.us.i.us, !llvm.loop !17

.preheader.us.us.us.us.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.2360.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi515.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1520.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2161359.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi514.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160519.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.0169358.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hm, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 5 uses
  %.2205357.us.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi513.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204517.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %.2211356.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi512.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210516.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ] ; 4 uses
  %i.dv = add nsw i32 %.0169358.us.us.us.us.us.us.us.i.us, %i.k ; 4 uses
  %i.dw = add i32 %.0169358.us.us.us.us.us.us.us.i.us, %3 ; 5 uses
  %24 = icmp sgt i32 %i.dw, -1
  %.not180.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bs, %i.dv
  %i.dx = icmp slt i32 %i.dv, %i.bu
  %i.dy = and i1 %.not180.us.us.us.us.us.us.us.i.us, %i.dx
  %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us.a, i1 %i.dy, i1 false
  %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us.us.us.us.us.i.us ; 2 uses
  %i.dz = icmp slt i32 %.0169358.us.us.us.us.us.us.us.i.us, %.fr742.i
  %.not183.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.cc, %i.dv
  %i.ea = icmp slt i32 %i.dv, %i.cd
  br i1 %24, label %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us378.us.us.us.us.us.us.i.us:     ; preds = %.preheader.us.us.us.us.us.us.us.i.us
  %25 = icmp sgt i32 %.0169358.us.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.us.i.us = and i1 %i.ci, %25
  %or.cond3.us.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us
  %i.eb = load i32, ptr %i.n, align 4, !tbaa !4
  %i.ec = add i32 %i.eb, %i.w
  %i.ed = load i32, ptr %i.h, align 4, !tbaa !4
  %i.ee = sub i32 %i.ec, %i.ed                    ; 5 uses
  %i.ef = load i32, ptr %i.q, align 4, !tbaa !4
  %i.eg = add nsw i32 %i.ef, %i.w
  %i.eh = load i32, ptr %i.j, align 4, !tbaa !4
  %i.ei = sub i32 %i.eg, %i.eh                    ; 2 uses
  %i.ej = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ek = add nsw i32 %i.ej, %i.w
  %i.el = load i32, ptr %i.l, align 4, !tbaa !4
  %i.em = sub i32 %i.ek, %i.el
  %i.en = icmp slt i32 %i.dw, %i.ei
  %i.eo = icmp slt i32 %i.ch, %i.em
  %or.cond38.i.us.us.us.us.us542.us.us.us.i.us = select i1 %i.en, i1 %i.eo, i1 false
  %i.ep = mul nsw i32 %i.ei, %i.ch
  %i.eq = add nuw i32 %i.ep, %i.dw
  %i.er = mul i32 %i.eq, %i.ee                    ; 3 uses
  %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us.us542.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us.us542.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us
  %i.es = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.et = tail call i32 @llvm.umin.i32(i32 %i.es, i32 %i.bf) ; 2 uses
  %i.eu = add nuw i32 %i.et, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.et, 15
  br i1 %min.iters.check, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader
  %n.vec = and i32 %i.eu, -16                     ; 3 uses
  %i.ev = sub i32 %n.vec, %3
  %broadcast.splatinsert99 = insertelement <16 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat100 = shufflevector <16 x i32> %broadcast.splatinsert99, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert101.a = insertelement <16 x i32> poison, i32 %i.er, i64 0
  %broadcast.splat102.a = shufflevector <16 x i32> %broadcast.splatinsert101.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op144 = add <16 x i32> %broadcast.splat, %broadcast.splat102.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.ew = add nsw <16 x i32> %vec.ind, %broadcast.splat
  %i.ex = icmp sge <16 x i32> %i.ew, %broadcast.splat100
  %.reass145 = add <16 x i32> %vec.ind, %invariant.op144
  %i.ey = icmp slt <16 x i32> %.reass145, zeroinitializer
  %i.ez = select <16 x i1> %i.ex, <16 x i1> splat (i1 true), <16 x i1> %i.ey
  %i.fa = freeze <16 x i1> %i.ez
  %i.fb = bitcast <16 x i1> %i.fa to i16
  %.not128 = icmp eq i16 %i.fb, 0
  br i1 %.not128, label %vector.body.interim, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.fc = icmp eq i32 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.eu, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader131

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader131: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader, %middle.block
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader131, %bb.j
  %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us = phi i32 [ %i.fh, %bb.j ], [ %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us.ph, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us.preheader131 ] ; 2 uses
  %i.fd = add nsw i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.fe = icmp sge i32 %i.fd, %i.ee
  %i.ff = add nuw nsw i32 %i.fd, %i.er
  %i.fg = icmp slt i32 %i.ff, 0
  %or.cond735.i.us = select i1 %i.fe, i1 true, i1 %i.fg
  br i1 %or.cond735.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us
  %i.fh = add i32 %.0167296.us347.us.us.us.us538.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond767.not.i.us = icmp eq i32 %i.fh, %i.ay
  br i1 %exitcond767.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us, !llvm.loop !19

.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us, %bb.m
  %.3298.us345.us.us.us.us537.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us547.us.us.us.us.i.us, %bb.m ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us = phi i32 [ %i.fr, %bb.m ], [ %i.au, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.us.us.us.i.us ] ; 3 uses
  %i.fi = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %i.i ; 2 uses
  %i.fj = add nsw i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, %3 ; 2 uses
  %i.fk = icmp slt i32 %i.fj, %i.ee
  br i1 %i.fk, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us: ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us
  %i.fl = add nuw nsw i32 %i.fj, %i.er            ; 2 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us
  %.not181.us.us.us.us.us544.us.us.us.us.i.us = icmp sle i32 %i.bo, %i.fi
  %i.fn = icmp slt i32 %i.fi, %i.bq
  %or.cond189.us.us.us.us.us546.us.us.us.us.i.us = and i1 %.not181.us.us.us.us.us544.us.us.us.us.i.us, %i.fn
  br i1 %or.cond189.us.us.us.us.us546.us.us.us.us.i.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fo = add nsw i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, 1
  %i.fp = zext nneg i32 %i.fl to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fp
  store i32 %.3298.us345.us.us.us.us537.us.us.us.us.i.us, ptr %i.fq, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4.us.us.us.us.us547.us.us.us.us.i.us = phi i32 [ %i.fo, %bb.l ], [ %.3298.us345.us.us.us.us537.us.us.us.us.i.us, %bb.k ] ; 2 uses
  %i.fr = add i32 %.0167296.us347.us.us.us.us538.us.us604.us.us.i.us, 1 ; 2 uses
  %exitcond768.not.i.us = icmp eq i32 %i.fr, %i.ay
  br i1 %exitcond768.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, !llvm.loop !16

.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us378.us.us.us.us.us.us.i.us, %bb.v
  %.3298.us345.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2360.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3162297.us346.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2161359.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.0167296.us347.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hl, %bb.v ], [ %i.au, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 5 uses
  %.3206295.us348.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205357.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 4 uses
  %.3212294.us349.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4213.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211356.us.us.us.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us.us.us.us.us.i.us ] ; 3 uses
  %i.fs = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %i.i ; 4 uses
  %i.ft = load i32, ptr %i.n, align 4, !tbaa !4
  %i.fu = add nsw i32 %i.ft, %i.w
  %i.fv = load i32, ptr %i.h, align 4, !tbaa !4
  %i.fw = sub i32 %i.fu, %i.fv                    ; 2 uses
  %i.fx = load i32, ptr %i.q, align 4, !tbaa !4
  %i.fy = add nsw i32 %i.fx, %i.w
  %i.fz = load i32, ptr %i.j, align 4, !tbaa !4
  %i.ga = sub i32 %i.fy, %i.fz                    ; 2 uses
  %i.gb = add nsw i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.gc = icmp slt i32 %i.gb, %i.fw
  br i1 %i.gc, label %bb.n, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

bb.n:                                             ; preds = %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  %i.gd = load i32, ptr %i.t, align 4, !tbaa !4
  %i.ge = add nsw i32 %i.gd, %i.w
  %i.gf = load i32, ptr %i.l, align 4, !tbaa !4
  %i.gg = sub i32 %i.ge, %i.gf
  %i.gh = icmp slt i32 %i.dw, %i.ga
  %i.gi = icmp slt i32 %i.ch, %i.gg
  %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.n
  %i.gj = mul nsw i32 %i.ga, %i.ch
  %i.gk = add nuw i32 %i.gj, %i.dw
  %i.gl = mul i32 %i.gk, %i.fw
  %i.gm = add nuw nsw i32 %i.gl, %i.gb            ; 3 uses
  %i.gn = icmp slt i32 %i.gm, 0
  br i1 %i.gn, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
  %.not181.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bo, %i.fs
  %i.go = icmp slt i32 %i.fs, %i.bq
  %i.gp = and i1 %.not181.us.us.us.us.us.us.us.us.us.i.us, %i.go
  %or.cond189.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.not222.not227.us.us.us.us.fr.us.us.us.i.us, i1 %i.gp, i1 false
  br i1 %or.cond189.us.us.us.us.us.us.us.us.us.i.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gq = add nsw i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, 1
  %i.gr = zext nneg i32 %i.gm to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gr
  store i32 %.3298.us345.us.us.us.us.us.us.us.us.i.us, ptr %i.gs, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.gq, %bb.p ], [ %.3298.us345.us.us.us.us.us.us.us.us.i.us, %bb.o ] ; 2 uses
  %i.gt = icmp sgt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.dz, %i.gt
  %i.gu = icmp slt i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, %.fr
  %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us = and i1 %i.gu, %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.us.i.us
  %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.i.us, i1 false
  %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.us.i.us, i1 %i.cj, i1 false
  %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.us.i.us, i1 false
  %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.us.i.us, i1 %i.ea, i1 false
  %.not184.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.ce, %i.fs
  %or.cond197.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.not255.not.us.us.us.us.us.us.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.us.i.us, i1 false
  %i.gv = icmp slt i32 %i.fs, %i.cf
  %or.cond199.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.us.i.us, i1 %i.gv, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %bb.v

.preheader.us:                                    ; preds = %bb.q, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.gw, %.preheader.us ], [ 32, %bb.q ] ; 7 uses
  %.not.us.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %.3162297.us346.us.us.us.us.us.us.us.us.i.us
  %i.gw = shl i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, 1
  br i1 %.not.us.us.us.us.us.us.us.us.us.i.us, label %bb.r, label %.preheader.us, !llvm.loop !20

bb.r:                                             ; preds = %.preheader.us
  %i.gx = add nsw i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us, 1
  %i.gy = icmp eq ptr %.3206295.us348.us.us.us.us.us.us.us.us.i.us, null
  br i1 %i.gy, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gz = icmp slt i32 %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.us.i.us
  br i1 %i.gz, label %bb.t, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.t:                                             ; preds = %bb.s
  %i.ha = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = tail call ptr @realloc(ptr noundef nonnull %.3206295.us348.us.us.us.us.us.us.us.us.i.us, i64 noundef %i.hb) #13
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

bb.u:                                             ; preds = %bb.r
  %i.hd = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64
  %i.he = shl nsw i64 %i.hd, 2
  %i.hf = tail call noalias ptr @malloc(i64 noundef %i.he) #12
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.u, %bb.t, %bb.s
  %.7.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.t ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %bb.u ]
  %.6.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %i.hc, %bb.t ], [ %i.hf, %bb.u ] ; 2 uses
  %i.hg = zext nneg i32 %i.gm to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = sext i32 %.3162297.us346.us.us.us.us.us.us.us.us.i.us to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.6.us.us.us.us.us.us.us.us.us.i.us, i64 %i.hj
  store i32 %i.hi, ptr %i.hk, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, %bb.q
  %.4213.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3212294.us349.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4207.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.6.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3206295.us348.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4163.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.gx, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3162297.us346.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %i.hl = add i32 %.0167296.us347.us.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond769.not.i.us = icmp eq i32 %i.hl, %i.ay
  br i1 %exitcond769.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, !llvm.loop !16

._crit_edge.split.us.us.us.us.us.us.us.us.i.us:   ; preds = %bb.j, %bb.m, %bb.v, %middle.block
  %.us-phi512.us.us.us.us.i.us = phi i32 [ %.2211356.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2211356.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4213.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211356.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi513.us.us.us.us.i.us = phi ptr [ %.2205357.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2205357.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205357.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi514.us.us.us.us.i.us = phi i32 [ %.2161359.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.2161359.us.us.us.us.us.us.us.i.us, %bb.m ], [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2161359.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi515.us.us.us.us.i.us = phi i32 [ %.2360.us.us.us.us.us.us.us.i.us, %middle.block ], [ %.4.us.us.us.us.us547.us.us.us.us.i.us, %bb.m ], [ %.4.us.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2360.us.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %i.hm = add nsw i32 %.0169358.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond770.not.i.us = icmp eq i32 %i.hm, %i.ax
  br i1 %exitcond770.not.i.us, label %._crit_edge361.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, !llvm.loop !17

._crit_edge361.split.us.split.us.us.us.us.us.i.us: ; preds = %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.us-phi508.us.us.us.us.i.us = phi i32 [ %.us-phi512.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210516.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi509.us.us.us.us.i.us = phi ptr [ %.us-phi513.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204517.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi510.us.us.us.us.i.us = phi i32 [ %.us-phi514.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160519.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi511.us.us.us.us.i.us = phi i32 [ %.us-phi515.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.us-phi.us408.us.us.us.us.i.us, %._crit_edge.split.us376.split.us.us.us.us.us.us.i.us ] ; 2 uses
  %i.hn = add nsw i32 %.0168518.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond771.not.i.us = icmp eq i32 %i.hn, %i.av
  br i1 %exitcond771.not.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, label %.preheader276.us.us.us.us.i.us, !llvm.loop !21

_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us: ; preds = %._crit_edge361.split.us.split.us.us.us.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph648.split.us.split.us.i.us
  %.5214.us.us.i.us = phi i32 [ %.0209643.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0209643.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0209643.us.us.i.us, %bb.e ], [ %.0209643.us.us.i.us, %bb.d ], [ %.0209643.us.us.i.us, %bb.c ], [ %.0209643.us.us.i.us, %bb.b ], [ %.us-phi508.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ]
  %.5208.us.us.i.us = phi ptr [ %.0203644.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0203644.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0203644.us.us.i.us, %bb.e ], [ %.0203644.us.us.i.us, %bb.d ], [ %.0203644.us.us.i.us, %bb.c ], [ %.0203644.us.us.i.us, %bb.b ], [ %.us-phi509.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5164.us.us.i.us = phi i32 [ %.0159646.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0159646.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0159646.us.us.i.us, %bb.e ], [ %.0159646.us.us.i.us, %bb.d ], [ %.0159646.us.us.i.us, %bb.c ], [ %.0159646.us.us.i.us, %bb.b ], [ %.us-phi510.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5.us.us.i.us = phi i32 [ %.0647.us.us.i.us, %.lr.ph648.split.us.split.us.i.us ], [ %.0647.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0647.us.us.i.us, %bb.e ], [ %.0647.us.us.i.us, %bb.d ], [ %.0647.us.us.i.us, %bb.c ], [ %.0647.us.us.i.us, %bb.b ], [ %.us-phi511.us.us.us.us.i.us, %._crit_edge361.split.us.split.us.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond773.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond773.not.i.us, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %.lr.ph648.split.us.split.us.i.us, !llvm.loop !22

_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i: ; preds = %.preheader276.us.us.us.us.i.us, %.lr.ph299.split.us378.us.us533.us.us.us.i.us, %.preheader.us.us.us526.us.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.us.us.us.i.us, %.preheader.us.us.us.us.us.us.us.i.us, %vector.body118, %.lr.ph299.split.split.split.us380.split.us.split.us.us.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us371.us.us405.us.us.us.us.i.us, %.lr.ph299.split.split.split.us380.split.us.split.us407.us.us.us.us.i.us, %vector.body, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us543.us.us605.us.us.i.us, %.lr.ph299.split.split.split.us.us.us.us.split.us550.split.us.split.us607.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, %bb.n, %.lr.ph299.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  tail call void @abort() #14
  unreachable

._crit_edge.sink.split.i:                         ; preds = %.lr.ph648.split.us.i, %.lr.ph648.split.preheader.i
  %.sink816.i = phi i64 [ %i.ba, %.lr.ph648.split.preheader.i ], [ %wide.trip.count.i, %.lr.ph648.split.us.i ]
  %i.ho = shl nuw nsw i64 %.sink816.i, 2          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ho, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.ho, i1 false), !tbaa !4
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, %.lr.ph648.split.us.split.us.i.preheader45, %.preheader277.i, %._crit_edge.sink.split.i
  %.0203.lcssa.i = phi ptr [ null, %.preheader277.i ], [ null, %._crit_edge.sink.split.i ], [ null, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5208.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0159.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph648.split.us.split.us.i.preheader45 ], [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.a
  store i32 %.0.lcssa.i, ptr %i.hp, align 4, !tbaa !4
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.a
  store i32 %.0159.lcssa.i, ptr %i.hq, align 4, !tbaa !4
  store ptr %i.ae, ptr %5, align 8, !tbaa !23
  store ptr %i.ai, ptr %6, align 8, !tbaa !23
  store ptr %i.aj, ptr %7, align 8, !tbaa !23
  store ptr %.0203.lcssa.i, ptr %8, align 8, !tbaa !23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS3Box", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13, !14}
!19 = distinct !{!19, !12, !14, !13}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 int", !10, i64 0}
end_hunk_0
