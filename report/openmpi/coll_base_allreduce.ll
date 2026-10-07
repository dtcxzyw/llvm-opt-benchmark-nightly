Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_base_allreduce?download=true
inline.NumInlined: 47
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_coll_base_allreduce_intra_basic_linear:bb.a

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.029 = phi i32 [ %i.g, %bb.g ], [ %.0, %bb.f ]
  ret i32 %.029
}

declare i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_base_allreduce_intra_redscat_allgather(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 264
  %.val311 = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr i8, ptr %.val311, i64 16
  %.val311.val = load i32, ptr %i.b, align 8, !tbaa !44 ; 2 uses
  %i.c = getelementptr i8, ptr %5, i64 220
  %.val = load i32, ptr %i.c, align 4, !tbaa !40  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 252
  %i.e = load i32, ptr %i.d, align 4, !tbaa !104
  %i.f = add nsw i32 %i.e, 1
  %notmask.i = shl nsw i32 -1, %i.f
  %i.g = xor i32 %notmask.i, -1
  %i.h = and i32 %.val311.val, %i.g               ; 2 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.h, i1 true) ; 4 uses
  %i.k = xor i32 %i.j, 31
  %.0.i = select i1 %i.i, i32 -1, i32 %i.k, !prof !61 ; 2 uses
  br i1 %i.i, label %ompi_coll_base_allreduce_intra_basic_linear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = lshr exact i32 -2147483648, %i.j         ; 3 uses
  %i.m = icmp slt i32 %2, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %4, i64 84
  %.val312 = load i32, ptr %i.n, align 4, !tbaa !64
  %i.o = and i32 %.val312, 64
  %.not396 = icmp eq i32 %i.o, 0
  br i1 %.not396, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i32 %.val, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.s = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.t = tail call i32 @ompi_coll_base_reduce_intra_basic_linear(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i313 = phi i32 [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i313, 0
  br i1 %.not.i, label %bb.j, label %ompi_coll_base_allreduce_intra_basic_linear.exit

bb.j:                                             ; preds = %bb.i
  %i.u = tail call i32 @ompi_coll_base_bcast_intra_basic_linear(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %5, ptr noundef %6) #9
  br label %ompi_coll_base_allreduce_intra_basic_linear.exit

bb.k:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  %i.z = sub nsw i64 %i.y, %i.w                   ; 8 uses
  %i.aa = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !53
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %opal_datatype_span.exit, label %bb.l, !prof !54

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.ai = add nsw i64 %i.aa, -1
  %i.aj = mul i64 %i.z, %i.ai
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = add i64 %i.ak, %i.ah
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.k, %bb.l
  %.0330 = phi i64 [ %i.af, %bb.l ], [ 0, %bb.k ]
  %.0.i314 = phi i64 [ %i.al, %bb.l ], [ 0, %bb.k ]
  %i.am = tail call noalias ptr @malloc(i64 noundef %.0.i314) #10 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %ompi_coll_base_allreduce_intra_basic_linear.exit, label %bb.m

bb.m:                                             ; preds = %opal_datatype_span.exit
  %i.ao = sub i64 0, %.0330
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao ; 4 uses
  %.not = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  br i1 %.not, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.01728.i = phi ptr [ %i.at, %bb.n ], [ %0, %bb.m ] ; 2 uses
  %.01827.i = phi ptr [ %i.as, %bb.n ], [ %1, %bb.m ] ; 2 uses
  %.01926.i = phi i64 [ %i.au, %bb.n ], [ %i.aa, %bb.m ] ; 2 uses
  %spec.select24.i = tail call i64 @llvm.umin.i64(i64 %.01926.i, i64 2147483647) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %spec.select24.i to i32
  %i.aq = tail call i32 @opal_datatype_copy_content_same_ddt(ptr noundef %3, i32 noundef %spec.select.i, ptr noundef %.01827.i, ptr noundef %.01728.i) #9 ; 2 uses
  %.not22.i = icmp eq i32 %i.aq, 0
  br i1 %.not22.i, label %bb.n, label %.thread392

bb.n:                                             ; preds = %.lr.ph.i
  %i.ar = mul nsw i64 %spec.select24.i, %i.z      ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.01827.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %.01728.i, i64 %i.ar
  %i.au = sub nuw nsw i64 %.01926.i, %spec.select24.i ; 2 uses
  %.not.i316 = icmp eq i64 %i.au, 0
  br i1 %.not.i316, label %ompi_datatype_copy_content_same_ddt.exit.thread, label %.lr.ph.i, !llvm.loop !0

ompi_datatype_copy_content_same_ddt.exit.thread:  ; preds = %bb.n, %bb.m
  %i.av = sub nsw i32 %.val311.val, %i.l          ; 6 uses
  %i.aw = shl nsw i32 %i.av, 1
  %i.ax = icmp slt i32 %.val, %i.aw               ; 2 uses
  br i1 %i.ax, label %bb.o, label %bb.u

bb.o:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread
  %i.ay = lshr i32 %2, 1                          ; 2 uses
  %i.az = sub nsw i32 %2, %i.ay                   ; 2 uses
  %i.ba = and i32 %.val, 1
  %.not298 = icmp eq i32 %i.ba, 0
  %i.bb = zext nneg i32 %i.ay to i64              ; 5 uses
  br i1 %.not298, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nsw i32 %.val, -1                   ; 3 uses
  %i.bd = mul nsw i64 %i.z, %i.bb                 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = sext i32 %i.az to i64                   ; 3 uses
  %i.bg = tail call fastcc i32 @ompi_coll_base_sendrecv(ptr noundef %1, i64 noundef %i.bb, ptr noundef %3, i32 noundef %i.bc, ptr noundef nonnull %i.be, i64 noundef %i.bf, ptr noundef %3, i32 noundef %i.bc, ptr noundef %5, i32 noundef %.val) ; 2 uses
  %.not301 = icmp eq i32 %i.bg, 0
  br i1 %.not301, label %bb.q, label %.thread392

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bd ; 2 uses
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.be, ptr noundef %i.bh, i64 noundef %i.bf, ptr noundef %3)
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.bj = tail call i32 %i.bi(ptr noundef %i.bh, i64 noundef %i.bf, ptr noundef %3, i32 noundef %i.bc, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9 ; 2 uses
  %.not302 = icmp eq i32 %i.bj, 0
  br i1 %.not302, label %bb.v, label %.thread392

bb.r:                                             ; preds = %bb.o
  %i.bk = mul nsw i64 %i.z, %i.bb
  %i.bl = getelementptr inbounds i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bm = sext i32 %i.az to i64                   ; 2 uses
  %i.bn = or disjoint i32 %.val, 1                ; 3 uses
  %i.bo = tail call fastcc i32 @ompi_coll_base_sendrecv(ptr noundef %i.bl, i64 noundef %i.bm, ptr noundef %3, i32 noundef %i.bn, ptr noundef nonnull %i.ap, i64 noundef %i.bb, ptr noundef %3, i32 noundef %i.bn, ptr noundef %5, i32 noundef %.val) ; 2 uses
  %.not299 = icmp eq i32 %i.bo, 0
  br i1 %.not299, label %bb.s, label %.thread392

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.ap, ptr noundef %1, i64 noundef %i.bb, ptr noundef %3)
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !59
  %i.bq = tail call i32 %i.bp(ptr noundef %i.bl, i64 noundef %i.bm, ptr noundef %3, i32 noundef %i.bn, i32 noundef -12, ptr noundef %5, ptr noundef null) #9 ; 2 uses
  %.not300 = icmp eq i32 %i.bq, 0
  br i1 %.not300, label %bb.t, label %.thread392

bb.t:                                             ; preds = %bb.s
  %i.br = ashr exact i32 %.val, 1
  br label %bb.v

bb.u:                                             ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread
  %i.bs = sub nsw i32 %.val, %i.av
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u
  %.2255 = phi i32 [ %i.bs, %bb.u ], [ %i.br, %bb.t ], [ -1, %bb.q ] ; 3 uses
  %7 = sext i32 %.0.i to i64                      ; 2 uses
  %i.bt = shl nsw i64 %7, 2                       ; 4 uses
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #10 ; 7 uses
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bt) #10 ; 7 uses
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bt) #10 ; 5 uses
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bt) #10 ; 5 uses
  %i.by = icmp eq ptr %i.bu, null                 ; 2 uses
  %i.bz = icmp eq ptr %i.bv, null                 ; 2 uses
  %or.cond = or i1 %i.by, %i.bz
  %i.ca = icmp eq ptr %i.bw, null                 ; 2 uses
  %or.cond4 = or i1 %or.cond, %i.ca
  %i.cb = icmp eq ptr %i.bx, null                 ; 2 uses
  %or.cond6 = or i1 %or.cond4, %i.cb
  br i1 %or.cond6, label %ompi_datatype_copy_content_same_ddt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not303 = icmp eq i32 %.2255, -1
  br i1 %.not303, label %.thread347, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bu, align 4, !tbaa !60
  store i32 0, ptr %i.bv, align 4, !tbaa !60
  %.not409 = icmp eq i32 %i.j, 31
  br i1 %.not409, label %.thread347, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.af
  %.0245402 = phi i32 [ %i.dr, %bb.af ], [ 1, %bb.x ] ; 2 uses
  %.0247401 = phi i32 [ %.2249.ph, %bb.af ], [ %2, %bb.x ] ; 3 uses
  %.0250400 = phi i32 [ %.2252.ph, %bb.af ], [ 0, %bb.x ] ; 3 uses
  %i.cc = xor i32 %.0245402, %.2255               ; 3 uses
  %i.cd = icmp slt i32 %i.cc, %i.av
  %i.ce = shl nsw i32 %i.cc, 1
  %i.cf = add nsw i32 %i.cc, %i.av
  %i.cg = select i1 %i.cd, i32 %i.ce, i32 %i.cf   ; 4 uses
  %i.ch = icmp slt i32 %.val, %i.cg
  %i.ci = sdiv i32 %.0247401, 2                   ; 7 uses
  %i.cj = sext i32 %.0250400 to i64               ; 7 uses
  %i.ck = sub nsw i32 %.0247401, %i.ci            ; 4 uses
  br i1 %i.ch, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cj
  store i32 %i.ci, ptr %i.cl, align 4, !tbaa !60
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cj
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !60
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.cj
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !60 ; 2 uses
  %i.cp = add nsw i32 %i.co, %i.ci                ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cj
  store i32 %i.ci, ptr %i.cq, align 4, !tbaa !60
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cj
  store i32 %i.ck, ptr %i.cr, align 4, !tbaa !60
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !60 ; 2 uses
  %i.cu = add nsw i32 %i.ct, %i.ci                ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink441 = phi ptr [ %i.bu, %bb.z ], [ %i.bv, %bb.y ]
  %.sink = phi i32 [ %i.cu, %bb.z ], [ %i.cp, %bb.y ]
  %i.cv = phi i32 [ %i.ck, %bb.z ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cw = phi i32 [ %i.cu, %bb.z ], [ %i.co, %bb.y ] ; 3 uses
  %i.cx = phi i32 [ %i.ci, %bb.z ], [ %i.ck, %bb.y ] ; 2 uses
  %i.cy = phi i32 [ %i.ct, %bb.z ], [ %i.cp, %bb.y ]
  %i.cz = getelementptr inbounds [4 x i8], ptr %.sink441, i64 %i.cj
  store i32 %.sink, ptr %i.cz, align 4, !tbaa !60
  %i.da = sext i32 %i.cy to i64
  %i.db = mul nsw i64 %i.z, %i.da
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db ; 2 uses
  %i.dd = sext i32 %i.cw to i64
  %i.de = mul nsw i64 %i.z, %i.dd                 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.ap, i64 %i.de ; 3 uses
  %i.dg = sext i32 %i.cv to i64                   ; 2 uses
  %i.dh = icmp eq i32 %i.cg, %.val
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.di = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.dc, i32 noundef %i.cx, ptr noundef %3, ptr noundef nonnull %i.df, i32 noundef %i.cv, ptr noundef %3) #9
  br label %ompi_coll_base_sendrecv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dj = sext i32 %i.cx to i64
  %i.dk = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.dc, i64 noundef range(i64 -2147483648, 2147483648) %i.dj, ptr noundef %3, i32 noundef %i.cg, i32 noundef -12, ptr noundef nonnull %i.df, i64 noundef range(i64 -2147483648, 2147483648) %i.dg, ptr noundef %3, i32 noundef %i.cg, i32 noundef -12, ptr noundef %5, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit

ompi_coll_base_sendrecv.exit:                     ; preds = %bb.ab, %bb.ac
  %.0.i318 = phi i32 [ %i.di, %bb.ab ], [ %i.dk, %bb.ac ] ; 2 uses
  %.not304 = icmp eq i32 %.0.i318, 0
  br i1 %.not304, label %bb.ad, label %ompi_datatype_copy_content_same_ddt.exit.thread351

bb.ad:                                            ; preds = %ompi_coll_base_sendrecv.exit
  %i.dl = getelementptr inbounds i8, ptr %1, i64 %i.de
  tail call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.df, ptr noundef %i.dl, i64 noundef %i.dg, ptr noundef %3)
  %i.dm = add nsw i32 %.0250400, 1                ; 3 uses
  %i.dn = icmp slt i32 %i.dm, %.0.i
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.do = sext i32 %i.dm to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.do
  store i32 %i.cw, ptr %i.dp, align 4, !tbaa !60
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.do
  store i32 %i.cw, ptr %i.dq, align 4, !tbaa !60
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.2252.ph = phi i32 [ %.0250400, %bb.ad ], [ %i.dm, %bb.ae ]
  %.2249.ph = phi i32 [ %.0247401, %bb.ad ], [ %i.cv, %bb.ae ]
  %i.dr = shl i32 %.0245402, 1                    ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.l
  br i1 %i.ds, label %.lr.ph, label %.lr.ph408.preheader, !llvm.loop !102

.lr.ph408.preheader:                              ; preds = %bb.af
  %i.dt = lshr i32 1073741824, %i.j
  br label %.lr.ph408

bb.ag:                                            ; preds = %ompi_coll_base_sendrecv.exit321
  %i.du = lshr i32 %.0405, 1                      ; 2 uses
  %.not397 = icmp eq i32 %i.du, 0
  br i1 %.not397, label %.thread347, label %.lr.ph408, !llvm.loop !103

.lr.ph408:                                        ; preds = %.lr.ph408.preheader, %bb.ag
  %indvars.iv = phi i64 [ %7, %.lr.ph408.preheader ], [ %indvars.iv.next, %bb.ag ]
  %.0405 = phi i32 [ %i.dt, %.lr.ph408.preheader ], [ %i.du, %bb.ag ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.dv = xor i32 %.0405, %.2255                  ; 3 uses
  %i.dw = icmp slt i32 %i.dv, %i.av
  %i.dx = shl nsw i32 %i.dv, 1
  %i.dy = add nsw i32 %i.dv, %i.av
  %i.dz = select i1 %i.dw, i32 %i.dx, i32 %i.dy   ; 3 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv.next
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !60
  %i.ec = sext i32 %i.eb to i64
  %i.ed = mul nsw i64 %i.z, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %indvars.iv.next
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !60 ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !60
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.z, %i.ej
  %i.el = getelementptr inbounds i8, ptr %1, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next
  %i.en = load i32, ptr %i.em, align 4, !tbaa !60 ; 2 uses
  %i.eo = icmp eq i32 %i.dz, %.val
  br i1 %i.eo, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph408
  %i.ep = tail call i32 @ompi_datatype_sndrcv(ptr noundef %i.ee, i32 noundef %i.eg, ptr noundef %3, ptr noundef %i.el, i32 noundef %i.en, ptr noundef %3) #9
  br label %ompi_coll_base_sendrecv.exit321

bb.ai:                                            ; preds = %.lr.ph408
  %i.eq = sext i32 %i.en to i64
  %i.er = sext i32 %i.eg to i64
  %i.es = tail call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %i.ee, i64 noundef range(i64 -2147483648, 2147483648) %i.er, ptr noundef %3, i32 noundef %i.dz, i32 noundef -12, ptr noundef %i.el, i64 noundef range(i64 -2147483648, 2147483648) %i.eq, ptr noundef %3, i32 noundef %i.dz, i32 noundef -12, ptr noundef %5, ptr noundef null) #9
  br label %ompi_coll_base_sendrecv.exit321

ompi_coll_base_sendrecv.exit321:                  ; preds = %bb.ah, %bb.ai
  %.0.i320 = phi i32 [ %i.ep, %bb.ah ], [ %i.es, %bb.ai ] ; 2 uses
  %.not305 = icmp eq i32 %.0.i320, 0
  br i1 %.not305, label %bb.ag, label %ompi_datatype_copy_content_same_ddt.exit.thread351

.thread347:                                       ; preds = %bb.ag, %bb.x, %bb.w
  br i1 %i.ax, label %bb.aj, label %ompi_datatype_copy_content_same_ddt.exit.thread351

bb.aj:                                            ; preds = %.thread347
  %i.et = and i32 %.val, 1
  %.not306 = icmp eq i32 %i.et, 0
  br i1 %.not306, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !59
  %i.ev = add nsw i32 %.val, -1
  %i.ew = tail call i32 %i.eu(ptr noundef %1, i64 noundef %i.aa, ptr noundef %3, i32 noundef %i.ev, i32 noundef -12, ptr noundef %5, ptr noundef null) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread351

bb.al:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !58
  %i.ey = or disjoint i32 %.val, 1
  %i.ez = tail call i32 %i.ex(ptr noundef %1, i64 noundef %i.aa, ptr noundef %3, i32 noundef %i.ey, i32 noundef -12, i32 noundef 4, ptr noundef %5) #9
  br label %ompi_datatype_copy_content_same_ddt.exit.thread351

ompi_datatype_copy_content_same_ddt.exit.thread351: ; preds = %ompi_coll_base_sendrecv.exit, %ompi_coll_base_sendrecv.exit321, %bb.ak, %bb.al, %.thread347
  %.9.ph = phi i32 [ %.0.i320, %ompi_coll_base_sendrecv.exit321 ], [ %i.ew, %bb.ak ], [ 0, %.thread347 ], [ %i.ez, %bb.al ], [ %.0.i318, %ompi_coll_base_sendrecv.exit ]
  tail call void @free(ptr noundef %i.am) #9
  br label %bb.am

.thread392:                                       ; preds = %.lr.ph.i, %bb.q, %bb.s, %bb.p, %bb.r
  %.9.ph368 = phi i32 [ %i.bo, %bb.r ], [ %i.bj, %bb.q ], [ %i.bq, %bb.s ], [ %i.bg, %bb.p ], [ %i.aq, %.lr.ph.i ]
  tail call void @free(ptr noundef %i.am) #9
  br label %ompi_coll_base_allreduce_intra_basic_linear.exit

ompi_datatype_copy_content_same_ddt.exit:         ; preds = %bb.v
  tail call void @free(ptr noundef %i.am) #9
  br i1 %i.by, label %bb.an, label %bb.am

bb.am:                                            ; preds = %ompi_datatype_copy_content_same_ddt.exit.thread351, %ompi_datatype_copy_content_same_ddt.exit
  %.9365 = phi i32 [ %.9.ph, %ompi_datatype_copy_content_same_ddt.exit.thread351 ], [ -2, %ompi_datatype_copy_content_same_ddt.exit ]
  tail call void @free(ptr noundef nonnull %i.bu) #9
end_hunk_0
