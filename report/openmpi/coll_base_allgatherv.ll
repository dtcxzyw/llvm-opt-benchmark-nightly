Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_allgatherv?download=true
inline.NumInlined: 29
inline.NumDeleted: 6
begin_hunk_0_@ompi_coll_base_allgatherv_intra_sparbit:bb.a
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !48
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr inbounds i8, ptr %3, i64 %i.bd
  %i.bf = zext nneg i32 %i.ax to i64
  %i.bg = sub nsw i32 -1073741823, %i.as
  %i.bh = add nsw i32 %.1103, 1
  %i.bi = sext i32 %.1103 to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bi
  %i.bk = tail call i32 %i.az(ptr noundef %i.be, i64 noundef %i.bf, ptr noundef %6, i32 noundef %i.ah, i32 noundef %i.bg, i32 noundef 4, ptr noundef %7, ptr noundef %i.bj) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.2 = phi i32 [ %i.bh, %bb.e ], [ %.1103, %.lr.ph ] ; 3 uses
  %i.bl = sext i32 %i.au to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !48 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !58
  %i.bq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bl
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !48
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.h, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt
  %i.bv = zext nneg i32 %i.bn to i64
  %i.bw = sub nsw i32 -1073741823, %i.au
  %i.bx = add nsw i32 %.2, 1
  %i.by = sext i32 %.2 to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.by
  %i.ca = tail call i32 %i.bp(ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %6, i32 noundef %i.aj, i32 noundef %i.bw, ptr noundef %7, ptr noundef %i.bz) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.3 = phi i32 [ %i.bx, %bb.g ], [ %.2, %bb.f ]  ; 2 uses
  %i.cb = add nuw nsw i32 %.088102, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %bb.h
  %i.cc = sext i32 %.3 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.1.lcssa = phi i64 [ 0, %bb.d ], [ %i.cc, %._crit_edge.loopexit ]
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !60
  %i.ce = tail call i32 %i.cd(i64 noundef %.1.lcssa, ptr noundef %i.r, ptr noundef null) #9 ; 0 uses
  %i.cf = lshr i32 %.086105, 1
  %i.cg = shl i32 %.089104, 1
  %i.ch = sub nsw i32 %i.cg, %i.am
  %i.ci = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond110.not = icmp eq i32 %i.ci, %i.w
  br i1 %exitcond110.not, label %._crit_edge109, label %bb.d, !llvm.loop !55

bb.i:                                             ; preds = %bb.b, %._crit_edge109
  %.090 = phi i32 [ 0, %._crit_edge109 ], [ %i.o, %bb.b ]
  ret i32 %.090
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgatherv_intra_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %7, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !39 ; 5 uses
  %i.c = getelementptr i8, ptr %7, i64 220
  %.val61 = load i32, ptr %i.c, align 4, !tbaa !40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = sub nsw i64 %i.g, %i.e                   ; 5 uses
  %.not = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %.val61 to i64                  ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %5, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.h, %i.l
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m
  %i.o = getelementptr inbounds [4 x i8], ptr %4, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  %i.q = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %6) #9 ; 2 uses
  %.not59 = icmp eq i32 %i.q, 0
  br i1 %.not59, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = add nsw i32 %.val61, 1
  %i.s = srem i32 %i.r, %.val.val                 ; 2 uses
  %i.t = add i32 %.val.val, -1                    ; 3 uses
  %i.u = insertelement <2 x i32> poison, i32 %.val.val, i64 0 ; 3 uses
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = add i32 %i.t, %.val61
  %i.x = srem i32 %i.w, %.val.val                 ; 3 uses
  %i.y = icmp sgt i32 %.val.val, 1
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.z = icmp eq i32 %i.s, %i.x
  %i.aa = icmp eq i32 %i.x, %.val61
  %or.cond.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i, label %ompi_coll_base_sendrecv.exit.us, label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit.us:                  ; preds = %.lr.ph, %bb.d
  %.05363.us = phi i32 [ %i.ba, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = sub nsw i32 %.val61, %.05363.us
  %i.ac = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ad = add <2 x i32> %i.ac, %i.u
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = add <2 x i32> %i.ae, <i32 -1, i32 0>
  %i.ag = srem <2 x i32> %i.af, %i.v              ; 2 uses
  %i.ah = extractelement <2 x i32> %i.ag, i64 0
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.h, %i.al
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  %i.ao = extractelement <2 x i32> %i.ag, i64 1
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.h, %i.as
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ap
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !48
  %i.ax = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ai
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48
  %i.az = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.au, i32 noundef %i.aw, ptr noundef %6, ptr noundef %i.an, i32 noundef %i.ay, ptr noundef %6) #9 ; 2 uses
  %.not60.us = icmp eq i32 %i.az, 0
  br i1 %.not60.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %ompi_coll_base_sendrecv.exit.us
  %i.ba = add nuw nsw i32 %.05363.us, 1           ; 2 uses
  %exitcond68.not = icmp eq i32 %i.ba, %i.t
  br i1 %exitcond68.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit.us, !llvm.loop !61

bb.e:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.bb = add nuw nsw i32 %.05363, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.t
  br i1 %exitcond.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit, !llvm.loop !61

ompi_coll_base_sendrecv.exit:                     ; preds = %.lr.ph, %bb.e
  %.05363 = phi i32 [ %i.bb, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.bc = sub nsw i32 %.val61, %.05363
  %i.bd = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.be = add <2 x i32> %i.bd, %i.u
  %i.bf = shufflevector <2 x i32> %i.be, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bg = add <2 x i32> %i.bf, <i32 -1, i32 0>
  %i.bh = srem <2 x i32> %i.bg, %i.v              ; 2 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 0
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !48
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.h, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  %i.bp = extractelement <2 x i32> %i.bh, i64 1
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !48
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.h, %i.bt
  %i.bv = getelementptr inbounds i8, ptr %3, i64 %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bq
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48
  %i.by = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bj
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !48
  %i.ca = sext i32 %i.bz to i64
  %i.cb = sext i32 %i.bx to i64
  %i.cc = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.bv, i64 noundef range(i64 -2147483648, 2147483648) %i.cb, ptr noundef %6, i32 noundef %i.s, i32 noundef -11, ptr noundef %i.bo, i64 noundef range(i64 -2147483648, 2147483648) %i.ca, ptr noundef %6, i32 noundef %i.x, i32 noundef -11, ptr noundef %7, ptr noundef null) #9 ; 2 uses
  %.not60 = icmp eq i32 %i.cc, 0
  br i1 %.not60, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %ompi_coll_base_sendrecv.exit, %bb.d, %ompi_coll_base_sendrecv.exit.us, %bb.c, %bb.b
  %.054 = phi i32 [ %i.q, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.az, %ompi_coll_base_sendrecv.exit.us ], [ 0, %bb.e ], [ %i.cc, %ompi_coll_base_sendrecv.exit ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgatherv_intra_neighborexchange(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.g = getelementptr i8, ptr %7, i64 264
  %.val = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.h, align 8, !tbaa !39 ; 9 uses
  %i.i = getelementptr i8, ptr %7, i64 220
  %.val125 = load i32, ptr %i.i, align 4, !tbaa !40 ; 8 uses
  %i.j = and i32 %.val.val, 1
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @ompi_coll_base_allgatherv_intra_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr poison)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = sub nsw i64 %i.o, %i.m                   ; 3 uses
  %i.q = sext i32 %.val125 to i64                 ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %5, i64 %i.q ; 2 uses
  %.not116 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not116, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.p, %i.t
  %i.v = getelementptr inbounds i8, ptr %3, i64 %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %4, i64 %i.q
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48
  %i.y = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %6) #9 ; 2 uses
  %.not117 = icmp eq i32 %i.y, 0
  br i1 %.not117, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = and i32 %.val125, 1
  %.not118 = icmp eq i32 %i.z, 0
  br i1 %.not118, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = or disjoint i32 %.val125, 1
  %i.ab = srem i32 %i.aa, %.val.val
  %i.ac = add i32 %.val.val, -1
  %i.ad = add i32 %i.ac, %.val125
  br label %ompi_coll_base_sendrecv.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = add i32 %.val.val, -1
  %i.af = add i32 %i.ae, %.val125
  %i.ag = srem i32 %i.af, %.val.val               ; 2 uses
  %i.ah = add nsw i32 %.val125, 1
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.g, %bb.f
  %.pn = phi i32 [ %i.ad, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = phi i32 [ %i.ab, %bb.f ], [ %i.ag, %bb.g ] ; 4 uses
  %.sroa.5.0 = phi i32 [ -2, %bb.f ], [ 2, %bb.g ]
  %.sroa.082.0 = phi i32 [ 2, %bb.f ], [ -2, %bb.g ]
  %.sroa.0.0 = phi i32 [ %.val125, %bb.f ], [ %i.ag, %bb.g ] ; 3 uses
  %.sroa.1291.0 = srem i32 %.pn, %.val.val
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.am = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aj
  %i.an = load i32, ptr %i.am, align 4, !tbaa !48
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.p, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %3, i64 %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %4, i64 %i.q
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.at = load i32, ptr %i.r, align 4, !tbaa !48
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.p, %i.au
  %i.aw = getelementptr inbounds i8, ptr %3, i64 %i.av
  %i.ax = sext i32 %i.al to i64
  %i.ay = sext i32 %i.as to i64
  %i.az = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.aw, i64 noundef range(i64 -2147483648, 2147483648) %i.ay, ptr noundef nonnull %6, i32 noundef %i.ai, i32 noundef -11, ptr noundef %i.aq, i64 noundef range(i64 -2147483648, 2147483648) %i.ax, ptr noundef nonnull %6, i32 noundef %i.ai, i32 noundef -11, ptr noundef nonnull %7, ptr noundef null) #9 ; 2 uses
  %.not119 = icmp eq i32 %i.az, 0
  br i1 %.not119, label %bb.h, label %.thread

bb.h:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.ba = ashr exact i32 %.val.val, 1             ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %.cont.lr.ph, label %.thread

.cont.lr.ph:                                      ; preds = %bb.h
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.cont.lr.ph, %bb.o
  %.1135 = phi i32 [ %.sroa.0.0, %.cont.lr.ph ], [ %i.be, %bb.o ]
  %.0104134 = phi i32 [ %.sroa.0.0, %.cont.lr.ph ], [ %..sroa.0.1, %bb.o ] ; 2 uses
  %.sroa.12.1208 = phi i32 [ %.sroa.0.0, %.cont.lr.ph ], [ %.sroa.12.1., %bb.o ] ; 2 uses
  %.0177207 = phi i32 [ 1, %.cont.lr.ph ], [ %i.by, %bb.o ] ; 2 uses
  %11 = and i32 %.0177207, 1
  %.sroa.idx13.not = icmp eq i32 %11, 0           ; 5 uses
  %.sroa.speculated18 = select i1 %.sroa.idx13.not, i32 %.0104134, i32 %.sroa.12.1208
  %.sroa.speculated12 = select i1 %.sroa.idx13.not, i32 %.sroa.082.0, i32 %.sroa.5.0
  %i.bc = add i32 %.sroa.speculated12, %.val.val
  %i.bd = add i32 %i.bc, %.sroa.speculated18
  %i.be = srem i32 %i.bd, %.val.val               ; 5 uses
  %.sroa.12.1. = select i1 %.sroa.idx13.not, i32 %.sroa.12.1208, i32 %i.be
  %..sroa.0.1 = select i1 %.sroa.idx13.not, i32 %i.be, i32 %.0104134
  %i.bf = sext i32 %.1135 to i64                  ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bf
  %i.bh = load <2 x i32>, ptr %i.bg, align 4, !tbaa !48
  store <2 x i32> %i.bh, ptr %i.a, align 8, !tbaa !48
  %i.bi = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bf
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !48
  store <2 x i32> %i.bj, ptr %i.b, align 8, !tbaa !48
  %i.bk = call i32 @ompi_datatype_create_indexed(i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %6, ptr noundef nonnull %i.f) #9 ; 2 uses
  %.not120 = icmp eq i32 %i.bk, 0
  br i1 %.not120, label %bb.i, label %.thread

bb.i:                                             ; preds = %.lr.ph
  %.val127 = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.bl = call i32 @opal_datatype_commit(ptr noundef %.val127) #9 ; 2 uses
  %.not121 = icmp eq i32 %i.bl, 0
  br i1 %.not121, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bm = sext i32 %i.be to i64                   ; 2 uses
  %12 = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bm
  %13 = load i32, ptr %12, align 4, !tbaa !48
  store i32 %13, ptr %i.c, align 4, !tbaa !48
  %14 = add nsw i32 %i.be, 1
  %15 = sext i32 %14 to i64                       ; 2 uses
  %16 = getelementptr inbounds [4 x i8], ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !48
  store i32 %17, ptr %9, align 4, !tbaa !48
  %i.bn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bm
  %18 = load i32, ptr %i.bn, align 4, !tbaa !48
  store i32 %18, ptr %i.d, align 4, !tbaa !48
  %i.bo = getelementptr inbounds [4 x i8], ptr %5, i64 %15
  %19 = load i32, ptr %i.bo, align 4, !tbaa !48
  store i32 %19, ptr %10, align 4, !tbaa !48
  %i.bp = call i32 @ompi_datatype_create_indexed(i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %6, ptr noundef nonnull %i.e) #9 ; 2 uses
  %.not122 = icmp eq i32 %i.bp, 0
  br i1 %.not122, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.val126 = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.bq = call i32 @opal_datatype_commit(ptr noundef %.val126) #9 ; 2 uses
  %.not123 = icmp eq i32 %i.bq, 0
  br i1 %.not123, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !51  ; 2 uses
  %.sroa.speculated = select i1 %.sroa.idx13.not, i32 %i.ai, i32 %.sroa.1291.0 ; 3 uses
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !51  ; 2 uses
  %i.bt = icmp eq i32 %.sroa.speculated, %.val125
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = call i32 @ompi_datatype_sndrcv(ptr noundef %3, i32 noundef 1, ptr noundef %i.br, ptr noundef %3, i32 noundef 1, ptr noundef %i.bs) #9
  br label %ompi_coll_base_sendrecv.exit129

bb.n:                                             ; preds = %bb.l
  %i.bv = call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %3, i64 noundef 1, ptr noundef %i.br, i32 noundef %.sroa.speculated, i32 noundef -11, ptr noundef %3, i64 noundef 1, ptr noundef %i.bs, i32 noundef %.sroa.speculated, i32 noundef -11, ptr noundef nonnull %7, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit129

ompi_coll_base_sendrecv.exit129:                  ; preds = %bb.m, %bb.n
  %.0.i128 = phi i32 [ %i.bu, %bb.m ], [ %i.bv, %bb.n ] ; 2 uses
  %.not124 = icmp eq i32 %.0.i128, 0
  br i1 %.not124, label %bb.o, label %.thread

bb.o:                                             ; preds = %ompi_coll_base_sendrecv.exit129
  %i.bw = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.bx = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.by = add nuw nsw i32 %.0177207, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.ba
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !62

.thread:                                          ; preds = %bb.o, %.lr.ph, %bb.i, %bb.j, %bb.k, %ompi_coll_base_sendrecv.exit129, %bb.h, %bb.d, %ompi_coll_base_sendrecv.exit, %bb.b
  %.0105 = phi i32 [ %i.k, %bb.b ], [ %i.y, %bb.d ], [ %i.az, %ompi_coll_base_sendrecv.exit ], [ 0, %bb.h ], [ 0, %bb.o ], [ %i.bk, %.lr.ph ], [ %i.bl, %bb.i ], [ %i.bp, %bb.j ], [ %i.bq, %bb.k ], [ %.0.i128, %ompi_coll_base_sendrecv.exit129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0105
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgatherv_intra_two_procs(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %7, i64 220
  %.val51 = load i32, ptr %i.a, align 4, !tbaa !40 ; 3 uses
  %i.b = getelementptr i8, ptr %7, i64 264
  %.val = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq i32 %.val.val, 2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = sub nsw i64 %i.g, %i.e                   ; 3 uses
  %i.i = xor i32 %.val51, 1                       ; 3 uses
  %i.j = icmp eq ptr %0, inttoptr (i64 1 to ptr)  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %.val51 to i64                  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %5, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.h, %i.n
  %i.p = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %4, i64 %i.k
  %i.r = load i32, ptr %i.q, align 4, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.043 = phi ptr [ %6, %bb.c ], [ %2, %bb.b ]    ; 2 uses
  %.042 = phi i32 [ %i.r, %bb.c ], [ %1, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %i.p, %bb.c ], [ %0, %bb.b ]
  %i.s = sext i32 %i.i to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %5, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.h, %i.v
  %i.x = getelementptr inbounds i8, ptr %3, i64 %i.w
  %i.y = sext i32 %.042 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %4, i64 %i.s
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %.0, i64 noundef range(i64 -2147483648, 2147483648) %i.y, ptr noundef %.043, i32 noundef %i.i, i32 noundef -11, ptr noundef %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, ptr noundef nonnull %6, i32 noundef %i.i, i32 noundef -11, ptr noundef nonnull %7, ptr noundef null) #9 ; 2 uses
  %.not48 = icmp ne i32 %i.ac, 0
  %brmerge = or i1 %i.j, %.not48
  br i1 %brmerge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %.val51 to i64                 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.h, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  %i.aj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ad
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !48
  %i.al = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %.042, ptr noundef %.043, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %6) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.041 = phi i32 [ 52, %bb.a ], [ %i.ac, %bb.d ], [ %i.al, %bb.e ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgatherv_intra_basic_default(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr i8, ptr %7, i64 264
  %.val = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !39
  %i.d = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %7, i64 220
  %.val46 = load i32, ptr %i.e, align 4, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = sub nsw i64 %i.i, %i.g
  %i.k = sext i32 %.val46 to i64                  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %5, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.j, %i.n
  %i.p = getelementptr inbounds i8, ptr %3, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr %4, i64 %i.k
  %i.r = load i32, ptr %i.q, align 4, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.039 = phi i32 [ %i.r, %bb.b ], [ %1, %bb.a ]
  %.037 = phi ptr [ %i.p, %bb.b ], [ %0, %bb.a ]
  %.0 = phi ptr [ %6, %bb.b ], [ %2, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 344 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.y = tail call i32 %i.v(ptr noundef %.037, i32 noundef %.039, ptr noundef %.0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %i.x) #9 ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @ompi_datatype_create_indexed(i32 noundef %.val.val, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.val47 = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.aa = call i32 @opal_datatype_commit(ptr noundef %.val47) #9 ; 2 uses
  %.not45 = icmp eq i32 %i.aa, 0
  br i1 %.not45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !63  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.ah = call i32 %i.ad(ptr noundef %3, i32 noundef 1, ptr noundef %i.ae, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %i.ag) #9 ; 0 uses
  %i.ai = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.f
  %.038 = phi i32 [ 0, %bb.f ], [ %i.y, %bb.c ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.038
}

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_sendrecv_actual(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS12opal_class_t", !8, i64 0}
!10 = !{!"opal_object_t", !9, i64 0, !5, i64 8}
!11 = !{!"p1 _ZTS19opal_hash_element_t", !8, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!"p1 _ZTS24opal_hash_type_methods_t", !8, i64 0}
!14 = !{!"opal_hash_table_t", !10, i64 0, !11, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64}
!15 = !{!"p1 _ZTS11opal_info_t", !8, i64 0}
!16 = !{!"opal_infosubscriber_t", !10, i64 0, !14, i64 16, !15, i64 88}
!17 = !{!"opal_mutex_t", !10, i64 0, !4, i64 16, !5, i64 56}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"ompi_comm_extended_cid_t", !12, i64 0, !4, i64 8}
!20 = !{!"ompi_comm_extended_cid_block_t", !19, i64 0, !12, i64 16, !4, i64 24, !4, i64 25}
!21 = !{!"p1 int", !8, i64 0}
!22 = !{!"p1 _ZTS12ompi_group_t", !8, i64 0}
!23 = !{!"p1 _ZTS19ompi_communicator_t", !8, i64 0}
!24 = !{!"p1 _ZTS17opal_hash_table_t", !8, i64 0}
!25 = !{!"p1 _ZTS22mca_topo_base_module_t", !8, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 _ZTS20ompi_peruse_handle_t", !26, i64 0}
!28 = !{!"p1 _ZTS17ompi_errhandler_t", !8, i64 0}
!29 = !{!"p1 _ZTS14mca_pml_comm_t", !8, i64 0}
!30 = !{!"p1 _ZTS14mca_mtl_comm_t", !8, i64 0}
!31 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !8, i64 0}
!32 = !{!"p1 _ZTS15ompi_instance_t", !8, i64 0}
!33 = !{!"p1 _ZTS13opal_object_t", !8, i64 0}
!34 = !{!"_Bool", !4, i64 0}
end_hunk_0
