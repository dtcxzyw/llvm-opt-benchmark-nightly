Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  %i.de = icmp eq i64 %i.db, 0
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
          to label %.noexc237 unwind label %bb.an

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
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239 unwind label %bb.an

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239: ; preds = %bb.z, %bb.y, %bb.aa
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.ab unwind label %bb.ap

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
          to label %.noexc243 unwind label %bb.aq

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
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245 unwind label %bb.aq

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245: ; preds = %bb.ag, %bb.af, %bb.ah
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %38, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.ar

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

bb.am:                                            ; preds = %bb.i, %bb.f
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.pv

bb.an:                                            ; preds = %bb.aa, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, %bb.t, %bb.q
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

bb.ao:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit233
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  br label %bb.pq

bb.ap:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #23
  br label %bb.pq

bb.aq:                                            ; preds = %bb.ah, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn173 = phi { ptr, i32 } [ %i.hf, %bb.ar ], [ %i.he, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %bb.pp

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247
  %.0139925 = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 ], [ %.6145, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572 ] ; 4 uses
  %.0157924 = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 ], [ %83, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.hg = load ptr, ptr %33, align 8, !tbaa !65   ; 2 uses
  %.idx653 = shl nuw nsw i64 %.0157924, 3         ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %.0157924, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx653) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.at

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.hj = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.hi, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %i.hj, ptr %39, align 8, !tbaa !56
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx653
  store ptr %i.hk, ptr %i.gf, align 8, !tbaa !59
  %i.hl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.hg, ptr %i.hh, ptr noundef %i.hj)
          to label %bb.av unwind label %bb.at

bb.at:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i
  %lpad.loopexit689 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre936 = load ptr, ptr %39, align 8, !tbaa !56 ; 3 uses
  %.not.i.i7.i = icmp eq ptr %.pre936, null
  br i1 %.not.i.i7.i, label %.body, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hm = load ptr, ptr %i.gf, align 8, !tbaa !59
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.pre936 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.pre936, i64 noundef %i.hp) #26
  br label %.body

bb.av:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.hl, ptr %i.gg, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.hq = load ptr, ptr %37, align 8, !tbaa !64   ; 5 uses
  store ptr %i.hq, ptr %41, align 8, !tbaa !64
  %i.hr = load i64, ptr %i.hq, align 8            ; 3 uses
  %i.hs = lshr i64 %i.hr, 40
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = and i32 %i.ht, 1048575                  ; 3 uses
  %i.hv = icmp samesign ult i32 %i.hu, 1048574
  br i1 %i.hv, label %bb.aw, label %bb.ax, !prof !47

bb.aw:                                            ; preds = %bb.av
  %i.hw = add nuw nsw i32 %i.hu, 1
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = shl nuw nsw i64 %i.hx, 40
  %i.hz = and i64 %i.hr, -1152920405095219201
  %i.ia = or i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %i.hq, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.ax:                                            ; preds = %bb.av
  %i.ib = icmp eq i32 %i.hu, 1048574
  br i1 %i.ib, label %bb.ay, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !46

bb.ay:                                            ; preds = %bb.ax
  %i.ic = or i64 %i.hr, 1152920405095219200
  store i64 %i.ic, ptr %i.hq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.bd

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.ax, %bb.aw, %bb.ay
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 %41)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.id = load ptr, ptr %41, align 8, !tbaa !64   ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8            ; 3 uses
  %i.if = and i64 %i.ie, 1152920405095219200
  %.not.i.i249 = icmp eq i64 %i.if, 1152920405095219200
  br i1 %.not.i.i249, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ba, !prof !46

bb.ba:                                            ; preds = %bb.az
  %i.ig = add i64 %i.ie, 1152920405095219200
  %i.ih = and i64 %i.ig, 1152920405095219200      ; 2 uses
  %i.ii = and i64 %i.ie, -1152920405095219201
  %i.ij = or disjoint i64 %i.ih, %i.ii
  store i64 %i.ij, ptr %i.id, align 8
  %i.ik = icmp eq i64 %i.ih, 0
  br i1 %i.ik, label %bb.bb, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !46

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.id)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.az, %bb.ba, %bb.bb
  %i.in = load ptr, ptr %i.gh, align 8, !tbaa !57
  %i.io = load ptr, ptr %34, align 8, !tbaa !56
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ashr exact i64 %i.ir, 3                 ; 2 uses
  %.not176915 = icmp ugt i64 %.0139925, %i.is
  br i1 %.not176915, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %bb.ay
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.pc

bb.be:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  br label %bb.pc

.lr.ph:                                           ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %bb.ou
  %.1140920 = phi i64 [ %.5144, %bb.ou ], [ %.0139925, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 6 uses
  %.0163916 = phi i64 [ %i.atq, %bb.ou ], [ %.0139925, %_ZN4cvc58internal8TypeNodeD2Ev.exit ] ; 9 uses
  %i.iv = or i64 %.0163916, %.0157924
  %or.cond = icmp eq i64 %i.iv, 0
  br i1 %or.cond, label %bb.ou, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %i.iw = load ptr, ptr %i.fy, align 8, !tbaa !57
  %i.ix = load ptr, ptr %33, align 8, !tbaa !56
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = icmp eq i64 %.0157924, %i.jb
  %.pre933 = load ptr, ptr %34, align 8, !tbaa !65 ; 3 uses
  br i1 %i.jc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jd = load ptr, ptr %i.gh, align 8, !tbaa !57
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %.pre933 to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 3
  %i.ji = icmp eq i64 %.0163916, %i.jh
  br i1 %i.ji, label %bb.ou, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  %.idx655 = shl nsw i64 %.0163916, 3             ; 5 uses
  %i.jj = getelementptr inbounds i8, ptr %.pre933, i64 %.idx655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.jk = icmp ugt i64 %.idx655, 9223372036854775800
  br i1 %i.jk, label %bb.bi, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i256 unwind label %.loopexit.split-lp

.noexc.i256:                                      ; preds = %bb.bi
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250: ; preds = %bb.bh
  %.not.i.i.i251 = icmp eq i64 %.0163916, 0
  br i1 %.not.i.i.i251, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255.thread, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255.thread: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250
  %i.jl = getelementptr inbounds nuw i8, ptr null, i64 %.idx655
  store ptr %i.jl, ptr %i.gi, align 8, !tbaa !59
  br label %.loopexit660

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx655) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 unwind label %.loopexit661 ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252
  store ptr %i.jm, ptr %42, align 8, !tbaa !56
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx655
  store ptr %i.jn, ptr %i.gi, align 8, !tbaa !59
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i
  %.014.i = phi ptr [ %i.kc, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %i.jm, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 3 uses
  %.sroa.08.013.i = phi ptr [ %i.kb, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %.pre933, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 2 uses
  %i.jo = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !41 ; 5 uses
  store ptr %i.jo, ptr %.014.i, align 8, !tbaa !41
  %i.jp = load i64, ptr %i.jo, align 8            ; 3 uses
  %i.jq = lshr i64 %i.jp, 40
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = and i32 %i.jr, 1048575                  ; 3 uses
  %i.jt = icmp samesign ult i32 %i.js, 1048574
  br i1 %i.jt, label %bb.bj, label %bb.bk, !prof !47

bb.bj:                                            ; preds = %.lr.ph.i
  %i.ju = add nuw nsw i32 %i.js, 1
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 40
  %i.jx = and i64 %i.jp, -1152920405095219201
  %i.jy = or i64 %i.jw, %i.jx
  store i64 %i.jy, ptr %i.jo, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i

end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  %i.arj = and i64 %i.arf, -1152920405095219201
  %i.ark = or disjoint i64 %i.ari, %i.arj
  store i64 %i.ark, ptr %i.are, align 8
  %i.arl = icmp eq i64 %i.ari, 0
  br i1 %i.arl, label %bb.oa, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533, !prof !46

bb.oa:                                            ; preds = %bb.nz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.are)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533 unwind label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.arm = landingpad { ptr, i32 }
          catch ptr null
  %i.arn = extractvalue { ptr, i32 } %i.arm, 0
  call void @__clang_call_terminate(ptr %i.arn) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533: ; preds = %bb.oa, %bb.nz, %.lr.ph.i.i.i530
  %i.aro = getelementptr inbounds nuw i8, ptr %.05.i.i.i531, i64 8 ; 2 uses
  %.not.i.i.i534 = icmp eq ptr %i.aro, %i.ard
  br i1 %.not.i.i.i534, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535, label %.lr.ph.i.i.i530, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i533
  %.pr.i536 = load ptr, ptr %71, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528
  %i.arp = phi ptr [ %.pr.i536, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i535 ], [ %i.arc, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit528 ] ; 3 uses
  %.not.i.i1.i538 = icmp eq ptr %i.arp, null
  br i1 %.not.i.i1.i538, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540, label %bb.oc

bb.oc:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537
  %i.arq = load ptr, ptr %i.gm, align 8, !tbaa !59
  %i.arr = ptrtoint ptr %i.arq to i64
  %i.ars = ptrtoint ptr %i.arp to i64
  %i.art = sub i64 %i.arr, %i.ars
  call void @_ZdlPvm(ptr noundef nonnull %i.arp, i64 noundef %i.art) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i537, %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %bb.oe

bb.od:                                            ; preds = %.body458, %bb.ng, %bb.nf
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn, %.body458 ], [ %i.apz, %bb.ng ], [ %i.apy, %bb.nf ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %71) #23
  br label %.body445

.body445:                                         ; preds = %.loopexit662, %.loopexit.split-lp663, %bb.kl, %bb.kk, %bb.od
  %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.od ], [ %i.aic, %bb.kk ], [ %i.aic, %bb.kl ], [ %lpad.loopexit664, %.loopexit662 ], [ %lpad.loopexit.split-lp665, %.loopexit.split-lp663 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %bb.os

bb.oe:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344
  %.2160 = phi i32 [ 1, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344 ], [ %.0158, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432 ], [ %not.cond4, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540 ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440 ] ; 2 uses
  %.4143 = phi i64 [ %.1140920, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit344 ], [ %.1140920, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit432 ], [ %.2141, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit540 ], [ %.1140920, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440 ] ; 2 uses
  %i.aru = load ptr, ptr %46, align 8, !tbaa !41  ; 3 uses
  %i.arv = load i64, ptr %i.aru, align 8          ; 3 uses
  %i.arw = and i64 %i.arv, 1152920405095219200
  %.not.i.i541 = icmp eq i64 %i.arw, 1152920405095219200
  br i1 %.not.i.i541, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, label %bb.of, !prof !46

bb.of:                                            ; preds = %bb.oe
  %i.arx = add i64 %i.arv, 1152920405095219200
  %i.ary = and i64 %i.arx, 1152920405095219200    ; 2 uses
  %i.arz = and i64 %i.arv, -1152920405095219201
  %i.asa = or disjoint i64 %i.ary, %i.arz
  store i64 %i.asa, ptr %i.aru, align 8
  %i.asb = icmp eq i64 %i.ary, 0
  br i1 %i.asb, label %bb.og, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, !prof !46

bb.og:                                            ; preds = %bb.of
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aru)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542 unwind label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.asc = landingpad { ptr, i32 }
          catch ptr null
  %i.asd = extractvalue { ptr, i32 } %i.asc, 0
  call void @__clang_call_terminate(ptr %i.asd) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542: ; preds = %bb.oe, %bb.of, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.ase = load ptr, ptr %45, align 8, !tbaa !41  ; 3 uses
  %i.asf = load i64, ptr %i.ase, align 8          ; 3 uses
  %i.asg = and i64 %i.asf, 1152920405095219200
  %.not.i.i543 = icmp eq i64 %i.asg, 1152920405095219200
  br i1 %.not.i.i543, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, label %bb.oi, !prof !46

bb.oi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542
  %i.ash = add i64 %i.asf, 1152920405095219200
  %i.asi = and i64 %i.ash, 1152920405095219200    ; 2 uses
  %i.asj = and i64 %i.asf, -1152920405095219201
  %i.ask = or disjoint i64 %i.asi, %i.asj
  store i64 %i.ask, ptr %i.ase, align 8
  %i.asl = icmp eq i64 %i.asi, 0
  br i1 %i.asl, label %bb.oj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, !prof !46

bb.oj:                                            ; preds = %bb.oi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ase)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544 unwind label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.asm = landingpad { ptr, i32 }
          catch ptr null
  %i.asn = extractvalue { ptr, i32 } %i.asm, 0
  call void @__clang_call_terminate(ptr %i.asn) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit542, %bb.oi, %bb.oj
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.aso = load ptr, ptr %43, align 8, !tbaa !41  ; 3 uses
  %i.asp = load i64, ptr %i.aso, align 8          ; 3 uses
  %i.asq = and i64 %i.asp, 1152920405095219200
  %.not.i.i545 = icmp eq i64 %i.asq, 1152920405095219200
  br i1 %.not.i.i545, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546, label %bb.ol, !prof !46

bb.ol:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544
  %i.asr = add i64 %i.asp, 1152920405095219200
  %i.ass = and i64 %i.asr, 1152920405095219200    ; 2 uses
  %i.ast = and i64 %i.asp, -1152920405095219201
  %i.asu = or disjoint i64 %i.ass, %i.ast
  store i64 %i.asu, ptr %i.aso, align 8
  %i.asv = icmp eq i64 %i.ass, 0
  br i1 %i.asv, label %bb.om, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546, !prof !46

bb.om:                                            ; preds = %bb.ol
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aso)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 unwind label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.asw = landingpad { ptr, i32 }
          catch ptr null
  %i.asx = extractvalue { ptr, i32 } %i.asw, 0
  call void @__clang_call_terminate(ptr %i.asx) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, %bb.ol, %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  %i.asy = load ptr, ptr %42, align 8, !tbaa !56  ; 3 uses
  %i.asz = load ptr, ptr %i.gj, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i547 = icmp eq ptr %i.asy, %i.asz
  br i1 %.not4.i.i.i547, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555, label %.lr.ph.i.i.i548

.lr.ph.i.i.i548:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551
  %.05.i.i.i549 = phi ptr [ %i.atk, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551 ], [ %i.asy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 ] ; 2 uses
  %i.ata = load ptr, ptr %.05.i.i.i549, align 8, !tbaa !41 ; 3 uses
  %i.atb = load i64, ptr %i.ata, align 8          ; 3 uses
  %i.atc = and i64 %i.atb, 1152920405095219200
  %.not.i.i.i.i.i.i550 = icmp eq i64 %i.atc, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i550, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551, label %bb.oo, !prof !46

bb.oo:                                            ; preds = %.lr.ph.i.i.i548
  %i.atd = add i64 %i.atb, 1152920405095219200
  %i.ate = and i64 %i.atd, 1152920405095219200    ; 2 uses
  %i.atf = and i64 %i.atb, -1152920405095219201
  %i.atg = or disjoint i64 %i.ate, %i.atf
  store i64 %i.atg, ptr %i.ata, align 8
  %i.ath = icmp eq i64 %i.ate, 0
  br i1 %i.ath, label %bb.op, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551, !prof !46

bb.op:                                            ; preds = %bb.oo
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ata)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551 unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.ati = landingpad { ptr, i32 }
          catch ptr null
  %i.atj = extractvalue { ptr, i32 } %i.ati, 0
  call void @__clang_call_terminate(ptr %i.atj) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551: ; preds = %bb.op, %bb.oo, %.lr.ph.i.i.i548
  %i.atk = getelementptr inbounds nuw i8, ptr %.05.i.i.i549, i64 8 ; 2 uses
  %.not.i.i.i552 = icmp eq ptr %i.atk, %i.asz
  br i1 %.not.i.i.i552, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553, label %.lr.ph.i.i.i548, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551
  %.pr.i554 = load ptr, ptr %42, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546
  %i.atl = phi ptr [ %.pr.i554, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553 ], [ %i.asy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 ] ; 3 uses
  %.not.i.i1.i556 = icmp eq ptr %i.atl, null
  br i1 %.not.i.i1.i556, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558, label %bb.or

bb.or:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555
  %i.atm = load ptr, ptr %i.gi, align 8, !tbaa !59
  %i.atn = ptrtoint ptr %i.atm to i64
  %i.ato = ptrtoint ptr %i.atl to i64
  %i.atp = sub i64 %i.atn, %i.ato
  call void @_ZdlPvm(ptr noundef nonnull %i.atl, i64 noundef %i.atp) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555, %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  %cond3 = icmp eq i32 %.2160, 0
  br i1 %cond3, label %bb.ou, label %._crit_edge.loopexit

bb.os:                                            ; preds = %.body445, %bb.ne, %bb.jt, %bb.iz, %.body286, %bb.fk, %bb.fh
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn, %.body286 ], [ %.pn195.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jt ], [ %.pn183.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body445 ], [ %.pn181, %bb.ne ], [ %i.uv, %bb.fh ], [ %.pn179, %bb.iz ], [ %.pn177, %bb.fk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #23
  br label %.body269

.body269:                                         ; preds = %bb.fg, %bb.ch, %bb.os
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn, %bb.os ], [ %i.uu, %bb.fg ], [ %.pn.i267, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #23
  br label %.body265

.body265:                                         ; preds = %bb.ff, %bb.cc, %.body269
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body269 ], [ %i.ut, %bb.ff ], [ %.pn.i, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #23
  br label %bb.ot

bb.ot:                                            ; preds = %.body265, %bb.fe, %bb.fd
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body265 ], [ %i.us, %bb.fe ], [ %i.ur, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #23
  br label %.body257

.body257:                                         ; preds = %bb.br, %.body599, %bb.ot
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ot ], [ %eh.lpad-body600, %.body599 ], [ %eh.lpad-body600, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #23
  br label %bb.pc

bb.ou:                                            ; preds = %bb.bg, %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558
  %.5144 = phi i64 [ %.1140920, %.lr.ph ], [ %.1140920, %bb.bg ], [ %.4143, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558 ] ; 2 uses
  %i.atq = add i64 %.0163916, 1                   ; 2 uses
  %.not176 = icmp ugt i64 %i.atq, %i.is
  br i1 %.not176, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !480

._crit_edge.loopexit:                             ; preds = %bb.ou, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558
  %.3161.ph = phi i32 [ %.2160, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558 ], [ 5, %bb.ou ]
  %.6145.ph = phi i64 [ %.4143, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558 ], [ %.5144, %bb.ou ]
  %82 = icmp eq i32 %.3161.ph, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %.3161 = phi i1 [ true, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ %82, %._crit_edge.loopexit ] ; 2 uses
  %.6145 = phi i64 [ %.0139925, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ %.6145.ph, %._crit_edge.loopexit ]
  %i.atr = load ptr, ptr %40, align 8, !tbaa !41  ; 3 uses
  %i.ats = load i64, ptr %i.atr, align 8          ; 3 uses
  %i.att = and i64 %i.ats, 1152920405095219200
  %.not.i.i559 = icmp eq i64 %i.att, 1152920405095219200
  br i1 %.not.i.i559, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, label %bb.ov, !prof !46

bb.ov:                                            ; preds = %._crit_edge
  %i.atu = add i64 %i.ats, 1152920405095219200
  %i.atv = and i64 %i.atu, 1152920405095219200    ; 2 uses
  %i.atw = and i64 %i.ats, -1152920405095219201
  %i.atx = or disjoint i64 %i.atv, %i.atw
  store i64 %i.atx, ptr %i.atr, align 8
  %i.aty = icmp eq i64 %i.atv, 0
  br i1 %i.aty, label %bb.ow, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, !prof !46

bb.ow:                                            ; preds = %bb.ov
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.atr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 unwind label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.atz = landingpad { ptr, i32 }
          catch ptr null
  %i.aua = extractvalue { ptr, i32 } %i.atz, 0
  call void @__clang_call_terminate(ptr %i.aua) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560: ; preds = %._crit_edge, %bb.ov, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  %i.aub = load ptr, ptr %39, align 8, !tbaa !56  ; 3 uses
  %i.auc = load ptr, ptr %i.gg, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i561 = icmp eq ptr %i.aub, %i.auc
  br i1 %.not4.i.i.i561, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569, label %.lr.ph.i.i.i562

.lr.ph.i.i.i562:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565
  %.05.i.i.i563 = phi ptr [ %i.aun, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565 ], [ %i.aub, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 ] ; 2 uses
  %i.aud = load ptr, ptr %.05.i.i.i563, align 8, !tbaa !41 ; 3 uses
  %i.aue = load i64, ptr %i.aud, align 8          ; 3 uses
  %i.auf = and i64 %i.aue, 1152920405095219200
  %.not.i.i.i.i.i.i564 = icmp eq i64 %i.auf, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i564, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565, label %bb.oy, !prof !46

bb.oy:                                            ; preds = %.lr.ph.i.i.i562
  %i.aug = add i64 %i.aue, 1152920405095219200
  %i.auh = and i64 %i.aug, 1152920405095219200    ; 2 uses
  %i.aui = and i64 %i.aue, -1152920405095219201
  %i.auj = or disjoint i64 %i.auh, %i.aui
  store i64 %i.auj, ptr %i.aud, align 8
  %i.auk = icmp eq i64 %i.auh, 0
  br i1 %i.auk, label %bb.oz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565, !prof !46

bb.oz:                                            ; preds = %bb.oy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aud)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565 unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.aul = landingpad { ptr, i32 }
          catch ptr null
  %i.aum = extractvalue { ptr, i32 } %i.aul, 0
  call void @__clang_call_terminate(ptr %i.aum) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565: ; preds = %bb.oz, %bb.oy, %.lr.ph.i.i.i562
  %i.aun = getelementptr inbounds nuw i8, ptr %.05.i.i.i563, i64 8 ; 2 uses
  %.not.i.i.i566 = icmp eq ptr %i.aun, %i.auc
  br i1 %.not.i.i.i566, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567, label %.lr.ph.i.i.i562, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565
  %.pr.i568 = load ptr, ptr %39, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560
  %i.auo = phi ptr [ %.pr.i568, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567 ], [ %i.aub, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 ] ; 3 uses
  %.not.i.i1.i570 = icmp eq ptr %i.auo, null
  br i1 %.not.i.i1.i570, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572, label %bb.pb

bb.pb:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569
  %i.aup = load ptr, ptr %i.gf, align 8, !tbaa !59
  %i.auq = ptrtoint ptr %i.aup to i64
  %i.aur = ptrtoint ptr %i.auo to i64
  %i.aus = sub i64 %i.auq, %i.aur
  call void @_ZdlPvm(ptr noundef nonnull %i.auo, i64 noundef %i.aus) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %83 = add i64 %.0157924, 1                      ; 2 uses
  %.not175 = icmp ule i64 %83, %i.ge
  %or.cond1063.not = select i1 %.3161, i1 %.not175, i1 false
  br i1 %or.cond1063.not, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i, label %bb.pd, !llvm.loop !481

bb.pc:                                            ; preds = %.body257, %bb.be, %bb.bd
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body257 ], [ %i.iu, %bb.be ], [ %i.it, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #23
  br label %.body

.body:                                            ; preds = %bb.au, %bb.at, %bb.pc
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pc ], [ %lpad.loopexit689, %bb.at ], [ %lpad.loopexit689, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #23
  br label %bb.pp

bb.pd:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572
  %i.aut = load ptr, ptr %37, align 8, !tbaa !64  ; 3 uses
  %i.auu = load i64, ptr %i.aut, align 8          ; 3 uses
  %i.auv = and i64 %i.auu, 1152920405095219200
  %.not.i.i573 = icmp eq i64 %i.auv, 1152920405095219200
  br i1 %.not.i.i573, label %_ZN4cvc58internal8TypeNodeD2Ev.exit574, label %bb.pe, !prof !46

bb.pe:                                            ; preds = %bb.pd
  %i.auw = add i64 %i.auu, 1152920405095219200
  %i.aux = and i64 %i.auw, 1152920405095219200    ; 2 uses
  %i.auy = and i64 %i.auu, -1152920405095219201
  %i.auz = or disjoint i64 %i.aux, %i.auy
  store i64 %i.auz, ptr %i.aut, align 8
  %i.ava = icmp eq i64 %i.aux, 0
  br i1 %i.ava, label %bb.pf, label %_ZN4cvc58internal8TypeNodeD2Ev.exit574, !prof !46

bb.pf:                                            ; preds = %bb.pe
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aut)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit574 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.avb = landingpad { ptr, i32 }
          catch ptr null
  %i.avc = extractvalue { ptr, i32 } %i.avb, 0
  call void @__clang_call_terminate(ptr %i.avc) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit574:           ; preds = %bb.pd, %bb.pe, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %i.avd = load ptr, ptr %34, align 8, !tbaa !56  ; 3 uses
  %i.ave = load ptr, ptr %i.gh, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i575 = icmp eq ptr %i.avd, %i.ave
  br i1 %.not4.i.i.i575, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583, label %.lr.ph.i.i.i576

.lr.ph.i.i.i576:                                  ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit574, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579
  %.05.i.i.i577 = phi ptr [ %i.avp, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579 ], [ %i.avd, %_ZN4cvc58internal8TypeNodeD2Ev.exit574 ] ; 2 uses
  %i.avf = load ptr, ptr %.05.i.i.i577, align 8, !tbaa !41 ; 3 uses
  %i.avg = load i64, ptr %i.avf, align 8          ; 3 uses
  %i.avh = and i64 %i.avg, 1152920405095219200
  %.not.i.i.i.i.i.i578 = icmp eq i64 %i.avh, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i578, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579, label %bb.ph, !prof !46

bb.ph:                                            ; preds = %.lr.ph.i.i.i576
  %i.avi = add i64 %i.avg, 1152920405095219200
  %i.avj = and i64 %i.avi, 1152920405095219200    ; 2 uses
  %i.avk = and i64 %i.avg, -1152920405095219201
  %i.avl = or disjoint i64 %i.avj, %i.avk
  store i64 %i.avl, ptr %i.avf, align 8
  %i.avm = icmp eq i64 %i.avj, 0
  br i1 %i.avm, label %bb.pi, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579, !prof !46

bb.pi:                                            ; preds = %bb.ph
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avf)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579 unwind label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.avn = landingpad { ptr, i32 }
          catch ptr null
  %i.avo = extractvalue { ptr, i32 } %i.avn, 0
  call void @__clang_call_terminate(ptr %i.avo) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579: ; preds = %bb.pi, %bb.ph, %.lr.ph.i.i.i576
  %i.avp = getelementptr inbounds nuw i8, ptr %.05.i.i.i577, i64 8 ; 2 uses
  %.not.i.i.i580 = icmp eq ptr %i.avp, %i.ave
  br i1 %.not.i.i.i580, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581, label %.lr.ph.i.i.i576, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579
  %.pr.i582 = load ptr, ptr %34, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581, %_ZN4cvc58internal8TypeNodeD2Ev.exit574
  %i.avq = phi ptr [ %.pr.i582, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581 ], [ %i.avd, %_ZN4cvc58internal8TypeNodeD2Ev.exit574 ] ; 3 uses
  %.not.i.i1.i584 = icmp eq ptr %i.avq, null
  br i1 %.not.i.i1.i584, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586, label %bb.pk

bb.pk:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583
  %i.avr = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !59
  %i.avt = ptrtoint ptr %i.avs to i64
  %i.avu = ptrtoint ptr %i.avq to i64
  %i.avv = sub i64 %i.avt, %i.avu
  call void @_ZdlPvm(ptr noundef nonnull %i.avq, i64 noundef %i.avv) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  %i.avw = load ptr, ptr %33, align 8, !tbaa !56  ; 3 uses
  %i.avx = load ptr, ptr %i.fy, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i587 = icmp eq ptr %i.avw, %i.avx
  br i1 %.not4.i.i.i587, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595, label %.lr.ph.i.i.i588

.lr.ph.i.i.i588:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591
  %.05.i.i.i589 = phi ptr [ %i.awi, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591 ], [ %i.avw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586 ] ; 2 uses
  %i.avy = load ptr, ptr %.05.i.i.i589, align 8, !tbaa !41 ; 3 uses
  %i.avz = load i64, ptr %i.avy, align 8          ; 3 uses
  %i.awa = and i64 %i.avz, 1152920405095219200
  %.not.i.i.i.i.i.i590 = icmp eq i64 %i.awa, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i590, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591, label %bb.pl, !prof !46

bb.pl:                                            ; preds = %.lr.ph.i.i.i588
  %i.awb = add i64 %i.avz, 1152920405095219200
  %i.awc = and i64 %i.awb, 1152920405095219200    ; 2 uses
  %i.awd = and i64 %i.avz, -1152920405095219201
  %i.awe = or disjoint i64 %i.awc, %i.awd
  store i64 %i.awe, ptr %i.avy, align 8
  %i.awf = icmp eq i64 %i.awc, 0
  br i1 %i.awf, label %bb.pm, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591, !prof !46

bb.pm:                                            ; preds = %bb.pl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591 unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.awg = landingpad { ptr, i32 }
          catch ptr null
  %i.awh = extractvalue { ptr, i32 } %i.awg, 0
  call void @__clang_call_terminate(ptr %i.awh) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591: ; preds = %bb.pm, %bb.pl, %.lr.ph.i.i.i588
  %i.awi = getelementptr inbounds nuw i8, ptr %.05.i.i.i589, i64 8 ; 2 uses
  %.not.i.i.i592 = icmp eq ptr %i.awi, %i.avx
  br i1 %.not.i.i.i592, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593, label %.lr.ph.i.i.i588, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591
  %.pr.i594 = load ptr, ptr %33, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586
  %i.awj = phi ptr [ %.pr.i594, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593 ], [ %i.avw, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586 ] ; 3 uses
  %.not.i.i1.i596 = icmp eq ptr %i.awj, null
  br i1 %.not.i.i1.i596, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598, label %bb.po

bb.po:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595
  %i.awk = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !59
  %i.awm = ptrtoint ptr %i.awl to i64
  %i.awn = ptrtoint ptr %i.awj to i64
  %i.awo = sub i64 %i.awm, %i.awn
  call void @_ZdlPvm(ptr noundef nonnull %i.awj, i64 noundef %i.awo) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br i1 %.3161, label %bb.pr, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.pp:                                            ; preds = %.body, %bb.as
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn173, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %bb.pq

bb.pq:                                            ; preds = %bb.pp, %bb.ap, %bb.ao, %bb.an
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pp ], [ %i.hd, %bb.ap ], [ %i.hb, %bb.an ], [ %i.hc, %bb.ao ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.pv

bb.pr:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit229
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.awp = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !41, !noalias !506 ; 5 uses
  store ptr %i.awp, ptr %0, align 8, !tbaa !41, !alias.scope !506
  %i.awq = load i64, ptr %i.awp, align 8, !noalias !506 ; 3 uses
  %i.awr = lshr i64 %i.awq, 40
  %i.aws = trunc nuw nsw i64 %i.awr to i32
  %i.awt = and i32 %i.aws, 1048575                ; 3 uses
  %i.awu = icmp samesign ult i32 %i.awt, 1048574
  br i1 %i.awu, label %bb.ps, label %bb.pt, !prof !47

bb.ps:                                            ; preds = %bb.pr
  %i.awv = add nuw nsw i32 %i.awt, 1
  %i.aww = zext nneg i32 %i.awv to i64
  %i.awx = shl nuw nsw i64 %i.aww, 40
  %i.awy = and i64 %i.awq, -1152920405095219201
  %i.awz = or i64 %i.awx, %i.awy
  store i64 %i.awz, ptr %i.awp, align 8, !noalias !506
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.pt:                                            ; preds = %bb.pr
  %i.axa = icmp eq i32 %i.awt, 1048574
  br i1 %i.axa, label %bb.pu, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !46

bb.pu:                                            ; preds = %bb.pt
  %i.axb = or i64 %i.awq, 1152920405095219200
  store i64 %i.axb, ptr %i.awp, align 8, !noalias !506
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awp), !noalias !506
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.pu, %bb.pt, %bb.ps, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598
  ret void

bb.pv:                                            ; preds = %bb.pq, %bb.am
  %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.pq ], [ %i.ha, %bb.am ]
  resume { ptr, i32 } %.pn207.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory7strings17SequencesRewriter26rewriteViaStrIndexofReEvalERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.6", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::Rational", align 8 ; 12 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::String", align 8 ; 11 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %11 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %12 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::Integer", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %15 = alloca %"class.cvc5::internal::String", align 8 ; 9 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %18 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %i.e = icmp eq i64 %i.d, 329
  br i1 %i.e, label %bb.b, label %.critedge84.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 329), !noalias !521
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = zext i1 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40, !noalias !521 ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !41, !alias.scope !521
  %i.l = load i64, ptr %i.k, align 8, !noalias !521 ; 3 uses
  %i.m = lshr i64 %i.l, 40
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 1048575                    ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 1048574
  br i1 %i.p, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = and i64 %i.l, -1152920405095219201
  %i.u = or i64 %i.s, %i.t
  store i64 %i.u, ptr %i.k, align 8, !noalias !521
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %i.o, 1048574
  br i1 %i.v, label %bb.e, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.w = or i64 %i.l, 1152920405095219200
  store i64 %i.w, ptr %i.k, align 8, !noalias !521
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !521
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.c, %bb.d, %bb.e
  %i.x = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.ax

bb.f:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  br i1 %i.x, label %bb.g, label %.critedge82.thread151

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.y = load ptr, ptr %2, align 8, !tbaa !41, !noalias !522 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !522
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1023                     ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1023
  %i.ae = select i1 %i.ad, i32 -1, i32 %i.ac
  %i.af = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ae)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.g
  %i.ag = icmp eq i32 %i.af, 2
  %spec.select.i.i = select i1 %i.ag, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %spec.select.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40, !noalias !522 ; 5 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !41, !alias.scope !522
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !522 ; 3 uses
  %i.al = lshr i64 %i.ak, 40
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 1048575                  ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, 1048574
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %.noexc
  %i.ap = add nuw nsw i32 %i.an, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 40
  %i.as = and i64 %i.ak, -1152920405095219201
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aj, align 8, !noalias !522
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86

bb.i:                                             ; preds = %.noexc
  %i.au = icmp eq i32 %i.an, 1048574
  br i1 %i.au, label %bb.j, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.av = or i64 %i.ak, 1152920405095219200
  store i64 %i.av, ptr %i.aj, align 8, !noalias !522
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86 unwind label %bb.ay

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86: ; preds = %bb.i, %bb.h, %bb.j
  %i.aw = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.az

bb.k:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit86
  br i1 %i.aw, label %bb.l, label %.critedge80

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.ax = load ptr, ptr %2, align 8, !tbaa !41, !noalias !523 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !523
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1023
  %i.bd = select i1 %i.bc, i32 -1, i32 %i.bb
  %i.be = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bd)
          to label %.noexc88 unwind label %bb.ba

.noexc88:                                         ; preds = %bb.l
  %i.bf = icmp eq i32 %i.be, 2
  %spec.select.i.i87 = select i1 %i.bf, i64 2, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %spec.select.i.i87
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40, !noalias !523 ; 9 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !41, !alias.scope !523
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !523 ; 3 uses
  %i.bk = lshr i64 %i.bj, 40
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1048575                  ; 3 uses
  %i.bn = icmp samesign ult i32 %i.bm, 1048574
  br i1 %i.bn, label %bb.m, label %bb.n, !prof !47
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!246 = distinct !{!246, !245, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tE: argument 0"}
!247 = distinct !{!247, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!248 = distinct !{!248, !247, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!249 = distinct !{!249, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!250 = distinct !{!250, !249, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!251 = !{!228}
!252 = !{!230}
!253 = !{!232}
!254 = !{!234}
!255 = !{!236}
!256 = !{!238}
!257 = !{!240}
!258 = !{!242}
!259 = !{!244}
!260 = !{!246}
!261 = !{!248}
!262 = !{!250}
!263 = distinct !{!263, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!264 = distinct !{!264, !263, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!265 = distinct !{!265, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!266 = distinct !{!266, !265, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!267 = distinct !{!267, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!268 = distinct !{!268, !267, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!269 = distinct !{!269, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!270 = distinct !{!270, !269, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!271 = distinct !{!271, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!272 = distinct !{!272, !271, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!273 = !{!264}
!274 = !{!266}
!275 = !{!268}
!276 = !{!270}
!277 = !{!272}
!278 = distinct !{!278, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!279 = distinct !{!279, !278, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!280 = distinct !{!280, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!281 = distinct !{!281, !280, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!282 = distinct !{!282, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!283 = distinct !{!283, !282, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!284 = distinct !{!284, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!285 = distinct !{!285, !284, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!286 = distinct !{!286, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!287 = distinct !{!287, !286, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!288 = distinct !{!288, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!289 = distinct !{!289, !288, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!290 = distinct !{!290, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!291 = distinct !{!291, !290, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!292 = distinct !{!292, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!293 = distinct !{!293, !292, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!294 = distinct !{!294, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!295 = distinct !{!295, !294, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!296 = distinct !{!296, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!297 = distinct !{!297, !296, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!298 = distinct !{!298, !58}
!299 = distinct !{!299, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!300 = distinct !{!300, !299, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!301 = !{!279}
!302 = !{!281}
!303 = !{!283}
!304 = !{!285}
!305 = !{!287}
!306 = !{!289}
!307 = !{!291}
!308 = !{!293}
!309 = !{!295}
!310 = !{!297}
!311 = !{!300}
!312 = distinct !{!312, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!313 = distinct !{!313, !312, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!314 = distinct !{!314, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!315 = distinct !{!315, !314, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!316 = distinct !{!316, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!317 = distinct !{!317, !316, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!318 = distinct !{!318, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!319 = distinct !{!319, !318, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!320 = distinct !{!320, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!321 = distinct !{!321, !320, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!322 = distinct !{!322, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!323 = distinct !{!323, !322, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!324 = distinct !{!324, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!325 = distinct !{!325, !324, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!326 = distinct !{!326, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!327 = distinct !{!327, !326, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!328 = distinct !{!328, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!329 = distinct !{!329, !328, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!330 = distinct !{!330, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!331 = distinct !{!331, !330, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!332 = !{!313}
!333 = !{!315}
!334 = !{!317}
!335 = !{!319}
!336 = !{!321}
!337 = !{!323}
!338 = !{!325}
!339 = !{!327}
!340 = !{!329}
!341 = !{!331}
!342 = distinct !{!342, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!343 = distinct !{!343, !342, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!344 = distinct !{!344, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!345 = distinct !{!345, !344, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!346 = distinct !{!346, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!347 = distinct !{!347, !346, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!348 = distinct !{!348, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv"}
!349 = distinct !{!349, !348, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv: argument 0"}
!350 = distinct !{!350, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!351 = distinct !{!351, !350, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!352 = distinct !{!352, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!353 = distinct !{!353, !352, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!354 = distinct !{!354, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!355 = distinct !{!355, !354, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!356 = distinct !{!356, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!357 = distinct !{!357, !356, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!358 = distinct !{!358, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!359 = distinct !{!359, !358, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!360 = !{!343}
!361 = !{!345}
!362 = !{!347}
!363 = !{!349}
!364 = !{!351}
!365 = !{!353}
!366 = !{!355}
!367 = !{!357}
!368 = !{!359}
!369 = distinct !{!369, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!370 = distinct !{!370, !369, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!371 = distinct !{!371, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!372 = distinct !{!372, !371, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!373 = distinct !{!373, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!374 = distinct !{!374, !373, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!375 = distinct !{!375, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!376 = distinct !{!376, !375, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!377 = distinct !{!377, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!378 = distinct !{!378, !377, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!379 = distinct !{!379, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!380 = distinct !{!380, !379, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!381 = distinct !{!381, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv"}
!382 = distinct !{!382, !381, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv: argument 0"}
!383 = distinct !{!383, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!384 = distinct !{!384, !383, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!385 = distinct !{!385, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!386 = distinct !{!386, !385, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!387 = distinct !{!387, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!388 = distinct !{!388, !387, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!389 = distinct !{!389, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!390 = distinct !{!390, !389, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!391 = distinct !{!391, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!392 = distinct !{!392, !391, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!393 = !{!370}
!394 = !{!372}
!395 = !{!374}
!396 = !{!376}
!397 = !{!378}
!398 = !{!380}
!399 = !{!382}
!400 = !{!384}
!401 = !{!386}
!402 = !{!388}
!403 = !{!390}
!404 = !{!392}
!405 = distinct !{!405, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!406 = distinct !{!406, !405, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!407 = !{!406}
!408 = distinct !{!408, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!409 = distinct !{!409, !408, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!410 = distinct !{!410, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!411 = distinct !{!411, !410, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!412 = distinct !{!412, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!413 = distinct !{!413, !412, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!414 = distinct !{!414, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!415 = distinct !{!415, !414, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!416 = distinct !{!416, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!417 = distinct !{!417, !416, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!418 = distinct !{!418, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!419 = distinct !{!419, !418, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!420 = distinct !{!420, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!421 = distinct !{!421, !420, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!422 = distinct !{!422, !"_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE"}
!423 = distinct !{!423, !422, !"_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE: argument 0"}
!424 = distinct !{!424, !58}
!425 = distinct !{!425, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!426 = distinct !{!426, !425, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!427 = !{!409}
!428 = !{!411}
!429 = !{!413}
!430 = !{!415}
!431 = !{!417}
!432 = !{!419}
!433 = !{!421, !419}
!434 = !{!423}
!435 = !{!426}
!436 = distinct !{!436, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!437 = distinct !{!437, !436, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!438 = distinct !{!438, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!439 = distinct !{!439, !438, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!440 = distinct !{!440, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!441 = distinct !{!441, !440, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!442 = distinct !{!442, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!443 = distinct !{!443, !442, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!444 = distinct !{!444, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!445 = distinct !{!445, !444, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!446 = distinct !{!446, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!447 = distinct !{!447, !446, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!448 = distinct !{!448, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!449 = distinct !{!449, !448, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!450 = distinct !{!450, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!451 = distinct !{!451, !450, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!452 = distinct !{!452, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!453 = distinct !{!453, !452, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!454 = distinct !{!454, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!455 = distinct !{!455, !454, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!456 = distinct !{!456, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!457 = distinct !{!457, !456, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!458 = distinct !{!458, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE"}
!459 = distinct !{!459, !458, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE: argument 0"}
!460 = distinct !{!460, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!461 = distinct !{!461, !460, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!462 = distinct !{!462, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!463 = distinct !{!463, !462, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!464 = distinct !{!464, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!465 = distinct !{!465, !464, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!466 = distinct !{!466, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!467 = distinct !{!467, !466, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!468 = distinct !{!468, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE"}
!469 = distinct !{!469, !468, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE: argument 0"}
!470 = distinct !{!470, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!471 = distinct !{!471, !470, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!472 = distinct !{!472, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!473 = distinct !{!473, !472, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!474 = distinct !{!474, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE"}
!475 = distinct !{!475, !474, !"_ZNK4cvc58internal12NodeTemplateILb1EE6eqNodeILb1EEES2_RKNS1_IXT_EEE: argument 0"}
!476 = distinct !{!476, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!477 = distinct !{!477, !476, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!478 = distinct !{!478, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE"}
!479 = distinct !{!479, !478, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE: argument 0"}
!480 = distinct !{!480, !58}
!481 = distinct !{!481, !58}
!482 = distinct !{!482, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!483 = distinct !{!483, !482, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!484 = !{!437}
!485 = !{!439}
!486 = !{!441}
!487 = !{!443}
!488 = !{!445}
!489 = !{!447}
!490 = !{!449}
!491 = !{!451}
!492 = !{!453, !451}
!493 = !{!455}
!494 = !{!457, !455}
!495 = !{!459}
!496 = !{!461}
!497 = !{!463, !461}
!498 = !{!465}
!499 = !{!467, !465}
!500 = !{!469}
!501 = !{!471}
!502 = !{!473, !471}
!503 = !{!475}
!504 = !{!477, !475}
!505 = !{!479}
!506 = !{!483}
!507 = distinct !{!507, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!508 = distinct !{!508, !507, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!509 = distinct !{!509, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!510 = distinct !{!510, !509, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!511 = distinct !{!511, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!512 = distinct !{!512, !511, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!513 = distinct !{!513, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!514 = distinct !{!514, !513, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!515 = distinct !{!515, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!516 = distinct !{!516, !515, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!517 = distinct !{!517, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!518 = distinct !{!518, !517, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!519 = distinct !{!519, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!520 = distinct !{!520, !519, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!521 = !{!508}
!522 = !{!510}
!523 = !{!512}
!524 = !{!514}
!525 = !{!516}
!526 = !{!518}
!527 = !{!520}
!528 = distinct !{!528, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!529 = distinct !{!529, !528, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!530 = distinct !{!530, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!531 = distinct !{!531, !530, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!532 = distinct !{!532, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!533 = distinct !{!533, !532, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!534 = distinct !{!534, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!535 = distinct !{!535, !534, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!536 = distinct !{!536, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!537 = distinct !{!537, !536, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!538 = distinct !{!538, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!539 = distinct !{!539, !538, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!540 = distinct !{!540, !"_ZN4cvc58internal11NodeManager6mkNodeILm3EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE"}
!541 = distinct !{!541, !540, !"_ZN4cvc58internal11NodeManager6mkNodeILm3EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE: argument 0"}
!542 = distinct !{!542, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!543 = distinct !{!543, !542, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!544 = distinct !{!544, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!545 = distinct !{!545, !544, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!546 = !{!529}
!547 = !{!531}
!548 = !{!533}
!549 = !{!535}
!550 = !{!537}
!551 = !{!539}
!552 = !{!541}
!553 = !{!543}
!554 = !{!545}
!555 = distinct !{!555, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!556 = distinct !{!556, !555, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!557 = distinct !{!557, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!558 = distinct !{!558, !557, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!559 = distinct !{!559, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!560 = distinct !{!560, !559, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!561 = distinct !{!561, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!562 = distinct !{!562, !561, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!563 = distinct !{!563, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!564 = distinct !{!564, !563, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!565 = distinct !{!565, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!566 = distinct !{!566, !565, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!567 = distinct !{!567, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!568 = distinct !{!568, !567, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!569 = distinct !{!569, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!570 = distinct !{!570, !569, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!571 = distinct !{!571, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!572 = distinct !{!572, !571, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!573 = distinct !{!573, !58}
!574 = distinct !{!574, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!575 = distinct !{!575, !574, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!576 = !{!556}
!577 = !{!558}
!578 = !{!560}
!579 = !{!562}
!580 = !{!564}
!581 = !{!566}
!582 = !{!568}
!583 = !{!570}
!584 = !{!572}
!585 = !{!575}
!586 = distinct !{!586, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!587 = distinct !{!587, !586, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!588 = distinct !{!588, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!589 = distinct !{!589, !588, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!590 = distinct !{!590, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!591 = distinct !{!591, !590, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!592 = distinct !{!592, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!593 = distinct !{!593, !592, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!594 = !{!587}
!595 = !{!589}
!596 = !{!591}
!597 = !{!593}
!598 = distinct !{!598, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!599 = distinct !{!599, !598, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!600 = distinct !{!600, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!601 = distinct !{!601, !600, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!602 = distinct !{!602, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!603 = distinct !{!603, !602, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!604 = distinct !{!604, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!605 = distinct !{!605, !604, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!606 = distinct !{!606, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!607 = distinct !{!607, !606, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!608 = distinct !{!608, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!609 = distinct !{!609, !608, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!610 = distinct !{!610, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!611 = distinct !{!611, !610, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!612 = distinct !{!612, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!613 = distinct !{!613, !612, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!614 = distinct !{!614, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!615 = distinct !{!615, !614, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!616 = distinct !{!616, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!617 = distinct !{!617, !616, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!618 = distinct !{!618, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!619 = distinct !{!619, !618, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!620 = distinct !{!620, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!621 = distinct !{!621, !620, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!622 = distinct !{!622, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!623 = distinct !{!623, !622, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!624 = distinct !{!624, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!625 = distinct !{!625, !624, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!626 = distinct !{!626, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!627 = distinct !{!627, !626, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!628 = distinct !{!628, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!629 = distinct !{!629, !628, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!630 = distinct !{!630, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!631 = distinct !{!631, !630, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!632 = distinct !{!632, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!633 = distinct !{!633, !632, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!634 = distinct !{!634, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!635 = distinct !{!635, !634, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!636 = distinct !{!636, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!637 = distinct !{!637, !636, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!638 = distinct !{!638, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE"}
!639 = distinct !{!639, !638, !"_ZN4cvc58internal11NodeManager6mkNodeILm2EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERAT__KNS3_ILb0EEE: argument 0"}
!640 = distinct !{!640, !58}
!641 = distinct !{!641, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!642 = distinct !{!642, !641, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!643 = !{!599}
!644 = !{!601}
!645 = !{!603}
!646 = !{!605}
!647 = !{!607}
!648 = !{!609}
!649 = !{!611}
!650 = !{!613}
!651 = !{!615}
!652 = !{!617}
!653 = !{!619}
!654 = !{!621}
!655 = !{!623}
!656 = !{!625}
!657 = !{!627}
!658 = !{!629}
!659 = !{!631}
!660 = !{!633}
!661 = !{!635}
!662 = !{!637}
!663 = !{!639}
!664 = !{!642}
!665 = distinct !{!665, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!666 = distinct !{!666, !665, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!667 = distinct !{!667, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!668 = distinct !{!668, !667, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!669 = distinct !{!669, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!670 = distinct !{!670, !669, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!671 = distinct !{!671, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!672 = distinct !{!672, !671, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!673 = distinct !{!673, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!674 = distinct !{!674, !673, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!675 = distinct !{!675, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!676 = distinct !{!676, !675, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!677 = distinct !{!677, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!678 = distinct !{!678, !677, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!679 = distinct !{!679, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!680 = distinct !{!680, !679, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!681 = distinct !{!681, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!682 = distinct !{!682, !681, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!683 = distinct !{!683, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!684 = distinct !{!684, !683, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!685 = distinct !{!685, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_"}
!686 = distinct !{!686, !685, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_: argument 0"}
!687 = distinct !{!687, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!688 = distinct !{!688, !687, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!689 = distinct !{!689, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!690 = distinct !{!690, !689, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!691 = distinct !{!691, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_S5_"}
!692 = distinct !{!692, !691, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_S5_: argument 0"}
!693 = distinct !{!693, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!694 = distinct !{!694, !693, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!695 = distinct !{!695, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!696 = distinct !{!696, !695, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!697 = distinct !{!697, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_S5_"}
!698 = distinct !{!698, !697, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEES5_S5_: argument 0"}
!699 = distinct !{!699, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!700 = distinct !{!700, !699, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!701 = !{!666}
!702 = !{!668}
!703 = !{!670}
!704 = !{!672}
!705 = !{!674}
end_hunk_2
