Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sequences_rewriter?download=true
inline.NumInlined: 6229
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 40
  %i.eb = and i64 %i.dt, -1152920405095219201
  %i.ec = or i64 %i.ea, %i.eb
  store i64 %i.ec, ptr %i.ds, align 8, !noalias !389
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239

bb.z:                                             ; preds = %.noexc237
  %i.ed = icmp eq i32 %i.dw, 1048574
  br i1 %i.ed, label %bb.aa, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.ee = or i64 %i.dt, 1152920405095219200
  store i64 %i.ee, ptr %i.ds, align 8, !noalias !389
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239 unwind label %bb.an

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239: ; preds = %bb.z, %bb.y, %bb.aa
  invoke void @_ZN4cvc58internal6theory7strings5utils9getConcatENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.ab unwind label %bb.ap

bb.ab:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit239
  %i.ef = load ptr, ptr %36, align 8, !tbaa !40   ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %i.eh = and i64 %i.eg, 1152920405095219200
  %.not.i.i240 = icmp eq i64 %i.eh, 1152920405095219200
  br i1 %.not.i.i240, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, label %bb.ac, !prof !51

bb.ac:                                            ; preds = %bb.ab
  %i.ei = add i64 %i.eg, 1152920405095219200
  %i.ej = and i64 %i.ei, 1152920405095219200      ; 2 uses
  %i.ek = and i64 %i.eg, -1152920405095219201
  %i.el = or disjoint i64 %i.ej, %i.ek
  store i64 %i.el, ptr %i.ef, align 8
  %i.em = icmp eq i64 %i.ej, 0
  br i1 %i.em, label %bb.ad, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit241, !prof !51

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
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.ep = load ptr, ptr %2, align 8, !tbaa !40, !noalias !392 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !noalias !392
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
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !39, !noalias !392 ; 5 uses
  store ptr %i.fb, ptr %38, align 8, !tbaa !40, !alias.scope !392
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !392 ; 3 uses
  %i.fd = lshr i64 %i.fc, 40
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 1048575                  ; 3 uses
  %i.fg = icmp samesign ult i32 %i.ff, 1048574
  br i1 %i.fg, label %bb.af, label %bb.ag, !prof !52

bb.af:                                            ; preds = %.noexc243
  %i.fh = add nuw nsw i32 %i.ff, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 40
  %i.fk = and i64 %i.fc, -1152920405095219201
  %i.fl = or i64 %i.fj, %i.fk
  store i64 %i.fl, ptr %i.fb, align 8, !noalias !392
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245

bb.ag:                                            ; preds = %.noexc243
  %i.fm = icmp eq i32 %i.ff, 1048574
  br i1 %i.fm, label %bb.ah, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245, !prof !51

bb.ah:                                            ; preds = %bb.ag
  %i.fn = or i64 %i.fc, 1152920405095219200
  store i64 %i.fn, ptr %i.fb, align 8, !noalias !392
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245 unwind label %bb.aq

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245: ; preds = %bb.ag, %bb.af, %bb.ah
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %37, ptr noundef nonnull align 8 dereferenceable(8) %38, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.ar

bb.ai:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit245
  %i.fo = load ptr, ptr %38, align 8, !tbaa !40   ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 3 uses
  %i.fq = and i64 %i.fp, 1152920405095219200
  %.not.i.i246 = icmp eq i64 %i.fq, 1152920405095219200
  br i1 %.not.i.i246, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247, label %bb.aj, !prof !51

bb.aj:                                            ; preds = %bb.ai
  %i.fr = add i64 %i.fp, 1152920405095219200
  %i.fs = and i64 %i.fr, 1152920405095219200      ; 2 uses
  %i.ft = and i64 %i.fp, -1152920405095219201
  %i.fu = or disjoint i64 %i.fs, %i.ft
  store i64 %i.fu, ptr %i.fo, align 8
  %i.fv = icmp eq i64 %i.fs, 0
  br i1 %i.fv, label %bb.ak, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247, !prof !51

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
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !66
  %i.ga = load ptr, ptr %33, align 8, !tbaa !63
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
  %.0157924 = phi i64 [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit247 ], [ %i.auu, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.hg = load ptr, ptr %33, align 8, !tbaa !100  ; 2 uses
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
  store ptr %i.hj, ptr %39, align 8, !tbaa !63
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx653
  store ptr %i.hk, ptr %i.gf, align 8, !tbaa !69
  %i.hl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.hg, ptr %i.hh, ptr noundef %i.hj)
          to label %bb.av unwind label %bb.at

bb.at:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i
  %lpad.loopexit689 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre936 = load ptr, ptr %39, align 8, !tbaa !63 ; 3 uses
  %.not.i.i7.i = icmp eq ptr %.pre936, null
  br i1 %.not.i.i7.i, label %.body, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hm = load ptr, ptr %i.gf, align 8, !tbaa !69
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %.pre936 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %.pre936, i64 noundef %i.hp) #26
  br label %.body

bb.av:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.hl, ptr %i.gg, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  %i.hq = load ptr, ptr %37, align 8, !tbaa !73   ; 5 uses
  store ptr %i.hq, ptr %41, align 8, !tbaa !73
  %i.hr = load i64, ptr %i.hq, align 8            ; 3 uses
  %i.hs = lshr i64 %i.hr, 40
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = and i32 %i.ht, 1048575                  ; 3 uses
  %i.hv = icmp samesign ult i32 %i.hu, 1048574
  br i1 %i.hv, label %bb.aw, label %bb.ax, !prof !52

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
  br i1 %i.ib, label %bb.ay, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !51

bb.ay:                                            ; preds = %bb.ax
  %i.ic = or i64 %i.hr, 1152920405095219200
  store i64 %i.ic, ptr %i.hq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.bd

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.ax, %bb.aw, %bb.ay
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 %41)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.id = load ptr, ptr %41, align 8, !tbaa !73   ; 3 uses
  %i.ie = load i64, ptr %i.id, align 8            ; 3 uses
  %i.if = and i64 %i.ie, 1152920405095219200
  %.not.i.i249 = icmp eq i64 %i.if, 1152920405095219200
  br i1 %.not.i.i249, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.ba, !prof !51

bb.ba:                                            ; preds = %bb.az
  %i.ig = add i64 %i.ie, 1152920405095219200
  %i.ih = and i64 %i.ig, 1152920405095219200      ; 2 uses
  %i.ii = and i64 %i.ie, -1152920405095219201
  %i.ij = or disjoint i64 %i.ih, %i.ii
  store i64 %i.ij, ptr %i.id, align 8
  %i.ik = icmp eq i64 %i.ih, 0
  br i1 %i.ik, label %bb.bb, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !51

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
  %i.in = load ptr, ptr %i.gh, align 8, !tbaa !66
  %i.io = load ptr, ptr %34, align 8, !tbaa !63
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
  %i.iw = load ptr, ptr %i.fy, align 8, !tbaa !66
  %i.ix = load ptr, ptr %33, align 8, !tbaa !63
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = icmp eq i64 %.0157924, %i.jb
  %.pre933 = load ptr, ptr %34, align 8, !tbaa !100 ; 3 uses
  br i1 %i.jc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jd = load ptr, ptr %i.gh, align 8, !tbaa !66
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
  store ptr %i.jl, ptr %i.gi, align 8, !tbaa !69
  br label %.loopexit660

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i250
  %i.jm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx655) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 unwind label %.loopexit661 ; 4 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i252
  store ptr %i.jm, ptr %42, align 8, !tbaa !63
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx655
  store ptr %i.jn, ptr %i.gi, align 8, !tbaa !69
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i
  %.014.i = phi ptr [ %i.kc, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %i.jm, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 3 uses
  %.sroa.08.013.i = phi ptr [ %i.kb, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRS3_EEvPT_DpOT0_.exit.i ], [ %.pre933, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i255 ] ; 2 uses
  %i.jo = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !40 ; 5 uses
  store ptr %i.jo, ptr %.014.i, align 8, !tbaa !40
  %i.jp = load i64, ptr %i.jo, align 8            ; 3 uses
  %i.jq = lshr i64 %i.jp, 40
  %i.jr = trunc nuw nsw i64 %i.jq to i32
  %i.js = and i32 %i.jr, 1048575                  ; 3 uses
  %i.jt = icmp samesign ult i32 %i.js, 1048574
  br i1 %i.jt, label %bb.bj, label %bb.bk, !prof !52

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

_ZN4cvc58internal8TypeNodeD2Ev.exit263:           ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.ll = load ptr, ptr %40, align 8, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !396
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !47, !noalias !396
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef %i.ln, i32 noundef 321)
          to label %.noexc264 unwind label %bb.ff

.noexc264:                                        ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit263
  store ptr %i.ll, ptr %31, align 8, !tbaa !49, !noalias !396
  %i.lo = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull align 8 %31)
          to label %bb.bz unwind label %bb.cb, !noalias !396 ; 0 uses

bb.bz:                                            ; preds = %.noexc264
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %45, ptr noundef nonnull align 8 dereferenceable(124) %30)
          to label %bb.cd unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %.noexc264
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i = phi { ptr, i32 } [ %i.lp, %bb.ca ], [ %i.lq, %bb.cb ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !396
  br label %.body265

bb.cd:                                            ; preds = %bb.bz
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.lr = load ptr, ptr %43, align 8, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23, !noalias !399
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !47, !noalias !399
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef %i.lt, i32 noundef 321)
          to label %.noexc268 unwind label %bb.fg

.noexc268:                                        ; preds = %bb.cd
  store ptr %i.lr, ptr %29, align 8, !tbaa !49, !noalias !399
  %i.lu = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %28, ptr noundef nonnull align 8 %29)
          to label %bb.ce unwind label %bb.cg, !noalias !399 ; 0 uses

bb.ce:                                            ; preds = %.noexc268
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef nonnull align 8 dereferenceable(124) %28)
          to label %bb.ci unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %.noexc268
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i267 = phi { ptr, i32 } [ %i.lv, %bb.cf ], [ %i.lw, %bb.cg ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23, !noalias !399
  br label %.body269

bb.ci:                                            ; preds = %bb.ce
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %i.lx = load ptr, ptr %i.gk, align 8, !tbaa !402, !nonnull !71, !align !72
  %i.ly = load ptr, ptr %45, align 8, !tbaa !40   ; 5 uses
  store ptr %i.ly, ptr %47, align 8, !tbaa !40
  %i.lz = load i64, ptr %i.ly, align 8            ; 3 uses
  %i.ma = lshr i64 %i.lz, 40
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = and i32 %i.mb, 1048575                  ; 3 uses
  %i.md = icmp samesign ult i32 %i.mc, 1048574
  br i1 %i.md, label %bb.cj, label %bb.ck, !prof !52

bb.cj:                                            ; preds = %bb.ci
  %i.me = add nuw nsw i32 %i.mc, 1
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 40
  %i.mh = and i64 %i.lz, -1152920405095219201
  %i.mi = or i64 %i.mg, %i.mh
  store i64 %i.mi, ptr %i.ly, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.mj = icmp eq i32 %i.mc, 1048574
  br i1 %i.mj, label %bb.cl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !51

bb.cl:                                            ; preds = %bb.ck
  %i.mk = or i64 %i.lz, 1152920405095219200
  store i64 %i.mk, ptr %i.ly, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ly)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.fh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.ck, %bb.cj, %bb.cl
  %i.ml = load ptr, ptr %46, align 8, !tbaa !40   ; 5 uses
  store ptr %i.ml, ptr %48, align 8, !tbaa !40
  %i.mm = load i64, ptr %i.ml, align 8            ; 3 uses
  %i.mn = lshr i64 %i.mm, 40
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = and i32 %i.mo, 1048575                  ; 3 uses
  %i.mq = icmp samesign ult i32 %i.mp, 1048574
  br i1 %i.mq, label %bb.cm, label %bb.cn, !prof !52

bb.cm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.mr = add nuw nsw i32 %i.mp, 1
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, 40
  %i.mu = and i64 %i.mm, -1152920405095219201
  %i.mv = or i64 %i.mt, %i.mu
  store i64 %i.mv, ptr %i.ml, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit274

bb.cn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.mw = icmp eq i32 %i.mp, 1048574
  br i1 %i.mw, label %bb.co, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit274, !prof !51

bb.co:                                            ; preds = %bb.cn
  %i.mx = or i64 %i.mm, 1152920405095219200
  store i64 %i.mx, ptr %i.ml, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ml)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit274 unwind label %bb.fi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit274: ; preds = %bb.cn, %bb.cm, %bb.co
  %i.my = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings11ArithEntail7checkEqENS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(128) %i.lx, ptr noundef nonnull align 8 %47, ptr noundef nonnull align 8 %48)
          to label %bb.cp unwind label %bb.fj

bb.cp:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit274
  %i.mz = load ptr, ptr %48, align 8, !tbaa !40   ; 3 uses
  %i.na = load i64, ptr %i.mz, align 8            ; 3 uses
  %i.nb = and i64 %i.na, 1152920405095219200
  %.not.i.i275 = icmp eq i64 %i.nb, 1152920405095219200
  br i1 %.not.i.i275, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276, label %bb.cq, !prof !51

bb.cq:                                            ; preds = %bb.cp
  %i.nc = add i64 %i.na, 1152920405095219200
  %i.nd = and i64 %i.nc, 1152920405095219200      ; 2 uses
  %i.ne = and i64 %i.na, -1152920405095219201
  %i.nf = or disjoint i64 %i.nd, %i.ne
  store i64 %i.nf, ptr %i.mz, align 8
  %i.ng = icmp eq i64 %i.nd, 0
  br i1 %i.ng, label %bb.cr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276, !prof !51

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276 unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276: ; preds = %bb.cp, %bb.cq, %bb.cr
  %i.nj = load ptr, ptr %47, align 8, !tbaa !40   ; 3 uses
  %i.nk = load i64, ptr %i.nj, align 8            ; 3 uses
  %i.nl = and i64 %i.nk, 1152920405095219200
  %.not.i.i277 = icmp eq i64 %i.nl, 1152920405095219200
  br i1 %.not.i.i277, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278, label %bb.ct, !prof !51

bb.ct:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276
  %i.nm = add i64 %i.nk, 1152920405095219200
  %i.nn = and i64 %i.nm, 1152920405095219200      ; 2 uses
  %i.no = and i64 %i.nk, -1152920405095219201
  %i.np = or disjoint i64 %i.nn, %i.no
  store i64 %i.np, ptr %i.nj, align 8
  %i.nq = icmp eq i64 %i.nn, 0
  br i1 %i.nq, label %bb.cu, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278, !prof !51

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit276, %bb.ct, %bb.cu
  br i1 %i.my, label %bb.cw, label %bb.ft

bb.cw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.nt = load ptr, ptr %33, align 8, !tbaa !100
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %.0157924 ; 3 uses
  %i.nv = load ptr, ptr %i.fy, align 8, !tbaa !100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, i8 0, i64 24, i1 false)
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 3 uses
  %i.nz = icmp ugt i64 %i.ny, 9223372036854775800
  br i1 %i.nz, label %bb.cx, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i279

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i285 unwind label %.loopexit.split-lp678

.noexc.i285:                                      ; preds = %bb.cx
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i279: ; preds = %bb.cw
  %.not.i.i.i280 = icmp eq ptr %i.nv, %i.nu
  br i1 %.not.i.i.i280, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i284, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i281

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i281: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i279
  %i.oa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i284 unwind label %.loopexit677

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i284: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i281, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i279
  %i.ob = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i279 ], [ %i.oa, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i281 ] ; 3 uses
  store ptr %i.ob, ptr %49, align 8, !tbaa !63
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ny
  store ptr %i.oc, ptr %i.gw, align 8, !tbaa !69
  %i.od = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.nu, ptr %i.nv, ptr noundef %i.ob)
          to label %bb.da unwind label %.loopexit677

.loopexit677:                                     ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i281, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i284
  %lpad.loopexit679 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.loopexit.split-lp678:                            ; preds = %bb.cx
  %lpad.loopexit.split-lp680 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit.split-lp678, %.loopexit677
  %lpad.phi681 = phi { ptr, i32 } [ %lpad.loopexit679, %.loopexit677 ], [ %lpad.loopexit.split-lp680, %.loopexit.split-lp678 ] ; 2 uses
  %i.oe = load ptr, ptr %49, align 8, !tbaa !63   ; 3 uses
  %.not.i.i7.i282 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i7.i282, label %.body286, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.of = load ptr, ptr %i.gw, align 8, !tbaa !69
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = ptrtoint ptr %i.oe to i64
  %i.oi = sub i64 %i.og, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef %i.oi) #26
  br label %.body286

bb.da:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i284
  store ptr %i.od, ptr %i.gx, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.oj = load ptr, ptr %34, align 8, !tbaa !100
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.oj, i64 %.0163916 ; 3 uses
  %i.ol = load ptr, ptr %i.gh, align 8, !tbaa !100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = ptrtoint ptr %i.ok to i64
  %i.oo = sub i64 %i.om, %i.on                    ; 3 uses
  %i.op = icmp ugt i64 %i.oo, 9223372036854775800
  br i1 %i.op, label %bb.db, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i289

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i295 unwind label %.loopexit.split-lp683

.noexc.i295:                                      ; preds = %bb.db
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i289: ; preds = %bb.da
  %.not.i.i.i290 = icmp eq ptr %i.ol, %i.ok
  br i1 %.not.i.i.i290, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i294, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i291

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i291: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i289
  %i.oq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oo) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i294 unwind label %.loopexit682

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i294: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i291, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i289
  %i.or = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i289 ], [ %i.oq, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i291 ] ; 3 uses
  store ptr %i.or, ptr %50, align 8, !tbaa !63
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.oo
  store ptr %i.os, ptr %i.gy, align 8, !tbaa !69
  %i.ot = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.ok, ptr %i.ol, ptr noundef %i.or)
          to label %bb.de unwind label %.loopexit682

.loopexit682:                                     ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i291, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i294
  %lpad.loopexit684 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

.loopexit.split-lp683:                            ; preds = %bb.db
  %lpad.loopexit.split-lp685 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit.split-lp683, %.loopexit682
  %lpad.phi686 = phi { ptr, i32 } [ %lpad.loopexit684, %.loopexit682 ], [ %lpad.loopexit.split-lp685, %.loopexit.split-lp683 ] ; 2 uses
  %i.ou = load ptr, ptr %50, align 8, !tbaa !63   ; 3 uses
  %.not.i.i7.i292 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i7.i292, label %.body296, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ov = load ptr, ptr %i.gy, align 8, !tbaa !69
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = ptrtoint ptr %i.ou to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oy) #26
  br label %.body296

bb.de:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i294
  store ptr %i.ot, ptr %i.gz, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  %i.oz = load ptr, ptr %40, align 8, !tbaa !40, !noalias !403 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %43, align 8, !tbaa !40, !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !403
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23, !noalias !406
  %i.pc = load ptr, ptr %i.pa, align 8, !tbaa !47, !noalias !406
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef %i.pc, i32 noundef 5)
          to label %.noexc300 unwind label %bb.fl

.noexc300:                                        ; preds = %bb.de
  store ptr %i.oz, ptr %26, align 8, !tbaa !49, !noalias !406
  %i.pd = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull align 8 %26)
          to label %bb.df unwind label %bb.di, !noalias !406

bb.df:                                            ; preds = %.noexc300
  store ptr %i.pb, ptr %27, align 8, !tbaa !49, !noalias !406
  %i.pe = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.pd, ptr noundef nonnull align 8 %27)
          to label %bb.dg unwind label %bb.dj, !noalias !406 ; 0 uses

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %51, ptr noundef nonnull align 8 dereferenceable(124) %25)
          to label %bb.dk unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.di:                                            ; preds = %.noexc300
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dj:                                            ; preds = %bb.df
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.dj, %bb.di, %bb.dh
  %.pn5.i.i = phi { ptr, i32 } [ %i.pf, %bb.dh ], [ %i.ph, %bb.dj ], [ %i.pg, %bb.di ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23, !noalias !406
  br label %.loopexit

bb.dk:                                            ; preds = %bb.dg
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !403
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !403
  %i.pi = load ptr, ptr %51, align 8, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.pj = load ptr, ptr %37, align 8, !tbaa !73   ; 5 uses
  store ptr %i.pj, ptr %54, align 8, !tbaa !73
  %i.pk = load i64, ptr %i.pj, align 8            ; 3 uses
  %i.pl = lshr i64 %i.pk, 40
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = and i32 %i.pm, 1048575                  ; 3 uses
  %i.po = icmp samesign ult i32 %i.pn, 1048574
  br i1 %i.po, label %bb.dl, label %bb.dm, !prof !52

bb.dl:                                            ; preds = %bb.dk
  %i.pp = add nuw nsw i32 %i.pn, 1
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl nuw nsw i64 %i.pq, 40
  %i.ps = and i64 %i.pk, -1152920405095219201
  %i.pt = or i64 %i.pr, %i.ps
  store i64 %i.pt, ptr %i.pj, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit304

bb.dm:                                            ; preds = %bb.dk
  %i.pu = icmp eq i32 %i.pn, 1048574
  br i1 %i.pu, label %bb.dn, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit304, !prof !51

bb.dn:                                            ; preds = %bb.dm
  %i.pv = or i64 %i.pk, 1152920405095219200
  store i64 %i.pv, ptr %i.pj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit304 unwind label %.body301.thread1055

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit304:       ; preds = %bb.dm, %bb.dl, %bb.dn
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
          cleanup
  br label %.body317

.body317:                                         ; preds = %bb.eb, %bb.fq
  %eh.lpad-body318 = phi { ptr, i32 } [ %i.ve, %bb.fq ], [ %.pn.i314, %bb.eb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #23
  br label %.body311

.body311:                                         ; preds = %bb.fp, %.body.i308, %.body317
  %.pn207 = phi { ptr, i32 } [ %eh.lpad-body318, %.body317 ], [ %.pn5.i.i309, %.body.i308 ], [ %i.vd, %bb.fp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #23
  br label %bb.fr

bb.fr:                                            ; preds = %.body311, %bb.fo
  %.pn207.pn = phi { ptr, i32 } [ %.pn207, %.body311 ], [ %i.vc, %bb.fo ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #23
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fn
  %.pn207.pn.pn = phi { ptr, i32 } [ %.pn207.pn, %bb.fr ], [ %i.vb, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #23
  br label %.body301

.body301:                                         ; preds = %bb.fm, %bb.fs
  %.pn207.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn, %bb.fs ], [ %i.va, %bb.fm ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fl, %.body.i, %.body301, %.body301.thread1055
  %.pn207.pn.pn.pn.pn.pn626 = phi { ptr, i32 } [ %i.uz, %.body301.thread1055 ], [ %.pn207.pn.pn.pn, %.body301 ], [ %.pn5.i.i, %.body.i ], [ %i.uy, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #23
  br label %.body296

.body296:                                         ; preds = %bb.dd, %bb.dc, %.loopexit
  %.pn207.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn626, %.loopexit ], [ %lpad.phi686, %bb.dc ], [ %lpad.phi686, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %49) #23
  br label %.body286

.body286:                                         ; preds = %bb.cz, %bb.cy, %.body296
  %.pn207.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn207.pn.pn.pn.pn.pn.pn, %.body296 ], [ %lpad.phi681, %bb.cy ], [ %lpad.phi681, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  br label %bb.os

bb.ft:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit278
  %i.vf = load ptr, ptr %i.gk, align 8, !tbaa !402, !nonnull !71, !align !72
  %i.vg = load ptr, ptr %46, align 8, !tbaa !40   ; 5 uses
  store ptr %i.vg, ptr %57, align 8, !tbaa !40
  %i.vh = load i64, ptr %i.vg, align 8            ; 3 uses
  %i.vi = lshr i64 %i.vh, 40
  %i.vj = trunc nuw nsw i64 %i.vi to i32
  %i.vk = and i32 %i.vj, 1048575                  ; 3 uses
  %i.vl = icmp samesign ult i32 %i.vk, 1048574
  br i1 %i.vl, label %bb.fu, label %bb.fv, !prof !52

bb.fu:                                            ; preds = %bb.ft
  %i.vm = add nuw nsw i32 %i.vk, 1
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = shl nuw nsw i64 %i.vn, 40
  %i.vp = and i64 %i.vh, -1152920405095219201
  %i.vq = or i64 %i.vo, %i.vp
  store i64 %i.vq, ptr %i.vg, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346

bb.fv:                                            ; preds = %bb.ft
  %i.vr = icmp eq i32 %i.vk, 1048574
  br i1 %i.vr, label %bb.fw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346, !prof !51

bb.fw:                                            ; preds = %bb.fv
  %i.vs = or i64 %i.vh, 1152920405095219200
  store i64 %i.vs, ptr %i.vg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346 unwind label %bb.fh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346: ; preds = %bb.fv, %bb.fu, %bb.fw
  %i.vt = load ptr, ptr %45, align 8, !tbaa !40   ; 5 uses
  store ptr %i.vt, ptr %58, align 8, !tbaa !40
  %i.vu = load i64, ptr %i.vt, align 8            ; 3 uses
  %i.vv = lshr i64 %i.vu, 40
  %i.vw = trunc nuw nsw i64 %i.vv to i32
  %i.vx = and i32 %i.vw, 1048575                  ; 3 uses
  %i.vy = icmp samesign ult i32 %i.vx, 1048574
  br i1 %i.vy, label %bb.fx, label %bb.fy, !prof !52

bb.fx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346
  %i.vz = add nuw nsw i32 %i.vx, 1
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = shl nuw nsw i64 %i.wa, 40
  %i.wc = and i64 %i.vu, -1152920405095219201
  %i.wd = or i64 %i.wb, %i.wc
  store i64 %i.wd, ptr %i.vt, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348

bb.fy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit346
  %i.we = icmp eq i32 %i.vx, 1048574
  br i1 %i.we, label %bb.fz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348, !prof !51

bb.fz:                                            ; preds = %bb.fy
  %i.wf = or i64 %i.vu, 1152920405095219200
  store i64 %i.wf, ptr %i.vt, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348 unwind label %bb.ix

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348: ; preds = %bb.fy, %bb.fx, %bb.fz
  %i.wg = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings11ArithEntail5checkENS0_12NodeTemplateILb1EEES5_bb(ptr noundef nonnull align 8 dereferenceable(128) %i.vf, ptr noundef nonnull align 8 %57, ptr noundef nonnull align 8 %58, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.ga unwind label %bb.iy

bb.ga:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit348
  %i.wh = load ptr, ptr %58, align 8, !tbaa !40   ; 3 uses
  %i.wi = load i64, ptr %i.wh, align 8            ; 3 uses
  %i.wj = and i64 %i.wi, 1152920405095219200
  %.not.i.i349 = icmp eq i64 %i.wj, 1152920405095219200
  br i1 %.not.i.i349, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350, label %bb.gb, !prof !51

bb.gb:                                            ; preds = %bb.ga
  %i.wk = add i64 %i.wi, 1152920405095219200
  %i.wl = and i64 %i.wk, 1152920405095219200      ; 2 uses
  %i.wm = and i64 %i.wi, -1152920405095219201
  %i.wn = or disjoint i64 %i.wl, %i.wm
  store i64 %i.wn, ptr %i.wh, align 8
  %i.wo = icmp eq i64 %i.wl, 0
  br i1 %i.wo, label %bb.gc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350, !prof !51

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350: ; preds = %bb.ga, %bb.gb, %bb.gc
  %i.wr = load ptr, ptr %57, align 8, !tbaa !40   ; 3 uses
  %i.ws = load i64, ptr %i.wr, align 8            ; 3 uses
  %i.wt = and i64 %i.ws, 1152920405095219200
  %.not.i.i351 = icmp eq i64 %i.wt, 1152920405095219200
  br i1 %.not.i.i351, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit352, label %bb.ge, !prof !51

bb.ge:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350
  %i.wu = add i64 %i.ws, 1152920405095219200
  %i.wv = and i64 %i.wu, 1152920405095219200      ; 2 uses
  %i.ww = and i64 %i.ws, -1152920405095219201
  %i.wx = or disjoint i64 %i.wv, %i.ww
  store i64 %i.wx, ptr %i.wr, align 8
  %i.wy = icmp eq i64 %i.wv, 0
  br i1 %i.wy, label %bb.gf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit352, !prof !51

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit352 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wz = landingpad { ptr, i32 }
          catch ptr null
  %i.xa = extractvalue { ptr, i32 } %i.wz, 0
  call void @__clang_call_terminate(ptr %i.xa) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit352: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit350, %bb.ge, %bb.gf
  br i1 %i.wg, label %bb.gh, label %bb.ju

bb.gh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit352
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  %i.xb = load ptr, ptr %i.gn, align 8, !tbaa !70, !nonnull !71, !align !72
  %i.xc = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings13StringsEntail19stripSymbolicLengthERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_iRS6_b(ptr noundef nonnull align 8 dereferenceable(24) %i.xb, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %59, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %45, i1 noundef zeroext true)
          to label %bb.gi unwind label %bb.ja

bb.gi:                                            ; preds = %bb.gh
  br i1 %i.xc, label %bb.gj, label %bb.jo

bb.gj:                                            ; preds = %bb.gi
  %i.xd = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.gk unwind label %bb.ja

bb.gk:                                            ; preds = %bb.gj
  br i1 %i.xd, label %bb.gl, label %bb.jo

bb.gl:                                            ; preds = %bb.gk
  %i.xe = load ptr, ptr %45, align 8, !tbaa !40
  %i.xf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.xe)
          to label %bb.gm unwind label %bb.ja

bb.gm:                                            ; preds = %bb.gl
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !420
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %bb.gn, label %bb.jo

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  %i.xj = load ptr, ptr %33, align 8, !tbaa !100
  %i.xk = getelementptr inbounds [8 x i8], ptr %i.xj, i64 %.0157924 ; 3 uses
  %i.xl = load ptr, ptr %i.fy, align 8, !tbaa !100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = ptrtoint ptr %i.xk to i64
  %i.xo = sub i64 %i.xm, %i.xn                    ; 3 uses
  %i.xp = icmp ugt i64 %i.xo, 9223372036854775800
  br i1 %i.xp, label %bb.go, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i354

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i360 unwind label %.loopexit.split-lp673

.noexc.i360:                                      ; preds = %bb.go
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i354: ; preds = %bb.gn
  %.not.i.i.i355 = icmp eq ptr %i.xl, %i.xk
  br i1 %.not.i.i.i355, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i359, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i356

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i356: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i354
  %i.xq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xo) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i359 unwind label %.loopexit672

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i359: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i356, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i354
  %i.xr = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i354 ], [ %i.xq, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i356 ] ; 3 uses
  store ptr %i.xr, ptr %60, align 8, !tbaa !63
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xo
  store ptr %i.xs, ptr %i.gs, align 8, !tbaa !69
  %i.xt = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.xk, ptr %i.xl, ptr noundef %i.xr)
          to label %bb.gr unwind label %.loopexit672

.loopexit672:                                     ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i356, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i359
  %lpad.loopexit674 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp673:                            ; preds = %bb.go
  %lpad.loopexit.split-lp675 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit.split-lp673, %.loopexit672
  %lpad.phi676 = phi { ptr, i32 } [ %lpad.loopexit674, %.loopexit672 ], [ %lpad.loopexit.split-lp675, %.loopexit.split-lp673 ] ; 2 uses
  %i.xu = load ptr, ptr %60, align 8, !tbaa !63   ; 3 uses
  %.not.i.i7.i357 = icmp eq ptr %i.xu, null
  br i1 %.not.i.i7.i357, label %.body361, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.xv = load ptr, ptr %i.gs, align 8, !tbaa !69
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = ptrtoint ptr %i.xu to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZdlPvm(ptr noundef nonnull %i.xu, i64 noundef %i.xy) #26
  br label %.body361

bb.gr:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i359
  store ptr %i.xt, ptr %i.gt, align 8, !tbaa !66
  %i.xz = load ptr, ptr %i.gj, align 8, !tbaa !100
  %i.ya = load ptr, ptr %34, align 8, !tbaa !100
  %i.yb = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %.0163916
  %i.yc = load ptr, ptr %i.gh, align 8, !tbaa !100
  %i.yd = load ptr, ptr %42, align 8, !tbaa !100  ; 2 uses
  %i.ye = ptrtoint ptr %i.xz to i64
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = getelementptr inbounds i8, ptr %i.yd, i64 %i.yg
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr %i.yh, ptr %i.yb, ptr %i.yc)
          to label %bb.gs unwind label %bb.jb

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  %i.yi = load ptr, ptr %37, align 8, !tbaa !73   ; 5 uses
  store ptr %i.yi, ptr %63, align 8, !tbaa !73
  %i.yj = load i64, ptr %i.yi, align 8            ; 3 uses
  %i.yk = lshr i64 %i.yj, 40
  %i.yl = trunc nuw nsw i64 %i.yk to i32
  %i.ym = and i32 %i.yl, 1048575                  ; 3 uses
  %i.yn = icmp samesign ult i32 %i.ym, 1048574
  br i1 %i.yn, label %bb.gt, label %bb.gu, !prof !52

bb.gt:                                            ; preds = %bb.gs
  %i.yo = add nuw nsw i32 %i.ym, 1
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 40
  %i.yr = and i64 %i.yj, -1152920405095219201
  %i.ys = or i64 %i.yq, %i.yr
  store i64 %i.ys, ptr %i.yi, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit366

bb.gu:                                            ; preds = %bb.gs
  %i.yt = icmp eq i32 %i.ym, 1048574
  br i1 %i.yt, label %bb.gv, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit366, !prof !51

bb.gv:                                            ; preds = %bb.gu
  %i.yu = or i64 %i.yj, 1152920405095219200
  store i64 %i.yu, ptr %i.yi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yi)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit366 unwind label %.thread627

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit366:       ; preds = %bb.gu, %bb.gt, %bb.gv
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 %63)
          to label %bb.gw unwind label %.thread633

bb.gw:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit366
  %i.yv = load ptr, ptr %40, align 8, !tbaa !40, !noalias !424 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = load ptr, ptr %62, align 8, !tbaa !40, !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !427
  %i.yy = load ptr, ptr %i.yw, align 8, !tbaa !47, !noalias !427
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef %i.yy, i32 noundef 5)
          to label %.noexc370 unwind label %bb.jc

.noexc370:                                        ; preds = %bb.gw
  store ptr %i.yv, ptr %18, align 8, !tbaa !49, !noalias !427
  %i.yz = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull align 8 %18)
          to label %bb.gx unwind label %bb.ha, !noalias !427

bb.gx:                                            ; preds = %.noexc370
  store ptr %i.yx, ptr %19, align 8, !tbaa !49, !noalias !427
  %i.za = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.yz, ptr noundef nonnull align 8 %19)
          to label %bb.gy unwind label %bb.hb, !noalias !427 ; 0 uses

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %61, ptr noundef nonnull align 8 dereferenceable(124) %17)
          to label %bb.hc unwind label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i368

bb.ha:                                            ; preds = %.noexc370
  %i.zc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i368

bb.hb:                                            ; preds = %bb.gx
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i368

.body.i368:                                       ; preds = %bb.hb, %bb.ha, %bb.gz
  %.pn5.i.i369 = phi { ptr, i32 } [ %i.zb, %bb.gz ], [ %i.zd, %bb.hb ], [ %i.zc, %bb.ha ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !427
  br label %bb.jn

bb.hc:                                            ; preds = %bb.gy
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !424
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !424
  %i.ze = load ptr, ptr %61, align 8, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  %i.zf = load ptr, ptr %37, align 8, !tbaa !73   ; 5 uses
  store ptr %i.zf, ptr %66, align 8, !tbaa !73
  %i.zg = load i64, ptr %i.zf, align 8            ; 3 uses
  %i.zh = lshr i64 %i.zg, 40
  %i.zi = trunc nuw nsw i64 %i.zh to i32
  %i.zj = and i32 %i.zi, 1048575                  ; 3 uses
  %i.zk = icmp samesign ult i32 %i.zj, 1048574
  br i1 %i.zk, label %bb.hd, label %bb.he, !prof !52

bb.hd:                                            ; preds = %bb.hc
  %i.zl = add nuw nsw i32 %i.zj, 1
  %i.zm = zext nneg i32 %i.zl to i64
  %i.zn = shl nuw nsw i64 %i.zm, 40
  %i.zo = and i64 %i.zg, -1152920405095219201
  %i.zp = or i64 %i.zn, %i.zo
  store i64 %i.zp, ptr %i.zf, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit375

bb.he:                                            ; preds = %bb.hc
  %i.zq = icmp eq i32 %i.zj, 1048574
  br i1 %i.zq, label %bb.hf, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit375, !prof !51

bb.hf:                                            ; preds = %bb.he
  %i.zr = or i64 %i.zg, 1152920405095219200
  store i64 %i.zr, ptr %i.zf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zf)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit375 unwind label %bb.jd

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit375:       ; preds = %bb.he, %bb.hd, %bb.hf
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %65, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 %66)
          to label %bb.hg unwind label %bb.je

bb.hg:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit375
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  %i.zs = load ptr, ptr %37, align 8, !tbaa !73   ; 5 uses
  store ptr %i.zs, ptr %68, align 8, !tbaa !73
  %i.zt = load i64, ptr %i.zs, align 8            ; 3 uses
  %i.zu = lshr i64 %i.zt, 40
  %i.zv = trunc nuw nsw i64 %i.zu to i32
  %i.zw = and i32 %i.zv, 1048575                  ; 3 uses
  %i.zx = icmp samesign ult i32 %i.zw, 1048574
  br i1 %i.zx, label %bb.hh, label %bb.hi, !prof !52
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
  br i1 %i.aga, label %bb.jv, label %bb.jw, !prof !52

bb.jv:                                            ; preds = %bb.ju
  %i.agb = add nuw nsw i32 %i.afz, 1
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl nuw nsw i64 %i.agc, 40
  %i.age = and i64 %i.afw, -1152920405095219201
  %i.agf = or i64 %i.agd, %i.age
  store i64 %i.agf, ptr %i.afv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434

bb.jw:                                            ; preds = %bb.ju
  %i.agg = icmp eq i32 %i.afz, 1048574
  br i1 %i.agg, label %bb.jx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434, !prof !51

bb.jx:                                            ; preds = %bb.jw
  %i.agh = or i64 %i.afw, 1152920405095219200
  store i64 %i.agh, ptr %i.afv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434 unwind label %bb.fh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434: ; preds = %bb.jw, %bb.jv, %bb.jx
  %i.agi = load ptr, ptr %46, align 8, !tbaa !40  ; 5 uses
  store ptr %i.agi, ptr %70, align 8, !tbaa !40
  %i.agj = load i64, ptr %i.agi, align 8          ; 3 uses
  %i.agk = lshr i64 %i.agj, 40
  %i.agl = trunc nuw nsw i64 %i.agk to i32
  %i.agm = and i32 %i.agl, 1048575                ; 3 uses
  %i.agn = icmp samesign ult i32 %i.agm, 1048574
  br i1 %i.agn, label %bb.jy, label %bb.jz, !prof !52

bb.jy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434
  %i.ago = add nuw nsw i32 %i.agm, 1
  %i.agp = zext nneg i32 %i.ago to i64
  %i.agq = shl nuw nsw i64 %i.agp, 40
  %i.agr = and i64 %i.agj, -1152920405095219201
  %i.ags = or i64 %i.agq, %i.agr
  store i64 %i.ags, ptr %i.agi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436

bb.jz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit434
  %i.agt = icmp eq i32 %i.agm, 1048574
  br i1 %i.agt, label %bb.ka, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436, !prof !51

bb.ka:                                            ; preds = %bb.jz
  %i.agu = or i64 %i.agj, 1152920405095219200
  store i64 %i.agu, ptr %i.agi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436 unwind label %bb.nc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436: ; preds = %bb.jz, %bb.jy, %bb.ka
  %i.agv = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings11ArithEntail5checkENS0_12NodeTemplateILb1EEES5_bb(ptr noundef nonnull align 8 dereferenceable(128) %i.afu, ptr noundef nonnull align 8 %69, ptr noundef nonnull align 8 %70, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.kb unwind label %bb.nd

bb.kb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit436
  %i.agw = load ptr, ptr %70, align 8, !tbaa !40  ; 3 uses
  %i.agx = load i64, ptr %i.agw, align 8          ; 3 uses
  %i.agy = and i64 %i.agx, 1152920405095219200
  %.not.i.i437 = icmp eq i64 %i.agy, 1152920405095219200
  br i1 %.not.i.i437, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, label %bb.kc, !prof !51

bb.kc:                                            ; preds = %bb.kb
  %i.agz = add i64 %i.agx, 1152920405095219200
  %i.aha = and i64 %i.agz, 1152920405095219200    ; 2 uses
  %i.ahb = and i64 %i.agx, -1152920405095219201
  %i.ahc = or disjoint i64 %i.aha, %i.ahb
  store i64 %i.ahc, ptr %i.agw, align 8
  %i.ahd = icmp eq i64 %i.aha, 0
  br i1 %i.ahd, label %bb.kd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, !prof !51

bb.kd:                                            ; preds = %bb.kc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438 unwind label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ahe = landingpad { ptr, i32 }
          catch ptr null
  %i.ahf = extractvalue { ptr, i32 } %i.ahe, 0
  call void @__clang_call_terminate(ptr %i.ahf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438: ; preds = %bb.kb, %bb.kc, %bb.kd
  %i.ahg = load ptr, ptr %69, align 8, !tbaa !40  ; 3 uses
  %i.ahh = load i64, ptr %i.ahg, align 8          ; 3 uses
  %i.ahi = and i64 %i.ahh, 1152920405095219200
  %.not.i.i439 = icmp eq i64 %i.ahi, 1152920405095219200
  br i1 %.not.i.i439, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440, label %bb.kf, !prof !51

bb.kf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438
  %i.ahj = add i64 %i.ahh, 1152920405095219200
  %i.ahk = and i64 %i.ahj, 1152920405095219200    ; 2 uses
  %i.ahl = and i64 %i.ahh, -1152920405095219201
  %i.ahm = or disjoint i64 %i.ahk, %i.ahl
  store i64 %i.ahm, ptr %i.ahg, align 8
  %i.ahn = icmp eq i64 %i.ahk, 0
  br i1 %i.ahn, label %bb.kg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440, !prof !51

bb.kg:                                            ; preds = %bb.kf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440 unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.aho = landingpad { ptr, i32 }
          catch ptr null
  %i.ahp = extractvalue { ptr, i32 } %i.aho, 0
  call void @__clang_call_terminate(ptr %i.ahp) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit438, %bb.kf, %bb.kg
  br i1 %i.agv, label %bb.ki, label %bb.oe

bb.ki:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit440
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23
  %i.ahq = load ptr, ptr %i.gg, align 8, !tbaa !66 ; 3 uses
  %i.ahr = load ptr, ptr %39, align 8, !tbaa !63  ; 3 uses
  %i.ahs = ptrtoint ptr %i.ahq to i64
  %i.aht = ptrtoint ptr %i.ahr to i64
  %i.ahu = sub i64 %i.ahs, %i.aht                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %71, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not.i.i.i.i, label %.noexc444, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ahv = icmp ugt i64 %i.ahu, 9223372036854775800
  br i1 %i.ahv, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, !prof !51

.noexc.i.i:                                       ; preds = %bb.kj
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc443 unwind label %.loopexit.split-lp663

.noexc443:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.kj
  %i.ahw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahu) #24
          to label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge unwind label %.loopexit662

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i
  %.pre934 = load ptr, ptr %39, align 8, !tbaa !100
  %.pre935 = load ptr, ptr %i.gg, align 8, !tbaa !100
  br label %.noexc444

.noexc444:                                        ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge, %bb.ki
  %i.ahx = phi ptr [ %i.ahq, %bb.ki ], [ %.pre935, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge ]
  %i.ahy = phi ptr [ %i.ahr, %bb.ki ], [ %.pre934, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge ]
  %i.ahz = phi ptr [ null, %bb.ki ], [ %i.ahw, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i..noexc444_crit_edge ] ; 4 uses
  store ptr %i.ahz, ptr %71, align 8, !tbaa !63
  store ptr %i.ahz, ptr %i.gl, align 8, !tbaa !66
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.ahu
  store ptr %i.aia, ptr %i.gm, align 8, !tbaa !69
  %i.aib = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.ahy, ptr %i.ahx, ptr noundef %i.ahz)
          to label %bb.km unwind label %bb.kk

bb.kk:                                            ; preds = %.noexc444
  %i.aic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aid = load ptr, ptr %71, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i441 = icmp eq ptr %i.aid, null
  br i1 %.not.i.i.i441, label %.body445, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aie = load ptr, ptr %i.gm, align 8, !tbaa !69
  %i.aif = ptrtoint ptr %i.aie to i64
  %i.aig = ptrtoint ptr %i.aid to i64
  %i.aih = sub i64 %i.aif, %i.aig
  call void @_ZdlPvm(ptr noundef nonnull %i.aid, i64 noundef %i.aih) #26
  br label %.body445

bb.km:                                            ; preds = %.noexc444
  store ptr %i.aib, ptr %i.gl, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, i8 0, i64 24, i1 false)
  %i.aii = load ptr, ptr %i.gn, align 8, !tbaa !70, !nonnull !71, !align !72
  %i.aij = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings13StringsEntail19stripSymbolicLengthERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_iRS6_b(ptr noundef nonnull align 8 dereferenceable(24) %i.aii, ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %72, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %46, i1 noundef zeroext true)
          to label %bb.kn unwind label %bb.nf

bb.kn:                                            ; preds = %bb.km
  br i1 %i.aij, label %bb.ko, label %bb.nt

bb.ko:                                            ; preds = %bb.kn
  %i.aik = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.kp unwind label %bb.nf

bb.kp:                                            ; preds = %bb.ko
  br i1 %i.aik, label %bb.kq, label %bb.nt

bb.kq:                                            ; preds = %bb.kp
  %i.ail = load ptr, ptr %46, align 8, !tbaa !40
  %i.aim = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_8RationalEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.ail)
          to label %bb.kr unwind label %bb.nf

bb.kr:                                            ; preds = %bb.kq
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 4
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !420
  %i.aip = icmp eq i32 %i.aio, 0
  br i1 %i.aip, label %bb.ks, label %bb.nt

bb.ks:                                            ; preds = %bb.kr
  %i.aiq = load ptr, ptr %i.gl, align 8, !tbaa !100
  %i.air = load ptr, ptr %33, align 8, !tbaa !100
  %i.ais = getelementptr inbounds [8 x i8], ptr %i.air, i64 %.0157924
  %i.ait = load ptr, ptr %i.fy, align 8, !tbaa !100
  %i.aiu = load ptr, ptr %71, align 8, !tbaa !100 ; 2 uses
  %i.aiv = ptrtoint ptr %i.aiq to i64
  %i.aiw = ptrtoint ptr %i.aiu to i64
  %i.aix = sub i64 %i.aiv, %i.aiw
  %i.aiy = getelementptr inbounds i8, ptr %i.aiu, i64 %i.aix
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr %i.aiy, ptr %i.ais, ptr %i.ait)
          to label %bb.kt unwind label %bb.ng

bb.kt:                                            ; preds = %bb.ks
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #23
  %i.aiz = load ptr, ptr %34, align 8, !tbaa !100
  %i.aja = getelementptr inbounds [8 x i8], ptr %i.aiz, i64 %.0163916 ; 3 uses
  %i.ajb = load ptr, ptr %i.gh, align 8, !tbaa !100 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %i.ajc = ptrtoint ptr %i.ajb to i64
  %i.ajd = ptrtoint ptr %i.aja to i64
  %i.aje = sub i64 %i.ajc, %i.ajd                 ; 3 uses
  %i.ajf = icmp ugt i64 %i.aje, 9223372036854775800
  br i1 %i.ajf, label %bb.ku, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i451

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #27
          to label %.noexc.i457 unwind label %.loopexit.split-lp668

.noexc.i457:                                      ; preds = %bb.ku
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i451: ; preds = %bb.kt
  %.not.i.i.i452 = icmp eq ptr %i.ajb, %i.aja
  br i1 %.not.i.i.i452, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i456, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i453

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i453: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i451
  %i.ajg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aje) #24
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i456 unwind label %.loopexit667

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i456: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i453, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i451
  %i.ajh = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i451 ], [ %i.ajg, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i453 ] ; 3 uses
  store ptr %i.ajh, ptr %73, align 8, !tbaa !63
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.aje
  store ptr %i.aji, ptr %i.go, align 8, !tbaa !69
  %i.ajj = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_(ptr %i.aja, ptr %i.ajb, ptr noundef %i.ajh)
          to label %bb.kx unwind label %.loopexit667

.loopexit667:                                     ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i453, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i456
  %lpad.loopexit669 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

.loopexit.split-lp668:                            ; preds = %bb.ku
  %lpad.loopexit.split-lp670 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.kv:                                            ; preds = %.loopexit.split-lp668, %.loopexit667
  %lpad.phi671 = phi { ptr, i32 } [ %lpad.loopexit669, %.loopexit667 ], [ %lpad.loopexit.split-lp670, %.loopexit.split-lp668 ] ; 2 uses
  %i.ajk = load ptr, ptr %73, align 8, !tbaa !63  ; 3 uses
  %.not.i.i7.i454 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i7.i454, label %.body458, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.ajl = load ptr, ptr %i.go, align 8, !tbaa !69
  %i.ajm = ptrtoint ptr %i.ajl to i64
  %i.ajn = ptrtoint ptr %i.ajk to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  call void @_ZdlPvm(ptr noundef nonnull %i.ajk, i64 noundef %i.ajo) #26
  br label %.body458

bb.kx:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i456
  store ptr %i.ajj, ptr %i.gp, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #23
  %i.ajp = load ptr, ptr %37, align 8, !tbaa !73  ; 5 uses
  store ptr %i.ajp, ptr %76, align 8, !tbaa !73
  %i.ajq = load i64, ptr %i.ajp, align 8          ; 3 uses
  %i.ajr = lshr i64 %i.ajq, 40
  %i.ajs = trunc nuw nsw i64 %i.ajr to i32
  %i.ajt = and i32 %i.ajs, 1048575                ; 3 uses
  %i.aju = icmp samesign ult i32 %i.ajt, 1048574
  br i1 %i.aju, label %bb.ky, label %bb.kz, !prof !52

bb.ky:                                            ; preds = %bb.kx
  %i.ajv = add nuw nsw i32 %i.ajt, 1
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = shl nuw nsw i64 %i.ajw, 40
  %i.ajy = and i64 %i.ajq, -1152920405095219201
  %i.ajz = or i64 %i.ajx, %i.ajy
  store i64 %i.ajz, ptr %i.ajp, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462

bb.kz:                                            ; preds = %bb.kx
  %i.aka = icmp eq i32 %i.ajt, 1048574
  br i1 %i.aka, label %bb.la, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462, !prof !51

bb.la:                                            ; preds = %bb.kz
  %i.akb = or i64 %i.ajq, 1152920405095219200
  store i64 %i.akb, ptr %i.ajp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ajp)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462 unwind label %.thread638

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462:       ; preds = %bb.kz, %bb.ky, %bb.la
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %75, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 %76)
          to label %bb.lb unwind label %.thread644

bb.lb:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit462
  %i.akc = load ptr, ptr %75, align 8, !tbaa !40, !noalias !439 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  %i.ake = load ptr, ptr %43, align 8, !tbaa !40, !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !442
  %i.akf = load ptr, ptr %i.akd, align 8, !tbaa !47, !noalias !442
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef %i.akf, i32 noundef 5)
          to label %.noexc466 unwind label %bb.nh

.noexc466:                                        ; preds = %bb.lb
  store ptr %i.akc, ptr %10, align 8, !tbaa !49, !noalias !442
  %i.akg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull align 8 %10)
          to label %bb.lc unwind label %bb.lf, !noalias !442

bb.lc:                                            ; preds = %.noexc466
  store ptr %i.ake, ptr %11, align 8, !tbaa !49, !noalias !442
  %i.akh = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.akg, ptr noundef nonnull align 8 %11)
          to label %bb.ld unwind label %bb.lg, !noalias !442 ; 0 uses

bb.ld:                                            ; preds = %bb.lc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %74, ptr noundef nonnull align 8 dereferenceable(124) %9)
          to label %bb.lh unwind label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %.body.i464

bb.lf:                                            ; preds = %.noexc466
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i464

bb.lg:                                            ; preds = %bb.lc
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i464

.body.i464:                                       ; preds = %bb.lg, %bb.lf, %bb.le
  %.pn5.i.i465 = phi { ptr, i32 } [ %i.aki, %bb.le ], [ %i.akk, %bb.lg ], [ %i.akj, %bb.lf ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !442
  br label %bb.ns

bb.lh:                                            ; preds = %bb.ld
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !439
  %i.akl = load ptr, ptr %74, align 8, !tbaa !40  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %i.akm = load ptr, ptr %37, align 8, !tbaa !73  ; 5 uses
  store ptr %i.akm, ptr %79, align 8, !tbaa !73
  %i.akn = load i64, ptr %i.akm, align 8          ; 3 uses
  %i.ako = lshr i64 %i.akn, 40
  %i.akp = trunc nuw nsw i64 %i.ako to i32
  %i.akq = and i32 %i.akp, 1048575                ; 3 uses
  %i.akr = icmp samesign ult i32 %i.akq, 1048574
  br i1 %i.akr, label %bb.li, label %bb.lj, !prof !52

bb.li:                                            ; preds = %bb.lh
  %i.aks = add nuw nsw i32 %i.akq, 1
  %i.akt = zext nneg i32 %i.aks to i64
  %i.aku = shl nuw nsw i64 %i.akt, 40
  %i.akv = and i64 %i.akn, -1152920405095219201
  %i.akw = or i64 %i.aku, %i.akv
  store i64 %i.akw, ptr %i.akm, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471

bb.lj:                                            ; preds = %bb.lh
  %i.akx = icmp eq i32 %i.akq, 1048574
  br i1 %i.akx, label %bb.lk, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471, !prof !51

bb.lk:                                            ; preds = %bb.lj
  %i.aky = or i64 %i.akn, 1152920405095219200
  store i64 %i.aky, ptr %i.akm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.akm)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471 unwind label %bb.ni

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471:       ; preds = %bb.lj, %bb.li, %bb.lk
  invoke void @_ZN4cvc58internal6theory7strings5utils8mkConcatERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EENS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %78, ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 %79)
          to label %bb.ll unwind label %bb.nj

bb.ll:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit471
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  %i.akz = load ptr, ptr %37, align 8, !tbaa !73  ; 5 uses
  store ptr %i.akz, ptr %81, align 8, !tbaa !73
  %i.ala = load i64, ptr %i.akz, align 8          ; 3 uses
  %i.alb = lshr i64 %i.ala, 40
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %i.ald = and i32 %i.alc, 1048575                ; 3 uses
  %i.ale = icmp samesign ult i32 %i.ald, 1048574
  br i1 %i.ale, label %bb.lm, label %bb.ln, !prof !52
end_hunk_3
begin_hunk_4_@_ZN4cvc58internal6theory7strings17SequencesRewriter23rewriteViaStrEqLenUnifyERKNS0_12NodeTemplateILb1EEERNS2_7RewriteE:bb.a
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 unwind label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.asw = landingpad { ptr, i32 }
          catch ptr null
  %i.asx = extractvalue { ptr, i32 } %i.asw, 0
  call void @__clang_call_terminate(ptr %i.asx) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit544, %bb.ol, %bb.om
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  %i.asy = load ptr, ptr %42, align 8, !tbaa !63  ; 3 uses
  %i.asz = load ptr, ptr %i.gj, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i547 = icmp eq ptr %i.asy, %i.asz
  br i1 %.not4.i.i.i547, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555, label %.lr.ph.i.i.i548

.lr.ph.i.i.i548:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551
  %.05.i.i.i549 = phi ptr [ %i.atk, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551 ], [ %i.asy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 ] ; 2 uses
  %i.ata = load ptr, ptr %.05.i.i.i549, align 8, !tbaa !40 ; 3 uses
  %i.atb = load i64, ptr %i.ata, align 8          ; 3 uses
  %i.atc = and i64 %i.atb, 1152920405095219200
  %.not.i.i.i.i.i.i550 = icmp eq i64 %i.atc, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i550, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551, label %bb.oo, !prof !51

bb.oo:                                            ; preds = %.lr.ph.i.i.i548
  %i.atd = add i64 %i.atb, 1152920405095219200
  %i.ate = and i64 %i.atd, 1152920405095219200    ; 2 uses
  %i.atf = and i64 %i.atb, -1152920405095219201
  %i.atg = or disjoint i64 %i.ate, %i.atf
  store i64 %i.atg, ptr %i.ata, align 8
  %i.ath = icmp eq i64 %i.ate, 0
  br i1 %i.ath, label %bb.op, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551, !prof !51

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
  br i1 %.not.i.i.i552, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553, label %.lr.ph.i.i.i548, !llvm.loop !67

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i551
  %.pr.i554 = load ptr, ptr %42, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546
  %i.atl = phi ptr [ %.pr.i554, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i553 ], [ %i.asy, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit546 ] ; 3 uses
  %.not.i.i1.i556 = icmp eq ptr %i.atl, null
  br i1 %.not.i.i1.i556, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558, label %bb.or

bb.or:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i555
  %i.atm = load ptr, ptr %i.gi, align 8, !tbaa !69
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
  br i1 %.not176, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !454

._crit_edge.loopexit:                             ; preds = %bb.ou, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558
  %.3161.ph = phi i32 [ %.2160, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558 ], [ 5, %bb.ou ]
  %.6145.ph = phi i64 [ %.4143, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit558 ], [ %.5144, %bb.ou ]
  %i.atr = icmp eq i32 %.3161.ph, 5
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %.3161 = phi i1 [ true, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ %i.atr, %._crit_edge.loopexit ] ; 2 uses
  %.6145 = phi i64 [ %.0139925, %_ZN4cvc58internal8TypeNodeD2Ev.exit ], [ %.6145.ph, %._crit_edge.loopexit ]
  %i.ats = load ptr, ptr %40, align 8, !tbaa !40  ; 3 uses
  %i.att = load i64, ptr %i.ats, align 8          ; 3 uses
  %i.atu = and i64 %i.att, 1152920405095219200
  %.not.i.i559 = icmp eq i64 %i.atu, 1152920405095219200
  br i1 %.not.i.i559, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, label %bb.ov, !prof !51

bb.ov:                                            ; preds = %._crit_edge
  %i.atv = add i64 %i.att, 1152920405095219200
  %i.atw = and i64 %i.atv, 1152920405095219200    ; 2 uses
  %i.atx = and i64 %i.att, -1152920405095219201
  %i.aty = or disjoint i64 %i.atw, %i.atx
  store i64 %i.aty, ptr %i.ats, align 8
  %i.atz = icmp eq i64 %i.atw, 0
  br i1 %i.atz, label %bb.ow, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, !prof !51

bb.ow:                                            ; preds = %bb.ov
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ats)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 unwind label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.aua = landingpad { ptr, i32 }
          catch ptr null
  %i.aub = extractvalue { ptr, i32 } %i.aua, 0
  call void @__clang_call_terminate(ptr %i.aub) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560: ; preds = %._crit_edge, %bb.ov, %bb.ow
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  %i.auc = load ptr, ptr %39, align 8, !tbaa !63  ; 3 uses
  %i.aud = load ptr, ptr %i.gg, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i561 = icmp eq ptr %i.auc, %i.aud
  br i1 %.not4.i.i.i561, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569, label %.lr.ph.i.i.i562

.lr.ph.i.i.i562:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565
  %.05.i.i.i563 = phi ptr [ %i.auo, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565 ], [ %i.auc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 ] ; 2 uses
  %i.aue = load ptr, ptr %.05.i.i.i563, align 8, !tbaa !40 ; 3 uses
  %i.auf = load i64, ptr %i.aue, align 8          ; 3 uses
  %i.aug = and i64 %i.auf, 1152920405095219200
  %.not.i.i.i.i.i.i564 = icmp eq i64 %i.aug, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i564, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565, label %bb.oy, !prof !51

bb.oy:                                            ; preds = %.lr.ph.i.i.i562
  %i.auh = add i64 %i.auf, 1152920405095219200
  %i.aui = and i64 %i.auh, 1152920405095219200    ; 2 uses
  %i.auj = and i64 %i.auf, -1152920405095219201
  %i.auk = or disjoint i64 %i.aui, %i.auj
  store i64 %i.auk, ptr %i.aue, align 8
  %i.aul = icmp eq i64 %i.aui, 0
  br i1 %i.aul, label %bb.oz, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565, !prof !51

bb.oz:                                            ; preds = %bb.oy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aue)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565 unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.aum = landingpad { ptr, i32 }
          catch ptr null
  %i.aun = extractvalue { ptr, i32 } %i.aum, 0
  call void @__clang_call_terminate(ptr %i.aun) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565: ; preds = %bb.oz, %bb.oy, %.lr.ph.i.i.i562
  %i.auo = getelementptr inbounds nuw i8, ptr %.05.i.i.i563, i64 8 ; 2 uses
  %.not.i.i.i566 = icmp eq ptr %i.auo, %i.aud
  br i1 %.not.i.i.i566, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567, label %.lr.ph.i.i.i562, !llvm.loop !67

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i565
  %.pr.i568 = load ptr, ptr %39, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560
  %i.aup = phi ptr [ %.pr.i568, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i567 ], [ %i.auc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit560 ] ; 3 uses
  %.not.i.i1.i570 = icmp eq ptr %i.aup, null
  br i1 %.not.i.i1.i570, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572, label %bb.pb

bb.pb:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569
  %i.auq = load ptr, ptr %i.gf, align 8, !tbaa !69
  %i.aur = ptrtoint ptr %i.auq to i64
  %i.aus = ptrtoint ptr %i.aup to i64
  %i.aut = sub i64 %i.aur, %i.aus
  call void @_ZdlPvm(ptr noundef nonnull %i.aup, i64 noundef %i.aut) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit572: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i569, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %i.auu = add i64 %.0157924, 1                   ; 2 uses
  %.not175 = icmp ule i64 %i.auu, %i.ge
  %or.cond1063 = select i1 %.3161, i1 %.not175, i1 false
  br i1 %or.cond1063, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i, label %bb.pd, !llvm.loop !455

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
  %i.auv = load ptr, ptr %37, align 8, !tbaa !73  ; 3 uses
  %i.auw = load i64, ptr %i.auv, align 8          ; 3 uses
  %i.aux = and i64 %i.auw, 1152920405095219200
  %.not.i.i573 = icmp eq i64 %i.aux, 1152920405095219200
  br i1 %.not.i.i573, label %_ZN4cvc58internal8TypeNodeD2Ev.exit574, label %bb.pe, !prof !51

bb.pe:                                            ; preds = %bb.pd
  %i.auy = add i64 %i.auw, 1152920405095219200
  %i.auz = and i64 %i.auy, 1152920405095219200    ; 2 uses
  %i.ava = and i64 %i.auw, -1152920405095219201
  %i.avb = or disjoint i64 %i.auz, %i.ava
  store i64 %i.avb, ptr %i.auv, align 8
  %i.avc = icmp eq i64 %i.auz, 0
  br i1 %i.avc, label %bb.pf, label %_ZN4cvc58internal8TypeNodeD2Ev.exit574, !prof !51

bb.pf:                                            ; preds = %bb.pe
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.auv)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit574 unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.avd = landingpad { ptr, i32 }
          catch ptr null
  %i.ave = extractvalue { ptr, i32 } %i.avd, 0
  call void @__clang_call_terminate(ptr %i.ave) #25
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit574:           ; preds = %bb.pd, %bb.pe, %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %i.avf = load ptr, ptr %34, align 8, !tbaa !63  ; 3 uses
  %i.avg = load ptr, ptr %i.gh, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i575 = icmp eq ptr %i.avf, %i.avg
  br i1 %.not4.i.i.i575, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583, label %.lr.ph.i.i.i576

.lr.ph.i.i.i576:                                  ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit574, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579
  %.05.i.i.i577 = phi ptr [ %i.avr, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579 ], [ %i.avf, %_ZN4cvc58internal8TypeNodeD2Ev.exit574 ] ; 2 uses
  %i.avh = load ptr, ptr %.05.i.i.i577, align 8, !tbaa !40 ; 3 uses
  %i.avi = load i64, ptr %i.avh, align 8          ; 3 uses
  %i.avj = and i64 %i.avi, 1152920405095219200
  %.not.i.i.i.i.i.i578 = icmp eq i64 %i.avj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i578, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579, label %bb.ph, !prof !51

bb.ph:                                            ; preds = %.lr.ph.i.i.i576
  %i.avk = add i64 %i.avi, 1152920405095219200
  %i.avl = and i64 %i.avk, 1152920405095219200    ; 2 uses
  %i.avm = and i64 %i.avi, -1152920405095219201
  %i.avn = or disjoint i64 %i.avl, %i.avm
  store i64 %i.avn, ptr %i.avh, align 8
  %i.avo = icmp eq i64 %i.avl, 0
  br i1 %i.avo, label %bb.pi, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579, !prof !51

bb.pi:                                            ; preds = %bb.ph
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579 unwind label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.avp = landingpad { ptr, i32 }
          catch ptr null
  %i.avq = extractvalue { ptr, i32 } %i.avp, 0
  call void @__clang_call_terminate(ptr %i.avq) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579: ; preds = %bb.pi, %bb.ph, %.lr.ph.i.i.i576
  %i.avr = getelementptr inbounds nuw i8, ptr %.05.i.i.i577, i64 8 ; 2 uses
  %.not.i.i.i580 = icmp eq ptr %i.avr, %i.avg
  br i1 %.not.i.i.i580, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581, label %.lr.ph.i.i.i576, !llvm.loop !67

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i579
  %.pr.i582 = load ptr, ptr %34, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581, %_ZN4cvc58internal8TypeNodeD2Ev.exit574
  %i.avs = phi ptr [ %.pr.i582, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i581 ], [ %i.avf, %_ZN4cvc58internal8TypeNodeD2Ev.exit574 ] ; 3 uses
  %.not.i.i1.i584 = icmp eq ptr %i.avs, null
  br i1 %.not.i.i1.i584, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586, label %bb.pk

bb.pk:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583
  %i.avt = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !69
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.avs to i64
  %i.avx = sub i64 %i.avv, %i.avw
  call void @_ZdlPvm(ptr noundef nonnull %i.avs, i64 noundef %i.avx) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i583, %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  %i.avy = load ptr, ptr %33, align 8, !tbaa !63  ; 3 uses
  %i.avz = load ptr, ptr %i.fy, align 8, !tbaa !66 ; 2 uses
  %.not4.i.i.i587 = icmp eq ptr %i.avy, %i.avz
  br i1 %.not4.i.i.i587, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595, label %.lr.ph.i.i.i588

.lr.ph.i.i.i588:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591
  %.05.i.i.i589 = phi ptr [ %i.awk, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591 ], [ %i.avy, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586 ] ; 2 uses
  %i.awa = load ptr, ptr %.05.i.i.i589, align 8, !tbaa !40 ; 3 uses
  %i.awb = load i64, ptr %i.awa, align 8          ; 3 uses
  %i.awc = and i64 %i.awb, 1152920405095219200
  %.not.i.i.i.i.i.i590 = icmp eq i64 %i.awc, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i590, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591, label %bb.pl, !prof !51

bb.pl:                                            ; preds = %.lr.ph.i.i.i588
  %i.awd = add i64 %i.awb, 1152920405095219200
  %i.awe = and i64 %i.awd, 1152920405095219200    ; 2 uses
  %i.awf = and i64 %i.awb, -1152920405095219201
  %i.awg = or disjoint i64 %i.awe, %i.awf
  store i64 %i.awg, ptr %i.awa, align 8
  %i.awh = icmp eq i64 %i.awe, 0
  br i1 %i.awh, label %bb.pm, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591, !prof !51

bb.pm:                                            ; preds = %bb.pl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.awa)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591 unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.awi = landingpad { ptr, i32 }
          catch ptr null
  %i.awj = extractvalue { ptr, i32 } %i.awi, 0
  call void @__clang_call_terminate(ptr %i.awj) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591: ; preds = %bb.pm, %bb.pl, %.lr.ph.i.i.i588
  %i.awk = getelementptr inbounds nuw i8, ptr %.05.i.i.i589, i64 8 ; 2 uses
  %.not.i.i.i592 = icmp eq ptr %i.awk, %i.avz
  br i1 %.not.i.i.i592, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593, label %.lr.ph.i.i.i588, !llvm.loop !67

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i591
  %.pr.i594 = load ptr, ptr %33, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586
  %i.awl = phi ptr [ %.pr.i594, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i593 ], [ %i.avy, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit586 ] ; 3 uses
  %.not.i.i1.i596 = icmp eq ptr %i.awl, null
  br i1 %.not.i.i1.i596, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit598, label %bb.po

bb.po:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i595
  %i.awm = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !69
  %i.awo = ptrtoint ptr %i.awn to i64
  %i.awp = ptrtoint ptr %i.awl to i64
  %i.awq = sub i64 %i.awo, %i.awp
  call void @_ZdlPvm(ptr noundef nonnull %i.awl, i64 noundef %i.awq) #26
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
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.awr = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !40, !noalias !456 ; 5 uses
  store ptr %i.awr, ptr %0, align 8, !tbaa !40, !alias.scope !456
  %i.aws = load i64, ptr %i.awr, align 8, !noalias !456 ; 3 uses
  %i.awt = lshr i64 %i.aws, 40
  %i.awu = trunc nuw nsw i64 %i.awt to i32
  %i.awv = and i32 %i.awu, 1048575                ; 3 uses
  %i.aww = icmp samesign ult i32 %i.awv, 1048574
  br i1 %i.aww, label %bb.ps, label %bb.pt, !prof !52

bb.ps:                                            ; preds = %bb.pr
  %i.awx = add nuw nsw i32 %i.awv, 1
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = shl nuw nsw i64 %i.awy, 40
  %i.axa = and i64 %i.aws, -1152920405095219201
  %i.axb = or i64 %i.awz, %i.axa
  store i64 %i.axb, ptr %i.awr, align 8, !noalias !456
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.pt:                                            ; preds = %bb.pr
  %i.axc = icmp eq i32 %i.awv, 1048574
  br i1 %i.axc, label %bb.pu, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !51

bb.pu:                                            ; preds = %bb.pt
  %i.axd = or i64 %i.aws, 1152920405095219200
end_hunk_4
begin_hunk_5_@_ZSt16__do_uninit_copyIPKSt5tupleIJN4cvc58internal12NodeTemplateILb1EEES4_iEEPS5_ET0_T_SA_S9_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !63     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #27
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !40     ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !40
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 1048575                    ; 3 uses
  %i.w = icmp samesign ult i32 %i.v, 1048574
  br i1 %i.w, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 40
  %i.aa = and i64 %i.s, -1152920405095219201
  %i.ab = or i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.r, align 8
  br label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp eq i32 %i.v, 1048574
  br i1 %i.ac, label %bb.e, label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit, !prof !51

bb.e:                                             ; preds = %bb.d
  %i.ad = or i64 %i.s, 1152920405095219200
  store i64 %i.ad, ptr %i.r, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit unwind label %bb.k

_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.j

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.af)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 unwind label %bb.k

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30 ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i, align 8, !tbaa !40 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = and i64 %i.ai, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.f, !prof !51

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ak = add i64 %i.ai, 1152920405095219200
  %i.al = and i64 %i.ak, 1152920405095219200      ; 2 uses
  %i.am = and i64 %i.ai, -1152920405095219201
  %i.an = or disjoint i64 %i.al, %i.am
  store i64 %i.an, ptr %i.ah, align 8
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %bb.g, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !51

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #25
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !67

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #26
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !63
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !69
  ret void

bb.j:                                             ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal12NodeTemplateILb1EEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #23 ; 0 uses
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #23
  br label %bb.m

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %bb.e
  %.0.ph = phi ptr [ %i.p, %bb.e ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %i.az) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #25
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2341
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !971  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !970    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !52

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !971
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !970
  store i64 %i.s, ptr %i.d, align 8, !tbaa !970
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !971
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !52

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !970
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !970
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec128, 3
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %broadcast.splat130, ptr %next.gep133, align 8, !tbaa !970
  store <2 x i64> %broadcast.splat130, ptr %i.ak, align 8, !tbaa !970
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !2342

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !970
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !2345

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !970
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !970
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !970
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2347

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !971
  %i.bb = icmp sgt i64 %i.k, 8
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !52

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !971
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %1, align 8, !tbaa !970
  store i64 %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !970
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !971
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !970
  store <2 x i64> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !970
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !2348

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !970
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !2349

end_hunk_5
