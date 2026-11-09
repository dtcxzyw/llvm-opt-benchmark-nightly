Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a

bb.d:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.a
  %i.aj = phi ptr [ %i.u, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.e, %bb.a ]
  %i.ak = phi ptr [ %i.v, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.a ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !984, !nonnull !198, !align !199
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !107 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !985, !nonnull !198, !align !199
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !107 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !986, !nonnull !198, !align !199 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !155
  %i.av = add i64 %i.au, %1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !338
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !29 ; 4 uses
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !364 ; 2 uses
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = icmp eq i64 %i.ba, %i.bb                ; 2 uses
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i, label %bb.e, !prof !161

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i:    ; preds = %bb.d
  %i.bh = sub i64 %i.ba, %i.bb
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  br i1 %i.bf, label %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i43 = load ptr, ptr %i.aw, align 8, !tbaa !338
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i43, i64 %1 ; 2 uses
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %.pre22.i = load i64, ptr %.phi.trans.insert21.i, align 8, !tbaa !29 ; 2 uses
  %.pre23.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !29 ; 2 uses
  %.pre24.i = load ptr, ptr %i.bc, align 8, !tbaa !364
  %i.bj = icmp ne ptr %.pre24.i, null
  %i.bk = icmp eq i64 %.pre22.i, %.pre23.i
  %i.bl = or i1 %i.bk, %i.bj
  br i1 %i.bl, label %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge, label %bb.f, !prof !365

._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge: ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre88 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @_ZSt9terminatev() #31
  unreachable

.lr.ph.i:                                         ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i, %.lr.ph.i
  %.020.i = phi i64 [ %i.bu, %.lr.ph.i ], [ 0, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !367
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !368
  %i.bq = tail call noundef float @_ZNK7xgboost11CatAccessorclIfjEET_S2_T0_(ptr noundef nonnull align 8 dereferenceable(72) %i.as, float noundef %i.bo, i32 noundef %i.bp)
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !368
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bs
  store float %i.bq, ptr %i.bt, align 4, !tbaa !97
  %i.bu = add nuw i64 %.020.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, %i.bh
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit: ; preds = %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i
  %i.bv = phi ptr [ %.pre88, %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge ], [ %i.ak, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i ] ; 2 uses
  %i.bw = phi ptr [ %.pre, %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge ], [ %i.aj, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i ] ; 2 uses
  %i.bx = phi i64 [ %.pre22.i, %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge ], [ %i.ba, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i ]
  %i.by = phi i64 [ %.pre23.i, %._crit_edge.i._ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit_crit_edge ], [ %i.ba, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i ]
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = icmp ne i64 %i.bz, %i.cd
  %i.cf = zext i1 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i8 %i.cf, ptr %i.cg, align 8, !tbaa !363
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !987, !nonnull !198, !align !369
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18 ; 2 uses
  %.not86 = icmp eq i32 %i.cj, 0
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.4.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.5.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre89 = load ptr, ptr %i.cl, align 8, !tbaa !988
  %.pre90 = load i64, ptr %.pre89, align 8, !tbaa !29
  br label %bb.g

._crit_edge85.loopexit:                           ; preds = %bb.t
  %.pre92 = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre93 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit
  %i.cz = phi ptr [ %.pre93, %._crit_edge85.loopexit ], [ %i.bv, %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit ] ; 5 uses
  %i.da = phi ptr [ %.pre92, %._crit_edge85.loopexit ], [ %i.bw, %_ZNK7xgboost9predictor14SparsePageViewINS_11CatAccessorEE6DoFillEmPf.exit ] ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.da
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge85
  %i.db = ptrtoaddr ptr %i.da to i64
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = add i64 %i.db, -4
  %i.de = sub i64 %i.dd, %i.dc                    ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.de, 28
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i.i.preheader140, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec132 = and i64 %i.dg, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec132, 2
  %i.di = getelementptr i8, ptr %i.cz, i64 %i.dh
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.dj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep135, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.dk, align 4, !tbaa !97
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.dl, label %middle.block137, label %vector.body133, !llvm.loop !971

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.dg, %n.vec132
  br i1 %cmp.n138, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader140

.lr.ph.i.i.i.i.i.i.preheader140:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block137
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block137 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader140, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader140 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.dm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.da
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !972

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block137, %._crit_edge85
  store i8 1, ptr %i.cg, align 8, !tbaa !363
  ret void

bb.g:                                             ; preds = %.lr.ph84, %bb.t
  %i.dn = phi i64 [ %.pre90, %.lr.ph84 ], [ %i.jk, %bb.t ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  %i.do = phi i32 [ %i.cj, %.lr.ph84 ], [ %i.jm, %bb.t ]
  %i.dp = load ptr, ptr %i.ck, align 8, !tbaa !989, !nonnull !198, !align !199
  %i.dq = zext i32 %i.do to i64
  %i.dr = mul i64 %i.av, %i.dq
  %i.ds = add i64 %i.dr, %indvars.iv              ; 2 uses
  %i.dt = mul i64 %i.dn, %i.ds
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !94 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.dt ; 7 uses
  %i.dw = load ptr, ptr %i.cm, align 8, !tbaa !990, !nonnull !198, !align !199 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !211
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %indvars.iv ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !146 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !146 ; 2 uses
  %.not7578 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not7578, label %._crit_edge82, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %bb.g
  %i.ed = shl i64 %i.dn, 2
  %i.ee = mul i64 %i.ed, %i.ds
  %i.ef = getelementptr i8, ptr %i.du, i64 %i.ee
  br label %.lr.ph81

._crit_edge82.loopexit:                           ; preds = %._crit_edge
  %.pre91 = load ptr, ptr %i.cm, align 8, !tbaa !990
  br label %._crit_edge82

._crit_edge82:                                    ; preds = %._crit_edge82.loopexit, %bb.g
  %i.eg = phi i64 [ %i.gc, %._crit_edge82.loopexit ], [ %i.dn, %bb.g ] ; 2 uses
  %i.eh = phi ptr [ %.pre91, %._crit_edge82.loopexit ], [ %i.dw, %bb.g ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !94
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !97
  %i.em = getelementptr [4 x i8], ptr %i.dv, i64 %i.eg
  %i.en = getelementptr i8, ptr %i.em, i64 -4     ; 3 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !97
  %i.ep = fadd float %i.el, %i.eo                 ; 2 uses
  store float %i.ep, ptr %i.en, align 4, !tbaa !97
  %i.eq = load ptr, ptr %i.cx, align 8, !tbaa !991, !nonnull !198, !align !199 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i64, ptr %i.er, align 8, !tbaa !240
  %.not = icmp eq i64 %i.es, 0
  br i1 %.not, label %bb.s, label %bb.l

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %._crit_edge
  %i.et = phi i64 [ %i.gc, %._crit_edge ], [ %i.dn, %.lr.ph81.preheader ] ; 2 uses
  %.sroa.058.079 = phi ptr [ %i.ha, %._crit_edge ], [ %i.ea, %.lr.ph81.preheader ] ; 2 uses
  %i.eu = load i64, ptr %.sroa.058.079, align 8, !tbaa !29
  %i.ev = load ptr, ptr %i.cm, align 8, !tbaa !990, !nonnull !198, !align !199 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %.val = load ptr, ptr %i.ew, align 8, !tbaa !228
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.eu ; 3 uses
  %i.ey = load ptr, ptr %i.an, align 8, !tbaa !95 ; 5 uses
  %i.ez = load ptr, ptr %i.cn, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph81
  %i.fa = ptrtoaddr ptr %i.ez to i64
  %i.fb = ptrtoaddr ptr %i.ey to i64
  %i.fc = add i64 %i.fa, -4
  %i.fd = sub i64 %i.fc, %i.fb
  %i.fe = and i64 %i.fd, -4
  %i.ff = add i64 %i.fe, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ey, i8 0, i64 %i.ff, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph81
  %i.fg = load ptr, ptr %i.co, align 8, !tbaa !992, !nonnull !198, !align !369 ; 2 uses
  %i.fh = load i32, ptr %i.ex, align 4, !tbaa !371
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.ev, align 8, !tbaa !217
  %i.fk = getelementptr inbounds nuw [200 x i8], ptr %i.fj, i64 %i.fi ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 192
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !224
  %i.fn = icmp eq i8 %i.fm, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 48 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  br i1 %i.fn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.fk, ptr %7, align 8, !tbaa !234
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !372
  store i32 %i.fq, ptr %i.ct, align 8, !tbaa !377
  store ptr %i.c, ptr %i.cu, align 8, !tbaa !378
  store ptr %i.fg, ptr %i.cv, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.cw, align 8, !tbaa !380
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.et, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !273
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !275
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.j:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.fk, ptr %4, align 8, !tbaa !382
  %i.fv = load i32, ptr %i.fp, align 4, !tbaa !372
  store i32 %i.fv, ptr %i.cp, align 8, !tbaa !384
  store ptr %i.c, ptr %i.cq, align 8, !tbaa !378
  store ptr %i.fg, ptr %i.cr, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.cs, align 8, !tbaa !385
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx69, align 8, !tbaa !95
  store i64 %i.et, ptr %.sroa.5.0..sroa_idx71, align 8, !tbaa !29
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !268
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !18
  %i.fy = icmp eq i32 %i.fx, -1
  br i1 %i.fy, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !386 ; 4 uses
  %i.gb = load ptr, ptr %i.cl, align 8, !tbaa !988, !nonnull !198, !align !199
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !29 ; 9 uses
  %i.gd = icmp ugt i64 %i.gc, 1
  br i1 %i.gd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.ge = load ptr, ptr %i.an, align 8, !tbaa !94 ; 6 uses
  %i.gf = add i64 %i.gc, -1                       ; 2 uses
  %min.iters.check116 = icmp ult i64 %i.gc, 9
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gg = shl i64 %i.gc, 2                        ; 2 uses
  %10 = getelementptr i8, ptr %i.ef, i64 %i.gg
  %i.gh = getelementptr i8, ptr %10, i64 -4
  %i.gi = getelementptr i8, ptr %i.ge, i64 %i.gg
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %bound0 = icmp ult ptr %i.dv, %i.gj
  %bound1 = icmp ult ptr %i.ge, %i.gh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck
  %n.vec118 = and i64 %i.gf, -8                   ; 4 uses
  %i.gk = or disjoint i64 %n.vec118, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ga, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next124, %vector.body119 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index120 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %wide.load = load <4 x float>, ptr %i.gl, align 4, !tbaa !97, !alias.scope !993
  %wide.load121 = load <4 x float>, ptr %i.gm, align 4, !tbaa !97, !alias.scope !993
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index120 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %wide.load122 = load <4 x float>, ptr %i.gn, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %wide.load123 = load <4 x float>, ptr %i.go, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %i.gp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load122)
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load121, <4 x float> %broadcast.splat, <4 x float> %wide.load123)
  store <4 x float> %i.gp, ptr %i.gn, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !97, !alias.scope !994, !noalias !993
  %index.next124 = add nuw i64 %index120, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.gr, label %middle.block125, label %vector.body119, !llvm.loop !976

middle.block125:                                  ; preds = %vector.body119
  %cmp.n126 = icmp eq i64 %i.gf, %n.vec118
  br i1 %cmp.n126, label %._crit_edge, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block125
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.gk, %middle.block125 ] ; 4 uses
  %.03877.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec118, %middle.block125 ] ; 3 uses
  %.neg = add i64 %.ph, 1
  %i.gs = and i64 %i.gc, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gs, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph115.prol, label %scalar.ph115.prol.loopexit

scalar.ph115.prol:                                ; preds = %scalar.ph115.preheader
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.03877.ph
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !97
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.03877.ph ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !97
  %i.gx = call float @llvm.fmuladd.f32(float %i.gu, float %i.ga, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !97
  %i.gy = add nuw i64 %.ph, 1
  br label %scalar.ph115.prol.loopexit

scalar.ph115.prol.loopexit:                       ; preds = %scalar.ph115.prol, %scalar.ph115.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph115.preheader ], [ %i.gy, %scalar.ph115.prol ]
  %.03877.unr = phi i64 [ %.03877.ph, %scalar.ph115.preheader ], [ %.ph, %scalar.ph115.prol ]
  %i.gz = icmp eq i64 %i.gc, %.neg
  br i1 %i.gz, label %._crit_edge, label %scalar.ph115

._crit_edge:                                      ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115, %middle.block125, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.058.079, i64 8 ; 2 uses
  %.not75 = icmp eq ptr %i.ha, %i.ec
  br i1 %.not75, label %._crit_edge82.loopexit, label %.lr.ph81

scalar.ph115:                                     ; preds = %scalar.ph115.prol.loopexit, %scalar.ph115
  %i.hb = phi i64 [ %i.hn, %scalar.ph115 ], [ %.unr, %scalar.ph115.prol.loopexit ] ; 4 uses
  %.03877 = phi i64 [ %i.hh, %scalar.ph115 ], [ %.03877.unr, %scalar.ph115.prol.loopexit ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.03877
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !97
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.03877 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !97
  %i.hg = call float @llvm.fmuladd.f32(float %i.hd, float %i.ga, float %i.hf)
  store float %i.hg, ptr %i.he, align 4, !tbaa !97
  %i.hh = add nuw i64 %i.hb, 1
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hb
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !97
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.hb ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !97
  %i.hm = call float @llvm.fmuladd.f32(float %i.hj, float %i.ga, float %i.hl)
  store float %i.hm, ptr %i.hk, align 4, !tbaa !97
  %i.hn = add nuw i64 %i.hb, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hn, %i.gc
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph115, !llvm.loop !977

bb.l:                                             ; preds = %._crit_edge82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !29 ; 2 uses
  store i64 %i.hp, ptr %i.a, align 8, !tbaa !29
  %i.hq = load ptr, ptr %i.ch, align 8, !tbaa !987, !nonnull !198, !align !369 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !18, !noalias !995
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp eq i64 %i.hp, %i.hs
  br i1 %i.ht, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.l
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.hq)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not76 = icmp eq ptr %.pr, null
  br i1 %.not76, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.hu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hu, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.n

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.hv = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.o ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hy = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !27
  %i.ic = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef %i.hz, i64 noundef %i.ib)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.o

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.id = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.q unwind label %bb.n

bb.n:                                             ; preds = %.noexc, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ie, %bb.n ], [ %i.if, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr73 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr73, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ig = load ptr, ptr %.pr73, align 8, !tbaa !26 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.pr73, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !28
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr73, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.il = load ptr, ptr %i.cx, align 8, !tbaa !991, !nonnull !198, !align !199 ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !29
  %i.in = mul i64 %i.im, %i.av
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !29
  %i.iq = mul i64 %i.ip, %indvars.iv
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !239
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %i.in
  %i.iu = getelementptr [4 x i8], ptr %i.it, i64 %i.iq
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !97
  %i.iw = load ptr, ptr %i.cl, align 8, !tbaa !988, !nonnull !198, !align !199
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !29 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.s = icmp samesign ult i64 %i.j, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i64 %i.r, %i.j
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !95
  %.pre2.i = load ptr, ptr %i.d, align 8, !tbaa !95
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.v = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %i.w, -4
  %i.z = sub i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.af, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader137

.lr.ph.i.i.i.i.i.preheader137:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader137, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader137 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1023

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.ai, align 8, !tbaa !363
  br label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.a
  %i.aj = phi ptr [ %i.v, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1037, !nonnull !198, !align !199
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1038, !nonnull !198, !align !199
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1039, !nonnull !198, !align !199 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !196
  %i.au = add i64 %i.at, %1                       ; 2 uses
  %i.av = tail call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_11CatAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ar, i64 noundef %1, ptr noundef %i.aj)
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  %i.bc = icmp ne i64 %i.av, %i.bb
  %i.bd = zext i1 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !363
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1040, !nonnull !198, !align !369
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18 ; 2 uses
  %.not86 = icmp eq i32 %i.bh, 0
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !1041
  %.pre88 = load i64, ptr %.pre, align 8, !tbaa !29
  br label %bb.e

._crit_edge85.loopexit:                           ; preds = %bb.r
  %.pre90 = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre91 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %bb.d
  %i.bx = phi ptr [ %.pre91, %._crit_edge85.loopexit ], [ %i.ax, %bb.d ] ; 5 uses
  %i.by = phi ptr [ %.pre90, %._crit_edge85.loopexit ], [ %i.aw, %bb.d ] ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge85
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %i.cb = add i64 %i.bz, -4
  %i.cc = sub i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.cc, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.i.i.i.preheader136, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec128 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec128, 2
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %i.ch = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep131, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ci, align 4, !tbaa !97
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.cj, label %middle.block133, label %vector.body129, !llvm.loop !1024

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ce, %n.vec128
  br i1 %cmp.n134, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.preheader136:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block133
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader136 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1025

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block133, %._crit_edge85
  store i8 1, ptr %i.be, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph84, %bb.r
  %i.cl = phi i64 [ %.pre88, %.lr.ph84 ], [ %i.ii, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %i.cm = phi i32 [ %i.bh, %.lr.ph84 ], [ %i.ik, %bb.r ]
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !1042, !nonnull !198, !align !199
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul i64 %i.au, %i.co
  %i.cq = add i64 %i.cp, %indvars.iv              ; 2 uses
  %i.cr = mul i64 %i.cl, %i.cq
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr ; 7 uses
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !1043, !nonnull !198, !align !199 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !211
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !146 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.cy, %i.da
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.e
  %i.db = shl i64 %i.cl, 2
  %i.dc = mul i64 %i.db, %i.cq
  %i.dd = getelementptr i8, ptr %i.cs, i64 %i.dc
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre89 = load ptr, ptr %i.bk, align 8, !tbaa !1043
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.e
  %i.de = phi i64 [ %i.fa, %._crit_edge81.loopexit ], [ %i.cl, %bb.e ] ; 2 uses
  %i.df = phi ptr [ %.pre89, %._crit_edge81.loopexit ], [ %i.cu, %bb.e ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dj = load float, ptr %i.di, align 4, !tbaa !97
  %i.dk = getelementptr [4 x i8], ptr %i.ct, i64 %i.de
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4     ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !97
  %i.dn = fadd float %i.dj, %i.dm                 ; 2 uses
  store float %i.dn, ptr %i.dl, align 4, !tbaa !97
  %i.do = load ptr, ptr %i.bv, align 8, !tbaa !1044, !nonnull !198, !align !199 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !240
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %bb.q, label %bb.j

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.dr = phi i64 [ %i.fa, %._crit_edge ], [ %i.cl, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.fy, %._crit_edge ], [ %i.cy, %.lr.ph80.preheader ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.dt = load ptr, ptr %i.bk, align 8, !tbaa !1043, !nonnull !198, !align !199 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %.val = load ptr, ptr %i.du, align 8, !tbaa !228
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ds ; 3 uses
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !95 ; 5 uses
  %i.dx = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = ptrtoaddr ptr %i.dw to i64
  %i.ea = add i64 %i.dy, -4
  %i.eb = sub i64 %i.ea, %i.dz
  %i.ec = and i64 %i.eb, -4
  %i.ed = add i64 %i.ec, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %i.ed, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.ee = load ptr, ptr %i.bm, align 8, !tbaa !1045, !nonnull !198, !align !369 ; 2 uses
  %i.ef = load i32, ptr %i.dv, align 4, !tbaa !371
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !217
  %i.ei = getelementptr inbounds nuw [200 x i8], ptr %i.eh, i64 %i.eg ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 192
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !224
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  br i1 %i.el, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.ei, ptr %7, align 8, !tbaa !234
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !372
  store i32 %i.eo, ptr %i.br, align 8, !tbaa !377
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !378
  store ptr %i.ee, ptr %i.bt, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bu, align 8, !tbaa !380
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !273
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !275
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.ei, ptr %4, align 8, !tbaa !382
  %i.et = load i32, ptr %i.en, align 4, !tbaa !372
  store i32 %i.et, ptr %i.bn, align 8, !tbaa !384
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !378
  store ptr %i.ee, ptr %i.bp, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !385
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.eu = load ptr, ptr %i.em, align 8, !tbaa !268
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_11CatAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !386 ; 4 uses
  %i.ez = load ptr, ptr %i.bj, align 8, !tbaa !1041, !nonnull !198, !align !199
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !29 ; 9 uses
  %i.fb = icmp ugt i64 %i.fa, 1
  br i1 %i.fb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fc = load ptr, ptr %i.am, align 8, !tbaa !94 ; 6 uses
  %i.fd = add i64 %i.fa, -1                       ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.fa, 9
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.fe = shl i64 %i.fa, 2                        ; 2 uses
  %10 = getelementptr i8, ptr %i.dd, i64 %i.fe
  %i.ff = getelementptr i8, ptr %10, i64 -4
  %i.fg = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.fg, i64 -4
  %bound0 = icmp ult ptr %i.ct, %i.fh
  %bound1 = icmp ult ptr %i.fc, %i.ff
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck
  %n.vec114 = and i64 %i.fd, -8                   ; 4 uses
  %i.fi = or disjoint i64 %n.vec114, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body115 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index116 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <4 x float>, ptr %i.fj, align 4, !tbaa !97, !alias.scope !1046
  %wide.load117 = load <4 x float>, ptr %i.fk, align 4, !tbaa !97, !alias.scope !1046
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index116 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.fl, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %wide.load119 = load <4 x float>, ptr %i.fm, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load118)
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load117, <4 x float> %broadcast.splat, <4 x float> %wide.load119)
  store <4 x float> %i.fn, ptr %i.fl, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !97, !alias.scope !1047, !noalias !1046
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.fp, label %middle.block121, label %vector.body115, !llvm.loop !1029

middle.block121:                                  ; preds = %vector.body115
  %cmp.n122 = icmp eq i64 %i.fd, %n.vec114
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block121
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.fi, %middle.block121 ] ; 4 uses
  %.03876.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec114, %middle.block121 ] ; 3 uses
  %.neg = add i64 %.ph, 1
  %i.fq = and i64 %i.fa, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fq, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph111.prol, label %scalar.ph111.prol.loopexit

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03876.ph
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !97
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03876.ph ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !97
  %i.fv = call float @llvm.fmuladd.f32(float %i.fs, float %i.ey, float %i.fu)
  store float %i.fv, ptr %i.ft, align 4, !tbaa !97
  %i.fw = add nuw i64 %.ph, 1
  br label %scalar.ph111.prol.loopexit

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph111.preheader ], [ %i.fw, %scalar.ph111.prol ]
  %.03876.unr = phi i64 [ %.03876.ph, %scalar.ph111.preheader ], [ %.ph, %scalar.ph111.prol ]
  %i.fx = icmp eq i64 %i.fa, %.neg
  br i1 %i.fx, label %._crit_edge, label %scalar.ph111

._crit_edge:                                      ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111, %middle.block121, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_11CatAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.fy, %i.da
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %i.fz = phi i64 [ %i.gl, %scalar.ph111 ], [ %.unr, %scalar.ph111.prol.loopexit ] ; 4 uses
  %.03876 = phi i64 [ %i.gf, %scalar.ph111 ], [ %.03876.unr, %scalar.ph111.prol.loopexit ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03876
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !97
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03876 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !97
  %i.ge = call float @llvm.fmuladd.f32(float %i.gb, float %i.ey, float %i.gd)
  store float %i.ge, ptr %i.gc, align 4, !tbaa !97
  %i.gf = add nuw i64 %i.fz, 1
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fz
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !97
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fz ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !97
  %i.gk = call float @llvm.fmuladd.f32(float %i.gh, float %i.ey, float %i.gj)
  store float %i.gk, ptr %i.gi, align 4, !tbaa !97
  %i.gl = add nuw i64 %i.fz, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gl, %i.fa
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph111, !llvm.loop !1030

bb.j:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !29 ; 2 uses
  store i64 %i.gn, ptr %i.a, align 8, !tbaa !29
  %i.go = load ptr, ptr %i.bf, align 8, !tbaa !1040, !nonnull !198, !align !369 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !18, !noalias !1048
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp eq i64 %i.gn, %i.gq
  br i1 %i.gr, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.go)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gs, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.gt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gw = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !27
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gx, i64 noundef %i.gz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.hc, %bb.l ], [ %i.hd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.he = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !28
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.hj = load ptr, ptr %i.bv, align 8, !tbaa !1044, !nonnull !198, !align !199 ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29
  %i.hl = mul i64 %i.hk, %i.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !29
  %i.ho = mul i64 %i.hn, %indvars.iv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !239
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hl
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %i.ho
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = load ptr, ptr %i.bj, align 8, !tbaa !1041, !nonnull !198, !align !199
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !29 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor14SparsePageViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  tail call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost18HostSparsePageViewixEm.exit13.i:    ; preds = %bb.d
  %i.bh = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb ; 5 uses
  br i1 %i.bf, label %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bj = sub i64 %i.bb, %i.ba
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bh, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.020.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cm, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !367
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !368
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bp
  store float %i.bn, ptr %i.bq, align 4, !tbaa !97
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !367
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !368
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bw
  store float %i.bu, ptr %i.bx, align 4, !tbaa !97
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !367
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !368
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cd
  store float %i.cb, ptr %i.ce, align 4, !tbaa !97
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 28
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !367
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !368
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ck
  store float %i.ci, ptr %i.cl, align 4, !tbaa !97
  %i.cm = add nuw i64 %.020.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.020.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cm, %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.020.i.epil = phi i64 [ %i.ct, %.lr.ph.i.epil ], [ %.020.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.020.i.epil ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load float, ptr %i.co, align 4, !tbaa !367
  %i.cq = load i32, ptr %i.cn, align 4, !tbaa !368
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cr
  store float %i.cp, ptr %i.cs, align 4, !tbaa !97
  %i.ct = add nuw i64 %.020.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit, label %.lr.ph.i.epil, !llvm.loop !1057

_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit: ; preds = %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZNK7xgboost18HostSparsePageViewixEm.exit13.i
  %i.cu = icmp ne i64 %i.bh, %.pre-phi97
  %i.cv = zext i1 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i8 %i.cv, ptr %i.cw, align 8, !tbaa !363
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1074, !nonnull !198, !align !369
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %.not85 = icmp eq i32 %i.cz, 0
  br i1 %.not85, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !1075
  %.pre87 = load i64, ptr %.pre, align 8, !tbaa !29
  br label %bb.f

._crit_edge84.loopexit:                           ; preds = %bb.s
  %.pre89 = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre90 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %._crit_edge84.loopexit, %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit
  %i.dp = phi ptr [ %.pre90, %._crit_edge84.loopexit ], [ %i.aj, %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit ] ; 5 uses
  %i.dq = phi ptr [ %.pre89, %._crit_edge84.loopexit ], [ %i.ak, %_ZNK7xgboost9predictor14SparsePageViewINS_12NoOpAccessorEE6DoFillEmPf.exit ] ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.dp, %i.dq
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge84
  %i.dr = ptrtoaddr ptr %i.dq to i64
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %i.dt = add i64 %i.dr, -4
  %i.du = sub i64 %i.dt, %i.ds                    ; 2 uses
  %i.dv = lshr i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check133 = icmp ult i64 %i.du, 28
  br i1 %min.iters.check133, label %.lr.ph.i.i.i.i.i.i.preheader143, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec135 = and i64 %i.dw, 9223372036854775800  ; 3 uses
  %i.dx = shl i64 %n.vec135, 2
  %i.dy = getelementptr i8, ptr %i.dp, i64 %i.dx
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next139, %vector.body136 ] ; 2 uses
  %i.dz = shl i64 %index137, 2
  %next.gep138 = getelementptr i8, ptr %i.dp, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep138, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ea, align 4, !tbaa !97
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next139, %n.vec135
  br i1 %i.eb, label %middle.block140, label %vector.body136, !llvm.loop !1058

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.dw, %n.vec135
  br i1 %cmp.n141, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader143

.lr.ph.i.i.i.i.i.i.preheader143:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block140
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block140 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader143, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader143 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ec = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.dq
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1059

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block140, %._crit_edge84
  store i8 1, ptr %i.cw, align 8, !tbaa !363
  ret void

bb.f:                                             ; preds = %.lr.ph83, %bb.s
  %i.ed = phi i64 [ %.pre87, %.lr.ph83 ], [ %i.ka, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next, %bb.s ] ; 6 uses
  %i.ee = phi i32 [ %i.cz, %.lr.ph83 ], [ %i.kc, %bb.s ]
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !1076, !nonnull !198, !align !199
  %i.eg = zext i32 %i.ee to i64
  %i.eh = mul i64 %i.av, %i.eg
  %i.ei = add i64 %i.eh, %indvars.iv              ; 2 uses
  %i.ej = mul i64 %i.ed, %i.ei
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !94 ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %i.ek, i64 %i.ej ; 7 uses
  %i.em = load ptr, ptr %i.dc, align 8, !tbaa !1077, !nonnull !198, !align !199 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !211
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !146 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.eq, %i.es
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.f
  %i.et = shl i64 %i.ed, 2
  %i.eu = mul i64 %i.et, %i.ei
  %i.ev = getelementptr i8, ptr %i.ek, i64 %i.eu
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre88 = load ptr, ptr %i.dc, align 8, !tbaa !1077
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.f
  %i.ew = phi i64 [ %i.gs, %._crit_edge81.loopexit ], [ %i.ed, %bb.f ] ; 2 uses
  %i.ex = phi ptr [ %.pre88, %._crit_edge81.loopexit ], [ %i.em, %bb.f ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !94
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !97
  %i.fc = getelementptr [4 x i8], ptr %i.el, i64 %i.ew
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4     ; 3 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !97
  %i.ff = fadd float %i.fb, %i.fe                 ; 2 uses
  store float %i.ff, ptr %i.fd, align 4, !tbaa !97
  %i.fg = load ptr, ptr %i.dn, align 8, !tbaa !1078, !nonnull !198, !align !199 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !240
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %bb.r, label %bb.k

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.fj = phi i64 [ %i.gs, %._crit_edge ], [ %i.ed, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.hq, %._crit_edge ], [ %i.eq, %.lr.ph80.preheader ] ; 2 uses
  %i.fk = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.fl = load ptr, ptr %i.dc, align 8, !tbaa !1077, !nonnull !198, !align !199 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %.val = load ptr, ptr %i.fm, align 8, !tbaa !228
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.fk ; 3 uses
  %i.fo = load ptr, ptr %i.an, align 8, !tbaa !95 ; 5 uses
  %i.fp = load ptr, ptr %i.dd, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.fo, %i.fp
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %i.fr = ptrtoaddr ptr %i.fo to i64
  %i.fs = add i64 %i.fq, -4
  %i.ft = sub i64 %i.fs, %i.fr
  %i.fu = and i64 %i.ft, -4
  %i.fv = add i64 %i.fu, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.fo, i8 0, i64 %i.fv, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.fw = load ptr, ptr %i.de, align 8, !tbaa !1079, !nonnull !198, !align !369 ; 2 uses
  %i.fx = load i32, ptr %i.fn, align 4, !tbaa !371
  %i.fy = sext i32 %i.fx to i64
  %i.fz = load ptr, ptr %i.fl, align 8, !tbaa !217
  %i.ga = getelementptr inbounds nuw [200 x i8], ptr %i.fz, i64 %i.fy ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 192
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !224
  %i.gd = icmp eq i8 %i.gc, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  br i1 %i.gd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.ga, ptr %7, align 8, !tbaa !234
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !372
  store i32 %i.gg, ptr %i.dj, align 8, !tbaa !377
  store ptr %i.c, ptr %i.dk, align 8, !tbaa !378
  store ptr %i.fw, ptr %i.dl, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.dm, align 8, !tbaa !380
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.fj, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !273
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !275
  %i.gk = icmp eq i32 %i.gj, -1
  br i1 %i.gk, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.i:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.ga, ptr %4, align 8, !tbaa !382
  %i.gl = load i32, ptr %i.gf, align 4, !tbaa !372
  store i32 %i.gl, ptr %i.df, align 8, !tbaa !384
  store ptr %i.c, ptr %i.dg, align 8, !tbaa !378
  store ptr %i.fw, ptr %i.dh, align 8, !tbaa !379
  store ptr %i.aq, ptr %i.di, align 8, !tbaa !385
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.fj, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.gm = load ptr, ptr %i.ge, align 8, !tbaa !268
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !18
  %i.go = icmp eq i32 %i.gn, -1
  br i1 %i.go, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor14SparsePageViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !386 ; 4 uses
  %i.gr = load ptr, ptr %i.db, align 8, !tbaa !1075, !nonnull !198, !align !199
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !29 ; 9 uses
  %i.gt = icmp ugt i64 %i.gs, 1
  br i1 %i.gt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.gu = load ptr, ptr %i.an, align 8, !tbaa !94 ; 6 uses
  %i.gv = add i64 %i.gs, -1                       ; 2 uses
  %min.iters.check119 = icmp ult i64 %i.gs, 9
  br i1 %min.iters.check119, label %scalar.ph118.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gw = shl i64 %i.gs, 2                        ; 2 uses
  %10 = getelementptr i8, ptr %i.ev, i64 %i.gw
  %i.gx = getelementptr i8, ptr %10, i64 -4
  %i.gy = getelementptr i8, ptr %i.gu, i64 %i.gw
  %i.gz = getelementptr i8, ptr %i.gy, i64 -4
  %bound0 = icmp ult ptr %i.el, %i.gz
  %bound1 = icmp ult ptr %i.gu, %i.gx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph118.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck
  %n.vec121 = and i64 %i.gv, -8                   ; 4 uses
  %i.ha = or disjoint i64 %n.vec121, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index123 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <4 x float>, ptr %i.hb, align 4, !tbaa !97, !alias.scope !1080
  %wide.load124 = load <4 x float>, ptr %i.hc, align 4, !tbaa !97, !alias.scope !1080
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index123 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %wide.load125 = load <4 x float>, ptr %i.hd, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %wide.load126 = load <4 x float>, ptr %i.he, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load125)
  %i.hg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load124, <4 x float> %broadcast.splat, <4 x float> %wide.load126)
  store <4 x float> %i.hf, ptr %i.hd, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  store <4 x float> %i.hg, ptr %i.he, align 4, !tbaa !97, !alias.scope !1081, !noalias !1080
  %index.next127 = add nuw i64 %index123, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.hh, label %middle.block128, label %vector.body122, !llvm.loop !1063

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.gv, %n.vec121
  br i1 %cmp.n129, label %._crit_edge, label %scalar.ph118.preheader

scalar.ph118.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block128
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.ha, %middle.block128 ] ; 4 uses
  %.03876.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec121, %middle.block128 ] ; 3 uses
  %.neg = add i64 %.ph, 1
  %i.hi = and i64 %i.gs, 1
  %lcmp.mod147.not.not = icmp eq i64 %i.hi, 0
  br i1 %lcmp.mod147.not.not, label %scalar.ph118.prol, label %scalar.ph118.prol.loopexit

scalar.ph118.prol:                                ; preds = %scalar.ph118.preheader
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.03876.ph
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !97
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.03876.ph ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !97
  %i.hn = call float @llvm.fmuladd.f32(float %i.hk, float %i.gq, float %i.hm)
  store float %i.hn, ptr %i.hl, align 4, !tbaa !97
  %i.ho = add nuw i64 %.ph, 1
  br label %scalar.ph118.prol.loopexit

scalar.ph118.prol.loopexit:                       ; preds = %scalar.ph118.prol, %scalar.ph118.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph118.preheader ], [ %i.ho, %scalar.ph118.prol ]
  %.03876.unr = phi i64 [ %.03876.ph, %scalar.ph118.preheader ], [ %.ph, %scalar.ph118.prol ]
  %i.hp = icmp eq i64 %i.gs, %.neg
  br i1 %i.hp, label %._crit_edge, label %scalar.ph118

._crit_edge:                                      ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118, %middle.block128, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor14SparsePageViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.hq, %i.es
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph118:                                     ; preds = %scalar.ph118.prol.loopexit, %scalar.ph118
  %i.hr = phi i64 [ %i.id, %scalar.ph118 ], [ %.unr, %scalar.ph118.prol.loopexit ] ; 4 uses
  %.03876 = phi i64 [ %i.hx, %scalar.ph118 ], [ %.03876.unr, %scalar.ph118.prol.loopexit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.03876
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.03876 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !97
  %i.hw = call float @llvm.fmuladd.f32(float %i.ht, float %i.gq, float %i.hv)
  store float %i.hw, ptr %i.hu, align 4, !tbaa !97
  %i.hx = add nuw i64 %i.hr, 1
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hr
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !97
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.hr ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !97
  %i.ic = call float @llvm.fmuladd.f32(float %i.hz, float %i.gq, float %i.ib)
  store float %i.ic, ptr %i.ia, align 4, !tbaa !97
  %i.id = add nuw i64 %i.hr, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.id, %i.gs
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph118, !llvm.loop !1064

bb.k:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !29 ; 2 uses
  store i64 %i.if, ptr %i.a, align 8, !tbaa !29
  %i.ig = load ptr, ptr %i.cx, align 8, !tbaa !1074, !nonnull !198, !align !369 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !18, !noalias !1082
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp eq i64 %i.if, %i.ii
  br i1 %i.ij, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.k
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.ig)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ik = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ik, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.il = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.io = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !27
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.ip, i64 noundef %i.ir)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.m ], [ %i.iv, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.iw = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !28
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.jb = load ptr, ptr %i.dn, align 8, !tbaa !1078, !nonnull !198, !align !199 ; 3 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !29
  %i.jd = mul i64 %i.jc, %i.av
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !29
  %i.jg = mul i64 %i.jf, %indvars.iv
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !239
  %i.jj = getelementptr [4 x i8], ptr %i.ji, i64 %i.jd
  %i.jk = getelementptr [4 x i8], ptr %i.jj, i64 %i.jg
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !97
  %i.jm = load ptr, ptr %i.db, align 8, !tbaa !1075, !nonnull !198, !align !199
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !29 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a
  %i.s = icmp samesign ult i64 %i.j, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i64 %i.r, %i.j
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !95
  %.pre2.i = load ptr, ptr %i.d, align 8, !tbaa !95
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i

_ZNSt6vectorIfSaIfEE6resizeEm.exit.i:             ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %.pre2.i, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.v = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not6.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = add i64 %i.w, -4
  %i.z = sub i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.af, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i.preheader137

.lr.ph.i.i.i.i.i.preheader137:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.07.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader137, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader137 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i, align 4, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4InitEm.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1085

_ZN7xgboost7RegTree4FVec4InitEm.exit:             ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEE6resizeEm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.ai, align 8, !tbaa !363
  br label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost7RegTree4FVec4InitEm.exit, %bb.a
  %i.aj = phi ptr [ %i.v, %_ZN7xgboost7RegTree4FVec4InitEm.exit ], [ %i.f, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1099, !nonnull !198, !align !199
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1100, !nonnull !198, !align !199
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1101, !nonnull !198, !align !199 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !207
  %i.au = add i64 %i.at, %1                       ; 2 uses
  %i.av = tail call noundef i64 @_ZNK7xgboost9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEE6DoFillEmPf(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 noundef %1, ptr noundef %i.aj)
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !93  ; 2 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  %i.bc = icmp ne i64 %i.av, %i.bb
  %i.bd = zext i1 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !363
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1102, !nonnull !198, !align !369
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18 ; 2 uses
  %.not86 = icmp eq i32 %i.bh, 0
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !1103
  %.pre88 = load i64, ptr %.pre, align 8, !tbaa !29
  br label %bb.e

._crit_edge85.loopexit:                           ; preds = %bb.r
  %.pre90 = load ptr, ptr %i.d, align 8, !tbaa !93
  %.pre91 = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %bb.d
  %i.bx = phi ptr [ %.pre91, %._crit_edge85.loopexit ], [ %i.ax, %bb.d ] ; 5 uses
  %i.by = phi ptr [ %.pre90, %._crit_edge85.loopexit ], [ %i.aw, %bb.d ] ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not6.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge85
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %i.cb = add i64 %i.bz, -4
  %i.cc = sub i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.cc, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.i.i.i.preheader136, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec128 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec128, 2
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %i.ch = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %i.bx, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x float> splat (float +qnan), ptr %next.gep131, align 4, !tbaa !97
  store <4 x float> splat (float +qnan), ptr %i.ci, align 4, !tbaa !97
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.cj, label %middle.block133, label %vector.body129, !llvm.loop !1086

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ce, %n.vec128
  br i1 %cmp.n134, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i.preheader136

.lr.ph.i.i.i.i.i.i.preheader136:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block133
  %.07.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block133 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader136, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader136 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.by
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1087

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block133, %._crit_edge85
  store i8 1, ptr %i.be, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph84, %bb.r
  %i.cl = phi i64 [ %.pre88, %.lr.ph84 ], [ %i.ii, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next, %bb.r ] ; 6 uses
  %i.cm = phi i32 [ %i.bh, %.lr.ph84 ], [ %i.ik, %bb.r ]
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !1104, !nonnull !198, !align !199
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul i64 %i.au, %i.co
  %i.cq = add i64 %i.cp, %indvars.iv              ; 2 uses
  %i.cr = mul i64 %i.cl, %i.cq
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !94 ; 2 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %i.cr ; 7 uses
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !1105, !nonnull !198, !align !199 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !211
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !146 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !146 ; 2 uses
  %.not7477 = icmp eq ptr %i.cy, %i.da
  br i1 %.not7477, label %._crit_edge81, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.e
  %i.db = shl i64 %i.cl, 2
  %i.dc = mul i64 %i.db, %i.cq
  %i.dd = getelementptr i8, ptr %i.cs, i64 %i.dc
  br label %.lr.ph80

._crit_edge81.loopexit:                           ; preds = %._crit_edge
  %.pre89 = load ptr, ptr %i.bk, align 8, !tbaa !1105
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.e
  %i.de = phi i64 [ %i.fa, %._crit_edge81.loopexit ], [ %i.cl, %bb.e ] ; 2 uses
  %i.df = phi ptr [ %.pre89, %._crit_edge81.loopexit ], [ %i.cu, %bb.e ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dj = load float, ptr %i.di, align 4, !tbaa !97
  %i.dk = getelementptr [4 x i8], ptr %i.ct, i64 %i.de
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4     ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !97
  %i.dn = fadd float %i.dj, %i.dm                 ; 2 uses
  store float %i.dn, ptr %i.dl, align 4, !tbaa !97
  %i.do = load ptr, ptr %i.bv, align 8, !tbaa !1106, !nonnull !198, !align !199 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !240
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %bb.q, label %bb.j

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %._crit_edge
  %i.dr = phi i64 [ %i.fa, %._crit_edge ], [ %i.cl, %.lr.ph80.preheader ] ; 2 uses
  %.sroa.057.078 = phi ptr [ %i.fy, %._crit_edge ], [ %i.cy, %.lr.ph80.preheader ] ; 2 uses
  %i.ds = load i64, ptr %.sroa.057.078, align 8, !tbaa !29
  %i.dt = load ptr, ptr %i.bk, align 8, !tbaa !1105, !nonnull !198, !align !199 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %.val = load ptr, ptr %i.du, align 8, !tbaa !228
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.ds ; 3 uses
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !95 ; 5 uses
  %i.dx = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.dw, %i.dx
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph80
  %i.dy = ptrtoaddr ptr %i.dx to i64
  %i.dz = ptrtoaddr ptr %i.dw to i64
  %i.ea = add i64 %i.dy, -4
  %i.eb = sub i64 %i.ea, %i.dz
  %i.ec = and i64 %i.eb, -4
  %i.ed = add i64 %i.ec, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.dw, i8 0, i64 %i.ed, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph80
  %i.ee = load ptr, ptr %i.bm, align 8, !tbaa !1107, !nonnull !198, !align !369 ; 2 uses
  %i.ef = load i32, ptr %i.dv, align 4, !tbaa !371
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !217
  %i.ei = getelementptr inbounds nuw [200 x i8], ptr %i.eh, i64 %i.eg ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 192
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !224
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 48 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  br i1 %i.el, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.ei, ptr %7, align 8, !tbaa !234
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !372
  store i32 %i.eo, ptr %i.br, align 8, !tbaa !377
  store ptr %i.c, ptr %i.bs, align 8, !tbaa !378
  store ptr %i.ee, ptr %i.bt, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bu, align 8, !tbaa !380
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !273
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !275
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <4 x float> splat (float 1.000000e+00), ptr %5, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree14ScalarTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %i.ei, ptr %4, align 8, !tbaa !382
  %i.et = load i32, ptr %i.en, align 4, !tbaa !372
  store i32 %i.et, ptr %i.bn, align 8, !tbaa !384
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !378
  store ptr %i.ee, ptr %i.bp, align 8, !tbaa !379
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !385
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx68, align 8, !tbaa !95
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx70, align 8, !tbaa !29
  %i.eu = load ptr, ptr %i.em, align 8, !tbaa !268
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !18
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <4 x float> splat (float 1.000000e+00), ptr %2, align 16, !tbaa !97
  store <4 x float> splat (float 1.000000e+00), ptr %.07.i.i.i.i.ptr.4.i.i.i.i.i.i9.i.i, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_124QuadratureTreeShapRunnerINS_4tree19MultiTargetTreeViewENS1_31AdditiveContributionFormulationEE7RunNodeEiRKSt5arrayIfLm8EEfPS8_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i": ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"

"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S19_.exit.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS5_7ContextEPNS5_7DMatrixEPNS5_16HostDeviceVectorIfEERKNS5_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS5_9predictor20GHistIndexMatrixViewINS5_12NoOpAccessorEEEEEDaOT_ENKUlSW_E_clImEEDaSW_EUlRKSW_E_RSt7variantIJNS5_4tree14ScalarTreeViewENS15_19MultiTargetTreeViewEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES13_S19_.exit.i.i"
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !386 ; 4 uses
  %i.ez = load ptr, ptr %i.bj, align 8, !tbaa !1103, !nonnull !198, !align !199
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !29 ; 9 uses
  %i.fb = icmp ugt i64 %i.fa, 1
  br i1 %i.fb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fc = load ptr, ptr %i.am, align 8, !tbaa !94 ; 6 uses
  %i.fd = add i64 %i.fa, -1                       ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.fa, 9
  br i1 %min.iters.check112, label %scalar.ph111.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.fe = shl i64 %i.fa, 2                        ; 2 uses
  %10 = getelementptr i8, ptr %i.dd, i64 %i.fe
  %i.ff = getelementptr i8, ptr %10, i64 -4
  %i.fg = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.fg, i64 -4
  %bound0 = icmp ult ptr %i.ct, %i.fh
  %bound1 = icmp ult ptr %i.fc, %i.ff
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck
  %n.vec114 = and i64 %i.fd, -8                   ; 4 uses
  %i.fi = or disjoint i64 %n.vec114, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ey, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body115 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index116 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load = load <4 x float>, ptr %i.fj, align 4, !tbaa !97, !alias.scope !1108
  %wide.load117 = load <4 x float>, ptr %i.fk, align 4, !tbaa !97, !alias.scope !1108
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index116 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load118 = load <4 x float>, ptr %i.fl, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %wide.load119 = load <4 x float>, ptr %i.fm, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load118)
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load117, <4 x float> %broadcast.splat, <4 x float> %wide.load119)
  store <4 x float> %i.fn, ptr %i.fl, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  store <4 x float> %i.fo, ptr %i.fm, align 4, !tbaa !97, !alias.scope !1109, !noalias !1108
  %index.next120 = add nuw i64 %index116, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.fp, label %middle.block121, label %vector.body115, !llvm.loop !1091

middle.block121:                                  ; preds = %vector.body115
  %cmp.n122 = icmp eq i64 %i.fd, %n.vec114
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %vector.memcheck, %.lr.ph, %middle.block121
  %.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.fi, %middle.block121 ] ; 4 uses
  %.03876.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec114, %middle.block121 ] ; 3 uses
  %.neg = add i64 %.ph, 1
  %i.fq = and i64 %i.fa, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fq, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph111.prol, label %scalar.ph111.prol.loopexit

scalar.ph111.prol:                                ; preds = %scalar.ph111.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03876.ph
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !97
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03876.ph ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !97
  %i.fv = call float @llvm.fmuladd.f32(float %i.fs, float %i.ey, float %i.fu)
  store float %i.fv, ptr %i.ft, align 4, !tbaa !97
  %i.fw = add nuw i64 %.ph, 1
  br label %scalar.ph111.prol.loopexit

scalar.ph111.prol.loopexit:                       ; preds = %scalar.ph111.prol, %scalar.ph111.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph111.preheader ], [ %i.fw, %scalar.ph111.prol ]
  %.03876.unr = phi i64 [ %.03876.ph, %scalar.ph111.preheader ], [ %.ph, %scalar.ph111.prol ]
  %i.fx = icmp eq i64 %i.fa, %.neg
  br i1 %i.fx, label %._crit_edge, label %scalar.ph111

._crit_edge:                                      ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111, %middle.block121, %"_ZSt5visitIZZZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS0_7ContextEPNS0_7DMatrixEPNS0_16HostDeviceVectorIfEERKNS0_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEmENK3$_0clIRNS0_9predictor20GHistIndexMatrixViewINS0_12NoOpAccessorEEEEEDaOT_ENKUlSR_E_clImEEDaSR_EUlRKSR_E_JRSt7variantIJNS0_4tree14ScalarTreeViewENSZ_19MultiTargetTreeViewEEEEENSt13invoke_resultISR_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS16_EEEEE4typeEE4typeEOS1F_EEEE4typeESS_DpOS16_.exit"
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.057.078, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.fy, %i.da
  br i1 %.not74, label %._crit_edge81.loopexit, label %.lr.ph80

scalar.ph111:                                     ; preds = %scalar.ph111.prol.loopexit, %scalar.ph111
  %i.fz = phi i64 [ %i.gl, %scalar.ph111 ], [ %.unr, %scalar.ph111.prol.loopexit ] ; 4 uses
  %.03876 = phi i64 [ %i.gf, %scalar.ph111 ], [ %.03876.unr, %scalar.ph111.prol.loopexit ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.03876
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !97
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.03876 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !97
  %i.ge = call float @llvm.fmuladd.f32(float %i.gb, float %i.ey, float %i.gd)
  store float %i.ge, ptr %i.gc, align 4, !tbaa !97
  %i.gf = add nuw i64 %i.fz, 1
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fz
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !97
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fz ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !97
  %i.gk = call float @llvm.fmuladd.f32(float %i.gh, float %i.ey, float %i.gj)
  store float %i.gk, ptr %i.gi, align 4, !tbaa !97
  %i.gl = add nuw i64 %i.fz, 2                    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gl, %i.fa
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph111, !llvm.loop !1092

bb.j:                                             ; preds = %._crit_edge81
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !29 ; 2 uses
  store i64 %i.gn, ptr %i.a, align 8, !tbaa !29
  %i.go = load ptr, ptr %i.bf, align 8, !tbaa !1102, !nonnull !198, !align !369 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !18, !noalias !1110
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp eq i64 %i.gn, %i.gq
  br i1 %i.gr, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.go)
  %.pr = load ptr, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not75 = icmp eq ptr %.pr, null
  br i1 %.not75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.gs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gs, ptr noundef nonnull @.str, i32 noundef 614)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.gt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.gw = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !27
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gx, i64 noundef %i.gz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.hc, %bb.l ], [ %i.hd, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %.pr72 = load ptr, ptr %8, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr72, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.he = load ptr, ptr %.pr72, align 8, !tbaa !26 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pr72, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !28
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr72, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.hj = load ptr, ptr %i.bv, align 8, !tbaa !1106, !nonnull !198, !align !199 ; 3 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !29
  %i.hl = mul i64 %i.hk, %i.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !29
  %i.ho = mul i64 %i.hn, %indvars.iv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !239
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hl
  %i.hs = getelementptr [4 x i8], ptr %i.hr, i64 %i.ho
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !97
  %i.hu = load ptr, ptr %i.bj, align 8, !tbaa !1103, !nonnull !198, !align !199
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !29 ; 2 uses
end_hunk_3
