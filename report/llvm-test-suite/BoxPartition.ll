Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BoxPartition?download=true
inline.NumInlined: 93
inline.NumDeleted: 6
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #2 !guid !9 {
bb.a:
  %5 = alloca %struct.Box, align 16               ; 6 uses
  %6 = alloca %struct.Box, align 16               ; 6 uses
  %i.a = sub nsw i32 %1, %0                       ; 5 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 4, !tbaa !7
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [24 x i8], ptr %4, i64 %i.d ; 6 uses
  store i32 %i.c, ptr %i.e, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.g, ptr %i.h, align 4, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.j, ptr %i.k, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %i.s, ptr %i.t, align 4, !tbaa !7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.u = shl nsw i32 %2, 1
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = load i32, ptr %i.w, align 4, !tbaa !7
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
  %i.am = load <4 x i32>, ptr %3, align 4, !tbaa !7
  store <4 x i32> %i.am, ptr %5, align 16, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load <2 x i32>, ptr %i.an, align 4, !tbaa !7
  store <2 x i32> %i.ap, ptr %i.ao, align 16, !tbaa !7
  %i.aq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.v ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !7
  %i.as = add nsw i32 %i.ar, %i.aj
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !7
  %i.au = add nsw i32 %i.ab, %0
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %i.au, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not68 = icmp eq i32 %1, %0
  br i1 %.not68, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.av = load <4 x i32>, ptr %3, align 4, !tbaa !7
  store <4 x i32> %i.av, ptr %6, align 16, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load <2 x i32>, ptr %i.aw, align 4, !tbaa !7
  store <2 x i32> %i.ay, ptr %i.ax, align 16, !tbaa !7
  %i.az = add nsw i32 %i.ab, %0
  %i.ba = getelementptr inbounds [4 x i8], ptr %6, i64 %i.v ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !7  ; 2 uses
  %i.bc = add nsw i32 %i.bb, %i.aj
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !7
  %i.bd = add i32 %i.bb, %i.aa
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %i.az, i32 noundef %1, i32 noundef %i.al, ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #3 !guid !19 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.a, i64 24) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  %i.d = extractvalue { i64, i1 } %i.b, 0
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #11 ; 4 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !22
  tail call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef 0, i32 noundef %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull %i.f)
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.g ; 9 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 4 uses
  %i.p = sub nsw i32 %i.o, %i.i                   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %i.s = sub nsw i32 %i.r, %i.k                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %i.v = sub nsw i32 %i.u, %i.m                   ; 3 uses
  %i.w = shl nsw i32 %3, 1                        ; 14 uses
  %i.x = add nsw i32 %i.p, %i.w
  %i.y = add nsw i32 %i.s, %i.w
  %i.z = add nsw i32 %i.v, %i.w
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 -1, i64 %i.as, i1 false), !tbaa !7
  br label %.preheader277.i

.preheader277.i:                                  ; preds = %.lr.ph.preheader.i, %bb.a
  %i.at = icmp sgt i32 %0, 0
  br i1 %i.at, label %.lr.ph417.i, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

.lr.ph417.i:                                      ; preds = %.preheader277.i
  %i.au = sub nsw i32 0, %3                       ; 13 uses
  %i.av = add nsw i32 %i.v, %3                    ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %i.au
  %i.ax = add nsw i32 %i.s, %3                    ; 3 uses
  %i.ay = add i32 %i.p, %3                        ; 6 uses
  %i.az = icmp sgt i32 %i.ay, %i.au
  %.fr.i = freeze i1 %i.aw
  br i1 %.fr.i, label %.lr.ph417.split.us.i, label %.lr.ph417.split.preheader.i

.lr.ph417.split.preheader.i:                      ; preds = %.lr.ph417.i
  %i.ba = zext nneg i32 %0 to i64
  br label %._crit_edge.sink.split.i

.lr.ph417.split.us.i:                             ; preds = %.lr.ph417.i
  %i.bb = icmp sgt i32 %i.ax, %i.au
  %.fr440.i = freeze i1 %i.bb
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 3 uses
  br i1 %.fr440.i, label %.lr.ph417.split.us.split.us.i.preheader.a, label %._crit_edge.sink.split.i

.lr.ph417.split.us.split.us.i.preheader.a:        ; preds = %.lr.ph417.split.us.i
  %.fr = freeze i1 %i.az
  br i1 %.fr, label %.lr.ph417.split.us.split.us.i.us.preheader, label %.lr.ph417.split.us.split.us.i.preheader42

.lr.ph417.split.us.split.us.i.us.preheader:       ; preds = %.lr.ph417.split.us.split.us.i.preheader.a
  %i.bc = add i32 %i.o, %i.w
  %i.bd = xor i32 %i.i, -1
  %i.be = add i32 %i.bc, %i.bd
  %broadcast.splatinsert99.a = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat100.a = shufflevector <16 x i32> %broadcast.splatinsert99.a, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert105 = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat106 = shufflevector <16 x i32> %broadcast.splatinsert105, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction107 = add nsw <16 x i32> %broadcast.splat106, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bf = add i32 %i.o, %i.w
  %i.bg = xor i32 %i.i, -1
  %i.bh = add i32 %i.bf, %i.bg
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert93 = insertelement <16 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat94 = shufflevector <16 x i32> %broadcast.splatinsert93, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat94, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph417.split.us.split.us.i.us

.lr.ph417.split.us.split.us.i.preheader42:        ; preds = %.lr.ph417.split.us.split.us.i.preheader.a
  %i.bi = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.bi, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.bi, i1 false), !tbaa !7
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

.lr.ph417.split.us.split.us.i.us:                 ; preds = %.lr.ph417.split.us.split.us.i.us.preheader, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph417.split.us.split.us.i.us.preheader ] ; 4 uses
  %.0162415.us.us.i.us = phi i32 [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph417.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0164414.us.us.i.us = phi i32 [ %.5169.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph417.split.us.split.us.i.us.preheader ] ; 8 uses
  %.0203413.us.us.i.us = phi i32 [ %.5208.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph417.split.us.split.us.i.us.preheader ] ; 7 uses
  %.0209412.us.us.i.us = phi ptr [ %.5214.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ null, %.lr.ph417.split.us.split.us.i.us.preheader ] ; 7 uses
  %i.bj = trunc i64 %indvars.iv.i.us to i32
  %i.bk = add i32 %1, %i.bj
  %i.bl = srem i32 %i.bk, %0                      ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.us
  store i32 %.0164414.us.us.i.us, ptr %i.bm, align 4, !tbaa !7
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.us
  store i32 %.0162415.us.us.i.us, ptr %i.bn, align 4, !tbaa !7
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds [24 x i8], ptr %i.f, i64 %i.bo ; 6 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 5 uses
  %.not.i.us.us.i.us = icmp sgt i32 %i.al, %i.bq
  br i1 %.not.i.us.us.i.us, label %bb.b, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.b:                                             ; preds = %.lr.ph417.split.us.split.us.i.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 5 uses
  %.not12.i.us.us.i.us = icmp sgt i32 %i.bs, %i.ak
  br i1 %.not12.i.us.us.i.us, label %bb.c, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.c:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7  ; 4 uses
  %.not13.i.us.us.i.us = icmp sgt i32 %i.an, %i.bu
  br i1 %.not13.i.us.us.i.us, label %bb.d, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7  ; 4 uses
  %.not14.i.us.us.i.us = icmp sgt i32 %i.bw, %i.am
  br i1 %.not14.i.us.us.i.us, label %bb.e, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 3 uses
  %.not15.i.us.us.i.us = icmp sgt i32 %i.ap, %i.by
  br i1 %.not15.i.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us:       ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7  ; 3 uses
  %.not218.us.us.i.us = icmp sgt i32 %i.ca, %i.ao
  br i1 %.not218.us.us.i.us, label %.preheader276.lr.ph.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us

.preheader276.lr.ph.us.us.i.us:                   ; preds = %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
  %i.cb = icmp ne i32 %1, %i.bl
  %i.cc = sub nsw i32 %i.by, %3
  %i.cd = add nsw i32 %i.ca, %3
  %i.ce = sub nsw i32 %i.bu, %3
  %i.cf = add nsw i32 %i.bw, %3
  %i.cg = sub nsw i32 %i.bq, %3
  %i.ch = add nsw i32 %i.bs, %3
  br label %.preheader276.us.us.us.us.i.us

.preheader276.us.us.us.us.i.us:                   ; preds = %.preheader276.lr.ph.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us
  %.0350.us.us.us.us.i.us = phi i32 [ %i.if, %._crit_edge311.split.us.us.us.us.us.i.us ], [ %i.au, %.preheader276.lr.ph.us.us.i.us ] ; 5 uses
  %.1163349.us.us.us.us.i.us = phi i32 [ %.us-phi341.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ], [ %.0162415.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1165348.us.us.us.us.i.us = phi i32 [ %.us-phi340.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ], [ %.0164414.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1204347.us.us.us.us.i.us = phi i32 [ %.us-phi339.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ], [ %.0203413.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %.1210346.us.us.us.us.i.us = phi ptr [ %.us-phi338.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ], [ %.0209412.us.us.i.us, %.preheader276.lr.ph.us.us.i.us ] ; 2 uses
  %i.ci = add nsw i32 %.0350.us.us.us.us.i.us, %i.m ; 4 uses
  %i.cj = add nsw i32 %.0350.us.us.us.us.i.us, %3 ; 6 uses
  %.not179.us.us.us.us.i.us = icmp sle i32 %i.by, %i.ci
  %i.ck = icmp slt i32 %i.ci, %i.ca
  %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us = and i1 %.not179.us.us.us.us.i.us, %i.ck ; 2 uses
  %i.cl = icmp sgt i32 %.0350.us.us.us.us.i.us, -1
  %or.cond.us.us.us.us.i.us = and i1 %i.cb, %i.cl
  %i.cm = icmp slt i32 %.0350.us.us.us.us.i.us, %i.v
  %.not182.us.us.us.us.i.us = icmp sle i32 %i.cc, %i.ci
  %i.cn = icmp slt i32 %i.ci, %i.cd
  %or.cond.fr.us.us.us.us.i.us = freeze i1 %or.cond.us.us.us.us.i.us
  br i1 %or.cond.fr.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.i.us, label %.preheader.lr.ph.split.us.split.us358.us.us.us.i.us

.preheader.lr.ph.split.us.split.us358.us.us.us.i.us: ; preds = %.preheader276.us.us.us.us.i.us
  %i.co = load i32, ptr %i.n, align 4, !tbaa !7
  %i.cp = add i32 %i.co, %i.w
  %i.cq = load i32, ptr %i.h, align 4, !tbaa !7
  %i.cr = sub i32 %i.cp, %i.cq                    ; 5 uses
  %i.cs = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ct = add nsw i32 %i.cs, %i.w
  %i.cu = load i32, ptr %i.j, align 4, !tbaa !7
  %i.cv = sub i32 %i.ct, %i.cu                    ; 2 uses
  %i.cw = load i32, ptr %i.t, align 4, !tbaa !7
  %i.cx = add nsw i32 %i.cw, %i.w
  %i.cy = load i32, ptr %i.l, align 4, !tbaa !7
  %i.cz = sub i32 %i.cx, %i.cy
  %i.da = icmp slt i32 %i.cj, %i.cz
  %i.db = mul nuw nsw i32 %i.cv, %i.cj
  %i.dc = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 %i.be) ; 2 uses
  %i.de = add nuw i32 %i.dd, 1                    ; 2 uses
  %min.iters.check96 = icmp samesign ult i32 %i.dd, 15
  %n.vec98 = and i32 %i.de, -16                   ; 3 uses
  %i.df = sub i32 %n.vec98, %3
  %broadcast.splatinsert101.a = insertelement <16 x i32> poison, i32 %i.cr, i64 0
  %broadcast.splat102.a = shufflevector <16 x i32> %broadcast.splatinsert101.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n115 = icmp eq i32 %i.de, %n.vec98
  br label %.preheader.us.us359.us.us.us.i.us

.preheader.us.us359.us.us.us.i.us:                ; preds = %._crit_edge.split.us327.split.us.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us358.us.us.us.i.us
  %.0159310.us.us360.us.us.us.i.us = phi i32 [ %i.au, %.preheader.lr.ph.split.us.split.us358.us.us.us.i.us ], [ %i.ej, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 3 uses
  %.2166308.us.us361.us.us.us.i.us = phi i32 [ %.1165348.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us358.us.us.us.i.us ], [ %.us-phi.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 3 uses
  %i.dg = add nsw i32 %.0159310.us.us360.us.us.us.i.us, %3 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.cv
  %or.cond38.i.us321.us.us.us.us.i.us = select i1 %i.dh, i1 %i.da, i1 false
  %i.di = add nuw i32 %i.dg, %i.db
  %i.dj = mul i32 %i.di, %i.cr                    ; 3 uses
  %or.cond38.i.us321.fr.us.us.us.us.i.us = freeze i1 %or.cond38.i.us321.us.us.us.us.i.us
  br i1 %or.cond38.i.us321.fr.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us315.split.us.us.us.us.us.i.us:  ; preds = %.preheader.us.us359.us.us.us.i.us
  %i.dk = add nsw i32 %.0159310.us.us360.us.us.us.i.us, %i.k ; 2 uses
  %.not180.us.us362.us.us.us.i.us = icmp sle i32 %i.bu, %i.dk
  %i.dl = icmp slt i32 %i.dk, %i.bw
  %i.dm = and i1 %.not180.us.us362.us.us.us.i.us, %i.dl
  %or.cond187.not222.not227.us.us364.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.dm, i1 false
  %or.cond187.not222.not227.us.fr.us.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us364.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader

.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.us315.split.us.us.us.us.us.i.us
  br i1 %min.iters.check96, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader
  %broadcast.splatinsert103 = insertelement <16 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat104 = shufflevector <16 x i32> %broadcast.splatinsert103, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op = add <16 x i32> %broadcast.splat100.a, %broadcast.splat104
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body.interim113, %vector.ph97
  %index109 = phi i32 [ 0, %vector.ph97 ], [ %index.next111, %vector.body.interim113 ]
  %vec.ind110 = phi <16 x i32> [ %induction107, %vector.ph97 ], [ %vec.ind.next112, %vector.body.interim113 ] ; 3 uses
  %i.dn = add nsw <16 x i32> %vec.ind110, %broadcast.splat100.a
  %i.do = icmp sge <16 x i32> %i.dn, %broadcast.splat102.a
  %.reass = add <16 x i32> %vec.ind110, %invariant.op
  %i.dp = icmp slt <16 x i32> %.reass, zeroinitializer
  %i.dq = select <16 x i1> %i.do, <16 x i1> splat (i1 true), <16 x i1> %i.dp
  %i.dr = freeze <16 x i1> %i.dq
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %.not = icmp eq i16 %i.ds, 0
  br i1 %.not, label %vector.body.interim113, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim113:                           ; preds = %vector.body108
  %vec.ind.next112 = add nsw <16 x i32> %vec.ind110, splat (i32 16)
  %index.next111 = add nuw i32 %index109, 16      ; 2 uses
  %i.dt = icmp eq i32 %index.next111, %n.vec98
  br i1 %i.dt, label %middle.block114, label %vector.body108, !llvm.loop !10

middle.block114:                                  ; preds = %vector.body.interim113
  br i1 %cmp.n115, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126

.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126: ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader, %middle.block114
  %.0160298.us316.us.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader ], [ %i.df, %middle.block114 ]
  br label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us

.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126, %bb.f
  %.0160298.us316.us.us.us.us.us.us.i.us = phi i32 [ %i.dy, %bb.f ], [ %.0160298.us316.us.us.us.us.us.us.i.us.ph, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126 ] ; 2 uses
  %i.du = add nsw i32 %.0160298.us316.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.dv = icmp sge i32 %i.du, %i.cr
  %i.dw = add nuw nsw i32 %i.du, %i.dj
  %i.dx = icmp slt i32 %i.dw, 0
  %or.cond.i.us = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us
  %i.dy = add nsw i32 %.0160298.us316.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.dy, %i.ay
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us, !llvm.loop !11

.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.us.us.us.us.i.us, %bb.i
  %.0160298.us316.us.us366.us.us.us.i.us = phi i32 [ %i.ei, %bb.i ], [ %i.au, %.lr.ph299.split.us315.split.us.us.us.us.us.i.us ] ; 3 uses
  %.3167296.us317.us.us.us.us.us.i.us = phi i32 [ %.4168.us326.us.us.us.us.us.i.us, %bb.i ], [ %.2166308.us.us361.us.us.us.i.us, %.lr.ph299.split.us315.split.us.us.us.us.us.i.us ] ; 3 uses
  %i.dz = add nsw i32 %.0160298.us316.us.us366.us.us.us.i.us, %i.i ; 2 uses
  %i.ea = add nsw i32 %.0160298.us316.us.us366.us.us.us.i.us, %3 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, %i.cr
  br i1 %i.eb, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us
  %i.ec = add nuw nsw i32 %i.ea, %i.dj            ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us
  %.not181.us323.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.dz
  %i.ee = icmp slt i32 %i.dz, %i.bs
  %or.cond189.us325.us.us.us.us.us.i.us = and i1 %.not181.us323.us.us.us.us.us.i.us, %i.ee
  br i1 %or.cond189.us325.us.us.us.us.us.i.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ef = add nsw i32 %.3167296.us317.us.us.us.us.us.i.us, 1
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.eg
  store i32 %.3167296.us317.us.us.us.us.us.i.us, ptr %i.eh, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4168.us326.us.us.us.us.us.i.us = phi i32 [ %i.ef, %bb.h ], [ %.3167296.us317.us.us.us.us.us.i.us, %bb.g ] ; 2 uses
  %i.ei = add nsw i32 %.0160298.us316.us.us366.us.us.us.i.us, 1 ; 2 uses
  %exitcond458.not.i.us = icmp eq i32 %i.ei, %i.ay
  br i1 %exitcond458.not.i.us, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us, !llvm.loop !12

._crit_edge.split.us327.split.us.us.us.us.us.i.us: ; preds = %bb.f, %bb.i, %middle.block114
  %.us-phi.us.us.us.us.i.us = phi i32 [ %.2166308.us.us361.us.us.us.i.us, %middle.block114 ], [ %.4168.us326.us.us.us.us.us.i.us, %bb.i ], [ %.2166308.us.us361.us.us.us.i.us, %bb.f ] ; 2 uses
  %i.ej = add nsw i32 %.0159310.us.us360.us.us.us.i.us, 1 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %i.ax
  br i1 %i.ek, label %.preheader.us.us359.us.us.us.i.us, label %._crit_edge311.split.us.us.us.us.us.i.us, !llvm.loop !13

.preheader.us.us.us.us.us.us.i.us:                ; preds = %.preheader276.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us
  %.0159310.us.us.us.us.us.us.i.us = phi i32 [ %i.id, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader276.us.us.us.us.i.us ] ; 5 uses
  %.2309.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi345.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1163349.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2166308.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi344.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1165348.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2205307.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi343.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1204347.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2211306.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi342.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1210346.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %i.el = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, %i.k ; 4 uses
  %i.em = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, %3 ; 4 uses
  %.not180.us.us.us.us.us.us.i.us = icmp sle i32 %i.bu, %i.el
  %i.en = icmp slt i32 %i.el, %i.bw
  %i.eo = and i1 %.not180.us.us.us.us.us.us.i.us, %i.en
  %or.cond187.not222.not227.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.eo, i1 false
  %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us.us.us.us.i.us ; 2 uses
  %i.ep = icmp sgt i32 %.0159310.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.i.us = and i1 %i.cm, %i.ep
  %i.eq = icmp slt i32 %.0159310.us.us.us.us.us.us.i.us, %i.s
  %.not183.us.us.us.us.us.us.i.us = icmp sle i32 %i.ce, %i.el
  %i.er = icmp slt i32 %i.el, %i.cf
  %or.cond3.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us

.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us: ; preds = %.preheader.us.us.us.us.us.us.i.us
  %i.es = load i32, ptr %i.n, align 4, !tbaa !7
  %i.et = add i32 %i.es, %i.w
  %i.eu = load i32, ptr %i.h, align 4, !tbaa !7
  %i.ev = sub i32 %i.et, %i.eu                    ; 5 uses
  %i.ew = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ex = add nsw i32 %i.ew, %i.w
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !7
  %i.ez = sub i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = load i32, ptr %i.t, align 4, !tbaa !7
  %i.fb = add nsw i32 %i.fa, %i.w
  %i.fc = load i32, ptr %i.l, align 4, !tbaa !7
  %i.fd = sub i32 %i.fb, %i.fc
  %i.fe = icmp slt i32 %i.em, %i.ez
  %i.ff = icmp slt i32 %i.cj, %i.fd
  %or.cond38.i.us.us.us.us377.us.us.us.i.us = select i1 %i.fe, i1 %i.ff, i1 false
  %i.fg = mul nuw nsw i32 %i.ez, %i.cj
  %i.fh = add nuw i32 %i.fg, %i.em
  %i.fi = mul i32 %i.fh, %i.ev                    ; 3 uses
  %or.cond38.i.us.us.us.us377.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us377.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us377.fr.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.bh) ; 2 uses
  %i.fl = add nuw i32 %i.fk, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.fk, 15
  br i1 %min.iters.check, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader
  %n.vec = and i32 %i.fl, -16                     ; 3 uses
  %i.fm = sub i32 %n.vec, %3
  %broadcast.splatinsert89.a = insertelement <16 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat90.a = shufflevector <16 x i32> %broadcast.splatinsert89.a, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <16 x i32> poison, i32 %i.fi, i64 0
  %broadcast.splat92 = shufflevector <16 x i32> %broadcast.splatinsert91, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op133 = add <16 x i32> %broadcast.splat, %broadcast.splat92
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.fn = add nsw <16 x i32> %vec.ind, %broadcast.splat
  %i.fo = icmp sge <16 x i32> %i.fn, %broadcast.splat90.a
  %.reass134 = add <16 x i32> %vec.ind, %invariant.op133
  %i.fp = icmp slt <16 x i32> %.reass134, zeroinitializer
  %i.fq = select <16 x i1> %i.fo, <16 x i1> splat (i1 true), <16 x i1> %i.fp
  %i.fr = freeze <16 x i1> %i.fq
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %.not118 = icmp eq i16 %i.fs, 0
  br i1 %.not118, label %vector.body.interim, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ft = icmp eq i32 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.fl, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader, %middle.block
  %.0160298.us.us.us.us372.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121, %bb.j
  %.0160298.us.us.us.us372.us.us.us.us.us.i.us = phi i32 [ %i.fy, %bb.j ], [ %.0160298.us.us.us.us372.us.us.us.us.us.i.us.ph, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121 ] ; 2 uses
  %i.fu = add nsw i32 %.0160298.us.us.us.us372.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.fv = icmp sge i32 %i.fu, %i.ev
  %i.fw = add nuw nsw i32 %i.fu, %i.fi
  %i.fx = icmp slt i32 %i.fw, 0
  %or.cond443.i.us = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %or.cond443.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us
  %i.fy = add nsw i32 %.0160298.us.us.us.us372.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond459.not.i.us = icmp eq i32 %i.fy, %i.ay
  br i1 %exitcond459.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us, !llvm.loop !15

.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us, %bb.m
  %.0160298.us.us.us.us372.us.us399.us.us.i.us = phi i32 [ %i.gi, %bb.m ], [ %i.au, %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us ] ; 3 uses
  %.3167296.us.us.us.us373.us.us.us.us.i.us = phi i32 [ %.4168.us.us.us.us382.us.us.us.us.i.us, %bb.m ], [ %.2166308.us.us.us.us.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us ] ; 3 uses
  %i.fz = add nsw i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, %i.i ; 2 uses
  %i.ga = add nsw i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, %3 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %i.ev
  br i1 %i.gb, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us
  %i.gc = add nuw nsw i32 %i.ga, %i.fi            ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us
  %.not181.us.us.us.us379.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.fz
  %i.ge = icmp slt i32 %i.fz, %i.bs
  %or.cond189.us.us.us.us381.us.us.us.us.i.us = and i1 %.not181.us.us.us.us379.us.us.us.us.i.us, %i.ge
  br i1 %or.cond189.us.us.us.us381.us.us.us.us.i.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gf = add nsw i32 %.3167296.us.us.us.us373.us.us.us.us.i.us, 1
  %i.gg = zext nneg i32 %i.gc to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gg
  store i32 %.3167296.us.us.us.us373.us.us.us.us.i.us, ptr %i.gh, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4168.us.us.us.us382.us.us.us.us.i.us = phi i32 [ %i.gf, %bb.l ], [ %.3167296.us.us.us.us373.us.us.us.us.i.us, %bb.k ] ; 2 uses
  %i.gi = add nsw i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, 1 ; 2 uses
  %exitcond460.not.i.us = icmp eq i32 %i.gi, %i.ay
  br i1 %exitcond460.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, !llvm.loop !12

.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.preheader.us.us.us.us.us.us.i.us, %bb.v
  %.0160298.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.ic, %bb.v ], [ %i.au, %.preheader.us.us.us.us.us.us.i.us ] ; 5 uses
  %.3297.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2309.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 4 uses
  %.3167296.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4168.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2166308.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3206295.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4207.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205307.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3212294.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4213.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211306.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 4 uses
  %i.gj = add nsw i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %i.i ; 4 uses
  %i.gk = load i32, ptr %i.n, align 4, !tbaa !7
  %i.gl = add nsw i32 %i.gk, %i.w
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !7
  %i.gn = sub i32 %i.gl, %i.gm                    ; 2 uses
  %i.go = load i32, ptr %i.q, align 4, !tbaa !7
  %i.gp = add nsw i32 %i.go, %i.w
  %i.gq = load i32, ptr %i.j, align 4, !tbaa !7
  %i.gr = sub i32 %i.gp, %i.gq                    ; 2 uses
  %i.gs = add nsw i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, %i.gn
  br i1 %i.gt, label %bb.n, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

bb.n:                                             ; preds = %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us
  %i.gu = load i32, ptr %i.t, align 4, !tbaa !7
  %i.gv = add nsw i32 %i.gu, %i.w
  %i.gw = load i32, ptr %i.l, align 4, !tbaa !7
  %i.gx = sub i32 %i.gv, %i.gw
  %i.gy = icmp slt i32 %i.em, %i.gr
  %i.gz = icmp slt i32 %i.cj, %i.gx
  %or.cond38.i.us.us.us.us.us.us.us.us.i.us = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.n
  %i.ha = mul nuw nsw i32 %i.gr, %i.cj
  %i.hb = add nuw i32 %i.ha, %i.em
  %i.hc = mul i32 %i.hb, %i.gn
  %i.hd = add nuw nsw i32 %i.hc, %i.gs            ; 3 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us
  %.not181.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.gj
  %i.hf = icmp slt i32 %i.gj, %i.bs
  %i.hg = and i1 %.not181.us.us.us.us.us.us.us.us.i.us, %i.hf
  %or.cond189.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us, i1 %i.hg, i1 false
  br i1 %or.cond189.us.us.us.us.us.us.us.us.i.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hh = add nsw i32 %.3167296.us.us.us.us.us.us.us.us.i.us, 1
  %i.hi = zext nneg i32 %i.hd to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hi
  store i32 %.3167296.us.us.us.us.us.us.us.us.i.us, ptr %i.hj, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4168.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hh, %bb.p ], [ %.3167296.us.us.us.us.us.us.us.us.i.us, %bb.o ] ; 2 uses
  %i.hk = icmp sgt i32 %.0160298.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.i.us = and i1 %i.eq, %i.hk
  %i.hl = icmp slt i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %i.p
  %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.i.us = and i1 %i.hl, %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.i.us
  %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.i.us, i1 false
  %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.i.us, i1 %i.cn, i1 false
  %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.i.us, i1 false
  %or.cond196.not255.not.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.i.us, i1 %i.er, i1 false
  %.not184.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.cg, %i.gj
  %or.cond197.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.not255.not.us.us.us.us.us.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.i.us, i1 false
  %i.hm = icmp slt i32 %i.gj, %i.ch
  %or.cond199.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.i.us, i1 %i.hm, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %bb.v

.preheader.us:                                    ; preds = %bb.q, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hn, %.preheader.us ], [ 32, %bb.q ] ; 7 uses
  %.not.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.i.us, %.3297.us.us.us.us.us.us.us.us.i.us
  %i.hn = shl i32 %.0.i200.us.us.us.us.us.us.us.us.i.us, 1
  br i1 %.not.us.us.us.us.us.us.us.us.i.us, label %bb.r, label %.preheader.us, !llvm.loop !16

bb.r:                                             ; preds = %.preheader.us
  %i.ho = add nsw i32 %.3297.us.us.us.us.us.us.us.us.i.us, 1
  %i.hp = icmp eq ptr %.3212294.us.us.us.us.us.us.us.us.i.us, null
  br i1 %i.hp, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hq = icmp slt i32 %.3206295.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.i.us
  br i1 %i.hq, label %bb.t, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

bb.t:                                             ; preds = %bb.s
  %i.hr = sext i32 %.0.i200.us.us.us.us.us.us.us.us.i.us to i64
  %i.hs = shl nsw i64 %i.hr, 2
  %i.ht = tail call ptr @realloc(ptr noundef nonnull %.3212294.us.us.us.us.us.us.us.us.i.us, i64 noundef %i.hs) #13
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

bb.u:                                             ; preds = %bb.r
  %i.hu = sext i32 %.0.i200.us.us.us.us.us.us.us.us.i.us to i64
  %i.hv = shl nsw i64 %i.hu, 2
  %i.hw = tail call noalias ptr @malloc(i64 noundef %i.hv) #12
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.u, %bb.t, %bb.s
  %.6215.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3212294.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %i.ht, %bb.t ], [ %i.hw, %bb.u ] ; 2 uses
  %.7.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3206295.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %.0.i200.us.us.us.us.us.us.us.us.i.us, %bb.t ], [ %.0.i200.us.us.us.us.us.us.us.us.i.us, %bb.u ]
  %i.hx = zext nneg i32 %i.hd to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !7
  %i.ia = sext i32 %.3297.us.us.us.us.us.us.us.us.i.us to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %.6215.us.us.us.us.us.us.us.us.i.us, i64 %i.ia
  store i32 %i.hz, ptr %i.ib, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us, %bb.q
  %.4213.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.6215.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3212294.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4207.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3206295.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.ho, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3297.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %i.ic = add nsw i32 %.0160298.us.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond461.not.i.us = icmp eq i32 %i.ic, %i.ay
  br i1 %exitcond461.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us, !llvm.loop !12

._crit_edge.split.us.us.us.us.us.us.us.i.us:      ; preds = %bb.j, %bb.m, %bb.v, %middle.block
  %.us-phi342.us.us.us.us.i.us = phi ptr [ %.2211306.us.us.us.us.us.us.i.us, %middle.block ], [ %.2211306.us.us.us.us.us.us.i.us, %bb.m ], [ %.4213.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211306.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi343.us.us.us.us.i.us = phi i32 [ %.2205307.us.us.us.us.us.us.i.us, %middle.block ], [ %.2205307.us.us.us.us.us.us.i.us, %bb.m ], [ %.4207.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205307.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi344.us.us.us.us.i.us = phi i32 [ %.2166308.us.us.us.us.us.us.i.us, %middle.block ], [ %.4168.us.us.us.us382.us.us.us.us.i.us, %bb.m ], [ %.4168.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2166308.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi345.us.us.us.us.i.us = phi i32 [ %.2309.us.us.us.us.us.us.i.us, %middle.block ], [ %.2309.us.us.us.us.us.us.i.us, %bb.m ], [ %.4.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2309.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %i.id = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %i.ie = icmp slt i32 %i.id, %i.ax
  br i1 %i.ie, label %.preheader.us.us.us.us.us.us.i.us, label %._crit_edge311.split.us.us.us.us.us.i.us, !llvm.loop !13

._crit_edge311.split.us.us.us.us.us.i.us:         ; preds = %._crit_edge.split.us327.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us
  %.us-phi338.us.us.us.us.i.us = phi ptr [ %.us-phi342.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1210346.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi339.us.us.us.us.i.us = phi i32 [ %.us-phi343.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1204347.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi340.us.us.us.us.i.us = phi i32 [ %.us-phi344.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.us-phi.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi341.us.us.us.us.i.us = phi i32 [ %.us-phi345.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1163349.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %i.if = add nsw i32 %.0350.us.us.us.us.i.us, 1  ; 2 uses
  %i.ig = icmp slt i32 %i.if, %i.av
  br i1 %i.ig, label %.preheader276.us.us.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !llvm.loop !17

_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us: ; preds = %._crit_edge311.split.us.us.us.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph417.split.us.split.us.i.us
  %.5214.us.us.i.us = phi ptr [ %.0209412.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0209412.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0209412.us.us.i.us, %bb.e ], [ %.0209412.us.us.i.us, %bb.d ], [ %.0209412.us.us.i.us, %bb.c ], [ %.0209412.us.us.i.us, %bb.b ], [ %.us-phi338.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5208.us.us.i.us = phi i32 [ %.0203413.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0203413.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0203413.us.us.i.us, %bb.e ], [ %.0203413.us.us.i.us, %bb.d ], [ %.0203413.us.us.i.us, %bb.c ], [ %.0203413.us.us.i.us, %bb.b ], [ %.us-phi339.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ]
  %.5169.us.us.i.us = phi i32 [ %.0164414.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0164414.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0164414.us.us.i.us, %bb.e ], [ %.0164414.us.us.i.us, %bb.d ], [ %.0164414.us.us.i.us, %bb.c ], [ %.0164414.us.us.i.us, %bb.b ], [ %.us-phi340.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5.us.us.i.us = phi i32 [ %.0162415.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0162415.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0162415.us.us.i.us, %bb.e ], [ %.0162415.us.us.i.us, %bb.d ], [ %.0162415.us.us.i.us, %bb.c ], [ %.0162415.us.us.i.us, %bb.b ], [ %.us-phi341.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond463.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond463.not.i.us, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %.lr.ph417.split.us.split.us.i.us, !llvm.loop !18

_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i: ; preds = %.preheader.us.us359.us.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us, %vector.body108, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us, %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us, %vector.body, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us, %bb.n, %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us
  tail call void @abort() #14
  unreachable

._crit_edge.sink.split.i:                         ; preds = %.lr.ph417.split.us.i, %.lr.ph417.split.preheader.i
  %.sink502.i = phi i64 [ %i.ba, %.lr.ph417.split.preheader.i ], [ %wide.trip.count.i, %.lr.ph417.split.us.i ]
  %i.ih = shl nuw nsw i64 %.sink502.i, 2          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ih, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.ih, i1 false), !tbaa !7
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, %.lr.ph417.split.us.split.us.i.preheader42, %.preheader277.i, %._crit_edge.sink.split.i
  %.0209.lcssa.i = phi ptr [ null, %.preheader277.i ], [ null, %._crit_edge.sink.split.i ], [ null, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5214.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0164.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5169.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0162.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.a
  store i32 %.0164.lcssa.i, ptr %i.ii, align 4, !tbaa !7
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.a
  store i32 %.0162.lcssa.i, ptr %i.ij, align 4, !tbaa !7
  store ptr %i.ae, ptr %5, align 8, !tbaa !27
  store ptr %i.ai, ptr %6, align 8, !tbaa !27
  store ptr %i.aj, ptr %7, align 8, !tbaa !27
  store ptr %.0209.lcssa.i, ptr %8, align 8, !tbaa !27
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 2194807555587505181}
!9 = !{i64 1940097227059072853}
!10 = distinct !{!10, !23, !24, !25}
!11 = distinct !{!11, !23, !25, !24}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23, !24, !25}
!15 = distinct !{!15, !23, !25, !24}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !23}
!18 = distinct !{!18, !23}
!19 = !{i64 7350828847903342301}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"p1 _ZTS3Box", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"p1 int", !20, i64 0}
!27 = !{!26, !26, i64 0}
end_hunk_0
