Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_allgather?download=true
inline.NumInlined: 40
inline.NumDeleted: 11
begin_hunk_0_@ompi_coll_base_allgather_intra_recursivedoubling:bb.a
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.t = sext i32 %4 to i64                       ; 3 uses
  %factor.op.mul = mul i64 %i.l, %i.t
  %factor.op.mul93 = mul i64 %i.l, %i.t
  br label %bb.g

bb.f:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.u = shl i32 %.06885, 1                       ; 2 uses
  %i.v = icmp slt i32 %i.u, %.val.val
  br i1 %i.v, label %bb.g, label %.loopexit, !llvm.loop !55

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.06786 = phi i32 [ %.val80, %.lr.ph ], [ %.1, %bb.f ] ; 4 uses
  %.06885 = phi i32 [ 1, %.lr.ph ], [ %i.u, %bb.f ] ; 6 uses
  %i.w = xor i32 %.06885, %.val80                 ; 3 uses
  %i.x = icmp slt i32 %.val80, %i.w               ; 2 uses
  %i.y = add nsw i32 %.06786, %.06885
  %i.z = sub nsw i32 %.06786, %.06885             ; 2 uses
  %.1 = select i1 %i.x, i32 %.06786, i32 %i.z
  %.pn92.in = select i1 %i.x, i32 %i.y, i32 %i.z
  %.pn92 = sext i32 %.pn92.in to i64
  %.pn84.reass = mul i64 %factor.op.mul, %.pn92
  %.pn91 = sext i32 %.06786 to i64
  %.pn83.reass = mul i64 %factor.op.mul93, %.pn91
  %.0 = getelementptr inbounds i8, ptr %3, i64 %.pn84.reass ; 2 uses
  %.066 = getelementptr inbounds i8, ptr %3, i64 %.pn83.reass ; 2 uses
  %i.aa = icmp eq i32 %.06885, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @ompi_datatype_sndrcv(ptr noundef %.066, i32 noundef 0, ptr noundef %5, ptr noundef %.0, i32 noundef 0, ptr noundef %5) #9
  br label %ompi_coll_base_sendrecv.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = sext i32 %.06885 to i64
  %i.ad = mul nsw i64 %i.ac, %i.t                 ; 2 uses
  %i.ae = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %.066, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad, ptr noundef %5, i32 noundef %i.w, i32 noundef -10, ptr noundef %.0, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad, ptr noundef %5, i32 noundef %i.w, i32 noundef -10, ptr noundef %6, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %.not79 = icmp eq i32 %.0.i, 0
  br i1 %.not79, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %ompi_coll_base_sendrecv.exit, %bb.e, %bb.d, %bb.b
  %.070 = phi i32 [ %i.g, %bb.b ], [ %i.r, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.0.i, %ompi_coll_base_sendrecv.exit ]
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgather_intra_sparbit(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !39 ; 9 uses
  %i.c = getelementptr i8, ptr %6, i64 220
  %.val92 = load i32, ptr %i.c, align 4, !tbaa !40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = sub nsw i64 %i.g, %i.e                   ; 3 uses
  %.not = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %.val92 to i64
  %i.j = sext i32 %4 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = mul nsw i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.m, i32 noundef %4, ptr noundef nonnull %5) #9 ; 2 uses
  %.not89 = icmp eq i32 %i.n, 0
  br i1 %.not89, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = sext i32 %.val.val to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #11 ; 4 uses
  %i.r = sitofp i32 %.val.val to double
  %i.s = tail call double @log(double noundef %i.r) #9
  %i.t = fdiv double %i.s, f0x3FE62E42FEFA39EF
  %i.u = tail call double @llvm.ceil.f64(double %i.t)
  %i.v = fptosi double %i.u to i32                ; 3 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.val.val, i1 true) ; 2 uses
  %i.x = lshr exact i32 %.val.val, %i.w
  %i.y = xor i32 %i.x, -1
  %i.z = or i32 %i.y, 1
  %i.aa = shl i32 %i.z, %i.w
  %i.ab = icmp sgt i32 %i.v, 0
  br i1 %i.ab, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %bb.c
  %i.ac = add nsw i32 %i.v, -1
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = add i32 %.val92, %.val.val              ; 3 uses
  %i.af = sext i32 %1 to i64                      ; 2 uses
  %i.ag = mul i64 %i.h, %i.af
  %i.ah = sext i32 %4 to i64                      ; 2 uses
  %i.ai = mul i64 %i.h, %i.ah
  br label %bb.d

._crit_edge102:                                   ; preds = %._crit_edge, %bb.c
  tail call void @free(ptr noundef %i.q) #9
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph101, %._crit_edge
  %.099 = phi i32 [ 0, %.lr.ph101 ], [ %i.bw, %._crit_edge ]
  %.08298 = phi i32 [ %i.ad, %.lr.ph101 ], [ %i.bt, %._crit_edge ] ; 7 uses
  %.08497 = phi i32 [ 1, %.lr.ph101 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %i.aj = add i32 %.08298, %.val92
  %i.ak = urem i32 %i.aj, %.val.val
  %i.al = sub i32 %i.ae, %.08298
  %i.am = urem i32 %i.al, %.val.val
  %i.an = and i32 %.08298, %i.aa
  %i.ao = icmp eq i32 %i.an, %.08298              ; 2 uses
  %i.ap = zext i1 %i.ao to i32                    ; 2 uses
  %i.aq = sub nsw i32 %.08497, %i.ap              ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.as = sext i32 %.08497 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.as
  %.neg91 = sext i1 %i.ao to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %.neg91
  %wide.trip.count = zext nneg i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = shl nuw nsw i32 %indvars.iv.tr, 1       ; 2 uses
  %i.aw = mul i32 %.08298, %i.av
  %i.ax = sub i32 %i.ae, %i.aw
  %i.ay = urem i32 %i.ax, %.val.val               ; 2 uses
  %.neg = xor i32 %i.av, -1
  %.neg90 = mul i32 %.08298, %.neg
  %i.az = add i32 %i.ae, %.neg90
  %i.ba = urem i32 %i.az, %.val.val               ; 2 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !59
  %i.bc = sext i32 %i.ay to i64
  %i.bd = mul i64 %i.ag, %i.bc
  %i.be = getelementptr inbounds i8, ptr %3, i64 %i.bd
  %i.bf = sub nsw i32 -1073741823, %i.ay
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.bh = tail call i32 %i.bb(ptr noundef %i.be, i64 noundef %i.af, ptr noundef %5, i32 noundef %i.ak, i32 noundef %i.bf, i32 noundef 4, ptr noundef %6, ptr noundef %i.bg) #9 ; 0 uses
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !60
  %i.bj = sext i32 %i.ba to i64
  %i.bk = mul i64 %i.ai, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  %i.bm = sub nsw i32 -1073741823, %i.ba
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.bo = tail call i32 %i.bi(ptr noundef %i.bl, i64 noundef %i.ah, ptr noundef %5, i32 noundef %i.am, i32 noundef %i.bm, ptr noundef %6, ptr noundef %i.bn) #9 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.bp = shl nuw nsw i32 %i.aq, 1
  %i.bq = zext nneg i32 %i.bp to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.083.lcssa = phi i64 [ 0, %bb.d ], [ %i.bq, %._crit_edge.loopexit ]
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !62
  %i.bs = tail call i32 %i.br(i64 noundef %.083.lcssa, ptr noundef %i.q, ptr noundef null) #9 ; 0 uses
  %i.bt = lshr i32 %.08298, 1
  %i.bu = shl i32 %.08497, 1
  %i.bv = sub nsw i32 %i.bu, %i.ap
  %i.bw = add nuw nsw i32 %.099, 1                ; 2 uses
  %exitcond105.not = icmp eq i32 %i.bw, %i.v
  br i1 %exitcond105.not, label %._crit_edge102, label %bb.d, !llvm.loop !57

bb.f:                                             ; preds = %bb.b, %._crit_edge102
  %.085 = phi i32 [ 0, %._crit_edge102 ], [ %i.n, %bb.b ]
  ret i32 %.085
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
define i32 @ompi_coll_base_allgather_intra_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !39 ; 5 uses
  %i.c = getelementptr i8, ptr %6, i64 220
  %.val58 = load i32, ptr %i.c, align 4, !tbaa !40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = sub nsw i64 %i.g, %i.e                   ; 2 uses
  %i.i = sext i32 %4 to i64                       ; 4 uses
  %.not = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %.val58 to i64
  %i.k = mul nsw i64 %i.j, %i.i
  %i.l = mul nsw i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.m, i32 noundef %4, ptr noundef nonnull %5) #9 ; 2 uses
  %.not56 = icmp eq i32 %i.n, 0
  br i1 %.not56, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = add nsw i32 %.val58, 1
  %i.p = srem i32 %i.o, %.val.val                 ; 2 uses
  %i.q = add i32 %.val.val, -1                    ; 3 uses
  %8 = insertelement <2 x i32> poison, i32 %.val.val, i64 0 ; 3 uses
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = add i32 %i.q, %.val58
  %i.s = srem i32 %i.r, %.val.val                 ; 3 uses
  %i.t = icmp sgt i32 %.val.val, 1
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.u = mul i64 %i.h, %i.i                       ; 4 uses
  %i.v = icmp eq i32 %i.p, %i.s
  %i.w = icmp eq i32 %i.s, %.val58
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %ompi_coll_base_sendrecv.exit.us, label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit.us:                  ; preds = %.lr.ph, %bb.d
  %.060.us = phi i32 [ %i.af, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.x = sub nsw i32 %.val58, %.060.us
  %10 = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %11 = add <2 x i32> %10, %8
  %12 = shufflevector <2 x i32> %11, <2 x i32> poison, <2 x i32> zeroinitializer
  %13 = add <2 x i32> %12, <i32 -1, i32 0>
  %14 = srem <2 x i32> %13, %9                    ; 2 uses
  %15 = extractelement <2 x i32> %14, i64 0
  %i.y = sext i32 %15 to i64
  %i.z = mul i64 %i.u, %i.y
  %i.aa = getelementptr inbounds i8, ptr %3, i64 %i.z
  %16 = extractelement <2 x i32> %14, i64 1
  %i.ab = sext i32 %16 to i64
  %i.ac = mul i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  %i.ae = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.ad, i32 noundef %4, ptr noundef %5, ptr noundef %i.aa, i32 noundef %4, ptr noundef %5) #9 ; 2 uses
  %.not57.us = icmp eq i32 %i.ae, 0
  br i1 %.not57.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %ompi_coll_base_sendrecv.exit.us
  %i.af = add nuw nsw i32 %.060.us, 1             ; 2 uses
  %exitcond65.not = icmp eq i32 %i.af, %i.q
  br i1 %exitcond65.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit.us, !llvm.loop !63

bb.e:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.ag = add nuw nsw i32 %.060, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.q
  br i1 %exitcond.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit, !llvm.loop !63

ompi_coll_base_sendrecv.exit:                     ; preds = %.lr.ph, %bb.e
  %.060 = phi i32 [ %i.ag, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = sub nsw i32 %.val58, %.060
  %17 = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %18 = add <2 x i32> %17, %8
  %19 = shufflevector <2 x i32> %18, <2 x i32> poison, <2 x i32> zeroinitializer
  %20 = add <2 x i32> %19, <i32 -1, i32 0>
  %21 = srem <2 x i32> %20, %9                    ; 2 uses
  %22 = extractelement <2 x i32> %21, i64 0
  %i.ai = sext i32 %22 to i64
  %i.aj = mul i64 %i.u, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.aj
  %23 = extractelement <2 x i32> %21, i64 1
  %i.al = sext i32 %23 to i64
  %i.am = mul i64 %i.u, %i.al
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  %i.ao = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.an, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i, ptr noundef %5, i32 noundef %i.p, i32 noundef -10, ptr noundef %i.ak, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i, ptr noundef %5, i32 noundef %i.s, i32 noundef -10, ptr noundef %6, ptr noundef null) #9 ; 2 uses
  %.not57 = icmp eq i32 %i.ao, 0
  br i1 %.not57, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %ompi_coll_base_sendrecv.exit, %bb.d, %ompi_coll_base_sendrecv.exit.us, %bb.c, %bb.b
  %.051 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.ae, %ompi_coll_base_sendrecv.exit.us ], [ 0, %bb.e ], [ %i.ao, %ompi_coll_base_sendrecv.exit ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgather_intra_neighborexchange(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.e, align 8, !tbaa !39 ; 9 uses
  %i.f = getelementptr i8, ptr %6, i64 220
  %.val97 = load i32, ptr %i.f, align 4, !tbaa !40 ; 8 uses
  %i.g = and i32 %.val.val, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @ompi_coll_base_allgather_intra_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr poison)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = sub nsw i64 %i.l, %i.j                   ; 3 uses
  %i.n = sext i32 %.val97 to i64
  %i.o = sext i32 %4 to i64                       ; 5 uses
  %i.p = mul nsw i64 %i.n, %i.o                   ; 2 uses
  %.not92 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = mul nsw i64 %i.m, %i.p
  %i.r = getelementptr inbounds i8, ptr %3, i64 %i.q
  %i.s = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.r, i32 noundef %4, ptr noundef nonnull %5) #9 ; 2 uses
  %.not93 = icmp eq i32 %i.s, 0
  br i1 %.not93, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = and i32 %.val97, 1
  %.not94 = icmp eq i32 %i.t, 0
  br i1 %.not94, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = or disjoint i32 %.val97, 1
  %i.v = srem i32 %i.u, %.val.val
  %i.w = add i32 %.val.val, -1
  %i.x = add i32 %i.w, %.val97
  br label %ompi_coll_base_sendrecv.exit

bb.g:                                             ; preds = %bb.e
  %i.y = add i32 %.val.val, -1
  %i.z = add i32 %i.y, %.val97
  %i.aa = srem i32 %i.z, %.val.val                ; 2 uses
  %i.ab = add nsw i32 %.val97, 1
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.f, %bb.g
  %.sink112 = phi i32 [ %i.v, %bb.f ], [ %i.aa, %bb.g ] ; 4 uses
  %.pn = phi i32 [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = phi i32 [ %.val97, %bb.f ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ad = phi <2 x i32> [ <i32 2, i32 -2>, %bb.f ], [ <i32 -2, i32 2>, %bb.g ]
  %.sink111 = srem i32 %.pn, %.val.val
  store i32 %.sink112, ptr %i.a, align 4, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sink111, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.ac, ptr %i.c, align 4, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ac, ptr %i.af, align 4, !tbaa !65
  store <2 x i32> %i.ad, ptr %i.b, align 8, !tbaa !65
  %i.ag = sext i32 %.sink112 to i64
  %i.ah = mul i64 %i.m, %i.o                      ; 3 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %i.ak = mul nsw i64 %i.m, %i.p
  %i.al = getelementptr inbounds i8, ptr %3, i64 %i.ak
  %i.am = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.al, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.o, ptr noundef nonnull %5, i32 noundef %.sink112, i32 noundef -10, ptr noundef %i.aj, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.o, ptr noundef nonnull %5, i32 noundef %.sink112, i32 noundef -10, ptr noundef nonnull %6, ptr noundef null) #9 ; 2 uses
  %.not95 = icmp eq i32 %i.am, 0
  br i1 %.not95, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.an = ashr exact i32 %.val.val, 1             ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ap = shl nsw i64 %i.o, 1                     ; 3 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %ompi_coll_base_sendrecv.exit99
  %i.ar = add nuw nsw i32 %.086105, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.an
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !64

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.1106 = phi i32 [ %i.ac, %.lr.ph ], [ %i.ba, %bb.i ]
  %.086105 = phi i32 [ 1, %.lr.ph ], [ %i.ar, %bb.i ] ; 2 uses
  %i.as = and i32 %.086105, 1
  %i.at = zext nneg i32 %i.as to i64              ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !65
  %i.ay = add i32 %i.av, %.val.val
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = srem i32 %i.az, %.val.val               ; 3 uses
  store i32 %i.ba, ptr %i.au, align 4, !tbaa !65
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.ah, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %3, i64 %i.bc ; 2 uses
  %i.be = sext i32 %.1106 to i64
  %i.bf = mul i64 %i.ah, %i.be
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !65 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, %.val97
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.bg, i32 noundef %i.aq, ptr noundef nonnull %5, ptr noundef %i.bd, i32 noundef %i.aq, ptr noundef nonnull %5) #9
  br label %ompi_coll_base_sendrecv.exit99

bb.l:                                             ; preds = %bb.j
  %i.bl = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.bg, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ap, ptr noundef nonnull %5, i32 noundef %i.bi, i32 noundef -10, ptr noundef %i.bd, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ap, ptr noundef nonnull %5, i32 noundef %i.bi, i32 noundef -10, ptr noundef nonnull %6, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit99

ompi_coll_base_sendrecv.exit99:                   ; preds = %bb.k, %bb.l
  %.0.i98 = phi i32 [ %i.bk, %bb.k ], [ %i.bl, %bb.l ] ; 2 uses
  %.not96 = icmp eq i32 %.0.i98, 0
  br i1 %.not96, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %ompi_coll_base_sendrecv.exit99, %bb.h, %bb.d, %ompi_coll_base_sendrecv.exit, %bb.b
  %.087 = phi i32 [ %i.h, %bb.b ], [ %i.s, %bb.d ], [ %i.am, %ompi_coll_base_sendrecv.exit ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.0.i98, %ompi_coll_base_sendrecv.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.087
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgather_intra_two_procs(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 220
  %.val48 = load i32, ptr %i.a, align 4, !tbaa !40 ; 3 uses
  %i.b = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq i32 %.val.val, 2
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = sub nsw i64 %i.g, %i.e                   ; 3 uses
  %i.i = xor i32 %.val48, 1                       ; 3 uses
  %i.j = icmp eq ptr %0, inttoptr (i64 1 to ptr)  ; 2 uses
  br i1 %i.j, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = sext i32 %4 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %.val48 to i64
  %i.l = sext i32 %4 to i64                       ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = mul nsw i64 %i.m, %i.h
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.c ] ; 3 uses
  %.040 = phi ptr [ %2, %._crit_edge ], [ %5, %bb.c ] ; 2 uses
  %.039 = phi i32 [ %1, %._crit_edge ], [ %4, %bb.c ] ; 2 uses
  %.0 = phi ptr [ %0, %._crit_edge ], [ %i.o, %bb.c ]
  %i.p = sext i32 %i.i to i64
  %i.q = mul nsw i64 %.pre-phi, %i.p
  %i.r = mul nsw i64 %i.q, %i.h
  %i.s = getelementptr inbounds i8, ptr %3, i64 %i.r
  %i.t = sext i32 %.039 to i64
  %i.u = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %.0, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.t, ptr noundef %.040, i32 noundef %i.i, i32 noundef -10, ptr noundef %i.s, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.pre-phi, ptr noundef nonnull %5, i32 noundef %i.i, i32 noundef -10, ptr noundef nonnull %6, ptr noundef null) #9 ; 2 uses
end_hunk_0
