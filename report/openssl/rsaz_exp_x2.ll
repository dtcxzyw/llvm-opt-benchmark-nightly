Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsaz_exp_x2?download=true
inline.NumInlined: 17
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ossl_rsaz_mod_exp_avx512_x2:bb.a
  %.idx48.i = mul nuw nsw i64 %i.ch, 368
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx48.i
  call void %i.bo(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx49.i = mul nuw nsw i64 %i.ch, 384
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx49.i ; 2 uses
  %.idx50.i = mul nuw nsw i64 %i.ce, 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx50.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx51.i = mul nuw nsw i64 %i.ch, 400
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx51.i
  call void %i.bo(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx52.i = mul nuw nsw i64 %i.ch, 416
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx52.i ; 2 uses
  %.idx53.i = mul nuw nsw i64 %i.ce, 104
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx53.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx54.i = mul nuw nsw i64 %i.ch, 432
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx54.i
  call void %i.bo(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx55.i = mul nuw nsw i64 %i.ch, 448
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx55.i ; 2 uses
  %.idx56.i = mul nuw nsw i64 %i.ce, 112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx56.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx57.i = mul nuw nsw i64 %i.ch, 464
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx57.i
  call void %i.bo(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx58.i = mul nuw nsw i64 %i.ch, 480
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx58.i ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.ce, 120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx59.i ; 2 uses
  call void %i.bo(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %.idx60.i = mul nuw nsw i64 %i.ch, 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx60.i
  call void %i.bo(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %i.ec = shl nuw nsw i32 %.0211.i, 6
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ed ; 11 uses
  %i.ef = zext nneg i32 %.0210.i to i64           ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull readonly align 8 dereferenceable(1) %2, i64 %i.eg, i1 false)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ef
  store i64 0, ptr %i.eh, align 8, !tbaa !9
  %i.ei = zext nneg i32 %i.bs to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(1) %8, i64 %i.eg, i1 false)
  %i.ek = zext nneg i32 %i.bt to i64
  %i.el = getelementptr [8 x i8], ptr %i.ee, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  store i64 0, ptr %i.em, align 8, !tbaa !9
  %.lhs.trunc.i = trunc nuw nsw i32 %12 to i16
  %i.en = urem i16 %.lhs.trunc.i, 5               ; 2 uses
  %.not.i = icmp eq i16 %i.en, 0
  br i1 %.not.i, label %bb.i, label %.lr.ph.preheader.i

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_die(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 478) #8
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.zext.i = zext nneg i16 %i.en to i32
  %i.eo = sub nuw nsw i32 %12, %.zext.i           ; 3 uses
  %i.ep = and i32 %i.eo, 63
  %i.eq = lshr i32 %i.eo, 6                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !9
  %i.eu = add nuw nsw i32 %i.bs, %i.eq
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !9
  %i.ey = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.ez = lshr i64 %i.et, %i.ey
  %i.fa = lshr i64 %i.ex, %i.ey
  %i.fb = trunc i64 %i.ez to i32
  %i.fc = trunc i64 %i.fa to i32
  call void %i.bq(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cg, i32 noundef %i.fb, i32 noundef %i.fc) #7, !inline_history !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.020712.in.i = phi i32 [ %.020712.i, %bb.l ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %.020712.i = add nsw i32 %.020712.in.i, -5      ; 3 uses
  %i.fd = lshr i32 %.020712.i, 6                  ; 4 uses
  %i.fe = and i32 %.020712.i, 63                  ; 3 uses
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !9
  %i.fi = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fj = lshr i64 %i.fh, %i.fi                   ; 2 uses
  %i.fk = icmp samesign ugt i32 %i.fe, 59
  br i1 %i.fk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.fl = add nuw nsw i32 %i.fd, %i.bs
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !9
  %i.fp = lshr i64 %i.fo, %i.fi
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.fq = add nuw nsw i32 %i.fd, 1                ; 2 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !9
  %i.fu = sub nuw nsw i32 64, %i.fe
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = shl i64 %i.ft, %i.fv
  %i.fx = xor i64 %i.fw, %i.fj
  %i.fy = add nuw nsw i32 %i.fd, %i.bs
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !9
  %i.gc = lshr i64 %i.gb, %i.fi
  %i.gd = add nuw nsw i32 %i.fq, %i.bs
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !9
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
  call void %i.bq(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, i32 noundef %i.gk, i32 noundef %i.gm) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void %i.bo(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  %i.gn = icmp samesign ugt i32 %.020712.in.i, 9
  br i1 %i.gn, label %.lr.ph.i, label %bb.m, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  %i.go = shl nuw nsw i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i8 0, i64 %i.go, i1 false)
  store i64 1, ptr %i.cf, align 8, !tbaa !9
  store i64 1, ptr %i.ci, align 8, !tbaa !9
  call void %i.bo(ptr noundef nonnull %i.am, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a) #7, !inline_history !13
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.bx, i64 noundef %i.bw) #7
  call void @CRYPTO_free(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str, i32 noundef 569) #7
  %i.gp = add nsw i32 %12, 63
  %i.gq = ashr i32 %i.gp, 6                       ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 0                   ; 2 uses
  br i1 %i.gr, label %.lr.ph.preheader.i121, label %.preheader.i

.lr.ph.preheader.i121:                            ; preds = %bb.m
  %i.gs = zext nneg i32 %i.gq to i64
  %i.gt = shl nuw nsw i64 %i.gs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.gt, i1 false), !tbaa !9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i121, %bb.m
  %i.gu = icmp sgt i32 %12, 103                   ; 2 uses
  br i1 %i.gu, label %.lr.ph48.i, label %._crit_edge.i119

.lr.ph48.i:                                       ; preds = %.preheader.i, %.lr.ph48.i
  %.047.i = phi i32 [ %i.hd, %.lr.ph48.i ], [ %12, %.preheader.i ] ; 2 uses
  %.03046.i = phi ptr [ %i.hc, %.lr.ph48.i ], [ %0, %.preheader.i ] ; 3 uses
  %.03245.i = phi ptr [ %i.he, %.lr.ph48.i ], [ %i.am, %.preheader.i ] ; 3 uses
  %i.gv = load i64, ptr %.03245.i, align 8, !tbaa !9 ; 2 uses
  store i64 %i.gv, ptr %.03046.i, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.03046.i, i64 6
  %i.gx = lshr i64 %i.gv, 48
  %i.gy = getelementptr inbounds nuw i8, ptr %.03245.i, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !9
  %i.ha = shl i64 %i.gz, 4
  %i.hb = or i64 %i.ha, %i.gx
  store i64 %i.hb, ptr %i.gw, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %.03046.i, i64 13 ; 2 uses
  %i.hd = add nsw i32 %.047.i, -104               ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.03245.i, i64 16 ; 2 uses
  %i.hf = icmp samesign ugt i32 %.047.i, 207
  br i1 %i.hf, label %.lr.ph48.i, label %._crit_edge.i119, !llvm.loop !15

._crit_edge.i119:                                 ; preds = %.lr.ph48.i, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.am, %.preheader.i ], [ %i.he, %.lr.ph48.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %0, %.preheader.i ], [ %i.hc, %.lr.ph48.i ] ; 6 uses
  %.0.lcssa.i = phi i32 [ %12, %.preheader.i ], [ %i.hd, %.lr.ph48.i ] ; 4 uses
  %i.hg = icmp sgt i32 %.0.lcssa.i, 52
  br i1 %i.hg, label %.lr.ph.i.i, label %bb.n

.lr.ph.i.i:                                       ; preds = %._crit_edge.i119
  %i.hh = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 4
  %i.hj = bitcast i64 %i.hh to <8 x i8>
  %i.hk = shufflevector <8 x i8> %i.hj, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.hk, ptr %.030.lcssa.i, align 1, !tbaa !11
  %i.hl = lshr i64 %i.hh, 32
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 5
  store i8 %i.hm, ptr %i.hi, align 1, !tbaa !11
  %i.ho = lshr i64 %i.hh, 40
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 6 ; 3 uses
  store i8 %i.hp, ptr %i.hn, align 1, !tbaa !11
  %i.hr = lshr i64 %i.hh, 48                      ; 2 uses
  %13 = trunc i64 %i.hr to i8
  store i8 %13, ptr %i.hq, align 1, !tbaa !11
  %i.hs = add nsw i32 %.0.lcssa.i, -45
  %i.ht = lshr i32 %i.hs, 3                       ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.032.lcssa.i, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !9
  %i.hw = shl i64 %i.hv, 4
  %i.hx = or i64 %i.hw, %i.hr                     ; 2 uses
  %i.hy = add nsw i32 %i.ht, -1
  %xtraiter225 = and i32 %i.ht, 7                 ; 2 uses
  %lcmp.mod226.not = icmp eq i32 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i.i, %.lr.ph.i33.i.prol
  %.08.i34.i.prol = phi i64 [ %i.ib, %.lr.ph.i33.i.prol ], [ %i.hx, %.lr.ph.i.i ] ; 2 uses
  %.047.i35.i.prol = phi i32 [ %i.ic, %.lr.ph.i33.i.prol ], [ %i.ht, %.lr.ph.i.i ]
  %.056.i36.i.prol = phi ptr [ %i.ia, %.lr.ph.i33.i.prol ], [ %i.hq, %.lr.ph.i.i ] ; 2 uses
  %prol.iter227 = phi i32 [ %prol.iter227.next, %.lr.ph.i33.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.hz = trunc i64 %.08.i34.i.prol to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %.056.i36.i.prol, i64 1 ; 2 uses
  store i8 %i.hz, ptr %.056.i36.i.prol, align 1, !tbaa !11
  %i.ib = lshr i64 %.08.i34.i.prol, 8             ; 2 uses
  %i.ic = add nsw i32 %.047.i35.i.prol, -1        ; 2 uses
  %prol.iter227.next = add i32 %prol.iter227, 1   ; 2 uses
  %prol.iter227.cmp.not = icmp eq i32 %prol.iter227.next, %xtraiter225
  br i1 %prol.iter227.cmp.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol, !llvm.loop !16

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i.i
  %.08.i34.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i ], [ %i.ib, %.lr.ph.i33.i.prol ]
  %.047.i35.i.unr = phi i32 [ %i.ht, %.lr.ph.i.i ], [ %i.ic, %.lr.ph.i33.i.prol ]
  %.056.i36.i.unr = phi ptr [ %i.hq, %.lr.ph.i.i ], [ %i.ia, %.lr.ph.i33.i.prol ]
  %i.id = icmp ult i32 %i.hy, 7
  br i1 %i.id, label %from_words52.exit, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.08.i34.i = phi i64 [ 0, %.lr.ph.i33.i ], [ %.08.i34.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 8 uses
  %.047.i35.i = phi i32 [ %i.jb, %.lr.ph.i33.i ], [ %.047.i35.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 2 uses
  %.056.i36.i = phi ptr [ %i.ja, %.lr.ph.i33.i ], [ %.056.i36.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 9 uses
  %i.ie = trunc i64 %.08.i34.i to i8
  %i.if = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 1
  store i8 %i.ie, ptr %.056.i36.i, align 1, !tbaa !11
  %i.ig = lshr i64 %.08.i34.i, 8
  %i.ih = trunc i64 %i.ig to i8
  %i.ii = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 2
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !11
  %i.ij = lshr i64 %.08.i34.i, 16
  %i.ik = trunc i64 %i.ij to i8
  %i.il = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 3
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !11
  %i.im = lshr i64 %.08.i34.i, 24
  %i.in = trunc i64 %i.im to i8
  %i.io = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 4
  store i8 %i.in, ptr %i.il, align 1, !tbaa !11
  %i.ip = lshr i64 %.08.i34.i, 32
  %i.iq = trunc i64 %i.ip to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 5
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !11
  %i.is = lshr i64 %.08.i34.i, 40
  %i.it = trunc i64 %i.is to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 6
  store i8 %i.it, ptr %i.ir, align 1, !tbaa !11
  %i.iv = lshr i64 %.08.i34.i, 48
  %i.iw = trunc i64 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 7
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !11
  %i.iy = lshr i64 %.08.i34.i, 56
  %i.iz = trunc nuw i64 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.056.i36.i, i64 8
  store i8 %i.iz, ptr %i.ix, align 1, !tbaa !11
  %i.jb = add nsw i32 %.047.i35.i, -8
  %i.jc = icmp sgt i32 %.047.i35.i, 8
  br i1 %i.jc, label %.lr.ph.i33.i, label %from_words52.exit, !llvm.loop !17

bb.n:                                             ; preds = %._crit_edge.i119
  %.not.i120 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i120, label %from_words52.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jd = add nsw i32 %.0.lcssa.i, 7
  %i.je = ashr i32 %i.jd, 3                       ; 5 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph.i38.preheader.i, label %from_words52.exit

.lr.ph.i38.preheader.i:                           ; preds = %bb.o
  %i.jg = load i64, ptr %.032.lcssa.i, align 8, !tbaa !9 ; 2 uses
  %xtraiter = and i32 %i.je, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol

.lr.ph.i38.i.prol:                                ; preds = %.lr.ph.i38.preheader.i, %.lr.ph.i38.i.prol
  %.08.i39.i.prol = phi i64 [ %i.jj, %.lr.ph.i38.i.prol ], [ %i.jg, %.lr.ph.i38.preheader.i ] ; 2 uses
  %.047.i40.i.prol = phi i32 [ %i.jk, %.lr.ph.i38.i.prol ], [ %i.je, %.lr.ph.i38.preheader.i ]
  %.056.i41.i.prol = phi ptr [ %i.ji, %.lr.ph.i38.i.prol ], [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i38.i.prol ], [ 0, %.lr.ph.i38.preheader.i ]
  %i.jh = trunc i64 %.08.i39.i.prol to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %.056.i41.i.prol, i64 1 ; 2 uses
  store i8 %i.jh, ptr %.056.i41.i.prol, align 1, !tbaa !11
  %i.jj = lshr i64 %.08.i39.i.prol, 8             ; 2 uses
  %i.jk = add nsw i32 %.047.i40.i.prol, -1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i38.i.prol.loopexit, label %.lr.ph.i38.i.prol, !llvm.loop !18

.lr.ph.i38.i.prol.loopexit:                       ; preds = %.lr.ph.i38.i.prol, %.lr.ph.i38.preheader.i
  %.08.i39.i.unr = phi i64 [ %i.jg, %.lr.ph.i38.preheader.i ], [ %i.jj, %.lr.ph.i38.i.prol ]
  %.047.i40.i.unr = phi i32 [ %i.je, %.lr.ph.i38.preheader.i ], [ %i.jk, %.lr.ph.i38.i.prol ]
  %.056.i41.i.unr = phi ptr [ %.030.lcssa.i, %.lr.ph.i38.preheader.i ], [ %i.ji, %.lr.ph.i38.i.prol ]
  %i.jl = icmp ult i32 %i.je, 8
  br i1 %i.jl, label %from_words52.exit, label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i
  %.08.i39.i = phi i64 [ 0, %.lr.ph.i38.i ], [ %.08.i39.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 8 uses
  %.047.i40.i = phi i32 [ %i.kj, %.lr.ph.i38.i ], [ %.047.i40.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 2 uses
  %.056.i41.i = phi ptr [ %i.ki, %.lr.ph.i38.i ], [ %.056.i41.i.unr, %.lr.ph.i38.i.prol.loopexit ] ; 9 uses
  %i.jm = trunc i64 %.08.i39.i to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 1
  store i8 %i.jm, ptr %.056.i41.i, align 1, !tbaa !11
  %i.jo = lshr i64 %.08.i39.i, 8
  %i.jp = trunc i64 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 2
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !11
  %i.jr = lshr i64 %.08.i39.i, 16
  %i.js = trunc i64 %i.jr to i8
  %i.jt = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 3
  store i8 %i.js, ptr %i.jq, align 1, !tbaa !11
  %i.ju = lshr i64 %.08.i39.i, 24
  %i.jv = trunc i64 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 4
  store i8 %i.jv, ptr %i.jt, align 1, !tbaa !11
  %i.jx = lshr i64 %.08.i39.i, 32
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 5
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !11
  %i.ka = lshr i64 %.08.i39.i, 40
  %i.kb = trunc i64 %i.ka to i8
  %i.kc = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 6
  store i8 %i.kb, ptr %i.jz, align 1, !tbaa !11
  %i.kd = lshr i64 %.08.i39.i, 48
  %i.ke = trunc i64 %i.kd to i8
  %i.kf = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 7
  store i8 %i.ke, ptr %i.kc, align 1, !tbaa !11
  %i.kg = lshr i64 %.08.i39.i, 56
  %i.kh = trunc nuw i64 %i.kg to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %.056.i41.i, i64 8
  store i8 %i.kh, ptr %i.kf, align 1, !tbaa !11
  %i.kj = add nsw i32 %.047.i40.i, -8
  %i.kk = icmp sgt i32 %.047.i40.i, 8
  br i1 %i.kk, label %.lr.ph.i38.i, label %from_words52.exit, !llvm.loop !17

from_words52.exit:                                ; preds = %.lr.ph.i38.i.prol.loopexit, %.lr.ph.i38.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %bb.n, %bb.o
  br i1 %i.gr, label %.lr.ph.preheader.i142, label %.preheader.i122

.lr.ph.preheader.i142:                            ; preds = %from_words52.exit
  %i.kl = zext nneg i32 %i.gq to i64
  %i.km = shl nuw nsw i64 %i.kl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %i.km, i1 false), !tbaa !9
  br label %.preheader.i122

.preheader.i122:                                  ; preds = %.lr.ph.preheader.i142, %from_words52.exit
  br i1 %i.gu, label %.lr.ph48.i138, label %._crit_edge.i123

.lr.ph48.i138:                                    ; preds = %.preheader.i122, %.lr.ph48.i138
  %.047.i139 = phi i32 [ %i.kv, %.lr.ph48.i138 ], [ %12, %.preheader.i122 ] ; 2 uses
  %.03046.i140 = phi ptr [ %i.ku, %.lr.ph48.i138 ], [ %6, %.preheader.i122 ] ; 3 uses
  %.03245.i141 = phi ptr [ %i.kw, %.lr.ph48.i138 ], [ %i.ap, %.preheader.i122 ] ; 3 uses
  %i.kn = load i64, ptr %.03245.i141, align 8, !tbaa !9 ; 2 uses
  store i64 %i.kn, ptr %.03046.i140, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 6
  %i.kp = lshr i64 %i.kn, 48
  %i.kq = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !9
  %i.ks = shl i64 %i.kr, 4
  %i.kt = or i64 %i.ks, %i.kp
  store i64 %i.kt, ptr %i.ko, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %.03046.i140, i64 13 ; 2 uses
  %i.kv = add nsw i32 %.047.i139, -104            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.03245.i141, i64 16 ; 2 uses
  %i.kx = icmp samesign ugt i32 %.047.i139, 207
  br i1 %i.kx, label %.lr.ph48.i138, label %._crit_edge.i123, !llvm.loop !15

._crit_edge.i123:                                 ; preds = %.lr.ph48.i138, %.preheader.i122
  %.032.lcssa.i124 = phi ptr [ %i.ap, %.preheader.i122 ], [ %i.kw, %.lr.ph48.i138 ] ; 3 uses
  %.030.lcssa.i125 = phi ptr [ %6, %.preheader.i122 ], [ %i.ku, %.lr.ph48.i138 ] ; 6 uses
  %.0.lcssa.i126 = phi i32 [ %12, %.preheader.i122 ], [ %i.kv, %.lr.ph48.i138 ] ; 4 uses
  %i.ky = icmp sgt i32 %.0.lcssa.i126, 52
  br i1 %i.ky, label %.lr.ph.i.i133, label %bb.p

.lr.ph.i.i133:                                    ; preds = %._crit_edge.i123
  %i.kz = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 4
  %i.lb = bitcast i64 %i.kz to <8 x i8>
  %i.lc = shufflevector <8 x i8> %i.lb, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.lc, ptr %.030.lcssa.i125, align 1, !tbaa !11
  %i.ld = lshr i64 %i.kz, 32
  %i.le = trunc i64 %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 5
  store i8 %i.le, ptr %i.la, align 1, !tbaa !11
  %i.lg = lshr i64 %i.kz, 40
  %i.lh = trunc i64 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.030.lcssa.i125, i64 6 ; 3 uses
  store i8 %i.lh, ptr %i.lf, align 1, !tbaa !11
  %i.lj = lshr i64 %i.kz, 48                      ; 2 uses
  %14 = trunc i64 %i.lj to i8
  store i8 %14, ptr %i.li, align 1, !tbaa !11
  %i.lk = add nsw i32 %.0.lcssa.i126, -45
  %i.ll = lshr i32 %i.lk, 3                       ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.032.lcssa.i124, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !9
  %i.lo = shl i64 %i.ln, 4
  %i.lp = or i64 %i.lo, %i.lj                     ; 2 uses
  %i.lq = add nsw i32 %i.ll, -1
  %xtraiter231 = and i32 %i.ll, 7                 ; 2 uses
  %lcmp.mod232.not = icmp eq i32 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol

.lr.ph.i33.i134.prol:                             ; preds = %.lr.ph.i.i133, %.lr.ph.i33.i134.prol
  %.08.i34.i135.prol = phi i64 [ %i.lt, %.lr.ph.i33.i134.prol ], [ %i.lp, %.lr.ph.i.i133 ] ; 2 uses
  %.047.i35.i136.prol = phi i32 [ %i.lu, %.lr.ph.i33.i134.prol ], [ %i.ll, %.lr.ph.i.i133 ]
  %.056.i36.i137.prol = phi ptr [ %i.ls, %.lr.ph.i33.i134.prol ], [ %i.li, %.lr.ph.i.i133 ] ; 2 uses
  %prol.iter233 = phi i32 [ %prol.iter233.next, %.lr.ph.i33.i134.prol ], [ 0, %.lr.ph.i.i133 ]
  %i.lr = trunc i64 %.08.i34.i135.prol to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %.056.i36.i137.prol, i64 1 ; 2 uses
  store i8 %i.lr, ptr %.056.i36.i137.prol, align 1, !tbaa !11
  %i.lt = lshr i64 %.08.i34.i135.prol, 8          ; 2 uses
  %i.lu = add nsw i32 %.047.i35.i136.prol, -1     ; 2 uses
  %prol.iter233.next = add i32 %prol.iter233, 1   ; 2 uses
  %prol.iter233.cmp.not = icmp eq i32 %prol.iter233.next, %xtraiter231
  br i1 %prol.iter233.cmp.not, label %.lr.ph.i33.i134.prol.loopexit, label %.lr.ph.i33.i134.prol, !llvm.loop !19

.lr.ph.i33.i134.prol.loopexit:                    ; preds = %.lr.ph.i33.i134.prol, %.lr.ph.i.i133
  %.08.i34.i135.unr = phi i64 [ %i.lp, %.lr.ph.i.i133 ], [ %i.lt, %.lr.ph.i33.i134.prol ]
  %.047.i35.i136.unr = phi i32 [ %i.ll, %.lr.ph.i.i133 ], [ %i.lu, %.lr.ph.i33.i134.prol ]
  %.056.i36.i137.unr = phi ptr [ %i.li, %.lr.ph.i.i133 ], [ %i.ls, %.lr.ph.i33.i134.prol ]
  %i.lv = icmp ult i32 %i.lq, 7
  br i1 %i.lv, label %from_words52.exit143, label %.lr.ph.i33.i134

.lr.ph.i33.i134:                                  ; preds = %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134
  %.08.i34.i135 = phi i64 [ 0, %.lr.ph.i33.i134 ], [ %.08.i34.i135.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 8 uses
  %.047.i35.i136 = phi i32 [ %i.mt, %.lr.ph.i33.i134 ], [ %.047.i35.i136.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 2 uses
  %.056.i36.i137 = phi ptr [ %i.ms, %.lr.ph.i33.i134 ], [ %.056.i36.i137.unr, %.lr.ph.i33.i134.prol.loopexit ] ; 9 uses
  %i.lw = trunc i64 %.08.i34.i135 to i8
  %i.lx = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 1
  store i8 %i.lw, ptr %.056.i36.i137, align 1, !tbaa !11
  %i.ly = lshr i64 %.08.i34.i135, 8
  %i.lz = trunc i64 %i.ly to i8
  %i.ma = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 2
  store i8 %i.lz, ptr %i.lx, align 1, !tbaa !11
  %i.mb = lshr i64 %.08.i34.i135, 16
  %i.mc = trunc i64 %i.mb to i8
  %i.md = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 3
  store i8 %i.mc, ptr %i.ma, align 1, !tbaa !11
  %i.me = lshr i64 %.08.i34.i135, 24
  %i.mf = trunc i64 %i.me to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 4
  store i8 %i.mf, ptr %i.md, align 1, !tbaa !11
  %i.mh = lshr i64 %.08.i34.i135, 32
  %i.mi = trunc i64 %i.mh to i8
  %i.mj = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 5
  store i8 %i.mi, ptr %i.mg, align 1, !tbaa !11
  %i.mk = lshr i64 %.08.i34.i135, 40
  %i.ml = trunc i64 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 6
  store i8 %i.ml, ptr %i.mj, align 1, !tbaa !11
  %i.mn = lshr i64 %.08.i34.i135, 48
  %i.mo = trunc i64 %i.mn to i8
  %i.mp = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 7
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !11
  %i.mq = lshr i64 %.08.i34.i135, 56
  %i.mr = trunc nuw i64 %i.mq to i8
  %i.ms = getelementptr inbounds nuw i8, ptr %.056.i36.i137, i64 8
  store i8 %i.mr, ptr %i.mp, align 1, !tbaa !11
  %i.mt = add nsw i32 %.047.i35.i136, -8
  %i.mu = icmp sgt i32 %.047.i35.i136, 8
  br i1 %i.mu, label %.lr.ph.i33.i134, label %from_words52.exit143, !llvm.loop !17

bb.p:                                             ; preds = %._crit_edge.i123
  %.not.i127 = icmp eq i32 %.0.lcssa.i126, 0
  br i1 %.not.i127, label %from_words52.exit143, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mv = add nsw i32 %.0.lcssa.i126, 7
  %i.mw = ashr i32 %i.mv, 3                       ; 5 uses
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %.lr.ph.i38.preheader.i128, label %from_words52.exit143

.lr.ph.i38.preheader.i128:                        ; preds = %bb.q
  %i.my = load i64, ptr %.032.lcssa.i124, align 8, !tbaa !9 ; 2 uses
  %xtraiter228 = and i32 %i.mw, 7                 ; 2 uses
  %lcmp.mod229.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol

.lr.ph.i38.i129.prol:                             ; preds = %.lr.ph.i38.preheader.i128, %.lr.ph.i38.i129.prol
  %.08.i39.i130.prol = phi i64 [ %i.nb, %.lr.ph.i38.i129.prol ], [ %i.my, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %.047.i40.i131.prol = phi i32 [ %i.nc, %.lr.ph.i38.i129.prol ], [ %i.mw, %.lr.ph.i38.preheader.i128 ]
  %.056.i41.i132.prol = phi ptr [ %i.na, %.lr.ph.i38.i129.prol ], [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ] ; 2 uses
  %prol.iter230 = phi i32 [ %prol.iter230.next, %.lr.ph.i38.i129.prol ], [ 0, %.lr.ph.i38.preheader.i128 ]
  %i.mz = trunc i64 %.08.i39.i130.prol to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.056.i41.i132.prol, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.056.i41.i132.prol, align 1, !tbaa !11
  %i.nb = lshr i64 %.08.i39.i130.prol, 8          ; 2 uses
  %i.nc = add nsw i32 %.047.i40.i131.prol, -1     ; 2 uses
  %prol.iter230.next = add i32 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i32 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph.i38.i129.prol.loopexit, label %.lr.ph.i38.i129.prol, !llvm.loop !20

.lr.ph.i38.i129.prol.loopexit:                    ; preds = %.lr.ph.i38.i129.prol, %.lr.ph.i38.preheader.i128
  %.08.i39.i130.unr = phi i64 [ %i.my, %.lr.ph.i38.preheader.i128 ], [ %i.nb, %.lr.ph.i38.i129.prol ]
  %.047.i40.i131.unr = phi i32 [ %i.mw, %.lr.ph.i38.preheader.i128 ], [ %i.nc, %.lr.ph.i38.i129.prol ]
  %.056.i41.i132.unr = phi ptr [ %.030.lcssa.i125, %.lr.ph.i38.preheader.i128 ], [ %i.na, %.lr.ph.i38.i129.prol ]
  %i.nd = icmp ult i32 %i.mw, 8
  br i1 %i.nd, label %from_words52.exit143, label %.lr.ph.i38.i129

.lr.ph.i38.i129:                                  ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129
  %.08.i39.i130 = phi i64 [ 0, %.lr.ph.i38.i129 ], [ %.08.i39.i130.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 8 uses
  %.047.i40.i131 = phi i32 [ %i.ob, %.lr.ph.i38.i129 ], [ %.047.i40.i131.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 2 uses
  %.056.i41.i132 = phi ptr [ %i.oa, %.lr.ph.i38.i129 ], [ %.056.i41.i132.unr, %.lr.ph.i38.i129.prol.loopexit ] ; 9 uses
  %i.ne = trunc i64 %.08.i39.i130 to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 1
  store i8 %i.ne, ptr %.056.i41.i132, align 1, !tbaa !11
  %i.ng = lshr i64 %.08.i39.i130, 8
  %i.nh = trunc i64 %i.ng to i8
  %i.ni = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 2
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !11
  %i.nj = lshr i64 %.08.i39.i130, 16
  %i.nk = trunc i64 %i.nj to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 3
  store i8 %i.nk, ptr %i.ni, align 1, !tbaa !11
  %i.nm = lshr i64 %.08.i39.i130, 24
  %i.nn = trunc i64 %i.nm to i8
  %i.no = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 4
  store i8 %i.nn, ptr %i.nl, align 1, !tbaa !11
  %i.np = lshr i64 %.08.i39.i130, 32
  %i.nq = trunc i64 %i.np to i8
  %i.nr = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 5
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !11
  %i.ns = lshr i64 %.08.i39.i130, 40
  %i.nt = trunc i64 %i.ns to i8
  %i.nu = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 6
  store i8 %i.nt, ptr %i.nr, align 1, !tbaa !11
  %i.nv = lshr i64 %.08.i39.i130, 48
  %i.nw = trunc i64 %i.nv to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 7
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !11
  %i.ny = lshr i64 %.08.i39.i130, 56
  %i.nz = trunc nuw i64 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.056.i41.i132, i64 8
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !11
  %i.ob = add nsw i32 %.047.i40.i131, -8
  %i.oc = icmp sgt i32 %.047.i40.i131, 8
  br i1 %i.oc, label %.lr.ph.i38.i129, label %from_words52.exit143, !llvm.loop !17

from_words52.exit143:                             ; preds = %.lr.ph.i38.i129.prol.loopexit, %.lr.ph.i38.i129, %.lr.ph.i33.i134.prol.loopexit, %.lr.ph.i33.i134, %bb.p, %bb.q
  %i.od = lshr exact i32 %12, 6                   ; 3 uses
  %i.oe = zext nneg i32 %i.od to i64              ; 6 uses
  %i.of = call i64 @bn_sub_words(ptr noundef nonnull %i.w, ptr noundef %0, ptr noundef %3, i32 noundef %i.od) #7 ; 2 uses
  %i.og = sub i64 0, %i.of
  %i.oh = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.og) #9, !srcloc !27 ; 2 uses
  %i.oi = add i64 %i.of, -1
  %i.oj = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.oi) #9, !srcloc !27 ; 2 uses
  %min.iters.check = icmp ult i32 %12, 256
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %from_words52.exit143
  %n.vec = and i64 %i.oe, 67108860                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.oh, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.oj, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ok, align 8, !tbaa !9
  %wide.load197 = load <2 x i64>, ptr %i.ol, align 8, !tbaa !9
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load198 = load <2 x i64>, ptr %i.om, align 8, !tbaa !9
  %wide.load199 = load <2 x i64>, ptr %i.on, align 8, !tbaa !9
  %i.oo = and <2 x i64> %wide.load, %broadcast.splat
  %i.op = and <2 x i64> %wide.load197, %broadcast.splat
  %i.oq = and <2 x i64> %wide.load198, %broadcast.splat196
  %i.or = and <2 x i64> %wide.load199, %broadcast.splat196
  %i.os = or <2 x i64> %i.oq, %i.oo
  %i.ot = or <2 x i64> %i.or, %i.op
  store <2 x i64> %i.os, ptr %i.ok, align 8, !tbaa !9
  store <2 x i64> %i.ot, ptr %i.ol, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ou = icmp eq i64 %index.next, %n.vec
  br i1 %i.ou, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.oe
  br i1 %cmp.n, label %.lr.ph.i.i146, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %from_words52.exit143, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %from_words52.exit143 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.pc, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !9
end_hunk_0
