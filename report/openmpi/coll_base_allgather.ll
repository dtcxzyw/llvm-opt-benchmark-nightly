Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_allgather?download=true
inline.NumInlined: 40
inline.NumDeleted: 11
begin_hunk_0_@ompi_coll_base_allgather_intra_sparbit:bb.a
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
  %i.r = insertelement <2 x i32> poison, i32 %.val.val, i64 0 ; 3 uses
  %i.s = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = add i32 %i.q, %.val58
  %i.u = srem i32 %i.t, %.val.val                 ; 3 uses
  %i.v = icmp sgt i32 %.val.val, 1
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.w = mul i64 %i.h, %i.i                       ; 4 uses
  %i.x = icmp eq i32 %i.p, %i.u
  %i.y = icmp eq i32 %i.u, %.val58
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %ompi_coll_base_sendrecv.exit.us, label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit.us:                  ; preds = %.lr.ph, %bb.d
  %.060.us = phi i32 [ %i.ao, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.z = sub nsw i32 %.val58, %.060.us
  %i.aa = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.ab = add <2 x i32> %i.aa, %i.r
  %i.ac = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ad = add <2 x i32> %i.ac, <i32 -1, i32 0>
  %i.ae = srem <2 x i32> %i.ad, %i.s              ; 2 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 0
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.w, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %3, i64 %i.ah
  %i.aj = extractelement <2 x i32> %i.ae, i64 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.w, %i.ak
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  %i.an = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.am, i32 noundef %4, ptr noundef %5, ptr noundef %i.ai, i32 noundef %4, ptr noundef %5) #9 ; 2 uses
  %.not57.us = icmp eq i32 %i.an, 0
  br i1 %.not57.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %ompi_coll_base_sendrecv.exit.us
  %i.ao = add nuw nsw i32 %.060.us, 1             ; 2 uses
  %exitcond65.not = icmp eq i32 %i.ao, %i.q
  br i1 %exitcond65.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit.us, !llvm.loop !63

bb.e:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.ap = add nuw nsw i32 %.060, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.q
  br i1 %exitcond.not, label %.loopexit, label %ompi_coll_base_sendrecv.exit, !llvm.loop !63

ompi_coll_base_sendrecv.exit:                     ; preds = %.lr.ph, %bb.e
  %.060 = phi i32 [ %i.ap, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.aq = sub nsw i32 %.val58, %.060
  %i.ar = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.as = add <2 x i32> %i.ar, %i.r
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.au = add <2 x i32> %i.at, <i32 -1, i32 0>
  %i.av = srem <2 x i32> %i.au, %i.s              ; 2 uses
  %i.aw = extractelement <2 x i32> %i.av, i64 0
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul i64 %i.w, %i.ax
  %i.az = getelementptr inbounds i8, ptr %3, i64 %i.ay
  %i.ba = extractelement <2 x i32> %i.av, i64 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.w, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %3, i64 %i.bc
  %i.be = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.bd, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i, ptr noundef %5, i32 noundef %i.p, i32 noundef -10, ptr noundef %i.az, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i, ptr noundef %5, i32 noundef %i.u, i32 noundef -10, ptr noundef %6, ptr noundef null) #9 ; 2 uses
  %.not57 = icmp eq i32 %i.be, 0
  br i1 %.not57, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %ompi_coll_base_sendrecv.exit, %bb.d, %ompi_coll_base_sendrecv.exit.us, %bb.c, %bb.b
  %.051 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.an, %ompi_coll_base_sendrecv.exit.us ], [ 0, %bb.e ], [ %i.be, %ompi_coll_base_sendrecv.exit ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgather_intra_neighborexchange(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca [2 x i32], align 4                  ; 5 uses
  %9 = alloca [2 x i32], align 8                  ; 4 uses
  %10 = alloca [2 x i32], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr i8, ptr %6, i64 264
  %.val = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8, !tbaa !39 ; 9 uses
  %i.c = getelementptr i8, ptr %6, i64 220
  %.val97 = load i32, ptr %i.c, align 4, !tbaa !40 ; 8 uses
  %i.d = and i32 %.val.val, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ompi_coll_base_allgather_intra_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr poison)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47
  %i.j = sub nsw i64 %i.i, %i.g                   ; 3 uses
  %i.k = sext i32 %.val97 to i64
  %i.l = sext i32 %4 to i64                       ; 5 uses
  %i.m = mul nsw i64 %i.k, %i.l                   ; 2 uses
  %.not92 = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not92, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nsw i64 %i.j, %i.m
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  %i.p = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %i.o, i32 noundef %4, ptr noundef nonnull %5) #9 ; 2 uses
  %.not93 = icmp eq i32 %i.p, 0
  br i1 %.not93, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = and i32 %.val97, 1
  %.not94 = icmp eq i32 %i.q, 0
  br i1 %.not94, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = or disjoint i32 %.val97, 1
  %i.s = srem i32 %i.r, %.val.val
  %i.t = add i32 %.val.val, -1
  %i.u = add i32 %i.t, %.val97
  br label %ompi_coll_base_sendrecv.exit

bb.g:                                             ; preds = %bb.e
  %i.v = add i32 %.val.val, -1
  %i.w = add i32 %i.v, %.val97
  %i.x = srem i32 %i.w, %.val.val                 ; 2 uses
  %i.y = add nsw i32 %.val97, 1
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.f, %bb.g
  %.sink112 = phi i32 [ %i.s, %bb.f ], [ %i.x, %bb.g ] ; 4 uses
  %.pn = phi i32 [ %i.u, %bb.f ], [ %i.y, %bb.g ]
  %i.z = phi i32 [ %.val97, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %11 = phi <2 x i32> [ <i32 2, i32 -2>, %bb.f ], [ <i32 -2, i32 2>, %bb.g ]
  %.sink111 = srem i32 %.pn, %.val.val
  store i32 %.sink112, ptr %8, align 4, !tbaa !65
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.sink111, ptr %12, align 4, !tbaa !65
  store i32 %i.z, ptr %10, align 4, !tbaa !65
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.z, ptr %13, align 4, !tbaa !65
  store <2 x i32> %11, ptr %9, align 8, !tbaa !65
  %i.aa = sext i32 %.sink112 to i64
  %i.ab = mul i64 %i.j, %i.l                      ; 3 uses
  %i.ac = mul i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  %i.ae = mul nsw i64 %i.j, %i.m
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  %i.ag = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.af, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.l, ptr noundef nonnull %5, i32 noundef %.sink112, i32 noundef -10, ptr noundef %i.ad, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.l, ptr noundef nonnull %5, i32 noundef %.sink112, i32 noundef -10, ptr noundef nonnull %6, ptr noundef null) #9 ; 2 uses
  %.not95 = icmp eq i32 %i.ag, 0
  br i1 %.not95, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %ompi_coll_base_sendrecv.exit
  %i.ah = ashr exact i32 %.val.val, 1             ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.aj = shl nsw i64 %i.l, 1                     ; 3 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %ompi_coll_base_sendrecv.exit99
  %i.al = add nuw nsw i32 %.086105.a, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.ah
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !64

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.1106.a = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %bb.i ]
  %.086105.a = phi i32 [ 1, %.lr.ph ], [ %i.al, %bb.i ] ; 2 uses
  %14 = and i32 %.086105.a, 1
  %15 = zext nneg i32 %14 to i64                  ; 3 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %15 ; 2 uses
  %17 = load i32, ptr %16, align 4, !tbaa !65
  %18 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %15
  %19 = load i32, ptr %18, align 4, !tbaa !65
  %i.am = add i32 %17, %.val.val
  %i.an = add i32 %i.am, %19
  %i.ao = srem i32 %i.an, %.val.val               ; 3 uses
  store i32 %i.ao, ptr %16, align 4, !tbaa !65
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.ab, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %3, i64 %i.aq ; 2 uses
  %i.as = sext i32 %.1106.a to i64
  %i.at = mul i64 %i.ab, %i.as
  %i.au = getelementptr inbounds i8, ptr %3, i64 %i.at ; 2 uses
  %20 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %15
  %21 = load i32, ptr %20, align 4, !tbaa !65     ; 3 uses
  %i.av = icmp eq i32 %21, %.val97
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.au, i32 noundef %i.ak, ptr noundef nonnull %5, ptr noundef %i.ar, i32 noundef %i.ak, ptr noundef nonnull %5) #9
  br label %ompi_coll_base_sendrecv.exit99

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.au, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.aj, ptr noundef nonnull %5, i32 noundef %21, i32 noundef -10, ptr noundef %i.ar, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.aj, ptr noundef nonnull %5, i32 noundef %21, i32 noundef -10, ptr noundef nonnull %6, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit99

ompi_coll_base_sendrecv.exit99:                   ; preds = %bb.k, %bb.l
  %.0.i98 = phi i32 [ %i.aw, %bb.k ], [ %i.ax, %bb.l ] ; 2 uses
  %.not96 = icmp eq i32 %.0.i98, 0
  br i1 %.not96, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %ompi_coll_base_sendrecv.exit99, %bb.h, %bb.d, %ompi_coll_base_sendrecv.exit, %bb.b
  %.087 = phi i32 [ %i.e, %bb.b ], [ %i.p, %bb.d ], [ %i.ag, %ompi_coll_base_sendrecv.exit ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.0.i98, %ompi_coll_base_sendrecv.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
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
  %.not45 = icmp ne i32 %i.u, 0
  %brmerge = or i1 %i.j, %.not45
  br i1 %brmerge, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %.val48 to i64
  %i.w = mul nsw i64 %.pre-phi, %i.v
  %i.x = mul nsw i64 %i.w, %i.h
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  %i.z = tail call i32 @ompi_datatype_sndrcv(ptr noundef %0, i32 noundef %.039, ptr noundef %.040, ptr noundef %i.y, i32 noundef %4, ptr noundef nonnull %5) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.038 = phi i32 [ 52, %bb.a ], [ %i.u, %bb.d ], [ %i.z, %bb.e ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allgather_intra_basic_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %6, i64 220
  %.val44 = load i32, ptr %i.c, align 4, !tbaa !40 ; 2 uses
  %.not = icmp eq i32 %.val44, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = sub nsw i64 %i.g, %i.e
  %i.i = sext i32 %.val44 to i64
  %i.j = sext i32 %4 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = mul i64 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.037 = phi ptr [ %5, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %.036 = phi i32 [ %4, %bb.c ], [ %1, %bb.b ], [ %1, %bb.a ]
  %.035 = phi ptr [ %i.m, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 344 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.t = tail call i32 %i.q(ptr noundef %.035, i32 noundef %.036, ptr noundef %.037, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef %6, ptr noundef %i.s) #9 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %4 to i64
  %i.w = getelementptr i8, ptr %6, i64 264
  %.val42 = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr i8, ptr %.val42, i64 16
  %.val42.val = load i32, ptr %i.x, align 8, !tbaa !39 ; 3 uses
  %i.y = sext i32 %.val42.val to i64
  %i.z = mul nsw i64 %i.y, %i.v
  %i.aa = icmp ult i64 %i.z, 2147483647
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !66  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  %i.ae = mul i32 %.val42.val, %4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.ah = tail call i32 %i.ad(ptr noundef %3, i32 noundef %i.ae, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %6, ptr noundef %i.ag) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ai = call i32 @ompi_datatype_create_contiguous(i32 noundef %.val42.val, ptr noundef %5, ptr noundef nonnull %i.a) #9 ; 0 uses
  %.val45 = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.aj = call i32 @opal_datatype_commit(ptr noundef %.val45) #9 ; 0 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !66  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73
  %i.aq = call i32 %i.am(ptr noundef %3, i32 noundef %4, ptr noundef %i.an, i32 noundef 0, ptr noundef nonnull %6, ptr noundef %i.ap) #9
  %i.ar = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.a) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.1 = phi i32 [ %i.t, %bb.d ], [ %i.ah, %bb.f ], [ %i.aq, %bb.g ]
  ret i32 %.1
}

declare i32 @ompi_datatype_create_contiguous(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @opal_datatype_copy_content_same_ddt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_sendrecv_actual(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

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
!35 = !{!"ompi_communicator_t", !16, i64 0, !17, i64 96, !18, i64 160, !19, i64 168, !20, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !21, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !22, i64 264, !22, i64 272, !23, i64 280, !24, i64 288, !25, i64 296, !27, i64 304, !28, i64 312, !5, i64 320, !29, i64 328, !30, i64 336, !31, i64 344, !32, i64 352, !33, i64 360, !5, i64 368, !5, i64 372, !34, i64 376, !34, i64 377, !34, i64 378}
!36 = !{!35, !22, i64 264}
!37 = !{!"p2 _ZTS11ompi_proc_t", !26, i64 0}
!38 = !{!"ompi_group_t", !10, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !37, i64 32, !5, i64 40, !22, i64 48, !4, i64 56, !32, i64 72}
!39 = !{!38, !5, i64 16}
!40 = !{!35, !5, i64 220}
!41 = !{!"short", !4, i64 0}
!42 = !{!"p1 _ZTS12dt_elem_desc", !8, i64 0}
!43 = !{!"dt_type_desc_t", !12, i64 0, !12, i64 8, !42, i64 16}
!44 = !{!"p1 long", !8, i64 0}
!45 = !{!"opal_datatype_t", !10, i64 0, !41, i64 16, !41, i64 18, !5, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !43, i64 144, !43, i64 168, !44, i64 192}
!46 = !{!45, !12, i64 48}
!47 = !{!45, !12, i64 56}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = !{!45, !12, i64 24}
!52 = !{!"branch_weights", i32 2002, i32 2000}
!53 = !{!45, !12, i64 32}
!54 = !{!45, !12, i64 40}
!55 = distinct !{!55, !48}
!56 = distinct !{!56, !48}
!57 = distinct !{!57, !48}
!58 = !{!"mca_pml_base_module_2_1_0_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !8, i64 184}
!59 = !{!58, !8, i64 88}
!60 = !{!58, !8, i64 64}
!61 = !{!"ompi_request_fns_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!62 = !{!61, !8, i64 48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = !{!5, !5, i64 0}
!66 = !{!35, !31, i64 344}
!67 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !8, i64 0}
!68 = !{!"p1 _ZTS11opal_list_t", !8, i64 0}
!69 = !{!"mca_coll_base_comm_coll_t", !8, i64 0, !67, i64 8, !8, i64 16, !67, i64 24, !8, i64 32, !67, i64 40, !8, i64 48, !67, i64 56, !8, i64 64, !67, i64 72, !8, i64 80, !67, i64 88, !8, i64 96, !67, i64 104, !8, i64 112, !67, i64 120, !8, i64 128, !67, i64 136, !8, i64 144, !67, i64 152, !8, i64 160, !67, i64 168, !8, i64 176, !67, i64 184, !8, i64 192, !67, i64 200, !8, i64 208, !67, i64 216, !8, i64 224, !67, i64 232, !8, i64 240, !67, i64 248, !8, i64 256, !67, i64 264, !8, i64 272, !67, i64 280, !8, i64 288, !67, i64 296, !8, i64 304, !67, i64 312, !8, i64 320, !67, i64 328, !8, i64 336, !67, i64 344, !8, i64 352, !67, i64 360, !8, i64 368, !67, i64 376, !8, i64 384, !67, i64 392, !8, i64 400, !67, i64 408, !8, i64 416, !67, i64 424, !8, i64 432, !67, i64 440, !8, i64 448, !67, i64 456, !8, i64 464, !67, i64 472, !8, i64 480, !67, i64 488, !8, i64 496, !67, i64 504, !8, i64 512, !67, i64 520, !8, i64 528, !67, i64 536, !8, i64 544, !67, i64 552, !8, i64 560, !67, i64 568, !8, i64 576, !67, i64 584, !8, i64 592, !67, i64 600, !8, i64 608, !67, i64 616, !8, i64 624, !67, i64 632, !8, i64 640, !67, i64 648, !8, i64 656, !67, i64 664, !8, i64 672, !67, i64 680, !8, i64 688, !67, i64 696, !8, i64 704, !67, i64 712, !8, i64 720, !67, i64 728, !8, i64 736, !67, i64 744, !8, i64 752, !67, i64 760, !8, i64 768, !67, i64 776, !8, i64 784, !67, i64 792, !8, i64 800, !67, i64 808, !8, i64 816, !67, i64 824, !8, i64 832, !67, i64 840, !8, i64 848, !67, i64 856, !8, i64 864, !67, i64 872, !8, i64 880, !67, i64 888, !8, i64 896, !67, i64 904, !8, i64 912, !67, i64 920, !8, i64 928, !67, i64 936, !8, i64 944, !67, i64 952, !8, i64 960, !67, i64 968, !8, i64 976, !67, i64 984, !8, i64 992, !67, i64 1000, !8, i64 1008, !67, i64 1016, !8, i64 1024, !67, i64 1032, !8, i64 1040, !67, i64 1048, !8, i64 1056, !67, i64 1064, !8, i64 1072, !67, i64 1080, !8, i64 1088, !67, i64 1096, !8, i64 1104, !68, i64 1112}
!70 = !{!69, !8, i64 144}
!71 = !{!69, !67, i64 152}
!72 = !{!69, !8, i64 112}
!73 = !{!69, !67, i64 120}
!74 = !{!"p1 _ZTS15ompi_datatype_t", !8, i64 0}
!75 = !{!74, !74, i64 0}
end_hunk_0
