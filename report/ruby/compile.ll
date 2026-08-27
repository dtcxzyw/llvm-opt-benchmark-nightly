Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@pm_compile_scope_node:bb.a
  %.0812138 = phi i64 [ 0, %.lr.ph140.new ], [ %i.gz, %bb.bc ] ; 3 uses
  %niter608 = phi i64 [ 0, %.lr.ph140.new ], [ %niter608.next.1, %bb.bc ]
  %i.gi = getelementptr [8 x i8], ptr %i.gg, i64 %.0812138
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !511 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 8, !tbaa !501
  %i.gl = icmp eq i16 %i.gk, 105
  br i1 %i.gl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = getelementptr i8, ptr %i.gj, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !562
  %i.go = and i16 %i.gn, 4
  %.not944 = icmp eq i16 %i.go, 0
  br i1 %.not944, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = add i32 %.12139, 1
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.13 = phi i32 [ %i.gp, %bb.ay ], [ %.12139, %bb.ax ] ; 2 uses
  %i.gq = getelementptr [8 x i8], ptr %i.gg, i64 %.0812138
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !511 ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !501
  %i.gu = icmp eq i16 %i.gt, 105
  br i1 %i.gu, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = getelementptr i8, ptr %i.gs, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !562
  %i.gx = and i16 %i.gw, 4
  %.not944.1 = icmp eq i16 %i.gx, 0
  br i1 %.not944.1, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gy = add i32 %.13, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.13.1 = phi i32 [ %i.gy, %bb.bb ], [ %.13, %bb.ba ] ; 3 uses
  %i.gz = add nuw i64 %.0812138, 2                ; 2 uses
  %niter608.next.1 = add nuw i64 %niter608, 2     ; 2 uses
  %niter608.ncmp.1 = icmp eq i64 %niter608.next.1, %unroll_iter607
  br i1 %niter608.ncmp.1, label %.loopexit75.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !1446

.loopexit75.loopexit.unr-lcssa:                   ; preds = %bb.bc
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod604.not, label %.loopexit75, label %.epil.preheader602

.epil.preheader602:                               ; preds = %.loopexit75.loopexit.unr-lcssa, %.lr.ph140
  %.12139.epil.init = phi i32 [ %.11, %.lr.ph140 ], [ %.13.1, %.loopexit75.loopexit.unr-lcssa ] ; 2 uses
  %.0812138.epil.init = phi i64 [ 0, %.lr.ph140 ], [ %i.gz, %.loopexit75.loopexit.unr-lcssa ]
  %lcmp.mod606 = trunc i64 %i.ge to i1
  tail call void @llvm.assume(i1 %lcmp.mod606)
  %i.ha = getelementptr [8 x i8], ptr %i.gg, i64 %.0812138.epil.init
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !511 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !501
  %i.hd = icmp eq i16 %i.hc, 105
  br i1 %i.hd, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.epil.preheader602
  %i.he = getelementptr i8, ptr %i.hb, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !562
  %i.hg = and i16 %i.hf, 4
  %.not944.epil = icmp eq i16 %i.hg, 0
  br i1 %.not944.epil, label %.loopexit75, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader602
  %i.hh = add i32 %.12139.epil.init, 1
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit.unr-lcssa, %bb.be, %bb.bd, %.preheader74, %bb.av
  %.14 = phi i32 [ %.11, %bb.av ], [ %.11, %.preheader74 ], [ %.13.1, %.loopexit75.loopexit.unr-lcssa ], [ %i.hh, %bb.be ], [ %.12139.epil.init, %bb.bd ] ; 4 uses
  br i1 %.not882, label %.loopexit73, label %bb.bf

bb.bf:                                            ; preds = %.loopexit75
  %i.hi = load i64, ptr %.0786, align 8, !tbaa !563 ; 5 uses
  %.not894 = icmp eq i64 %i.hi, 0
  br i1 %.not894, label %.loopexit73, label %.preheader72

.preheader72:                                     ; preds = %bb.bf
  %i.hj = getelementptr i8, ptr %.0786, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !564 ; 3 uses
  %xtraiter610 = and i64 %i.hi, 1
  %i.hl = icmp eq i64 %i.hi, 1
  br i1 %i.hl, label %.epil.preheader609, label %.preheader72.new

.preheader72.new:                                 ; preds = %.preheader72
  %unroll_iter614 = and i64 %i.hi, -2
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader72.new
  %.15143 = phi i32 [ %.14, %.preheader72.new ], [ %spec.select952.1, %bb.bg ]
  %.0813142 = phi i64 [ 0, %.preheader72.new ], [ %i.ib, %bb.bg ] ; 3 uses
  %niter615 = phi i64 [ 0, %.preheader72.new ], [ %niter615.next.1, %bb.bg ]
  %i.hm = getelementptr [8 x i8], ptr %i.hk, i64 %.0813142
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !511
  %i.ho = getelementptr i8, ptr %i.hn, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !562
  %i.hq = lshr i16 %i.hp, 2
  %i.hr = and i16 %i.hq, 1
  %i.hs = zext nneg i16 %i.hr to i32
  %spec.select952 = add i32 %.15143, %i.hs
  %i.ht = getelementptr [8 x i8], ptr %i.hk, i64 %.0813142
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !511
  %i.hw = getelementptr i8, ptr %i.hv, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !562
  %i.hy = lshr i16 %i.hx, 2
  %i.hz = and i16 %i.hy, 1
  %i.ia = zext nneg i16 %i.hz to i32
  %spec.select952.1 = add i32 %spec.select952, %i.ia ; 3 uses
  %i.ib = add nuw i64 %.0813142, 2                ; 2 uses
  %niter615.next.1 = add nuw i64 %niter615, 2     ; 2 uses
  %niter615.ncmp.1 = icmp eq i64 %niter615.next.1, %unroll_iter614
  br i1 %niter615.ncmp.1, label %.loopexit73.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !1447

.loopexit73.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod611.not, label %.loopexit73, label %.epil.preheader609

.epil.preheader609:                               ; preds = %.loopexit73.loopexit.unr-lcssa, %.preheader72
  %.15143.epil.init = phi i32 [ %.14, %.preheader72 ], [ %spec.select952.1, %.loopexit73.loopexit.unr-lcssa ]
  %.0813142.epil.init = phi i64 [ 0, %.preheader72 ], [ %i.ib, %.loopexit73.loopexit.unr-lcssa ]
  %lcmp.mod613 = trunc i64 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod613)
  %i.ic = getelementptr [8 x i8], ptr %i.hk, i64 %.0813142.epil.init
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !511
  %i.ie = getelementptr i8, ptr %i.id, i64 2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !562
  %i.ig = lshr i16 %i.if, 2
  %i.ih = and i16 %i.ig, 1
  %i.ii = zext nneg i16 %i.ih to i32
  %spec.select952.epil = add i32 %.15143.epil.init, %i.ii
  br label %.loopexit73

.loopexit73:                                      ; preds = %.epil.preheader609, %.loopexit73.loopexit.unr-lcssa, %bb.bf, %.loopexit75
  %.17 = phi i32 [ %.14, %.loopexit75 ], [ %.14, %bb.bf ], [ %spec.select952.1, %.loopexit73.loopexit.unr-lcssa ], [ %spec.select952.epil, %.epil.preheader609 ] ; 4 uses
  br i1 %.not88022, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %.loopexit73
  %i.ij = getelementptr i8, ptr %.020, i64 136
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !1448 ; 3 uses
  %.not895 = icmp eq ptr %i.ik, null
  br i1 %.not895, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.il = getelementptr i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !562
  %i.in = and i16 %i.im, 4
  %.not896 = icmp eq i16 %i.in, 0
  br i1 %.not896, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.io = getelementptr i8, ptr %i.ik, i64 24
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !1449
  %.not897 = icmp eq i32 %i.ip, 0
  br i1 %.not897, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.iq = add i32 %.17, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bh, %.loopexit73
  %.19 = phi i32 [ %.17, %.loopexit73 ], [ %.17, %bb.bh ], [ %i.iq, %bb.bk ], [ %.17, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 0, ptr %i.c, align 8, !tbaa !36
  %i.ir = sext i32 %.19 to i64
  %i.is = shl nsw i64 %i.ir, 3
  %i.it = add nsw i64 %i.is, 8                    ; 3 uses
  %i.iu = icmp ult i64 %i.it, 1024
  br i1 %i.iu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.iv = alloca i8, i64 %i.it, align 16
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.iw = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.c, i64 noundef %i.it) #48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ix = phi ptr [ %i.iv, %bb.bm ], [ %i.iw, %bb.bn ] ; 28 uses
  store i32 %.19, ptr %i.ix, align 8, !tbaa !7
  br i1 %i.ch, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %bb.bo
  %i.iy = load i64, ptr %.0789, align 8, !tbaa !563
  %.not898 = icmp eq i64 %i.iy, 0
  br i1 %.not898, label %bb.cb, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.bp
  %i.iz = getelementptr i8, ptr %.0789, i64 16
  %i.ja = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.jb = getelementptr i8, ptr %1, i64 120       ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ix, i64 8      ; 3 uses
  br label %bb.bq

._crit_edge:                                      ; preds = %bb.ca
  %indvars.le = trunc nsw i64 %i.kq to i32
  %i.jd = trunc i64 %i.kr to i32
  %i.je = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.jf = getelementptr i8, ptr %i.f, i64 24
  store i32 %i.jd, ptr %i.jf, align 8, !tbaa !190
  %i.jg = load i16, ptr %i.je, align 8
  %i.jh = or i16 %i.jg, 1
  store i16 %i.jh, ptr %i.je, align 8
  br label %bb.cb

bb.bq:                                            ; preds = %.lr.ph146, %bb.ca
  %.0839144 = phi i64 [ 0, %.lr.ph146 ], [ %i.kq, %bb.ca ] ; 7 uses
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !564
  %i.jj = getelementptr [8 x i8], ptr %i.ji, i64 %.0839144
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !511 ; 3 uses
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !501 ; 2 uses
  switch i16 %i.jl, label %bb.bz [
    i16 105, label %bb.br
    i16 127, label %bb.bs
  ]

bb.br:                                            ; preds = %bb.bq
  %i.jm = call i64 @rb_make_temporary_id(i64 noundef %.0839144) #37
  %i.jn = getelementptr [8 x i8], ptr %i.jc, i64 %.0839144
  store i64 %i.jm, ptr %i.jn, align 8, !tbaa !36
  br label %bb.ca

bb.bs:                                            ; preds = %bb.bq
  %i.jo = getelementptr i8, ptr %i.jk, i64 2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !562
  %i.jq = and i16 %i.jp, 4
  %.not942 = icmp eq i16 %i.jq, 0
  %i.jr = getelementptr i8, ptr %i.jk, i64 24
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !704 ; 8 uses
  %i.jt = icmp eq i32 %i.js, 0                    ; 2 uses
  br i1 %.not942, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.jt, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ju = load ptr, ptr %i.ja, align 8, !tbaa !538
  %i.jv = getelementptr i8, ptr %i.ju, i64 592
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !793
  %i.jx = icmp ugt i32 %i.js, %i.jw
  br i1 %i.jx, label %bb.bv, label %pm_constant_id_lookup.exit

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.js) #38
  unreachable

pm_constant_id_lookup.exit:                       ; preds = %bb.bu
  %i.jy = load ptr, ptr %i.jb, align 8, !tbaa !499
  %i.jz = add i32 %i.js, -1
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr [8 x i8], ptr %i.jy, i64 %i.ka
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !36
  %12 = getelementptr [8 x i8], ptr %i.jc, i64 %.0839144
  store i64 %i.kc, ptr %12, align 8, !tbaa !36
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs
  br i1 %i.jt, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kd = load ptr, ptr %i.ja, align 8, !tbaa !538
  %i.ke = getelementptr i8, ptr %i.kd, i64 592
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !793
  %i.kg = icmp ugt i32 %i.js, %i.kf
  br i1 %i.kg, label %bb.by, label %pm_insert_local_index.exit

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.js) #38
  unreachable

pm_insert_local_index.exit:                       ; preds = %bb.bx
  %i.kh = load ptr, ptr %i.jb, align 8, !tbaa !499
  %i.ki = add i32 %i.js, -1
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr [8 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !36
  %i.km = getelementptr [8 x i8], ptr %i.jc, i64 %.0839144
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !36
  %i.kn = zext i32 %i.js to i64
  %i.ko = call i32 @rb_st_insert(ptr noundef %i.bz, i64 noundef %i.kn, i64 noundef %.0839144) #37 ; 0 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bq
  %i.kp = call ptr @pm_node_type_to_str(i16 noundef zeroext %i.jl) #37
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.293, ptr noundef %i.kp) #38
  unreachable

bb.ca:                                            ; preds = %pm_constant_id_lookup.exit, %pm_insert_local_index.exit, %bb.br
  %i.kq = add nuw i64 %.0839144, 1                ; 3 uses
  %i.kr = load i64, ptr %.0789, align 8, !tbaa !563 ; 2 uses
  %i.ks = icmp ult i64 %i.kq, %i.kr
  br i1 %i.ks, label %bb.bq, label %._crit_edge, !llvm.loop !1451

bb.cb:                                            ; preds = %._crit_edge, %bb.bp, %bb.bo
  %.1819 = phi i32 [ %indvars.le, %._crit_edge ], [ 0, %bb.bp ], [ 0, %bb.bo ] ; 4 uses
  %i.kt = load ptr, ptr %i.ar, align 8, !tbaa !508 ; 2 uses
  %.not899 = icmp eq ptr %i.kt, null
  br i1 %.not899, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ku = load i16, ptr %i.kt, align 8, !tbaa !501
  %i.kv = icmp eq i16 %i.ku, 89
  br i1 %i.kv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kw = getelementptr i8, ptr %i.ix, i64 8
  %i.kx = add i32 %.1819, 1
  %i.ky = sext i32 %.1819 to i64
  %i.kz = getelementptr [8 x i8], ptr %i.kw, i64 %i.ky
  store i64 153, ptr %i.kz, align 8, !tbaa !36
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.2820 = phi i32 [ %i.kx, %bb.cd ], [ %.1819, %bb.cc ], [ %.1819, %bb.cb ] ; 4 uses
  br i1 %.not885, label %.loopexit70, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.la = load i64, ptr %.0787, align 8, !tbaa !563 ; 2 uses
  %.not900 = icmp eq i64 %i.la, 0
  br i1 %.not900, label %.loopexit70, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lb = trunc i64 %i.la to i32
  %i.lc = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.ld = getelementptr i8, ptr %i.f, i64 28
  store i32 %i.lb, ptr %i.ld, align 4, !tbaa !163
  %i.le = load i16, ptr %i.lc, align 8
  %i.lf = or i16 %i.le, 2
  store i16 %i.lf, ptr %i.lc, align 8
  %i.lg = load i64, ptr %.0787, align 8, !tbaa !563
  %.not204 = icmp eq i64 %i.lg, 0
  br i1 %.not204, label %.loopexit70, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.cg
  %i.lh = getelementptr i8, ptr %.0787, i64 16
  %i.li = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.lj = getelementptr i8, ptr %1, i64 120       ; 2 uses
  %i.lk = getelementptr i8, ptr %i.ix, i64 8      ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph152, %bb.co
  %.3821150 = phi i32 [ %.2820, %.lr.ph152 ], [ %i.mt, %bb.co ] ; 3 uses
  %.0838149 = phi i64 [ 0, %.lr.ph152 ], [ %i.ms, %bb.co ] ; 2 uses
  %i.ll = load ptr, ptr %i.lh, align 8, !tbaa !564
  %i.lm = getelementptr [8 x i8], ptr %i.ll, i64 %.0838149
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !511 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 24
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !718 ; 8 uses
  %i.lq = getelementptr i8, ptr %i.ln, i64 2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !562
  %i.ls = and i16 %i.lr, 4
  %.not941 = icmp eq i16 %i.ls, 0
  %i.lt = icmp eq i32 %i.lp, 0                    ; 2 uses
  br i1 %.not941, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.lt, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lu = load ptr, ptr %i.li, align 8, !tbaa !538
  %i.lv = getelementptr i8, ptr %i.lu, i64 592
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !793
  %i.lx = icmp ugt i32 %i.lp, %i.lw
  br i1 %i.lx, label %bb.ck, label %pm_constant_id_lookup.exit970

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.lp) #38
  unreachable

pm_constant_id_lookup.exit970:                    ; preds = %bb.cj
  %i.ly = load ptr, ptr %i.lj, align 8, !tbaa !499
  %i.lz = add i32 %i.lp, -1
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr [8 x i8], ptr %i.ly, i64 %i.ma
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !36
  %i.md = sext i32 %.3821150 to i64
  %i.me = getelementptr [8 x i8], ptr %i.lk, i64 %i.md
  store i64 %i.mc, ptr %i.me, align 8, !tbaa !36
  br label %bb.co

bb.cl:                                            ; preds = %bb.ch
  br i1 %i.lt, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mf = load ptr, ptr %i.li, align 8, !tbaa !538
  %i.mg = getelementptr i8, ptr %i.mf, i64 592
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !793
  %i.mi = icmp ugt i32 %i.lp, %i.mh
  br i1 %i.mi, label %bb.cn, label %pm_insert_local_index.exit971

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.lp) #38
  unreachable

pm_insert_local_index.exit971:                    ; preds = %bb.cm
  %i.mj = load ptr, ptr %i.lj, align 8, !tbaa !499
  %i.mk = add i32 %i.lp, -1
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr [8 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !36
  %i.mo = sext i32 %.3821150 to i64               ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.lk, i64 %i.mo
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !36
  %i.mq = zext i32 %i.lp to i64
  %i.mr = call i32 @rb_st_insert(ptr noundef %i.bz, i64 noundef %i.mq, i64 noundef %i.mo) #37 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %pm_insert_local_index.exit971, %pm_constant_id_lookup.exit970
  %i.ms = add nuw i64 %.0838149, 1                ; 2 uses
  %i.mt = add i32 %.3821150, 1                    ; 2 uses
  %i.mu = load i64, ptr %.0787, align 8, !tbaa !563
  %i.mv = icmp ult i64 %i.ms, %i.mu
  br i1 %i.mv, label %bb.ch, label %.loopexit70, !llvm.loop !1452

.loopexit70:                                      ; preds = %bb.co, %bb.cg, %bb.cf, %bb.ce
  %.4822 = phi i32 [ %.2820, %bb.ce ], [ %.2820, %bb.cf ], [ %.2820, %bb.cg ], [ %i.mt, %bb.co ] ; 8 uses
  br i1 %.not88022, label %bb.cz, label %bb.cp

bb.cp:                                            ; preds = %.loopexit70
  %i.mw = getelementptr i8, ptr %.020, i64 72     ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1434 ; 2 uses
  %.not901 = icmp eq ptr %i.mx, null
  br i1 %.not901, label %bb.cz, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.my = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.mz = getelementptr i8, ptr %i.f, i64 32
  store i32 %.4822, ptr %i.mz, align 8, !tbaa !205
  %i.na = load i16, ptr %i.mx, align 8, !tbaa !501
  %i.nb = icmp eq i16 %i.na, 70
  br i1 %i.nb, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nc = load i16, ptr %i.my, align 8            ; 2 uses
  %i.nd = or i16 %i.nc, 4
  store i16 %i.nd, ptr %i.my, align 8
  %i.ne = load ptr, ptr %i.mw, align 8, !tbaa !1434 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 24
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !1441 ; 7 uses
  %.not902 = icmp eq i32 %i.ng, 0
  br i1 %.not902, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nh = getelementptr i8, ptr %i.ne, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !562
  %i.nj = and i16 %i.ni, 4
  %.not903 = icmp eq i16 %i.nj, 0
  %i.nk = getelementptr i8, ptr %1, i64 80
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !538
  %i.nm = getelementptr i8, ptr %i.nl, i64 592
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !793
  %i.no = icmp ugt i32 %i.ng, %i.nn               ; 2 uses
  br i1 %.not903, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.no, label %bb.cu, label %pm_constant_id_lookup.exit972

bb.cu:                                            ; preds = %bb.ct
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.ng) #38
  unreachable

pm_constant_id_lookup.exit972:                    ; preds = %bb.ct
  %i.np = getelementptr i8, ptr %1, i64 120
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !499
  %i.nr = add i32 %i.ng, -1
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr [8 x i8], ptr %i.nq, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !36
  %i.nv = getelementptr i8, ptr %i.ix, i64 8
  %i.nw = sext i32 %.4822 to i64
  %i.nx = getelementptr [8 x i8], ptr %i.nv, i64 %i.nw
  store i64 %i.nu, ptr %i.nx, align 8, !tbaa !36
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cs
  br i1 %i.no, label %bb.cw, label %pm_insert_local_index.exit973

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.270, i32 noundef %i.ng) #38
  unreachable
end_hunk_0
