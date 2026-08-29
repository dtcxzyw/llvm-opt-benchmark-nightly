Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ossl_rsaz_mod_exp_avx512_x2:bb.a

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 478) #7
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.zext.i = zext nneg i16 %i.en to i32
  %i.eo = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = lshr i32 %i.eo, 6                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !12
  %i.eu = add nuw nsw i32 %i.bs, %i.eq
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !12
  %i.ey = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.ez = lshr i64 %i.et, %i.ey
  %i.fa = lshr i64 %i.ex, %i.ey
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = trunc i64 %i.fa to i32
  call void %i.bq(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cg, i32 noundef %i.fb, i32 noundef %i.fc) #6, !inline_history !14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.020712.in.i = phi i32 [ %.020712.i, %bb.l ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %.020712.i = add nsw i32 %.020712.in.i, -5      ; 3 uses
  %i.fd = lshr i32 %.020712.i, 6                  ; 4 uses
  %i.fe = and i32 %.020712.i, 63                  ; 3 uses
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !12
  %i.fi = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fj = lshr i64 %i.fh, %i.fi                   ; 2 uses
  %i.fk = icmp samesign ugt i32 %i.fe, 59
  br i1 %i.fk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.fl = add nuw nsw i32 %i.fd, %i.bs
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !12
  %i.fp = lshr i64 %i.fo, %i.fi
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fq = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !12
  %i.fu = sub nuw nsw i32 64, %i.fe
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = shl i64 %i.ft, %i.fv
  %i.fx = xor i64 %i.fw, %i.fj
  %i.fy = add nuw nsw i32 %i.fd, %i.bs
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !12
  %i.gc = lshr i64 %i.gb, %i.fi
  %i.gd = add nuw nsw i32 %i.fq, %i.bs
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !12
  %i.gh = shl i64 %i.gg, %i.fv
  %i.gi = xor i64 %i.gh, %i.gc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.02062.i = phi i64 [ %i.fx, %bb.k ], [ %i.fj, %bb.j ]
  %.0.i = phi i64 [ %i.gi, %bb.k ], [ %i.fp, %bb.j ]
  %i.gj = trunc i64 %.02062.i to i32
  %i.gk = and i32 %i.gj, 31
  %i.gl = trunc i64 %.0.i to i32
  %i.gm = and i32 %i.gl, 31
  call void %i.bq(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i32 noundef %i.gk, i32 noundef %i.gm) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  %i.gn = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gn, label %.lr.ph.i, label %bb.m, !llvm.loop !15

bb.m:                                             ; preds = %bb.l
  %i.go = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.go, i1 false)
  store i64 1, ptr %i.cf, align 8, !tbaa !12
  store i64 1, ptr %i.ci, align 8, !tbaa !12
  call void %i.bo(ptr noundef nonnull %i.am, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #6, !inline_history !14
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bx, i64 noundef %i.bw) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str, i32 noundef 569) #6
  %i.gp = add nsw i32 %12, 63
  %i.gq = ashr i32 %i.gp, 6                       ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0                   ; 2 uses
  br i1 %i.gr, label %.lr.ph.preheader.i121, label %.preheader.i

.lr.ph.preheader.i121:                            ; preds = %bb.m
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = shl nuw nsw i64 %i.gs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.gt, i1 false), !tbaa !12
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i121, %bb.m
  %i.gu = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gu, label %.lr.ph48.i.preheader, label %._crit_edge.i119

.lr.ph48.i.preheader:                             ; preds = %.preheader.i
  %i.gv = add nsw i32 %12, -104                   ; 2 uses
  %i.gw = udiv i32 %i.gv, 104
  %i.gx = and i32 %i.gw, 1
  %lcmp.mod.not.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph48.i.prol, label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.i.preheader
  %i.gy = load i64, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  store i64 %i.gy, ptr %0, align 1
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ha = lshr i64 %i.gy, 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !12
  %i.hd = shl i64 %i.hc, 4
  %i.he = or i64 %i.hd, %i.ha
  store i64 %i.he, ptr %i.gz, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  %i.hg = add nsw i32 %12, -104                   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.i.preheader
  %.047.i.unr = phi i32 [ %12, %.lr.ph48.i.preheader ], [ %i.hg, %.lr.ph48.i.prol ]
  %.03046.i.unr = phi ptr [ %0, %.lr.ph48.i.preheader ], [ %i.hf, %.lr.ph48.i.prol ]
  %.03245.i.unr = phi ptr [ %i.am, %.lr.ph48.i.preheader ], [ %i.hh, %.lr.ph48.i.prol ]
  %.lcssa224.unr = phi ptr [ poison, %.lr.ph48.i.preheader ], [ %i.hf, %.lr.ph48.i.prol ]
  %.lcssa223.unr = phi i32 [ poison, %.lr.ph48.i.preheader ], [ %i.hg, %.lr.ph48.i.prol ]
  %.lcssa222.unr = phi ptr [ poison, %.lr.ph48.i.preheader ], [ %i.hh, %.lr.ph48.i.prol ]
  %i.hi = icmp ult i32 %i.gv, 104
  br i1 %i.hi, label %._crit_edge.i119, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %.047.i = phi i32 [ %i.ia, %.lr.ph48.i ], [ %.047.i.unr, %.lr.ph48.i.prol.loopexit ] ; 2 uses
  %.03046.i = phi ptr [ %i.hz, %.lr.ph48.i ], [ %.03046.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %.03245.i = phi ptr [ %i.ib, %.lr.ph48.i ], [ %.03245.i.unr, %.lr.ph48.i.prol.loopexit ] ; 5 uses
  %i.hj = load i64, ptr %.03245.i, align 8, !tbaa !12 ; 2 uses
  store i64 %i.hj, ptr %.03046.i, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.hl = lshr i64 %i.hj, 48
  %i.hm = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !12
  %i.ho = shl i64 %i.hn, 4
  %i.hp = or i64 %i.ho, %i.hl
  store i64 %i.hp, ptr %i.hk, align 1
  %i.hq = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13
  %i.hr = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !12 ; 2 uses
  store i64 %i.hs, ptr %i.hq, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.03046.i, i64 19
  %i.hu = lshr i64 %i.hs, 48
  %i.hv = getelementptr inbounds nuw i8, ptr %.03245.i, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !12
  %i.hx = shl i64 %i.hw, 4
  %i.hy = or i64 %i.hx, %i.hu
  store i64 %i.hy, ptr %i.ht, align 1
  %i.hz = getelementptr inbounds nuw i8, ptr %.03046.i, i64 26 ; 2 uses
  %i.ia = add nsw i32 %.047.i, -208               ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.03245.i, i64 32 ; 2 uses
  %i.ic = icmp sgt i32 %.047.i, 311
  br i1 %i.ic, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !17

._crit_edge.i119:                                 ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %.lcssa222.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ib, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %.lcssa224.unr, %.lr.ph48.i.prol.loopexit ], [ %i.hz, %.lr.ph48.i ] ; 9 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %.lcssa223.unr, %.lr.ph48.i.prol.loopexit ], [ %i.ia, %.lr.ph48.i ] ; 4 uses
  %i.id = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.id, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.ie = load i64, ptr %.032.lcssa.i, align 8, !tbaa !12 ; 7 uses
  %i.if = trunc i64 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 1
  store i8 %i.if, ptr %.030.lcssa.i, align 1, !tbaa !18
  %i.ih = lshr i64 %i.ie, 8
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 2
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !18
  %i.ik = lshr i64 %i.ie, 16
  %i.il = trunc i64 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 3
  store i8 %i.il, ptr %i.ij, align 1, !tbaa !18
  %i.in = lshr i64 %i.ie, 24
  %i.io = trunc i64 %i.in to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  store i8 %i.io, ptr %i.im, align 1, !tbaa !18
  %i.iq = lshr i64 %i.ie, 32
  %i.ir = trunc i64 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !18
  %i.it = lshr i64 %i.ie, 40
  %i.iu = trunc i64 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !18
  %i.iw = lshr i64 %i.ie, 48                      ; 2 uses
  %i.ix = trunc i64 %i.iw to i8
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !18
  %i.iy = add nsw i32 %.0.lcssa.i, -45
  %i.iz = lshr i32 %i.iy, 3                       ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !12
  %i.jc = shl i64 %i.jb, 4
  %i.jd = or i64 %i.jc, %i.iw                     ; 2 uses
  %13 = add nsw i32 %i.iz, -1
  %xtraiter227 = and i32 %i.iz, 7                 ; 2 uses
  %lcmp.mod228.not = icmp eq i32 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %16, %.lr.ph.i33.i.prol ], [ %i.jd, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %17, %.lr.ph.i33.i.prol ], [ %i.iz, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %15, %.lr.ph.i33.i.prol ], [ %i.iv, %.lr.ph.i.i ] ; 2 uses
  %prol.iter229 = phi i32 [ %prol.iter229.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %14 = trunc i64 %.08.i34.i.prol to i8
  %15 = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %14, ptr %.056.i36.i.prol, align 1, !tbaa !18
  %16 = lshr i64 %.08.i34.i.prol, 8               ; 2 uses
  %17 = add nsw i32 %.047.i35.i.prol, -1          ; 2 uses
  %prol.iter229.next = add i32 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i32 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !19

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.jd, %.lr.ph.i.i ], [ %16, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.iz, %.lr.ph.i.i ], [ %17, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.iv, %.lr.ph.i.i ], [ %15, %.lr.ph.i33.i.prol ]
  %18 = icmp ult i32 %13, 7
  br i1 %18, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.jh, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %38, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %19 = trunc i64 %.08.i34.i to i8
  %20 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %19, ptr %.056.i36.i, align 1, !tbaa !18
  %21 = lshr i64 %.08.i34.i, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %22, ptr %20, align 1, !tbaa !18
  %24 = lshr i64 %.08.i34.i, 16
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %25, ptr %23, align 1, !tbaa !18
  %27 = lshr i64 %.08.i34.i, 24
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %28, ptr %26, align 1, !tbaa !18
  %30 = lshr i64 %.08.i34.i, 32
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %31, ptr %29, align 1, !tbaa !18
  %33 = lshr i64 %.08.i34.i, 40
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %34, ptr %32, align 1, !tbaa !18
  %36 = lshr i64 %.08.i34.i, 48
  %i.je = trunc i64 %36 to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.je, ptr %35, align 1, !tbaa !18
  %i.jg = lshr i64 %.08.i34.i, 56
  %37 = trunc nuw i64 %i.jg to i8
  %38 = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %37, ptr %i.jf, align 1, !tbaa !18
  %i.jh = add nsw i32 %.047.i35.i, -8
  %39 = icmp sgt i32 %.047.i35.i, 8
  br i1 %39, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !21

bb.n:                                             ; preds = %._crit_edge.i119
  %.not.i120 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i120, label %from_words52.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ji = add nsw i32 %.0.lcssa.i, 7
  %i.jj = ashr i32 %i.ji, 3                       ; 5 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.o
  %i.jl = load i64, ptr %.032.lcssa.i, align 8, !tbaa !12 ; 2 uses
  %xtraiter225 = and i32 %i.jj, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.jo, %.lr.ph.i38.i.prol ], [ %i.jl, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.jp, %.lr.ph.i38.i.prol ], [ %i.jj, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.jn, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.jm = trunc i64 %.08.i39.i.prol to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.jm, ptr %.056.i41.i.prol, align 1, !tbaa !18
  %i.jo = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.jp = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter225
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !22

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.jl, %.lr.ph.i38.preheader.i ], [ %i.jo, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.jj, %.lr.ph.i38.preheader.i ], [ %i.jp, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.jn, %.lr.ph.i38.i.prol ]
  %i.jq = icmp ult i32 %i.jj, 8
  br i1 %i.jq, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.ko, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.kn, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.jr = trunc i64 %.08.i39.i to i8
  %i.js = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.jr, ptr %.056.i41.i, align 1, !tbaa !18
  %i.jt = lshr i64 %.08.i39.i, 8
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.ju, ptr %i.js, align 1, !tbaa !18
  %i.jw = lshr i64 %.08.i39.i, 16
  %i.jx = trunc i64 %i.jw to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.jx, ptr %i.jv, align 1, !tbaa !18
  %i.jz = lshr i64 %.08.i39.i, 24
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.ka, ptr %i.jy, align 1, !tbaa !18
  %i.kc = lshr i64 %.08.i39.i, 32
  %i.kd = trunc i64 %i.kc to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.kd, ptr %i.kb, align 1, !tbaa !18
  %i.kf = lshr i64 %.08.i39.i, 40
  %i.kg = trunc i64 %i.kf to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.kg, ptr %i.ke, align 1, !tbaa !18
  %i.ki = lshr i64 %.08.i39.i, 48
  %i.kj = trunc i64 %i.ki to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.kj, ptr %i.kh, align 1, !tbaa !18
  %i.kl = lshr i64 %.08.i39.i, 56
  %i.km = trunc nuw i64 %i.kl to i8
  %i.kn = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.km, ptr %i.kk, align 1, !tbaa !18
  %i.ko = add nsw i32 %.047.i40.i, -8
  %i.kp = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.kp, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !21

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.n, %bb.o
  br i1 %i.gr, label %.lr.ph.preheader.i142, label %.preheader.i122

.lr.ph.preheader.i142:                            ; preds = %from_words52.exit
  %i.kq = zext nneg i32 %i.gq to i64
  %i.kr = shl nuw nsw i64 %i.kq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.kr, i1 false), !tbaa !12
  br label %.preheader.i122

.preheader.i122:                                  ; preds = %.lr.ph.preheader.i142, %from_words52.exit
  br i1 %i.gu, label %.lr.ph48.i138.preheader, label %._crit_edge.i123

.lr.ph48.i138.preheader:                          ; preds = %.preheader.i122
  %i.ks = add nsw i32 %12, -104                   ; 2 uses
  %i.kt = udiv i32 %i.ks, 104
  %i.ku = and i32 %i.kt, 1
  %lcmp.mod228.not.not = icmp eq i32 %i.ku, 0
  br i1 %lcmp.mod228.not.not, label %.lr.ph48.i138.prol, label %.lr.ph48.i138.prol.loopexit

.lr.ph48.i138.prol:                               ; preds = %.lr.ph48.i138.preheader
  %i.kv = load i64, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  store i64 %i.kv, ptr %6, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.kx = lshr i64 %i.kv, 48
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !12
  %i.la = shl i64 %i.kz, 4
  %i.lb = or i64 %i.la, %i.kx
  store i64 %i.lb, ptr %i.kw, align 1
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  %i.ld = add nsw i32 %12, -104                   ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  br label %.lr.ph48.i138.prol.loopexit

.lr.ph48.i138.prol.loopexit:                      ; preds = %.lr.ph48.i138.prol, %.lr.ph48.i138.preheader
  %.047.i139.unr = phi i32 [ %12, %.lr.ph48.i138.preheader ], [ %i.ld, %.lr.ph48.i138.prol ]
  %.03046.i140.unr = phi ptr [ %6, %.lr.ph48.i138.preheader ], [ %i.lc, %.lr.ph48.i138.prol ]
  %.03245.i141.unr = phi ptr [ %i.ap, %.lr.ph48.i138.preheader ], [ %i.le, %.lr.ph48.i138.prol ]
  %.lcssa220.unr = phi ptr [ poison, %.lr.ph48.i138.preheader ], [ %i.lc, %.lr.ph48.i138.prol ]
  %.lcssa219.unr = phi i32 [ poison, %.lr.ph48.i138.preheader ], [ %i.ld, %.lr.ph48.i138.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph48.i138.preheader ], [ %i.le, %.lr.ph48.i138.prol ]
  %i.lf = icmp ult i32 %i.ks, 104
  br i1 %i.lf, label %._crit_edge.i123, label %.lr.ph48.i138

.lr.ph48.i138:                                    ; preds = %.lr.ph48.i138.prol.loopexit, %.lr.ph48.i138
  %.047.i139 = phi i32 [ %i.lx, %.lr.ph48.i138 ], [ %.047.i139.unr, %.lr.ph48.i138.prol.loopexit ] ; 2 uses
  %.03046.i140 = phi ptr [ %i.lw, %.lr.ph48.i138 ], [ %.03046.i140.unr, %.lr.ph48.i138.prol.loopexit ] ; 5 uses
  %.03245.i141 = phi ptr [ %i.ly, %.lr.ph48.i138 ], [ %.03245.i141.unr, %.lr.ph48.i138.prol.loopexit ] ; 5 uses
  %i.lg = load i64, ptr %.03245.i141, align 8, !tbaa !12 ; 2 uses
  store i64 %i.lg, ptr %.03046.i140, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 6
  %i.li = lshr i64 %i.lg, 48
  %i.lj = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !12
  %i.ll = shl i64 %i.lk, 4
  %i.lm = or i64 %i.ll, %i.li
  store i64 %i.lm, ptr %i.lh, align 1
  %i.ln = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 13
  %i.lo = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 16
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !12 ; 2 uses
  store i64 %i.lp, ptr %i.ln, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 19
  %i.lr = lshr i64 %i.lp, 48
  %i.ls = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !12
  %i.lu = shl i64 %i.lt, 4
  %i.lv = or i64 %i.lu, %i.lr
  store i64 %i.lv, ptr %i.lq, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 26 ; 2 uses
  %i.lx = add nsw i32 %.047.i139, -208            ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 32 ; 2 uses
  %i.lz = icmp sgt i32 %.047.i139, 311
  br i1 %i.lz, label %.lr.ph48.i138, label %._crit_edge.i123, !llvm.loop !17

._crit_edge.i123:                                 ; preds = %.lr.ph48.i138.prol.loopexit, %.lr.ph48.i138, %.preheader.i122
  %.032.lcssa.i124 = phi ptr [ %i.ap, %.preheader.i122 ], [ %.lcssa.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.ly, %.lr.ph48.i138 ] ; 3 uses
  %.030.lcssa.i125 = phi ptr [ %6, %.preheader.i122 ], [ %.lcssa220.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.lw, %.lr.ph48.i138 ] ; 9 uses
  %.0.lcssa.i126 = phi i32 [ %12, %.preheader.i122 ], [ %.lcssa219.unr, %.lr.ph48.i138.prol.loopexit ], [ %i.lx, %.lr.ph48.i138 ] ; 4 uses
  %i.ma = icmp sgt i32 %.0.lcssa.i126, 52
  br i1 %i.ma, label %.lr.ph.i.i133, label %bb.p

.lr.ph.i.i133:                                    ; preds = %._crit_edge.i123
  %i.mb = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !12 ; 7 uses
  %i.mc = trunc i64 %i.mb to i8
  %i.md = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 1
  store i8 %i.mc, ptr %.030.lcssa.i125, align 1, !tbaa !18
  %i.me = lshr i64 %i.mb, 8
  %i.mf = trunc i64 %i.me to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 2
  store i8 %i.mf, ptr %i.md, align 1, !tbaa !18
  %i.mh = lshr i64 %i.mb, 16
  %i.mi = trunc i64 %i.mh to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 3
  store i8 %i.mi, ptr %i.mg, align 1, !tbaa !18
  %i.mk = lshr i64 %i.mb, 24
  %i.ml = trunc i64 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 4
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !18
  %i.mn = lshr i64 %i.mb, 32
  %i.mo = trunc i64 %i.mn to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 5
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !18
  %i.mq = lshr i64 %i.mb, 40
  %i.mr = trunc i64 %i.mq to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 6 ; 3 uses
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !18
  %i.mt = lshr i64 %i.mb, 48                      ; 2 uses
  %i.mu = trunc i64 %i.mt to i8
  store i8 %i.mu, ptr %i.ms, align 1, !tbaa !18
  %i.mv = add nsw i32 %.0.lcssa.i126, -45
  %i.mw = lshr i32 %i.mv, 3                       ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.032.lcssa.i124, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !12
  %i.mz = shl i64 %i.my, 4
  %i.na = or i64 %i.mz, %i.mt                     ; 2 uses
  %40 = add nsw i32 %i.mw, -1
  %xtraiter236 = and i32 %i.mw, 7                 ; 2 uses
  %lcmp.mod237.not = icmp eq i32 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol

.lr.ph.i33.i134.prol:                             ; preds = %.lr.ph.i.i133, %.lr.ph.i33.i134.prol
  %.08.i34.i135.prol = phi i64 [ %43, %.lr.ph.i33.i134.prol ], [ %i.na, %.lr.ph.i.i133 ] ; 2 uses
  %.047.i35.i136.prol = phi i32 [ %44, %.lr.ph.i33.i134.prol ], [ %i.mw, %.lr.ph.i.i133 ]
  %.056.i36.i137.prol = phi ptr [ %42, %.lr.ph.i33.i134.prol ], [ %i.ms, %.lr.ph.i.i133 ] ; 2 uses
  %prol.iter238 = phi i32 [ %prol.iter238.next, %.lr.ph.i33.i134.prol ], [ 0, %.lr.ph.i.i133 ]
  %41 = trunc i64 %.08.i34.i135.prol to i8
  %42 = getelementptr inbounds nuw i8, ptr %.056.i36.i137.prol, i64 1 ; 2 uses
  store i8 %41, ptr %.056.i36.i137.prol, align 1, !tbaa !18
  %43 = lshr i64 %.08.i34.i135.prol, 8            ; 2 uses
  %44 = add nsw i32 %.047.i35.i136.prol, -1       ; 2 uses
  %prol.iter238.next = add i32 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i32 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol, !llvm.loop !23

.lr.ph.i33.i134.prol.loopexit:                    ; preds = %.lr.ph.i33.i134.prol, %.lr.ph.i.i133
  %.08.i34.i135.unr = phi i64 [ %i.na, %.lr.ph.i.i133 ], [ %43, %.lr.ph.i33.i134.prol ]
  %.047.i35.i136.unr = phi i32 [ %i.mw, %.lr.ph.i.i133 ], [ %44, %.lr.ph.i33.i134.prol ]
  %.056.i36.i137.unr = phi ptr [ %i.ms, %.lr.ph.i.i133 ], [ %42, %.lr.ph.i33.i134.prol ]
  %45 = icmp ult i32 %40, 7
  br i1 %45, label %from_words52.exit143, label %.lr.ph.i33.i134

.lr.ph.i33.i134:                                  ; preds = %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134
  %.08.i34.i135 = phi i64 [ 0, %.lr.ph.i33.i134 ], [ %.08.i34.i135.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 8 uses
  %.047.i35.i136 = phi i32 [ %i.ne, %.lr.ph.i33.i134 ], [ %.047.i35.i136.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 2 uses
  %.056.i36.i137 = phi ptr [ %65, %.lr.ph.i33.i134 ], [ %.056.i36.i137.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 9 uses
  %46 = trunc i64 %.08.i34.i135 to i8
  %47 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 1
  store i8 %46, ptr %.056.i36.i137, align 1, !tbaa !18
  %48 = lshr i64 %.08.i34.i135, 8
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 2
  store i8 %49, ptr %47, align 1, !tbaa !18
  %51 = lshr i64 %.08.i34.i135, 16
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 3
  store i8 %52, ptr %50, align 1, !tbaa !18
  %54 = lshr i64 %.08.i34.i135, 24
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 4
  store i8 %55, ptr %53, align 1, !tbaa !18
  %57 = lshr i64 %.08.i34.i135, 32
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 5
  store i8 %58, ptr %56, align 1, !tbaa !18
  %60 = lshr i64 %.08.i34.i135, 40
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 6
  store i8 %61, ptr %59, align 1, !tbaa !18
  %63 = lshr i64 %.08.i34.i135, 48
  %i.nb = trunc i64 %63 to i8
  %i.nc = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 7
  store i8 %i.nb, ptr %62, align 1, !tbaa !18
  %i.nd = lshr i64 %.08.i34.i135, 56
  %64 = trunc nuw i64 %i.nd to i8
  %65 = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 8
  store i8 %64, ptr %i.nc, align 1, !tbaa !18
  %i.ne = add nsw i32 %.047.i35.i136, -8
  %66 = icmp sgt i32 %.047.i35.i136, 8
  br i1 %66, label %.lr.ph.i33.i134, label %from_words52.exit143, !llvm.loop !21

bb.p:                                             ; preds = %._crit_edge.i123
  %.not.i127 = icmp eq i32 %.0.lcssa.i126, 0
  br i1 %.not.i127, label %from_words52.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.nf = add nsw i32 %.0.lcssa.i126, 7
  %i.ng = ashr i32 %i.nf, 3                       ; 5 uses
  %i.nh = icmp sgt i32 %i.ng, 0
  br i1 %i.nh, label %.lr.ph.i38.preheader.i128, label %from_words52.exit143

.lr.ph.i38.preheader.i128:                        ; preds = %bb.q
  %i.ni = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !12 ; 2 uses
  %xtraiter230 = and i32 %i.ng, 7                 ; 2 uses
  %lcmp.mod231.not = icmp eq i32 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol

.lr.ph.i38.i129.prol:                             ; preds = %.lr.ph.i38.preheader.i128, %.lr.ph.i38.i129.prol
  %.08.i39.i130.prol = phi i64 [ %i.nl, %.lr.ph.i38.i129.prol ], [ %i.ni, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %.047.i40.i131.prol = phi i32 [ %i.nm, %.lr.ph.i38.i129.prol ], [ %i.ng, %.lr.ph.i38.preheader.i128 ]
  %.056.i41.i132.prol = phi ptr [ %i.nk, %.lr.ph.i38.i129.prol ], [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %prol.iter232 = phi i32 [ %prol.iter232.next, %.lr.ph.i38.i129.prol ], [ 0, %.lr.ph.i38.preheader.i128 ]
  %i.nj = trunc i64 %.08.i39.i130.prol to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %.056.i41.i132.prol, i64 1 ; 2 uses
  store i8 %i.nj, ptr %.056.i41.i132.prol, align 1, !tbaa !18
  %i.nl = lshr i64 %.08.i39.i130.prol, 8          ; 2 uses
  %i.nm = add nsw i32 %.047.i40.i131.prol, -1     ; 2 uses
  %prol.iter232.next = add i32 %prol.iter232, 1   ; 2 uses
  %prol.iter232.cmp.not = icmp eq i32 %prol.iter232.next, %xtraiter230
  br i1 %prol.iter232.cmp.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol, !llvm.loop !24

.lr.ph.i38.i129.prol.loopexit:                    ; preds = %.lr.ph.i38.i129.prol, %.lr.ph.i38.preheader.i128
  %.08.i39.i130.unr = phi i64 [ %i.ni, %.lr.ph.i38.preheader.i128 ], [ %i.nl, %.lr.ph.i38.i129.prol ]
  %.047.i40.i131.unr = phi i32 [ %i.ng, %.lr.ph.i38.preheader.i128 ], [ %i.nm, %.lr.ph.i38.i129.prol ]
  %.056.i41.i132.unr = phi ptr [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ], [ %i.nk, %.lr.ph.i38.i129.prol ]
  %i.nn = icmp ult i32 %i.ng, 8
  br i1 %i.nn, label %from_words52.exit143, label %.lr.ph.i38.i129

.lr.ph.i38.i129:                                  ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129
  %.08.i39.i130 = phi i64 [ 0, %.lr.ph.i38.i129 ], [ %.08.i39.i130.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 8 uses
  %.047.i40.i131 = phi i32 [ %i.ol, %.lr.ph.i38.i129 ], [ %.047.i40.i131.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 2 uses
  %.056.i41.i132 = phi ptr [ %i.ok, %.lr.ph.i38.i129 ], [ %.056.i41.i132.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 9 uses
  %i.no = trunc i64 %.08.i39.i130 to i8
  %i.np = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 1
  store i8 %i.no, ptr %.056.i41.i132, align 1, !tbaa !18
  %i.nq = lshr i64 %.08.i39.i130, 8
  %i.nr = trunc i64 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 2
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !18
  %i.nt = lshr i64 %.08.i39.i130, 16
  %i.nu = trunc i64 %i.nt to i8
  %i.nv = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.nu, ptr %i.ns, align 1, !tbaa !18
  %i.nw = lshr i64 %.08.i39.i130, 24
  %i.nx = trunc i64 %i.nw to i8
  %i.ny = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.nx, ptr %i.nv, align 1, !tbaa !18
  %i.nz = lshr i64 %.08.i39.i130, 32
  %i.oa = trunc i64 %i.nz to i8
  %i.ob = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.oa, ptr %i.ny, align 1, !tbaa !18
  %i.oc = lshr i64 %.08.i39.i130, 40
  %i.od = trunc i64 %i.oc to i8
  %i.oe = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !18
  %i.of = lshr i64 %.08.i39.i130, 48
  %i.og = trunc i64 %i.of to i8
  %i.oh = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !18
  %i.oi = lshr i64 %.08.i39.i130, 56
  %i.oj = trunc nuw i64 %i.oi to i8
  %i.ok = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !18
  %i.ol = add nsw i32 %.047.i40.i131, -8
  %i.om = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.om, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !21

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.on = lshr exact i32 %12, 6                   ; 3 uses
  %i.oo = zext nneg i32 %i.on to i64              ; 6 uses
  %i.op = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.on) #6 ; 2 uses
  %i.oq = sub i64 0, %i.op
  %i.or = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.oq) #8, !srcloc !25 ; 2 uses
  %i.os = add i64 %i.op, -1
  %i.ot = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.os) #8, !srcloc !25 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.oo, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.or, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.ot, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ou, align 8, !tbaa !12
  %wide.load197 = load <2 x i64>, ptr %i.ov, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.ow, align 8, !tbaa !12
  %wide.load199 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !12
  %i.oy = and <2 x i64> %wide.load, %broadcast.splat
  %i.oz = and <2 x i64> %wide.load197, %broadcast.splat
  %i.pa = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.pb = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.pc = or <2 x i64> %i.pa, %i.oy
  %i.pd = or <2 x i64> %i.pb, %i.oz
  store <2 x i64> %i.pc, ptr %i.ou, align 8, !tbaa !12
  store <2 x i64> %i.pd, ptr %i.ov, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.oo
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.pm, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !12
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !12
  %i.pj = and i64 %i.pg, %i.or
  %i.pk = and i64 %i.pi, %i.ot
  %i.pl = or i64 %i.pk, %i.pj
  store i64 %i.pl, ptr %i.pf, align 8, !tbaa !12
  %i.pm = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pm, %i.oo
  br i1 %exitcond.not.i.i, label %.lr.ph.i.i146, label %scalar.ph, !llvm.loop !29

.lr.ph.i.i146:                                    ; preds = %scalar.ph, %middle.block
  %i.pn = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %6, ptr noundef %9, i32 noundef %i.on) #6 ; 2 uses
  %i.po = sub i64 0, %i.pn
  %i.pp = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.po) #8, !srcloc !25 ; 2 uses
  %i.pq = add i64 %i.pn, -1
  %i.pr = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.pq) #8, !srcloc !25 ; 2 uses
  %min.iters.check201 = icmp ult i32 %12, 256
  br i1 %min.iters.check201, label %scalar.ph200.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i.i146
  %n.vec203 = and i64 %i.oo, 67108860             ; 3 uses
  %broadcast.splatinsert204 = insertelement <2 x i64> poison, i64 %i.pp, i64 0
  %broadcast.splat205 = shufflevector <2 x i64> %broadcast.splatinsert204, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert206 = insertelement <2 x i64> poison, i64 %i.pr, i64 0
  %broadcast.splat207 = shufflevector <2 x i64> %broadcast.splatinsert206, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph202
  %index209 = phi i64 [ 0, %vector.ph202 ], [ %index.next214, %vector.body208 ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index209 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16 ; 2 uses
  %wide.load210 = load <2 x i64>, ptr %i.ps, align 8, !tbaa !12
  %wide.load211 = load <2 x i64>, ptr %i.pt, align 8, !tbaa !12
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index209 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %wide.load212 = load <2 x i64>, ptr %i.pu, align 8, !tbaa !12
  %wide.load213 = load <2 x i64>, ptr %i.pv, align 8, !tbaa !12
  %i.pw = and <2 x i64> %wide.load210, %broadcast.splat205
  %i.px = and <2 x i64> %wide.load211, %broadcast.splat205
  %i.py = and <2 x i64> %wide.load212, %broadcast.splat207
  %i.pz = and <2 x i64> %wide.load213, %broadcast.splat207
  %i.qa = or <2 x i64> %i.py, %i.pw
  %i.qb = or <2 x i64> %i.pz, %i.px
  store <2 x i64> %i.qa, ptr %i.ps, align 8, !tbaa !12
  store <2 x i64> %i.qb, ptr %i.pt, align 8, !tbaa !12
  %index.next214 = add nuw i64 %index209, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next214, %n.vec203
  br i1 %i.qc, label %middle.block215, label %vector.body208, !llvm.loop !30

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %n.vec203, %i.oo
  br i1 %cmp.n216, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200.preheader

scalar.ph200.preheader:                           ; preds = %.lr.ph.i.i146, %middle.block215
  %.09.i.i147.ph = phi i64 [ 0, %.lr.ph.i.i146 ], [ %n.vec203, %middle.block215 ]
  br label %scalar.ph200

scalar.ph200:                                     ; preds = %scalar.ph200.preheader, %scalar.ph200
  %.09.i.i147 = phi i64 [ %i.qk, %scalar.ph200 ], [ %.09.i.i147.ph, %scalar.ph200.preheader ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.09.i.i147 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !12
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.09.i.i147
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !12
  %i.qh = and i64 %i.qe, %i.pp
  %i.qi = and i64 %i.qg, %i.pr
  %i.qj = or i64 %i.qi, %i.qh
  store i64 %i.qj, ptr %i.qd, align 8, !tbaa !12
  %i.qk = add nuw i64 %.09.i.i147, 1              ; 2 uses
  %exitcond.not.i.i148 = icmp eq i64 %i.qk, %i.oo
  br i1 %exitcond.not.i.i148, label %RSAZ_mod_exp_x2_ifma256.exit.thread, label %scalar.ph200, !llvm.loop !31

RSAZ_mod_exp_x2_ifma256.exit.thread:              ; preds = %scalar.ph200, %middle.block215, %bb.g, %bb.d, %bb.c
  %.0113.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %middle.block215 ], [ 1, %scalar.ph200 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.w, i64 noundef %i.v) #6
  call void @CRYPTO_free(ptr noundef nonnull %i.w, ptr noundef nonnull @.str, i32 noundef 321) #6
  br label %bn_reduce_once_in_place.exit149

bn_reduce_once_in_place.exit149:                  ; preds = %bb.b, %bb.a, %RSAZ_mod_exp_x2_ifma256.exit.thread
  %.0113156 = phi i32 [ %.0113.ph, %RSAZ_mod_exp_x2_ifma256.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0113156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @ossl_rsaz_avx512ifma_eligible() local_unnamed_addr #3

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @to_words52(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 -33554428, 33554429) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 103
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %3, -104                     ; 2 uses
  %i.c = udiv i32 %i.b, 104
  %i.d = and i32 %i.c, 1
  %lcmp.mod.not.not = icmp eq i32 %i.d, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0.copyload.prol = load i64, ptr %2, align 1
  %i.e = and i64 %.0.copyload.prol, 4503599627370495
  store i64 %i.e, ptr %0, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.0.copyload3.prol = load i64, ptr %i.f, align 1
  %i.g = lshr i64 %.0.copyload3.prol, 4
  %i.h = and i64 %i.g, 4503599627370495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  %i.k = add nsw i32 %1, -2                       ; 2 uses
  %i.l = add nsw i32 %3, -104                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.050.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.03349.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.03548.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.03647.unr = phi i32 [ %3, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa76.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.lcssa75.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.lcssa74.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa73.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %i.n = icmp ult i32 %i.b, 104
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.050 = phi ptr [ %i.ad, %.lr.ph ], [ %.050.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03349 = phi i32 [ %i.ab, %.lr.ph ], [ %.03349.unr, %.lr.ph.prol.loopexit ]
  %.03548 = phi ptr [ %i.aa, %.lr.ph ], [ %.03548.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03647 = phi i32 [ %i.ac, %.lr.ph ], [ %.03647.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0.copyload = load i64, ptr %.03548, align 1
  %i.o = and i64 %.0.copyload, 4503599627370495
  store i64 %i.o, ptr %.050, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %.03548, i64 6
  %.0.copyload3 = load i64, ptr %i.p, align 1
  %i.q = lshr i64 %.0.copyload3, 4
  %i.r = and i64 %i.q, 4503599627370495
  %i.s = getelementptr inbounds nuw i8, ptr %.050, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %.03548, i64 13
  %i.u = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %.0.copyload.1 = load i64, ptr %i.t, align 1
  %i.v = and i64 %.0.copyload.1, 4503599627370495
  store i64 %i.v, ptr %i.u, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.03548, i64 19
  %.0.copyload3.1 = load i64, ptr %i.w, align 1
  %i.x = lshr i64 %.0.copyload3.1, 4
  %i.y = and i64 %i.x, 4503599627370495
  %i.z = getelementptr inbounds nuw i8, ptr %.050, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.03548, i64 26 ; 2 uses
  %i.ab = add nsw i32 %.03349, -4                 ; 2 uses
  %i.ac = add nsw i32 %.03647, -208               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.050, i64 32 ; 2 uses
  %i.ae = icmp sgt i32 %.03647, 311
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.036.lcssa = phi i32 [ %3, %bb.a ], [ %.lcssa74.unr, %.lr.ph.prol.loopexit ], [ %i.ac, %.lr.ph ] ; 4 uses
  %.035.lcssa = phi ptr [ %2, %bb.a ], [ %.lcssa76.unr, %.lr.ph.prol.loopexit ], [ %i.aa, %.lr.ph ] ; 9 uses
  %.033.lcssa = phi i32 [ %1, %bb.a ], [ %.lcssa75.unr, %.lr.ph.prol.loopexit ], [ %i.ab, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa73.unr, %.lr.ph.prol.loopexit ], [ %i.ad, %.lr.ph ] ; 6 uses
  %i.af = icmp sgt i32 %.036.lcssa, 52
  br i1 %i.af, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge
  %i.ag = getelementptr i8, ptr %.035.lcssa, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr %.035.lcssa, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.ai, 16
  %i.an = shl nuw nsw i64 %i.al, 8
  %i.ao = or disjoint i64 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %.035.lcssa, i64 4
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = getelementptr i8, ptr %.035.lcssa, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.as, 16
  %i.ax = shl nuw nsw i64 %i.av, 8
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %.035.lcssa, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb
  %i.bd = getelementptr i8, ptr %.035.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bc, 16
  %i.bh = shl nuw nsw i64 %i.bf, 8
  %i.bi = load i8, ptr %.035.lcssa, align 1, !tbaa !18
  %i.bj = zext i8 %i.bi to i64
  %.masked61 = and i64 %i.bg, 4503599627304960
  %.masked = or disjoint i64 %.masked61, %i.bh
  %i.bk = or disjoint i64 %.masked, %i.bj
  store i64 %i.bk, ptr %.0.lcssa, align 8, !tbaa !12
  %i.bl = add nsw i32 %.036.lcssa, -45
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.preheader
  %indvars.iv.i37 = phi i64 [ %i.bn, %.preheader.preheader ], [ %indvars.iv.next.i39, %bb.b ] ; 3 uses
  %.08.i38 = phi i64 [ 0, %.preheader.preheader ], [ %i.bt, %bb.b ]
  %i.bo = shl i64 %.08.i38, 8
  %i.bp = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i37
  %i.bq = getelementptr i8, ptr %i.bp, i64 5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs            ; 2 uses
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i37, -1
  %i.bu = icmp samesign ugt i64 %indvars.iv.i37, 1
  br i1 %i.bu, label %bb.b, label %get_digit.exit40, !llvm.loop !33

get_digit.exit40:                                 ; preds = %bb.b
  %i.bv = lshr i64 %i.bt, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.by = add nsw i32 %.033.lcssa, -2
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.bz = icmp sgt i32 %.036.lcssa, 0
  br i1 %i.bz, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ca = add nuw nsw i32 %.036.lcssa, 7
  %i.cb = lshr i32 %i.ca, 3
  %i.cc = zext nneg i32 %i.cb to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i41 = phi i64 [ %i.cc, %bb.d ], [ %indvars.iv.next.i43, %bb.e ] ; 3 uses
  %.08.i42 = phi i64 [ 0, %bb.d ], [ %i.ci, %bb.e ]
  %i.cd = shl i64 %.08.i42, 8
  %i.ce = getelementptr i8, ptr %.035.lcssa, i64 %indvars.iv.i41
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  %i.ch = zext i8 %i.cg to i64
  %i.ci = or disjoint i64 %i.cd, %i.ch            ; 2 uses
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i41, -1
  %i.cj = icmp samesign ugt i64 %indvars.iv.i41, 1
  br i1 %i.cj, label %bb.e, label %get_digit.exit44, !llvm.loop !33

get_digit.exit44:                                 ; preds = %bb.e
  store i64 %i.ci, ptr %.0.lcssa, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %i.cl = add nsw i32 %.033.lcssa, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %get_digit.exit44, %get_digit.exit40
  %.134 = phi i32 [ %i.by, %get_digit.exit40 ], [ %i.cl, %get_digit.exit44 ], [ %.033.lcssa, %bb.c ]
  %.1 = phi ptr [ %i.bx, %get_digit.exit40 ], [ %i.ck, %get_digit.exit44 ], [ %.0.lcssa, %bb.c ]
  %i.cm = sext i32 %.134 to i64
  %i.cn = shl nsw i64 %i.cm, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.1, i8 0, i64 %i.cn, i1 false)
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ossl_rsaz_amm52x20_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x20_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x30_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare void @ossl_rsaz_amm52x40_x1_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @ossl_rsaz_amm52x20_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x20_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x30_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_avxifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_rsaz_amm52x40_x2_ifma256(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @ossl_extract_multiplier_2x20_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x20_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x30_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5_avx(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare void @ossl_extract_multiplier_2x40_win5(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = distinct !{null}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = !{i64 795263}
!26 = distinct !{!26, !16, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !16, !28, !27}
!30 = distinct !{!30, !16, !27, !28}
!31 = distinct !{!31, !16, !28, !27}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
end_hunk_0
