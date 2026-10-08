Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/node_algorithm?download=true
inline.NumInlined: 3206
inline.NumDeleted: 1278
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal4expr23getConversionConditionsENS0_12NodeTemplateILb1EEES3_RSt6vectorIS3_SaIS3_EEb:_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i
  br label %bb.cu

bb.f:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb0EEES3_EaSERKS4_.exit
  %i.af = invoke ptr @_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit unwind label %bb.g

_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %bb.f
  %.not153 = icmp eq ptr %i.af, null
  br i1 %.not153, label %bb.h, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.h:                                             ; preds = %_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %12, ptr %11, align 8, !tbaa !192
  %i.ah = invoke { ptr, i8 } @_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SN_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEES0_INS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ai = load ptr, ptr %14, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 1023                     ; 2 uses
  %i.an = icmp eq i32 %i.am, 1023
  %i.ao = select i1 %i.an, i32 -1, i32 %i.am
  %i.ap = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ao)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp eq i32 %i.ap, 2
  %i.ar = load i64, ptr %i.aj, align 8
  %i.as = lshr i64 %i.ar, 32
  %i.at = and i64 %i.as, 67108863
  %i.au = sext i1 %i.aq to i64
  %i.av = add nsw i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967295
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %14, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1023
  %i.bd = select i1 %i.bc, i32 -1, i32 %i.bb
  %i.be = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bd)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 1023                     ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 1023
  %i.bm = select i1 %i.bl, i32 -1, i32 %i.bk
  %i.bn = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bm)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.bo = lshr i64 %i.bf, 32
  %i.bp = and i64 %i.bo, 67108863
  %i.bq = icmp eq i32 %i.be, 2
  %i.br = sext i1 %i.bq to i64
  %i.bs = add nsw i64 %i.bp, %i.br
  %i.bt = icmp eq i32 %i.bn, 2
  %i.bu = load i64, ptr %i.bh, align 8
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = and i64 %i.bv, 67108863
  %i.bx = sext i1 %i.bt to i64
  %i.by = add nsw i64 %i.bw, %i.bx
  %i.bz = xor i64 %i.by, %i.bs
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.cd = load ptr, ptr %13, align 8, !tbaa !200
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 4                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.5") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.5") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %15, align 8, !tbaa !58
  %i.cj = load ptr, ptr %16, align 8, !tbaa !58   ; 4 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  %i.cl = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cm = and i64 %i.cl, 1152920405095219200
  %.not.i.i53 = icmp eq i64 %i.cm, 1152920405095219200
  br i1 %.not.i.i53, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.q, !prof !45

bb.q:                                             ; preds = %bb.p
  %i.cn = add i64 %i.cl, 1152920405095219200
  %i.co = and i64 %i.cn, 1152920405095219200      ; 2 uses
  %i.cp = and i64 %i.cl, -1152920405095219201
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cj, align 8
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !45

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.cu = load ptr, ptr %15, align 8, !tbaa !58   ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, label %bb.t, !prof !45

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cx = add i64 %i.cv, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cv, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.cu, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, !prof !45

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %i.ck, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  %i.de = load ptr, ptr %14, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 1023
  %i.dj = invoke noundef zeroext i1 @_ZN4cvc58internal4kind13isClosureKindENS1_6Kind_tE(i32 noundef %i.di)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE9isClosureEv.exit unwind label %bb.ad

_ZNK4cvc58internal12NodeTemplateILb0EE9isClosureEv.exit: ; preds = %bb.w
  br i1 %i.dj, label %bb.x, label %.thread149

bb.x:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE9isClosureEv.exit
  %i.dk = load ptr, ptr %14, align 8, !tbaa !31, !noalias !350 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !350
  %i.dn = trunc i64 %i.dm to i32
  %i.do = and i32 %i.dn, 1023                     ; 2 uses
  %i.dp = icmp eq i32 %i.do, 1023
  %i.dq = select i1 %i.dp, i32 -1, i32 %i.do
  %i.dr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dq)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ds = icmp eq i32 %i.dr, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.du = zext i1 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !44, !noalias !350
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !351 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !351
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = and i32 %i.ea, 1023                     ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 1023
  %i.ed = select i1 %i.ec, i32 -1, i32 %i.eb
  %i.ee = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ed)
          to label %20 unwind label %bb.af

bb.z:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aa:                                            ; preds = %bb.n
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ab ], [ %i.eg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cu

bb.ad:                                            ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ae:                                            ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.af:                                            ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  br i1 %3, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %14, align 8, !tbaa !31
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = and i64 %i.en, 1023
  %i.ep = icmp eq i64 %i.eo, 26
  br i1 %i.ep, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.eq = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8
  %i.et = and i64 %i.es, 1023
  %i.eu = icmp eq i64 %i.et, 26
  br i1 %i.eu, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.5") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.5") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.al unwind label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !201 ; 7 uses
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !202
  %.not.i60 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not.i60, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = load ptr, ptr %17, align 8, !tbaa !58
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !31
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ez = load ptr, ptr %18, align 8, !tbaa !58   ; 2 uses
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.fa, ptr %i.f, align 8, !tbaa !201
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJNS3_ILb1EEES9_EEERS5_DpOT_.exit

bb.an:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %13, align 8, !tbaa !200  ; 5 uses
  %i.fc = ptrtoint ptr %i.ev to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775792
  br i1 %i.ff, label %bb.ao, label %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i95

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc111 unwind label %.loopexit.split-lp156

.noexc111:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i95: ; preds = %bb.an
  %i.fg = ashr exact i64 %i.fe, 4                 ; 3 uses
  %.sroa.speculated.i.i96 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i96, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 576460752303423487)
  %i.fk = select i1 %i.fi, i64 576460752303423487, i64 %i.fj ; 3 uses
  %.not.i.i97 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i97)
  %i.fl = shl nuw nsw i64 %i.fk, 4
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #22
          to label %.noexc112 unwind label %.loopexit155 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i95
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe ; 2 uses
  %i.fo = load ptr, ptr %17, align 8, !tbaa !58
  store ptr %i.fo, ptr %i.fn, align 8, !tbaa !31
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load ptr, ptr %18, align 8, !tbaa !58   ; 2 uses
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !31
  %.not13.i.i.i.i.i.i98 = icmp eq ptr %i.fb, %i.ev
  br i1 %.not13.i.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108, label %.lr.ph.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i99:                             ; preds = %.noexc112, %.lr.ph.i.i.i.i.i.i99
  %.015.i.i.i.i.i.i100 = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i99 ], [ %i.fm, %.noexc112 ] ; 3 uses
  %.01214.i.i.i.i.i.i101 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i.i99 ], [ %i.fb, %.noexc112 ] ; 3 uses
  %i.fr = load ptr, ptr %.01214.i.i.i.i.i.i101, align 8, !tbaa !31
  store ptr %i.fr, ptr %.015.i.i.i.i.i.i100, align 8, !tbaa !31
  %i.fs = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i100, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i101, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !31
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !31
  %i.fv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i101, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i100, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fv, %i.ev
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108, label %.lr.ph.i.i.i.i.i.i99, !llvm.loop !15

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108: ; preds = %.lr.ph.i.i.i.i.i.i99, %.noexc112
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fm, %.noexc112 ], [ %i.fw, %.lr.ph.i.i.i.i.i.i99 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i36.i110 = icmp eq ptr %i.fb, null
  br i1 %.not.i36.i110, label %.noexc62, label %bb.ap

bb.ap:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108
  %i.fy = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.ga) #24
  %.pre.pre = load ptr, ptr %18, align 8, !tbaa !58
  br label %.noexc62

.noexc62:                                         ; preds = %bb.ap, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108
  %.pre = phi ptr [ %.pre.pre, %bb.ap ], [ %i.fq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i108 ]
  store ptr %i.fm, ptr %13, align 8, !tbaa !200
  store ptr %i.fx, ptr %i.f, align 8, !tbaa !201
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gb, ptr %i.g, align 8, !tbaa !202
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJNS3_ILb1EEES9_EEERS5_DpOT_.exit

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJNS3_ILb1EEES9_EEERS5_DpOT_.exit: ; preds = %.noexc62, %bb.am
  %i.gc = phi ptr [ %.pre, %.noexc62 ], [ %i.ez, %bb.am ] ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 8            ; 3 uses
  %i.ge = and i64 %i.gd, 1152920405095219200
  %.not.i.i63 = icmp eq i64 %i.ge, 1152920405095219200
  br i1 %.not.i.i63, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, label %bb.aq, !prof !45

bb.aq:                                            ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJNS3_ILb1EEES9_EEERS5_DpOT_.exit
  %i.gf = add i64 %i.gd, 1152920405095219200
  %i.gg = and i64 %i.gf, 1152920405095219200      ; 2 uses
  %i.gh = and i64 %i.gd, -1152920405095219201
  %i.gi = or disjoint i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %i.gc, align 8
  %i.gj = icmp eq i64 %i.gg, 0
  br i1 %i.gj, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, !prof !45

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64: ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJNS3_ILb1EEES9_EEERS5_DpOT_.exit, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.gm = load ptr, ptr %17, align 8, !tbaa !58   ; 3 uses
  %i.gn = load i64, ptr %i.gm, align 8            ; 3 uses
  %i.go = and i64 %i.gn, 1152920405095219200
  %.not.i.i65 = icmp eq i64 %i.go, 1152920405095219200
  br i1 %.not.i.i65, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66, label %bb.at, !prof !45

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64
  %i.gp = add i64 %i.gn, 1152920405095219200
  %i.gq = and i64 %i.gp, 1152920405095219200      ; 2 uses
  %i.gr = and i64 %i.gn, -1152920405095219201
  %i.gs = or disjoint i64 %i.gq, %i.gr
  store i64 %i.gs, ptr %i.gm, align 8
  %i.gt = icmp eq i64 %i.gq, 0
  br i1 %i.gt, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66, !prof !45

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit64, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.thread149

bb.aw:                                            ; preds = %bb.aj
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ak
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit155:                                     ; preds = %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i95
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp156:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp156, %.loopexit155
  %lpad.phi159 = phi { ptr, i32 } [ %lpad.loopexit157, %.loopexit155 ], [ %lpad.loopexit.split-lp158, %.loopexit.split-lp156 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn27 = phi { ptr, i32 } [ %lpad.phi159, %bb.ay ], [ %i.gx, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.az ], [ %i.gw, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.cu

20:                                               ; preds = %bb.y
  %21 = icmp eq i32 %i.ee, 2
  %22 = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %23 = zext i1 %21 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !44, !noalias !351
  %26 = icmp eq ptr %i.dw, %25
  br i1 %26, label %.thread149, label %.critedge

.thread149:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit66, %_ZNK4cvc58internal12NodeTemplateILb0EE9isClosureEv.exit, %20
  %i.gy = load ptr, ptr %14, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.hb, 1023                     ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 1023
  %i.he = select i1 %i.hd, i32 -1, i32 %i.hc
  %i.hf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.he)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit68 unwind label %bb.bb

_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit68: ; preds = %.thread149
  %i.hg = icmp eq i32 %i.hf, 2
  %i.hh = load i64, ptr %i.gz, align 8
  %i.hi = lshr i64 %i.hh, 32
  %i.hj = and i64 %i.hi, 67108863
  %i.hk = sext i1 %i.hg to i64
  %i.hl = add nsw i64 %i.hj, %i.hk
  %i.hm = and i64 %i.hl, 4294967295               ; 2 uses
  %.not196 = icmp eq i64 %i.hm, 0
  br i1 %.not196, label %.backedge, label %.lr.ph

bb.bb:                                            ; preds = %bb.bp, %.thread149
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit68, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit
  %.0146194 = phi i64 [ %i.me, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit ], [ 0, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit68 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ho = load ptr, ptr %14, align 8, !tbaa !31, !noalias !352 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !noalias !352
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = and i32 %i.hr, 1023                     ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 1023
  %i.hu = select i1 %i.ht, i32 -1, i32 %i.hs
  %i.hv = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.hu)
          to label %.noexc69 unwind label %bb.bs

.noexc69:                                         ; preds = %.lr.ph
  %i.hw = icmp eq i32 %i.hv, 2
  %i.hx = zext i1 %i.hw to i64
  %spec.select.i.i.i = add nuw nsw i64 %.0146194, %i.hx
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %sext.i = shl i64 %spec.select.i.i.i, 32
  %i.hz = ashr exact i64 %sext.i, 29
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !44, !noalias !352
  store ptr %i.ib, ptr %8, align 8, !tbaa !31, !alias.scope !352
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %.noexc70 unwind label %bb.bs

.noexc70:                                         ; preds = %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.ic = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !353 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !353
  %i.if = trunc i64 %i.ie to i32
  %i.ig = and i32 %i.if, 1023                     ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 1023
  %i.ii = select i1 %i.ih, i32 -1, i32 %i.ig
  %i.ij = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ii)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %.noexc70
  %i.ik = icmp eq i32 %i.ij, 2
  %i.il = zext i1 %i.ik to i64
  %spec.select.i.i6.i = add nuw nsw i64 %.0146194, %i.il
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %sext1.i = shl i64 %spec.select.i.i6.i, 32
  %i.in = ashr exact i64 %sext1.i, 29
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !44, !noalias !353
  store ptr %i.ip, ptr %10, align 8, !tbaa !31, !alias.scope !353
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext false)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.iq = load ptr, ptr %7, align 8, !tbaa !175
  %i.ir = load ptr, ptr %9, align 8, !tbaa !175   ; 4 uses
  %i.is = load i64, ptr %i.ir, align 8            ; 3 uses
  %i.it = and i64 %i.is, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.it, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, label %bb.be, !prof !45

bb.be:                                            ; preds = %bb.bd
  %i.iu = add i64 %i.is, 1152920405095219200
  %i.iv = and i64 %i.iu, 1152920405095219200      ; 2 uses
  %i.iw = and i64 %i.is, -1152920405095219201
  %i.ix = or disjoint i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.ir, align 8
  %i.iy = icmp eq i64 %i.iv, 0
  br i1 %i.iy, label %bb.bf, label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i, !prof !45

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ir)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit.i unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #23
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit.i:            ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.jb = load ptr, ptr %7, align 8, !tbaa !175   ; 3 uses
  %i.jc = load i64, ptr %i.jb, align 8            ; 3 uses
  %i.jd = and i64 %i.jc, 1152920405095219200
  %.not.i.i7.i = icmp eq i64 %i.jd, 1152920405095219200
  br i1 %.not.i.i7.i, label %bb.bn, label %bb.bh, !prof !45

bb.bh:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit.i
  %i.je = add i64 %i.jc, 1152920405095219200
  %i.jf = and i64 %i.je, 1152920405095219200      ; 2 uses
  %i.jg = and i64 %i.jc, -1152920405095219201
  %i.jh = or disjoint i64 %i.jf, %i.jg
  store i64 %i.jh, ptr %i.jb, align 8
  %i.ji = icmp eq i64 %i.jf, 0
  br i1 %i.ji, label %bb.bi, label %bb.bn, !prof !45

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jb)
          to label %bb.bn unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #23
  unreachable

bb.bk:                                            ; preds = %.noexc70
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bc
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn.i = phi { ptr, i32 } [ %i.jm, %bb.bl ], [ %i.jl, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.cu

bb.bn:                                            ; preds = %bb.bi, %bb.bh, %_ZN4cvc58internal8TypeNodeD2Ev.exit.i
  %i.jn = icmp eq ptr %i.iq, %i.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.jn, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jo = load ptr, ptr %i.f, align 8, !tbaa !201 ; 2 uses
  %i.jp = load ptr, ptr %13, align 8, !tbaa !200  ; 2 uses
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = ashr exact i64 %i.js, 4                 ; 3 uses
  %i.ju = icmp ugt i64 %i.ch, %i.jt
  br i1 %i.ju, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jv = sub nuw nsw i64 %i.ch, %i.jt
  invoke void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.jv)
          to label %.critedge unwind label %bb.bb

bb.bq:                                            ; preds = %bb.bo
  %i.jw = icmp ult i64 %i.ch, %i.jt
  br i1 %i.jw, label %bb.br, label %.critedge

bb.br:                                            ; preds = %bb.bq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.cg ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.jo, %i.jx
  br i1 %.not.i.i71, label %.critedge, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.br
  store ptr %i.jx, ptr %i.f, align 8, !tbaa !201
  br label %.critedge

bb.bs:                                            ; preds = %.noexc69, %.lr.ph
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.bt:                                            ; preds = %bb.bn
  %i.jz = load ptr, ptr %14, align 8, !tbaa !31, !noalias !354 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !noalias !354
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = and i32 %i.kc, 1023                     ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 1023
  %i.kf = select i1 %i.ke, i32 -1, i32 %i.kd
  %i.kg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kf)
          to label %bb.bu unwind label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  %i.kh = icmp eq i32 %i.kg, 2
  %i.ki = zext i1 %i.kh to i64
  %spec.select.i.i = add nuw i64 %.0146194, %i.ki
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.kk = ashr exact i64 %sext, 29
  %i.kl = getelementptr inbounds i8, ptr %i.kj, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !44, !noalias !354 ; 2 uses
  %i.kn = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !355 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i64, ptr %i.ko, align 8, !noalias !355
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = and i32 %i.kq, 1023                     ; 2 uses
  %i.ks = icmp eq i32 %i.kr, 1023
  %i.kt = select i1 %i.ks, i32 -1, i32 %i.kr
  %i.ku = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kt)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.kv = icmp eq i32 %i.ku, 2
  %i.kw = zext i1 %i.kv to i64
  %spec.select.i.i75 = add nuw i64 %.0146194, %i.kw
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %sext154 = shl i64 %spec.select.i.i75, 32
  %i.ky = ashr exact i64 %sext154, 29
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !44, !noalias !355 ; 2 uses
  %i.lb = load ptr, ptr %i.f, align 8, !tbaa !201 ; 7 uses
  %i.lc = load ptr, ptr %i.g, align 8, !tbaa !202
  %.not.i78 = icmp eq ptr %i.lb, %i.lc
  br i1 %.not.i78, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.km, ptr %i.lb, align 8, !tbaa !31
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store ptr %i.la, ptr %i.ld, align 8, !tbaa !31
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store ptr %i.le, ptr %i.f, align 8, !tbaa !201
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit

bb.bx:                                            ; preds = %bb.bv
  %i.lf = load ptr, ptr %13, align 8, !tbaa !200  ; 5 uses
  %i.lg = ptrtoint ptr %i.lb to i64
  %i.lh = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 3 uses
  %i.lj = icmp eq i64 %i.li, 9223372036854775792
  br i1 %i.lj, label %bb.by, label %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i113

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc131 unwind label %.loopexit.split-lp

.noexc131:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i113: ; preds = %bb.bx
  %i.lk = ashr exact i64 %i.li, 4                 ; 3 uses
  %.sroa.speculated.i.i114 = call i64 @llvm.umax.i64(i64 %i.lk, i64 1)
  %i.ll = add nsw i64 %.sroa.speculated.i.i114, %i.lk ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lk
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ll, i64 576460752303423487)
  %i.lo = select i1 %i.lm, i64 576460752303423487, i64 %i.ln ; 3 uses
  %.not.i.i115 = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %.not.i.i115)
  %i.lp = shl nuw nsw i64 %i.lo, 4
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #22
          to label %.noexc132 unwind label %.loopexit ; 5 uses

.noexc132:                                        ; preds = %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i113
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.li ; 2 uses
  store ptr %i.km, ptr %i.lr, align 8, !tbaa !31
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store ptr %i.la, ptr %i.ls, align 8, !tbaa !31
  %.not13.i.i.i.i.i.i116 = icmp eq ptr %i.lf, %i.lb
  br i1 %.not13.i.i.i.i.i.i116, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i128, label %.lr.ph.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i117:                            ; preds = %.noexc132, %.lr.ph.i.i.i.i.i.i117
  %.015.i.i.i.i.i.i118 = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i117 ], [ %i.lq, %.noexc132 ] ; 3 uses
  %.01214.i.i.i.i.i.i119 = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i117 ], [ %i.lf, %.noexc132 ] ; 3 uses
  %i.lt = load ptr, ptr %.01214.i.i.i.i.i.i119, align 8, !tbaa !31
  store ptr %i.lt, ptr %.015.i.i.i.i.i.i118, align 8, !tbaa !31
  %i.lu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i118, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i119, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !31
  store ptr %i.lw, ptr %i.lu, align 8, !tbaa !31
  %i.lx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i119, i64 16 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i118, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i120 = icmp eq ptr %i.lx, %i.lb
  br i1 %.not.i.i.i.i.i.i120, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i128, label %.lr.ph.i.i.i.i.i.i117, !llvm.loop !15

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i128: ; preds = %.lr.ph.i.i.i.i.i.i117, %.noexc132
  %.0.lcssa.i.i.i.i.i.i122 = phi ptr [ %i.lq, %.noexc132 ], [ %i.ly, %.lr.ph.i.i.i.i.i.i117 ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i122, i64 16
  %.not.i36.i130 = icmp eq ptr %i.lf, null
  br i1 %.not.i36.i130, label %.noexc80, label %bb.bz

bb.bz:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i128
  %i.ma = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = sub i64 %i.mb, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.mc) #24
  br label %.noexc80

.noexc80:                                         ; preds = %bb.bz, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES6_SaIS5_EET0_T_S9_S8_RT1_.exit35.i128
  store ptr %i.lq, ptr %13, align 8, !tbaa !200
  store ptr %i.lz, ptr %i.f, align 8, !tbaa !201
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.lo
  store ptr %i.md, ptr %i.g, align 8, !tbaa !202
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit: ; preds = %.noexc80, %bb.bw
  %i.me = add nuw nsw i64 %.0146194, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.me, %i.hm
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !343

bb.ca:                                            ; preds = %bb.bt
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cb:                                            ; preds = %bb.bu
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12_M_check_lenEmPKc.exit.i113
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.loopexit.split-lp:                               ; preds = %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.critedge:                                        ; preds = %bb.ah, %bb.ai, %bb.ag, %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.br, %bb.bq, %bb.bp, %20, %bb.m, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.mh = load ptr, ptr %14, align 8, !tbaa !31, !noalias !356 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !357
  %i.mk = load ptr, ptr %i.mi, align 8, !tbaa !48, !noalias !357
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef %i.mk, i32 noundef 5)
          to label %.noexc81 unwind label %bb.cq

.noexc81:                                         ; preds = %.critedge
  store ptr %i.mh, ptr %5, align 8, !tbaa !31, !noalias !357
  %i.ml = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 %5)
          to label %bb.cc unwind label %bb.cf, !noalias !357

bb.cc:                                            ; preds = %.noexc81
  store ptr %i.mj, ptr %6, align 8, !tbaa !31, !noalias !357
  %i.mm = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ml, ptr noundef nonnull align 8 %6)
          to label %bb.cd unwind label %bb.cg, !noalias !357 ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.5") align 8 %19, ptr noundef nonnull align 8 dereferenceable(124) %4)
          to label %bb.ch unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cf:                                            ; preds = %.noexc81
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cg:                                            ; preds = %bb.cc
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cg, %bb.cf, %bb.ce
  %.pn5.i.i = phi { ptr, i32 } [ %i.mn, %bb.ce ], [ %i.mp, %bb.cg ], [ %i.mo, %bb.cf ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !357
  br label %.body82

bb.ch:                                            ; preds = %bb.cd
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !356
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !356
  %i.mq = load ptr, ptr %i.q, align 8, !tbaa !204 ; 3 uses
  %i.mr = load ptr, ptr %i.r, align 8, !tbaa !205
  %.not.i.i84 = icmp eq ptr %i.mq, %i.mr
  br i1 %.not.i.i84, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ms = load ptr, ptr %19, align 8, !tbaa !58   ; 5 uses
  store ptr %i.ms, ptr %i.mq, align 8, !tbaa !58
  %i.mt = load i64, ptr %i.ms, align 8            ; 3 uses
  %i.mu = lshr i64 %i.mt, 40
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = and i32 %i.mv, 1048575                  ; 3 uses
  %i.mx = icmp samesign ult i32 %i.mw, 1048574
  br i1 %i.mx, label %bb.cj, label %bb.ck, !prof !49

bb.cj:                                            ; preds = %bb.ci
  %i.my = add nuw nsw i32 %i.mw, 1
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, 40
  %i.nb = and i64 %i.mt, -1152920405095219201
  %i.nc = or i64 %i.na, %i.nb
  store i64 %i.nc, ptr %i.ms, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.nd = icmp eq i32 %i.mw, 1048574
  br i1 %i.nd, label %bb.cl, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !45

bb.cl:                                            ; preds = %bb.ck
  %i.ne = or i64 %i.mt, 1152920405095219200
  store i64 %i.ne, ptr %i.ms, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.cr

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.nf = load ptr, ptr %i.q, align 8, !tbaa !204
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %i.ng, ptr %i.q, align 8, !tbaa !204
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.cm:                                            ; preds = %bb.ch
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.mq, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.cr

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.cm
  %i.nh = load ptr, ptr %19, align 8, !tbaa !58   ; 3 uses
  %i.ni = load i64, ptr %i.nh, align 8            ; 3 uses
  %i.nj = and i64 %i.ni, 1152920405095219200
  %.not.i.i87 = icmp eq i64 %i.nj, 1152920405095219200
  br i1 %.not.i.i87, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88, label %bb.cn, !prof !45

bb.cn:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.nk = add i64 %i.ni, 1152920405095219200
  %i.nl = and i64 %i.nk, 1152920405095219200      ; 2 uses
  %i.nm = and i64 %i.ni, -1152920405095219201
  %i.nn = or disjoint i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.nh, align 8
  %i.no = icmp eq i64 %i.nl, 0
  br i1 %i.no, label %bb.co, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88, !prof !45

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
  call void @__clang_call_terminate(ptr %i.nq) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %.backedge

bb.cq:                                            ; preds = %.critedge
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body82

bb.cr:                                            ; preds = %bb.cm, %bb.cl
  %i.ns = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #21
  br label %.body82

.body82:                                          ; preds = %bb.cq, %.body.i, %bb.cr
  %.pn38 = phi { ptr, i32 } [ %i.ns, %bb.cr ], [ %i.nr, %bb.cq ], [ %.pn5.i.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.cu

.backedge:                                        ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EE12emplace_backIJS4_S4_EEERS5_DpOT_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit88, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit68, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb0EEES3_EaSERKS4_.exit, %_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EE4findERKS5_.exit
  %i.nt = load ptr, ptr %13, align 8, !tbaa !349  ; 2 uses
  %i.nu = load ptr, ptr %i.f, align 8, !tbaa !349 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %._crit_edge, label %bb.a, !llvm.loop !348

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %.lcssa161 = phi ptr [ %i.m, %.preheader ], [ %i.nt, %.backedge ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.not.i.i.i89 = icmp eq ptr %.lcssa161, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge
  %i.nw = load ptr, ptr %i.g, align 8, !tbaa !202
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = ptrtoint ptr %.lcssa161 to i64
  %i.nz = sub i64 %i.nx, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa161, i64 noundef %i.nz) #24
  br label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.oa = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ob, %.lr.ph.i.i.i.i ], [ %i.oa, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit ] ; 2 uses
  %i.ob = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #24
  %.not.i.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ESaIS5_EED2Ev.exit
  %i.oc = load ptr, ptr %12, align 8, !tbaa !189
  %i.od = load i64, ptr %i.b, align 8, !tbaa !190
  %i.oe = shl i64 %i.od, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.oc, i8 0, i64 %i.oe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.of = load ptr, ptr %12, align 8, !tbaa !189  ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.a
  br i1 %i.og, label %_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.oh = load i64, ptr %i.b, align 8, !tbaa !190
  %i.oi = shl i64 %i.oh, 3
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #24
  br label %_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ES8_EESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb0EEES4_ES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ENS2_16PairHashFunctionIS4_S4_St4hashIS4_ESD_EENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  ret void

bb.cu:                                            ; preds = %bb.d, %bb.bb, %bb.bm, %bb.bs, %bb.cb, %bb.ca, %bb.ae, %bb.af, %bb.z, %.body82, %bb.ba, %bb.ad, %bb.ac, %bb.g, %bb.e, %.loopexit.split-lp, %.loopexit
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %i.ag, %bb.g ], [ %i.ae, %bb.e ], [ %.pn38, %.body82 ], [ %i.ef, %bb.z ], [ %i.ej, %bb.ae ], [ %.pn, %bb.ac ], [ %i.ei, %bb.ad ], [ %.pn27.pn, %bb.ba ], [ %i.ek, %bb.af ], [ %i.hn, %bb.bb ], [ %.pn.i, %bb.bm ], [ %i.jy, %bb.bs ], [ %i.mf, %bb.ca ], [ %i.mg, %bb.cb ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.pre199 = load ptr, ptr %13, align 8, !tbaa !200 ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %.pre199, null
end_hunk_0
