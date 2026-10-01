Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  br i1 %i.de, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, !prof !46

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235: ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.dh = load ptr, ptr %2, align 8, !tbaa !41, !noalias !487 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !noalias !487
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 1023                     ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 1023
  %i.dn = select i1 %i.dm, i32 -1, i32 %i.dl
  %i.do = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dn)
          to label %.noexc237 unwind label %bb.ao

.noexc237:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235
  %i.dp = icmp eq i32 %i.do, 2
  %spec.select.i.i236 = select i1 %i.dp, i64 2, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %spec.select.i.i236
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40, !noalias !487 ; 5 uses
  store ptr %i.ds, ptr %36, align 8, !tbaa !41, !alias.scope !487
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !487 ; 3 uses
  %i.du = lshr i64 %i.dt, 40
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 1048575                  ; 3 uses
  %i.dx = icmp samesign ult i32 %i.dw, 1048574
  br i1 %i.dx, label %bb.y, label %bb.z, !prof !47

bb.y:                                             ; preds = %.noexc237
  %i.dy = add nuw nsw i32 %i.dw, 1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 40
  %i.eb = and i64 %i.dt, -1152920405095219201
  %i.ec = or i64 %i.ea, %i.eb
  store i64 %i.ec, ptr %i.ds, align 8, !noalias !487
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239

bb.z:                                             ; preds = %.noexc237
  %i.ed = icmp eq i32 %i.dw, 1048574
  br i1 %i.ed, label %bb.aa, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239, !prof !46

bb.aa:                                            ; preds = %bb.z
  %i.ee = or i64 %i.dt, 1152920405095219200
  store i64 %i.ee, ptr %i.ds, align 8, !noalias !487
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239 unwind label %bb.ao

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239: ; preds = %bb.z, %bb.y, %bb.aa
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.ab unwind label %bb.aq

bb.ab:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239
  %i.ef = load ptr, ptr %36, align 8, !tbaa !41   ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %i.eh = and i64 %i.eg, 1152920405095219200
  %.not.i.i240 = icmp eq i64 %i.eh, 1152920405095219200
  br i1 %.not.i.i240, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, label %bb.ac, !prof !46

bb.ac:                                            ; preds = %bb.ab
  %i.ei = add i64 %i.eg, 1152920405095219200
  %i.ej = and i64 %i.ei, 1152920405095219200      ; 2 uses
  %i.ek = and i64 %i.eg, -1152920405095219201
  %i.el = or disjoint i64 %i.ej, %i.ek
  store i64 %i.el, ptr %i.ef, align 8
  %i.em = icmp eq i64 %i.ej, 0
  br i1 %i.em, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, !prof !46

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241: ; preds = %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ep = load ptr, ptr %2, align 8, !tbaa !41, !noalias !488 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !noalias !488
  %i.es = trunc i64 %i.er to i32
  %i.et = and i32 %i.es, 1023                     ; 2 uses
  %i.eu = icmp eq i32 %i.et, 1023
  %i.ev = select i1 %i.eu, i32 -1, i32 %i.et
  %i.ew = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ev)
          to label %.noexc243 unwind label %bb.ar

.noexc243:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241
  %i.ex = icmp eq i32 %i.ew, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.ez = zext i1 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !40, !noalias !488 ; 5 uses
  store ptr %i.fb, ptr %38, align 8, !tbaa !41, !alias.scope !488
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !488 ; 3 uses
  %i.fd = lshr i64 %i.fc, 40
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 1048575                  ; 3 uses
  %i.fg = icmp samesign ult i32 %i.ff, 1048574
  br i1 %i.fg, label %bb.af, label %bb.ag, !prof !47

bb.af:                                            ; preds = %.noexc243
  %i.fh = add nuw nsw i32 %i.ff, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 40
  %i.fk = and i64 %i.fc, -1152920405095219201
  %i.fl = or i64 %i.fj, %i.fk
  store i64 %i.fl, ptr %i.fb, align 8, !noalias !488
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245

bb.ag:                                            ; preds = %.noexc243
  %i.fm = icmp eq i32 %i.ff, 1048574
  br i1 %i.fm, label %bb.ah, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245, !prof !46

bb.ah:                                            ; preds = %bb.ag
  %i.fn = or i64 %i.fc, 1152920405095219200
  store i64 %i.fn, ptr %i.fb, align 8, !noalias !488
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245 unwind label %bb.ar

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245: ; preds = %bb.ag, %bb.af, %bb.ah
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %38, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245
  %i.fo = load ptr, ptr %38, align 8, !tbaa !41   ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.fq = and i64 %i.fp, 1152920405095219200
  %.not.i.i246 = icmp eq i64 %i.fq, 1152920405095219200
  br i1 %.not.i.i246, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247, label %bb.aj, !prof !46

bb.aj:                                            ; preds = %bb.ai
  %i.fr = add i64 %i.fp, 1152920405095219200
  %i.fs = and i64 %i.fr, 1152920405095219200      ; 2 uses
  %i.ft = and i64 %i.fp, -1152920405095219201
  %i.fu = or disjoint i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %i.fo, align 8
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247, !prof !46

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247: ; preds = %bb.ai, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 6 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !57
  %i.ga = load ptr, ptr %33, align 8, !tbaa !56
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.am:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572
  %i.ha = add nuw i64 %.0157791, 1
  %exitcond.not = icmp eq i64 %.0157791, %i.ge
  br i1 %exitcond.not, label %bb.pe, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i, !llvm.loop !446

bb.an:                                            ; preds = %bb.i, %bb.f
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.pw

bb.ao:                                            ; preds = %bb.aa, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, %bb.t, %bb.q
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pr

bb.ap:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit233
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  br label %bb.pr

bb.aq:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #23
  br label %bb.pr

bb.ar:                                            ; preds = %bb.ah, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn173 = phi { ptr, i32 } [ %i.hg, %bb.as ], [ %i.hf, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %bb.pq

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.am, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247
  %.0139792 = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 ], [ %.6145, %bb.am ] ; 4 uses
  %.0157791 = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 ], [ %i.ha, %bb.am ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.hh = load ptr, ptr %33, align 8, !tbaa !65   ; 2 uses
  %.idx649 = shl nuw nsw i64 %.0157791, 3         ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx649
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %.0157791, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.hj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx649) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.au

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.hk = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.hj, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.hk, ptr %39, align 8, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx649
  store ptr %i.hl, ptr %i.gf, align 8, !tbaa !59
  %i.hm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.hh, ptr %i.hi, ptr noundef %i.hk)
          to label %bb.aw unwind label %bb.au

bb.au:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i
  %lpad.loopexit685 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre800 = load ptr, ptr %39, align 8, !tbaa !56 ; 3 uses
  %.not.i.i7.i = icmp eq ptr %.pre800, null
  br i1 %.not.i.i7.i, label %.body, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hn = load ptr, ptr %i.gf, align 8, !tbaa !59
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %.pre800 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.pre800, i64 noundef %i.hq) #26
  br label %.body

bb.aw:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.hm, ptr %i.gg, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.hr = load ptr, ptr %37, align 8, !tbaa !64   ; 5 uses
  store ptr %i.hr, ptr %41, align 8, !tbaa !64
  %i.hs = load i64, ptr %i.hr, align 8            ; 3 uses
  %i.ht = lshr i64 %i.hs, 40
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = and i32 %i.hu, 1048575                  ; 3 uses
  %i.hw = icmp samesign ult i32 %i.hv, 1048574
  br i1 %i.hw, label %bb.ax, label %bb.ay, !prof !47

bb.ax:                                            ; preds = %bb.aw
  %i.hx = add nuw nsw i32 %i.hv, 1
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = shl nuw nsw i64 %i.hy, 40
  %i.ia = and i64 %i.hs, -1152920405095219201
  %i.ib = or i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hr, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ic = icmp eq i32 %i.hv, 1048574
  br i1 %i.ic, label %bb.az, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !46

bb.az:                                            ; preds = %bb.ay
  %i.id = or i64 %i.hs, 1152920405095219200
  store i64 %i.id, ptr %i.hr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.be

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.ay, %bb.ax, %bb.az
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 %41)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ie = load ptr, ptr %41, align 8, !tbaa !64   ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8            ; 3 uses
  %i.ig = and i64 %i.if, 1152920405095219200
  %.not.i.i249 = icmp eq i64 %i.ig, 1152920405095219200
  br i1 %.not.i.i249, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.bb, !prof !46

bb.bb:                                            ; preds = %bb.ba
  %i.ih = add i64 %i.if, 1152920405095219200
  %i.ii = and i64 %i.ih, 1152920405095219200      ; 2 uses
  %i.ij = and i64 %i.if, -1152920405095219201
  %i.ik = or disjoint i64 %i.ii, %i.ij
  store i64 %i.ik, ptr %i.ie, align 8
  %i.il = icmp eq i64 %i.ii, 0
  br i1 %i.il, label %bb.bc, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !46

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.ba, %bb.bb, %bb.bc
  %i.io = load ptr, ptr %i.gh, align 8, !tbaa !57
  %i.ip = load ptr, ptr %34, align 8, !tbaa !56
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 3                 ; 2 uses
  %.not176782 = icmp ugt i64 %.0139792, %i.it
  br i1 %.not176782, label %._crit_edge, label %.lr.ph

bb.be:                                            ; preds = %bb.az
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.bf:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  br label %bb.pd

.lr.ph:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.ov
  %.1140787 = phi i64 [ %.5144, %bb.ov ], [ %.0139792, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 6 uses
  %.0163783 = phi i64 [ %i.atr, %bb.ov ], [ %.0139792, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 9 uses
  %i.iw = or i64 %.0163783, %.0157791
  %or.cond = icmp eq i64 %i.iw, 0
  br i1 %or.cond, label %bb.ov, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph
  %i.ix = load ptr, ptr %i.fy, align 8, !tbaa !57
  %i.iy = load ptr, ptr %33, align 8, !tbaa !56
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = ashr exact i64 %i.jb, 3
  %i.jd = icmp eq i64 %.0157791, %i.jc
  %.pre797 = load ptr, ptr %34, align 8, !tbaa !65 ; 3 uses
  br i1 %i.jd, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.je = load ptr, ptr %i.gh, align 8, !tbaa !57
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %.pre797 to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = ashr exact i64 %i.jh, 3
  %i.jj = icmp eq i64 %.0163783, %i.ji
  br i1 %i.jj, label %bb.ov, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %.idx651 = shl nsw i64 %.0163783, 3             ; 5 uses
  %i.jk = getelementptr inbounds i8, ptr %.pre797, i64 %.idx651
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.jl = icmp ugt i64 %.idx651, 9223372036854775800
  br i1 %i.jl, label %bb.bj, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i256 unwind label %.loopexit.split-lp

.noexc.i256:                                      ; preds = %bb.bj
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250: ; preds = %bb.bi
  %.not.i.i.i251 = icmp eq i64 %.0163783, 0
  br i1 %.not.i.i.i251, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255.thread, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255.thread: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250
  %i.jm = getelementptr inbounds nuw i8, ptr null, i64 %.idx651
  store ptr %i.jm, ptr %i.gi, align 8, !tbaa !59
  br label %.loopexit656

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx651) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 unwind label %.loopexit657 ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252
  store ptr %i.jn, ptr %42, align 8, !tbaa !56
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.idx651
  store ptr %i.jo, ptr %i.gi, align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i
  %.014.i = phi ptr [ %i.kd, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %i.jn, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 3 uses
  %.sroa.08.013.i = phi ptr [ %i.kc, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %.pre797, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 2 uses
  %i.jp = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !41 ; 5 uses
  store ptr %i.jp, ptr %.014.i, align 8, !tbaa !41
  %i.jq = load i64, ptr %i.jp, align 8            ; 3 uses
  %i.jr = lshr i64 %i.jq, 40
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = and i32 %i.js, 1048575                  ; 3 uses
  %i.ju = icmp samesign ult i32 %i.jt, 1048574
  br i1 %i.ju, label %bb.bk, label %bb.bl, !prof !47

bb.bk:                                            ; preds = %.lr.ph.i
  %i.jv = add nuw nsw i32 %i.jt, 1
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 40
  %i.jy = and i64 %i.jq, -1152920405095219201
  %i.jz = or i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.jp, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  call void @__clang_call_terminate(ptr %i.ape) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit504:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit502, %bb.mw, %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  store i32 104, ptr %3, align 4, !tbaa !72
  %i.apf = load ptr, ptr %73, align 8, !tbaa !56  ; 3 uses
  %i.apg = load ptr, ptr %i.gp, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i505 = icmp eq ptr %i.apf, %i.apg
  br i1 %.not4.i.i.i505, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i513, label %.lr.ph.i.i.i506

.lr.ph.i.i.i506:                                  ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit504, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509
  %.05.i.i.i507 = phi ptr [ %i.apr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509 ], [ %i.apf, %_ZN4cvc58internal8TypeNodeD2Ev.exit504 ] ; 2 uses
  %i.aph = load ptr, ptr %.05.i.i.i507, align 8, !tbaa !41 ; 3 uses
  %i.api = load i64, ptr %i.aph, align 8          ; 3 uses
  %i.apj = and i64 %i.api, 1152920405095219200
  %.not.i.i.i.i.i.i508 = icmp eq i64 %i.apj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i508, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509, label %bb.mz, !prof !46

bb.mz:                                            ; preds = %.lr.ph.i.i.i506
  %i.apk = add i64 %i.api, 1152920405095219200
  %i.apl = and i64 %i.apk, 1152920405095219200    ; 2 uses
  %i.apm = and i64 %i.api, -1152920405095219201
  %i.apn = or disjoint i64 %i.apl, %i.apm
  store i64 %i.apn, ptr %i.aph, align 8
  %i.apo = icmp eq i64 %i.apl, 0
  br i1 %i.apo, label %bb.na, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509, !prof !46

bb.na:                                            ; preds = %bb.mz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aph)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509 unwind label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.app = landingpad { ptr, i32 }
          catch ptr null
  %i.apq = extractvalue { ptr, i32 } %i.app, 0
  call void @__clang_call_terminate(ptr %i.apq) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509: ; preds = %bb.na, %bb.mz, %.lr.ph.i.i.i506
  %i.apr = getelementptr inbounds nuw i8, ptr %.05.i.i.i507, i64 8 ; 2 uses
  %.not.i.i.i510 = icmp eq ptr %i.apr, %i.apg
  br i1 %.not.i.i.i510, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i511, label %.lr.ph.i.i.i506, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i511: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i509
  %.pr.i512 = load ptr, ptr %73, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i513

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i513: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i511, %_ZN4cvc58internal8TypeNodeD2Ev.exit504
  %i.aps = phi ptr [ %.pr.i512, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i511 ], [ %i.apf, %_ZN4cvc58internal8TypeNodeD2Ev.exit504 ] ; 3 uses
  %.not.i.i1.i514 = icmp eq ptr %i.aps, null
  br i1 %.not.i.i1.i514, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516, label %bb.nc

bb.nc:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i513
  %i.apt = load ptr, ptr %i.go, align 8, !tbaa !59
  %i.apu = ptrtoint ptr %i.apt to i64
  %i.apv = ptrtoint ptr %i.aps to i64
  %i.apw = sub i64 %i.apu, %i.apv
  call void @_ZdlPvm(ptr noundef nonnull %i.aps, i64 noundef %i.apw) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i513, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23
  br label %bb.nv

bb.nd:                                            ; preds = %bb.kb
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

bb.ne:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436
  %i.apy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #23
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.pn181 = phi { ptr, i32 } [ %i.apy, %bb.ne ], [ %i.apx, %bb.nd ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #23
  br label %bb.ot

.loopexit658:                                     ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit660 = landingpad { ptr, i32 }
          cleanup
  br label %.body445

.loopexit.split-lp659:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp661 = landingpad { ptr, i32 }
          cleanup
  br label %.body445

bb.ng:                                            ; preds = %bb.kr, %bb.kp, %bb.kn
  %i.apz = landingpad { ptr, i32 }
          cleanup
  br label %bb.oe

bb.nh:                                            ; preds = %bb.kt
  %i.aqa = landingpad { ptr, i32 }
          cleanup
  br label %bb.oe

.thread638:                                       ; preds = %bb.lb
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit655

.thread644:                                       ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %76) #23
  br label %.loopexit655

bb.ni:                                            ; preds = %bb.lc
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nt

bb.nj:                                            ; preds = %bb.ll
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.nk:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  br label %bb.nr

bb.nl:                                            ; preds = %bb.lp
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.nm:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit473
  %i.aqh = landingpad { ptr, i32 }
          cleanup
  br label %bb.np

bb.nn:                                            ; preds = %bb.lq
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  br label %.body478

bb.no:                                            ; preds = %bb.lw
  %i.aqj = landingpad { ptr, i32 }
          cleanup
  br label %.body486

.body486:                                         ; preds = %bb.lz, %bb.no
  %eh.lpad-body487 = phi { ptr, i32 } [ %i.aqj, %bb.no ], [ %.pn.i481, %bb.lz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %77) #23
  br label %.body478

.body478:                                         ; preds = %bb.nn, %.body.i475, %.body486
  %.pn183 = phi { ptr, i32 } [ %eh.lpad-body487, %.body486 ], [ %i.aqi, %bb.nn ], [ %.pn5.i.i476, %.body.i475 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #23
  br label %bb.np

bb.np:                                            ; preds = %.body478, %bb.nm
  %.pn183.pn = phi { ptr, i32 } [ %.pn183, %.body478 ], [ %i.aqh, %bb.nm ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %81) #23
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %bb.nl
  %.pn183.pn.pn = phi { ptr, i32 } [ %.pn183.pn, %bb.np ], [ %i.aqg, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #23
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.nk
  %.pn183.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn, %bb.nq ], [ %i.aqf, %bb.nk ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #23
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %bb.nj
  %.pn183.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn, %bb.nr ], [ %i.aqe, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #23
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %.body.i464, %bb.ni
  %.pn183.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn, %bb.ns ], [ %i.aqd, %bb.ni ], [ %.pn5.i.i465, %.body.i464 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #23
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %76) #23
  br label %.loopexit655

.loopexit655:                                     ; preds = %bb.nt, %.thread644, %.thread638
  %.pn183.pn.pn.pn.pn.pn.pn.pn643 = phi { ptr, i32 } [ %i.aqb, %.thread638 ], [ %i.aqc, %.thread644 ], [ %.pn183.pn.pn.pn.pn.pn, %bb.nt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %73) #23
  br label %.body458

.body458:                                         ; preds = %bb.kx, %bb.kw, %.loopexit655
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn643, %.loopexit655 ], [ %lpad.phi667, %bb.kw ], [ %lpad.phi667, %bb.kx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23
  br label %bb.oe

bb.nu:                                            ; preds = %bb.kq, %bb.ks, %bb.ko
  %i.aqk = add nuw nsw i64 %.0163783, 1
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516
  %not.cond4 = phi i32 [ 1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516 ], [ 0, %bb.nu ]
  %.2141 = phi i64 [ %.1140787, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit516 ], [ %i.aqk, %bb.nu ]
  %i.aql = load ptr, ptr %72, align 8, !tbaa !56  ; 3 uses
  %i.aqm = load ptr, ptr %i.gq, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i517 = icmp eq ptr %i.aql, %i.aqm
  br i1 %.not4.i.i.i517, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i525, label %.lr.ph.i.i.i518

.lr.ph.i.i.i518:                                  ; preds = %bb.nv, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521
  %.05.i.i.i519 = phi ptr [ %i.aqx, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521 ], [ %i.aql, %bb.nv ] ; 2 uses
  %i.aqn = load ptr, ptr %.05.i.i.i519, align 8, !tbaa !41 ; 3 uses
  %i.aqo = load i64, ptr %i.aqn, align 8          ; 3 uses
  %i.aqp = and i64 %i.aqo, 1152920405095219200
  %.not.i.i.i.i.i.i520 = icmp eq i64 %i.aqp, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i520, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521, label %bb.nw, !prof !46

bb.nw:                                            ; preds = %.lr.ph.i.i.i518
  %i.aqq = add i64 %i.aqo, 1152920405095219200
  %i.aqr = and i64 %i.aqq, 1152920405095219200    ; 2 uses
  %i.aqs = and i64 %i.aqo, -1152920405095219201
  %i.aqt = or disjoint i64 %i.aqr, %i.aqs
  store i64 %i.aqt, ptr %i.aqn, align 8
  %i.aqu = icmp eq i64 %i.aqr, 0
  br i1 %i.aqu, label %bb.nx, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521, !prof !46

bb.nx:                                            ; preds = %bb.nw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aqn)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521 unwind label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.aqv = landingpad { ptr, i32 }
          catch ptr null
  %i.aqw = extractvalue { ptr, i32 } %i.aqv, 0
  call void @__clang_call_terminate(ptr %i.aqw) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521: ; preds = %bb.nx, %bb.nw, %.lr.ph.i.i.i518
  %i.aqx = getelementptr inbounds nuw i8, ptr %.05.i.i.i519, i64 8 ; 2 uses
  %.not.i.i.i522 = icmp eq ptr %i.aqx, %i.aqm
  br i1 %.not.i.i.i522, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i523, label %.lr.ph.i.i.i518, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i523: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i521
  %.pr.i524 = load ptr, ptr %72, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i525

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i525: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i523, %bb.nv
  %i.aqy = phi ptr [ %.pr.i524, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i523 ], [ %i.aql, %bb.nv ] ; 3 uses
  %.not.i.i1.i526 = icmp eq ptr %i.aqy, null
  br i1 %.not.i.i1.i526, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528, label %bb.nz

bb.nz:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i525
  %i.aqz = load ptr, ptr %i.gr, align 8, !tbaa !59
  %i.ara = ptrtoint ptr %i.aqz to i64
  %i.arb = ptrtoint ptr %i.aqy to i64
  %i.arc = sub i64 %i.ara, %i.arb
  call void @_ZdlPvm(ptr noundef nonnull %i.aqy, i64 noundef %i.arc) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i525, %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  %i.ard = load ptr, ptr %71, align 8, !tbaa !56  ; 3 uses
  %i.are = load ptr, ptr %i.gl, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i529 = icmp eq ptr %i.ard, %i.are
  br i1 %.not4.i.i.i529, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537, label %.lr.ph.i.i.i530

.lr.ph.i.i.i530:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533
  %.05.i.i.i531 = phi ptr [ %i.arp, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533 ], [ %i.ard, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528 ] ; 2 uses
  %i.arf = load ptr, ptr %.05.i.i.i531, align 8, !tbaa !41 ; 3 uses
  %i.arg = load i64, ptr %i.arf, align 8          ; 3 uses
  %i.arh = and i64 %i.arg, 1152920405095219200
  %.not.i.i.i.i.i.i532 = icmp eq i64 %i.arh, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i532, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533, label %bb.oa, !prof !46

bb.oa:                                            ; preds = %.lr.ph.i.i.i530
  %i.ari = add i64 %i.arg, 1152920405095219200
  %i.arj = and i64 %i.ari, 1152920405095219200    ; 2 uses
  %i.ark = and i64 %i.arg, -1152920405095219201
  %i.arl = or disjoint i64 %i.arj, %i.ark
  store i64 %i.arl, ptr %i.arf, align 8
  %i.arm = icmp eq i64 %i.arj, 0
  br i1 %i.arm, label %bb.ob, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533, !prof !46

bb.ob:                                            ; preds = %bb.oa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arf)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533 unwind label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.arn = landingpad { ptr, i32 }
          catch ptr null
  %i.aro = extractvalue { ptr, i32 } %i.arn, 0
  call void @__clang_call_terminate(ptr %i.aro) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533: ; preds = %bb.ob, %bb.oa, %.lr.ph.i.i.i530
  %i.arp = getelementptr inbounds nuw i8, ptr %.05.i.i.i531, i64 8 ; 2 uses
  %.not.i.i.i534 = icmp eq ptr %i.arp, %i.are
  br i1 %.not.i.i.i534, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535, label %.lr.ph.i.i.i530, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533
  %.pr.i536 = load ptr, ptr %71, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528
  %i.arq = phi ptr [ %.pr.i536, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535 ], [ %i.ard, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528 ] ; 3 uses
  %.not.i.i1.i538 = icmp eq ptr %i.arq, null
  br i1 %.not.i.i1.i538, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540, label %bb.od

bb.od:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537
  %i.arr = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.ars = ptrtoint ptr %i.arr to i64
  %i.art = ptrtoint ptr %i.arq to i64
  %i.aru = sub i64 %i.ars, %i.art
  call void @_ZdlPvm(ptr noundef nonnull %i.arq, i64 noundef %i.aru) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537, %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %bb.of

bb.oe:                                            ; preds = %.body458, %bb.nh, %bb.ng
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn, %.body458 ], [ %i.aqa, %bb.nh ], [ %i.apz, %bb.ng ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %71) #23
  br label %.body445

.body445:                                         ; preds = %.loopexit658, %.loopexit.split-lp659, %bb.km, %bb.kl, %bb.oe
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.oe ], [ %i.aid, %bb.kl ], [ %i.aid, %bb.km ], [ %lpad.loopexit660, %.loopexit658 ], [ %lpad.loopexit.split-lp661, %.loopexit.split-lp659 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %bb.ot

bb.of:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344
  %.2160 = phi i32 [ 1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344 ], [ %.0158, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432 ], [ %not.cond4, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540 ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440 ] ; 2 uses
  %.4143 = phi i64 [ %.1140787, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344 ], [ %.1140787, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432 ], [ %.2141, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540 ], [ %.1140787, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440 ] ; 2 uses
  %i.arv = load ptr, ptr %46, align 8, !tbaa !41  ; 3 uses
  %i.arw = load i64, ptr %i.arv, align 8          ; 3 uses
  %i.arx = and i64 %i.arw, 1152920405095219200
  %.not.i.i541 = icmp eq i64 %i.arx, 1152920405095219200
  br i1 %.not.i.i541, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, label %bb.og, !prof !46

bb.og:                                            ; preds = %bb.of
  %i.ary = add i64 %i.arw, 1152920405095219200
  %i.arz = and i64 %i.ary, 1152920405095219200    ; 2 uses
  %i.asa = and i64 %i.arw, -1152920405095219201
  %i.asb = or disjoint i64 %i.arz, %i.asa
  store i64 %i.asb, ptr %i.arv, align 8
  %i.asc = icmp eq i64 %i.arz, 0
  br i1 %i.asc, label %bb.oh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, !prof !46

bb.oh:                                            ; preds = %bb.og
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542 unwind label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.asd = landingpad { ptr, i32 }
          catch ptr null
  %i.ase = extractvalue { ptr, i32 } %i.asd, 0
  call void @__clang_call_terminate(ptr %i.ase) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542: ; preds = %bb.of, %bb.og, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.asf = load ptr, ptr %45, align 8, !tbaa !41  ; 3 uses
  %i.asg = load i64, ptr %i.asf, align 8          ; 3 uses
  %i.ash = and i64 %i.asg, 1152920405095219200
  %.not.i.i543 = icmp eq i64 %i.ash, 1152920405095219200
  br i1 %.not.i.i543, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, label %bb.oj, !prof !46

bb.oj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542
  %i.asi = add i64 %i.asg, 1152920405095219200
  %i.asj = and i64 %i.asi, 1152920405095219200    ; 2 uses
  %i.ask = and i64 %i.asg, -1152920405095219201
  %i.asl = or disjoint i64 %i.asj, %i.ask
  store i64 %i.asl, ptr %i.asf, align 8
  %i.asm = icmp eq i64 %i.asj, 0
  br i1 %i.asm, label %bb.ok, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, !prof !46

bb.ok:                                            ; preds = %bb.oj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.asf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544 unwind label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.asn = landingpad { ptr, i32 }
          catch ptr null
  %i.aso = extractvalue { ptr, i32 } %i.asn, 0
  call void @__clang_call_terminate(ptr %i.aso) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, %bb.oj, %bb.ok
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.asp = load ptr, ptr %43, align 8, !tbaa !41  ; 3 uses
  %i.asq = load i64, ptr %i.asp, align 8          ; 3 uses
  %i.asr = and i64 %i.asq, 1152920405095219200
  %.not.i.i545 = icmp eq i64 %i.asr, 1152920405095219200
  br i1 %.not.i.i545, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546, label %bb.om, !prof !46

bb.om:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544
  %i.ass = add i64 %i.asq, 1152920405095219200
end_hunk_1
