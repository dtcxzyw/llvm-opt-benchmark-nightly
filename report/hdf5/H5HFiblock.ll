Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HFiblock?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5HF__man_iblock_detach:bb.a
  %i.hi = load ptr, ptr %i.fk, align 8, !tbaa !30
  %i.hj = load i32, ptr %i.fm, align 8, !tbaa !31
  %i.hk = call i32 @H5HF__man_iblock_detach(ptr noundef %i.hi, i32 noundef %i.hj)
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hm = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.hn = load i64, ptr @H5E_CANTATTACH_g, align 8, !tbaa !51
  %i.ho = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_detach, i32 noundef 1450, i64 noundef %i.hm, i64 noundef %i.hn, ptr noundef nonnull @.str.43) #7 ; 0 uses
  br label %.thread136

bb.bd:                                            ; preds = %bb.bb
  store ptr null, ptr %i.fk, align 8, !tbaa !30
  store i32 0, ptr %i.fm, align 8, !tbaa !31
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay, %bb.al, %.thread128
  %.0100 = phi ptr [ null, %.thread128 ], [ null, %bb.al ], [ %i.ga, %bb.bd ], [ %i.ga, %bb.ay ] ; 10 uses
  %i.hp = call i32 @H5HF__iblock_decr(ptr noundef nonnull %0)
  %i.hq = icmp slt i32 %i.hp, 0
  br i1 %i.hq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.hr = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.hs = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !51
  %i.ht = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_detach, i32 noundef 1463, i64 noundef %i.hr, i64 noundef %i.hs, ptr noundef nonnull @.str.34) #7 ; 0 uses
  br label %.thread136

bb.bg:                                            ; preds = %bb.be
  %.not113 = icmp eq ptr %.0100, null
  br i1 %.not113, label %.thread136, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hu = getelementptr inbounds nuw i8, ptr %.0100, i64 248
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !13
  %.not114.not = icmp eq i64 %i.hv, 0             ; 2 uses
  br i1 %.not114.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !64
  %i.hy = getelementptr inbounds nuw i8, ptr %.0100, i64 288
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !71
  %i.ia = call zeroext i1 @H5F_is_tmp_addr(ptr noundef %i.hx, i64 noundef %i.hz) #7
  %spec.select = select i1 %i.ia, i32 1, i32 257
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.094 = phi i32 [ 521, %bb.bh ], [ %spec.select, %bb.bi ]
  %i.ib = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ic = trunc nuw i8 %i.ib to i1
  %i.id = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = xor i1 %i.ie, true
  %i.ig = select i1 %i.ic, i1 true, i1 %i.if
  br i1 %i.ig, label %bb.bk, label %bb.bp, !prof !104

bb.bk:                                            ; preds = %bb.bj
  %i.ih = getelementptr inbounds nuw i8, ptr %.0100, i64 336
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !48
  %i.ij = icmp eq i64 %i.ii, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %.0100, i64 256
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !32 ; 3 uses
  br i1 %i.ij, label %bb.bl, label %._crit_edge.i

bb.bl:                                            ; preds = %bb.bk
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 632 ; 2 uses
  %i.in = load i32, ptr %i.im, align 8, !tbaa !49 ; 2 uses
  %i.io = icmp eq i32 %i.in, 2
  br i1 %i.io, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 624
  store ptr null, ptr %i.ip, align 8, !tbaa !50
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.iq = and i32 %i.in, -3
  store i32 %i.iq, ptr %i.im, align 8, !tbaa !49
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bn, %bb.bk
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 600
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !64
  %i.it = getelementptr inbounds nuw i8, ptr %.0100, i64 288
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !71
  %i.iv = call i32 @H5AC_unprotect(ptr noundef %i.is, ptr noundef nonnull @H5AC_FHEAP_IBLOCK, i64 noundef %i.iu, ptr noundef nonnull %.0100, i32 noundef %.094) #7
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i
  %i.ix = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.iy = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !51
  %i.iz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_unprotect, i32 noundef 1232, i64 noundef %i.ix, i64 noundef %i.iy, ptr noundef nonnull @.str.20) #7 ; 0 uses
  %i.ja = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.jb = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !51
  %i.jc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_detach, i32 noundef 1492, i64 noundef %i.ja, i64 noundef %i.jb, ptr noundef nonnull @.str.20) #7 ; 0 uses
  br label %.thread136

bb.bp:                                            ; preds = %._crit_edge.i, %bb.bj
  br i1 %.not114.not, label %.thread136, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %i.i, i64 600 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !64
  %i.jf = getelementptr inbounds nuw i8, ptr %.0100, i64 288 ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !71
  %i.jh = call zeroext i1 @H5F_is_tmp_addr(ptr noundef %i.je, i64 noundef %i.jg) #7
  br i1 %i.jh, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ji = load ptr, ptr %i.jd, align 8, !tbaa !64
  %i.jj = load i64, ptr %i.jf, align 8, !tbaa !71
  %i.jk = getelementptr inbounds nuw i8, ptr %.0100, i64 296
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !97
  %i.jm = call i32 @H5MF_xfree(ptr noundef %i.ji, i32 noundef 6, i64 noundef %i.jj, i64 noundef %i.jl) #7
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jo = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.jp = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !51
  %i.jq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_detach, i32 noundef 1501, i64 noundef %i.jo, i64 noundef %i.jp, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %.thread136

bb.bt:                                            ; preds = %bb.br, %bb.bq
  store i64 -1, ptr %i.jf, align 8, !tbaa !71
  %i.jr = getelementptr inbounds nuw i8, ptr %.0100, i64 328
  store i8 1, ptr %i.jr, align 8, !tbaa !52
  br label %.thread136

.thread136:                                       ; preds = %bb.bc, %bb.ba, %bb.ax, %bb.at, %bb.ah, %bb.a, %bb.bg, %bb.bf, %bb.ak, %H5HF__man_iblock_root_revert.exit.thread, %bb.bp, %bb.bt, %bb.bs, %bb.bo
  %.5 = phi i32 [ -1, %H5HF__man_iblock_root_revert.exit.thread ], [ -1, %bb.bf ], [ 0, %bb.a ], [ -1, %bb.ah ], [ 0, %bb.bg ], [ -1, %bb.ak ], [ 0, %bb.bp ], [ -1, %bb.bo ], [ -1, %bb.bs ], [ 0, %bb.bt ], [ -1, %bb.at ], [ -1, %bb.ax ], [ -1, %bb.ba ], [ -1, %bb.bc ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5HF__man_iblock_root_halve(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 12 uses
  %i.c = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.ao, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.j = load i32, ptr %i.i, align 4, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %i.m = udiv i32 %i.j, %i.l
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = lshr i64 %i.n, 16                        ; 2 uses
  %.not23.i = icmp eq i64 %i.o, 0
  br i1 %.not23.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.n, 24                        ; 2 uses
  %.not25.i = icmp eq i64 %i.p, 0
  br i1 %.not25.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !116
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, 24
  br label %H5VM_log2_gen.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.o
  %i.v = load i8, ptr %i.u, align 1, !tbaa !116
  %i.w = zext i8 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 16
  br label %H5VM_log2_gen.exit

bb.f:                                             ; preds = %bb.b
  %i.y = lshr i64 %i.n, 8                         ; 2 uses
  %.not24.i = icmp eq i64 %i.y, 0
  br i1 %.not24.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !116
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.ab, 8
  br label %H5VM_log2_gen.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr @LogTable256, i64 %i.n
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !116
  %i.af = zext i8 %i.ae to i32
  br label %H5VM_log2_gen.exit

H5VM_log2_gen.exit:                               ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.ac, %bb.g ], [ %i.t, %bb.d ], [ %i.af, %bb.h ]
  %i.ag = shl nuw i32 2, %.0.i                    ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.al = tail call zeroext i1 @H5F_is_tmp_addr(ptr noundef %i.ai, i64 noundef %i.ak) #7
  br i1 %i.al, label %bb.k, label %bb.i

bb.i:                                             ; preds = %H5VM_log2_gen.exit
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !97
  %i.aq = tail call i32 @H5MF_xfree(ptr noundef %i.am, i32 noundef 6, i64 noundef %i.an, i64 noundef %i.ap) #7
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.at = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !51
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 678, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %bb.ao

bb.k:                                             ; preds = %bb.i, %H5VM_log2_gen.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !92 ; 3 uses
  %i.ax = icmp ult i32 %i.ag, %i.aw
  %.pre = load i32, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !85 ; 5 uses
  %i.ba = zext i32 %.pre to i64                   ; 5 uses
  %i.bb = zext i32 %i.ag to i64                   ; 4 uses
  %wide.trip.count = zext i32 %i.aw to i64        ; 2 uses
  %i.bc = sub nsw i64 %wide.trip.count, %i.bb     ; 2 uses
  %xtraiter = and i64 %i.bc, 3                    ; 3 uses
  %i.bd = sub nsw i64 %i.bb, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bc, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.l ] ; 5 uses
  %.0102124 = phi i64 [ 0, %.lr.ph.new ], [ %i.bx, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.l ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51
  %i.bh = mul i64 %i.bg, %i.ba
  %i.bi = add i64 %i.bh, %.0102124
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !51
  %i.bm = mul i64 %i.bl, %i.ba
  %i.bn = add i64 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !51
  %i.br = mul i64 %i.bq, %i.ba
  %i.bs = add i64 %i.br, %i.bn
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51
  %i.bw = mul i64 %i.bv, %i.ba
  %i.bx = add i64 %i.bw, %i.bs                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !119

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.bb, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0102124.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.m ] ; 2 uses
  %.0102124.epil = phi i64 [ %.0102124.epil.init, %.epil.preheader ], [ %i.cb, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.epil
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !51
  %i.ca = mul i64 %i.bz, %i.ba
  %i.cb = add i64 %i.ca, %.0102124.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.m, !llvm.loop !120

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.m, %bb.k
  %.0102.lcssa = phi i64 [ 0, %bb.k ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ], [ %i.cb, %bb.m ]
  store i32 %i.ag, ptr %i.av, align 8, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !97
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 618
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !94
  %i.cg = zext i8 %i.cf to i32                    ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 697
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !95
  %i.cj = zext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !33 ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 617
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !96
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cg, 4
  %i.cs = add nuw nsw i32 %i.cr, %i.cq
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %i.ct = phi i32 [ %i.cs, %bb.n ], [ %i.cg, %._crit_edge ]
  %i.cu = mul i32 %i.ct, %.
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 %i.cl)
  %i.cv = mul i32 %spec.select, %i.cg
  %reass.add = add i32 %i.cu, %i.cv
  %reass.mul = mul i32 %reass.add, %.pre
  %i.cw = add nuw nsw i32 %i.cg, 9
  %i.cx = add nuw nsw i32 %i.cw, %i.cj
  %i.cy = add i32 %i.cx, %reass.mul
  %i.cz = zext i32 %i.cy to i64
  store i64 %i.cz, ptr %i.cc, align 8, !tbaa !97
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.db = tail call zeroext i1 @H5F_use_tmp_space(ptr noundef %i.da) #7
  %i.dc = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.dd = load i64, ptr %i.cc, align 8, !tbaa !97 ; 2 uses
  br i1 %i.db, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.de = tail call i64 @H5MF_alloc_tmp(ptr noundef %i.dc, i64 noundef %i.dd) #7 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dg = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.dh = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.di = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 695, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.ao

bb.r:                                             ; preds = %bb.o
  %i.dj = tail call i64 @H5MF_alloc(ptr noundef %i.dc, i32 noundef 6, i64 noundef %i.dd) #7 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dl = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.dm = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.dn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 700, i64 noundef %i.dl, i64 noundef %i.dm, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.ao

bb.t:                                             ; preds = %bb.r, %bb.p
  %.0103 = phi i64 [ %i.de, %bb.p ], [ %i.dj, %bb.r ] ; 4 uses
  %i.do = load i64, ptr %i.cc, align 8, !tbaa !97 ; 2 uses
  %.not116 = icmp eq i64 %i.cd, %i.do
  br i1 %.not116, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = tail call i32 @H5AC_resize_entry(ptr noundef nonnull %0, i64 noundef %i.do) #7
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ds = load i64, ptr @H5E_CANTRESIZE_g, align 8, !tbaa !51
  %i.dt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 706, i64 noundef %i.dr, i64 noundef %i.ds, ptr noundef nonnull @.str.25) #7 ; 0 uses
  br label %bb.ao

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.du = load i64, ptr %i.aj, align 8, !tbaa !71 ; 3 uses
  %.not117 = icmp ne i64 %i.du, -1
  %i.dv = icmp eq i64 %i.du, %.0103
  %or.cond = and i1 %.not117, %i.dv
  br i1 %or.cond, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %i.ah, align 8, !tbaa !64
  %i.dx = tail call i32 @H5AC_move_entry(ptr noundef %i.dw, ptr noundef nonnull @H5AC_FHEAP_IBLOCK, i64 noundef %i.du, i64 noundef %.0103) #7
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ea = load i64, ptr @H5E_CANTSPLIT_g, align 8, !tbaa !51
  %i.eb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 712, i64 noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %bb.ao

bb.z:                                             ; preds = %bb.x
  store i64 %.0103, ptr %i.aj, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !53
  %i.ee = load i32, ptr %i.av, align 8, !tbaa !92
  %i.ef = load i32, ptr %i.k, align 8, !tbaa !45
  %i.eg = mul i32 %i.ef, %i.ee
  %i.eh = zext i32 %i.eg to i64
  %i.ei = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_ent_t_seq_free_list, ptr noundef %i.ed, i64 noundef %i.eh) #7 ; 2 uses
  store ptr %i.ei, ptr %i.ec, align 8, !tbaa !53
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !51
  %i.el = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.em = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 719, i64 noundef %i.ek, i64 noundef %i.el, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %bb.ao

bb.ac:                                            ; preds = %bb.aa
  %i.en = load i32, ptr %i.cm, align 4, !tbaa !77
  %.not118 = icmp ne i32 %i.en, 0
  %.pre130 = load i32, ptr %i.ck, align 8, !tbaa !33 ; 2 uses
  %i.eo = icmp ult i32 %i.ag, %.pre130
  %or.cond140 = select i1 %.not118, i1 %i.eo, i1 false
  br i1 %or.cond140, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !54
  %i.er = load i32, ptr %i.av, align 8, !tbaa !92
  %i.es = load i32, ptr %i.k, align 8, !tbaa !45
  %i.et = mul i32 %i.es, %i.er
  %i.eu = zext i32 %i.et to i64
  %i.ev = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_filt_ent_t_seq_free_list, ptr noundef %i.eq, i64 noundef %i.eu) #7 ; 2 uses
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !54
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ae, label %._crit_edge128

._crit_edge128:                                   ; preds = %bb.ad
  %.pre129 = load i32, ptr %i.ck, align 8, !tbaa !33
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ex = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ey = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.ez = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 727, i64 noundef %i.ex, i64 noundef %i.ey, ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %bb.ao

bb.af:                                            ; preds = %._crit_edge128, %bb.ac
  %i.fa = phi i32 [ %.pre129, %._crit_edge128 ], [ %.pre130, %bb.ac ] ; 3 uses
  %i.fb = icmp ugt i32 %i.aw, %i.fa
  br i1 %i.fb, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.fc = load i32, ptr %i.av, align 8, !tbaa !92 ; 2 uses
  %i.fd = icmp ugt i32 %i.fc, %i.fa
  br i1 %i.fd, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fe = sub nuw i32 %i.fc, %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46
  %i.fh = load i32, ptr %i.k, align 8, !tbaa !45
  %i.fi = mul i32 %i.fh, %i.fe
  %i.fj = zext i32 %i.fi to i64
  %i.fk = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_ptr_t_seq_free_list, ptr noundef %i.fg, i64 noundef %i.fj) #7 ; 2 uses
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !46
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.fm = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.fn = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.fo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 744, i64 noundef %i.fm, i64 noundef %i.fn, ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ag
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !46
  %i.fr = tail call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5HF_indirect_ptr_t_seq_free_list, ptr noundef %i.fq) #7
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !46
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.aj, %bb.af
  %i.fs = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = xor i1 %i.fv, true
  %i.fx = select i1 %i.ft, i1 true, i1 %i.fw
  br i1 %i.fx, label %bb.ak, label %bb.am, !prof !12

bb.ak:                                            ; preds = %.thread
  %i.fy = tail call i32 @H5AC_mark_entry_dirty(ptr noundef nonnull %0) #7
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ga = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.gb = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !51
  %i.gc = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__iblock_dirty, i32 noundef 302, i64 noundef %i.ga, i64 noundef %i.gb, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %i.gd = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ge = load i64, ptr @H5E_CANTDIRTY_g, align 8, !tbaa !51
  %i.gf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 753, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak, %.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store i32 %i.ag, ptr %i.gg, align 8, !tbaa !84
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store i64 %.0103, ptr %i.gh, align 8, !tbaa !59
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !91
  %i.gk = add i32 %i.ag, -1
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !51
  %i.go = shl i64 %i.gn, 1
  %i.gp = sub nsw i64 0, %.0102.lcssa
  %i.gq = tail call i32 @H5HF__hdr_adjust_heap(ptr noundef nonnull %i.b, i64 noundef %i.go, i64 noundef %i.gp) #7
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gs = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.gt = load i64, ptr @H5E_CANTSHRINK_g, align 8, !tbaa !51
  %i.gu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_halve, i32 noundef 762, i64 noundef %i.gs, i64 noundef %i.gt, ptr noundef nonnull @.str.53) #7 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ai, %bb.a, %bb.am, %bb.an, %bb.al, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.q, %bb.j
  %.2 = phi i32 [ -1, %bb.q ], [ -1, %bb.v ], [ -1, %bb.ab ], [ -1, %bb.ae ], [ -1, %bb.al ], [ -1, %bb.an ], [ 0, %bb.am ], [ -1, %bb.ai ], [ -1, %bb.y ], [ -1, %bb.s ], [ -1, %bb.j ], [ 0, %bb.a ]
  ret i32 %.2
}

declare i32 @H5HF__hdr_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @H5HF__man_iblock_entry_addr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = zext i32 %1 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98
  store i64 %i.k, ptr %2, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HF__man_iblock_delete(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.H5HF_parent_t, align 8      ; 7 uses
  %6 = alloca %struct.H5HF_iblock_cache_ud_t, align 8 ; 7 uses
  %i.b = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %H5HF__man_iblock_unprotect.exit.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store ptr %0, ptr %5, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %4, ptr %i.i, align 8, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !65
  store ptr %5, ptr %6, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.m, align 8, !tbaa !70
  %i.n = call ptr @H5AC_protect(ptr noundef %i.k, ptr noundef nonnull @H5AC_FHEAP_IBLOCK, i64 noundef %1, ptr noundef nonnull %6, i32 noundef 0) #7 ; 10 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 288 ; 2 uses
  store i64 %1, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 336 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %H5HF__man_iblock_protect.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !49   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.n, ptr %i.w, align 8, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = or i32 %i.u, 2
  store i32 %i.x, ptr %i.t, align 8, !tbaa !49
  br label %H5HF__man_iblock_protect.exit

H5HF__man_iblock_protect.exit:                    ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 304 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92   ; 2 uses
  %.not87 = icmp eq i32 %i.z, 0
  br i1 %.not87, label %._crit_edge86, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %H5HF__man_iblock_protect.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 344 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !45
  %.not88 = icmp eq i32 %i.ag, 0
  br i1 %.not88, label %._crit_edge86, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ah = phi i32 [ %i.br, %._crit_edge ], [ %i.z, %.preheader.lr.ph ]
  %i.ai = phi i32 [ %i.bs, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %.05385 = phi i32 [ %.154.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not89 = icmp eq i32 %i.ai, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.thread
  %.15483 = phi i32 [ %i.bo, %.thread ], [ %.05385, %.preheader ] ; 3 uses
  %.05582 = phi i32 [ %i.bn, %.thread ], [ 0, %.preheader ]
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.ak = zext i32 %.15483 to i64                 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98 ; 2 uses
  %.not = icmp eq i64 %i.am, -1
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !33
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ult i64 %indvars.iv, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !77
  %.not60 = icmp eq i32 %i.aq, 0
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ak
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.049.in = phi ptr [ %i.as, %bb.i ], [ %i.au, %bb.j ]
  %.049 = load i64, ptr %.049.in, align 8, !tbaa !51
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.aw = call i32 @H5HF__man_dblock_delete(ptr noundef %i.av, i64 noundef %i.am, i64 noundef %.049) #7
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.az = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !51
  %i.ba = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_delete, i32 noundef 1599, i64 noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull @.str.44) #7 ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.be = call i32 @H5HF__dtable_size_to_rows(ptr noundef nonnull %i.aa, i64 noundef %i.bd) #7
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ak
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !98
  %i.bi = call i32 @H5HF__man_iblock_delete(ptr noundef nonnull %0, i64 noundef %i.bh, i32 noundef %i.be, ptr noundef nonnull %i.n, i32 noundef %.15483)
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bk = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.bl = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !51
  %i.bm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_delete, i32 noundef 1615, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.45) #7 ; 0 uses
  br label %bb.p

.thread:                                          ; preds = %bb.m, %bb.k, %.lr.ph
  %i.bn = add nuw i32 %.05582, 1                  ; 2 uses
  %i.bo = add i32 %.15483, 1                      ; 2 uses
  %i.bp = load i32, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %i.bq = icmp ult i32 %i.bn, %i.bp
end_hunk_0
