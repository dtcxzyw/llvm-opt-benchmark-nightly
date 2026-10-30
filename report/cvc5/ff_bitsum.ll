Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ff_bitsum?download=true
inline.NumInlined: 1090
inline.NumDeleted: 560
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes8FfBitsum13applyInternalEPNS1_17AssertionPipelineE:bb.a
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.ci = load i8, ptr %i.o, align 8, !tbaa !53, !range !54, !noundef !55
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ck = load i64, ptr %i.p, align 8, !tbaa !56
  %.not.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.not.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %20, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.023.0.in.i = phi ptr [ %i.c, %bb.t ], [ %.sroa.023.0.i, %bb.v ]
  %.sroa.023.0.i = load ptr, ptr %.sroa.023.0.in.i, align 8, !tbaa !57 ; 3 uses
  %.not.i292 = icmp eq ptr %.sroa.023.0.i, null
  br i1 %.not.i292, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.023.0.i, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.co = icmp eq ptr %i.cl, %i.cn
  br i1 %i.co, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit, label %bb.u, !llvm.loop !103

.thread.i:                                        ; preds = %bb.u, %bb.s
  %i.cp = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %.noexc293 unwind label %bb.am ; 4 uses

.noexc293:                                        ; preds = %.thread.i
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.cr = urem i64 %i.cp, %i.cq                   ; 3 uses
  %i.cs = load i64, ptr %i.p, align 8, !tbaa !56
  %.not30.i = icmp eq i64 %i.cs, 0
  br i1 %.not30.i, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %.noexc293
  %i.ct = load ptr, ptr %15, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i290, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 3 uses
  %i.cx = load ptr, ptr %20, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !60
  %i.db = icmp eq i64 %i.cp, %i.da
  %i.dc = load ptr, ptr %i.cy, align 8
  %i.dd = icmp eq ptr %i.cx, %i.dc
  %i.de = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %i.de, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit, label %.lr.ph.i.i.i291

bb.y:                                             ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dg = icmp eq i64 %i.cp, %i.dm
  %i.dh = load ptr, ptr %i.df, align 8
  %i.di = icmp eq ptr %i.cx, %i.dh
  %i.dj = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %i.dj, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit, label %.lr.ph.i.i.i291, !llvm.loop !104

.lr.ph.i.i.i291:                                  ; preds = %bb.x, %bb.y
  %.020.i.i.i = phi ptr [ %i.dk, %bb.y ], [ %i.cw, %bb.x ]
  %i.dk = load ptr, ptr %.020.i.i.i, align 8, !tbaa !57 ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i291
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !60 ; 2 uses
  %i.dn = urem i64 %i.dm, %i.cq
  %.not19.i.i.i = icmp eq i64 %i.dn, %i.cr
  br i1 %.not19.i.i.i, label %bb.y, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !104

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.z
  br label %.critedge.i, !llvm.loop !104

.critedge.i:                                      ; preds = %.lr.ph.i.i.i291, %..loopexit_crit_edge21.i.i.i, %bb.w, %.noexc293
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.do = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc335 unwind label %bb.am ; 5 uses

.noexc335:                                        ; preds = %.critedge.i
  store ptr null, ptr %i.do, align 8, !tbaa !57
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %20, align 8, !tbaa !27   ; 5 uses
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !27
  %i.dr = load i64, ptr %i.dq, align 8            ; 3 uses
  %i.ds = lshr i64 %i.dr, 40
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = and i32 %i.dt, 1048575                  ; 3 uses
  %i.dv = icmp samesign ult i32 %i.du, 1048574
  br i1 %i.dv, label %bb.aa, label %bb.ab, !prof !28

bb.aa:                                            ; preds = %.noexc335
  %i.dw = add nuw nsw i32 %i.du, 1
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 40
  %i.dz = and i64 %i.dr, -1152920405095219201
  %i.ea = or i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %i.dq, align 8
  br label %.noexc294

bb.ab:                                            ; preds = %.noexc335
  %i.eb = icmp eq i32 %i.du, 1048574
  br i1 %i.eb, label %bb.ac, label %.noexc294, !prof !29

bb.ac:                                            ; preds = %bb.ab
  %i.ec = or i64 %i.dr, 1152920405095219200
  store i64 %i.ec, ptr %i.dq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.noexc294 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  %i.ef = call ptr @__cxa_begin_catch(ptr %i.ee) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 24) #20
  invoke void @__cxa_rethrow() #23
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body295 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #21
  unreachable

bb.ag:                                            ; preds = %bb.ad
  unreachable

.noexc294:                                        ; preds = %bb.ac, %bb.ab, %bb.aa
  store ptr %15, ptr %5, align 8, !tbaa !124
  store ptr %i.do, ptr %i.q, align 8, !tbaa !64
  %i.ej = invoke ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %15, i64 noundef %i.cr, i64 noundef %i.cp, ptr noundef nonnull %i.do, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.ah ; 0 uses

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc294
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit

bb.ah:                                            ; preds = %.noexc294
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.body295

bb.ai:                                            ; preds = %bb.f, %bb.g
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.as

bb.aj:                                            ; preds = %bb.n
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn139 = phi { ptr, i32 } [ %i.en, %bb.ak ], [ %i.em, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.ar

bb.am:                                            ; preds = %.critedge.i, %.thread.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body295

.body295:                                         ; preds = %bb.am, %bb.ae, %bb.ah
  %eh.lpad-body296 = phi { ptr, i32 } [ %i.ek, %bb.ah ], [ %i.eo, %bb.am ], [ %i.eg, %bb.ae ]
  call void @_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #19
  br label %bb.ar

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit: ; preds = %bb.v, %bb.y, %bb.x, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ep = load i8, ptr %i.o, align 8, !tbaa !53, !range !54, !noundef !55
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.an, label %_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit

bb.an:                                            ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit
  store i8 0, ptr %i.o, align 8, !tbaa !53
  %i.er = load ptr, ptr %20, align 8, !tbaa !27   ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = and i64 %i.es, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.et, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit, label %bb.ao, !prof !29

bb.ao:                                            ; preds = %bb.an
  %i.eu = add i64 %i.es, 1152920405095219200
  %i.ev = and i64 %i.eu, 1152920405095219200      ; 2 uses
  %i.ew = and i64 %i.es, -1152920405095219201
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = icmp eq i64 %i.ev, 0
  br i1 %i.ey, label %bb.ap, label %_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit, !prof !29

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #21
  unreachable

_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb1EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE6insertERKS3_.exit, %bb.an, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.critedge147.thread

bb.ar:                                            ; preds = %.body295, %bb.al
  %.pn141 = phi { ptr, i32 } [ %eh.lpad-body296, %.body295 ], [ %.pn139, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.as

.critedge147.thread:                              ; preds = %.lr.ph, %_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev.exit, %.critedge147
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0374.0481, i64 8 ; 2 uses
  %.not383 = icmp eq ptr %i.fb, %i.x
  br i1 %.not383, label %._crit_edge.loopexit, label %.lr.ph

bb.as:                                            ; preds = %bb.ar, %bb.ai, %bb.e
  %.pn141.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %.pn141, %bb.ar ], [ %i.el, %bb.ai ]
  %i.fc = load ptr, ptr %16, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i154 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit155, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #20
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit155

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit155: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.jr

bb.au:                                            ; preds = %._crit_edge485
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.fh = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i64 0, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 3 uses
  store ptr %i.fi, ptr %22, align 8, !tbaa !66
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 7 uses
  store i64 1, ptr %i.fj, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %22, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fl, align 8, !tbaa !122
  %i.fm = getelementptr inbounds nuw i8, ptr %22, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false)
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !24  ; 2 uses
  %.not497 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not497, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.au
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = ptrtoint ptr %22 to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %37, i64 48 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %36, i64 40 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  br label %bb.bc

._crit_edge495:                                   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit279
  %.pre514 = load ptr, ptr %i.fk, align 8, !tbaa !68 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre514, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge495, %.noexc.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gm, %.noexc.i.i.i ], [ %.pre514, %._crit_edge495 ] ; 2 uses
  %i.gm = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull %.06.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.av

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

bb.av:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #21
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.noexc.i.i.i, %bb.au, %._crit_edge495
  %i.gp = load ptr, ptr %22, align 8, !tbaa !66
  %i.gq = load i64, ptr %i.fj, align 8, !tbaa !67
  %i.gr = shl i64 %i.gq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gp, i8 0, i64 %i.gr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.gs = load ptr, ptr %22, align 8, !tbaa !66   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fi
  br i1 %i.gt, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gu = load i64, ptr %i.fj, align 8, !tbaa !67
  %i.gv = shl i64 %i.gu, 3
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #20
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.gw = load ptr, ptr %i.c, align 8, !tbaa !69  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i297

.lr.ph.i.i.i297:                                  ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.gx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.gw, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit ] ; 3 uses
  %i.gx = load ptr, ptr %.06.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !27 ; 3 uses
  %i.ha = load i64, ptr %i.gz, align 8            ; 3 uses
  %i.hb = and i64 %i.ha, 1152920405095219200
  %.not.i.i.i.i.i.i298 = icmp eq i64 %i.hb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i298, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.ax, !prof !29

bb.ax:                                            ; preds = %.lr.ph.i.i.i297
  %i.hc = add i64 %i.ha, 1152920405095219200
  %i.hd = and i64 %i.hc, 1152920405095219200      ; 2 uses
  %i.he = and i64 %i.ha, -1152920405095219201
  %i.hf = or disjoint i64 %i.hd, %i.he
  store i64 %i.hf, ptr %i.gz, align 8
  %i.hg = icmp eq i64 %i.hd, 0
  br i1 %i.hg, label %bb.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !29

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gz)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.ay, %bb.ax, %.lr.ph.i.i.i297
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #20
  %.not.i.i.i299 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i299, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i297, !llvm.loop !1

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev.exit
  %i.hj = load ptr, ptr %15, align 8, !tbaa !41
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !42
  %i.hl = shl i64 %i.hk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hj, i8 0, i64 %i.hl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.hm = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.a
  br i1 %i.hn, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.ho = load i64, ptr %i.b, align 8, !tbaa !42
  %i.hp = shl i64 %i.ho, 3
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #20
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret i32 1

bb.bb:                                            ; preds = %._crit_edge485
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.bc:                                            ; preds = %.lr.ph494, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit279
  %.056492 = phi i64 [ 0, %.lr.ph494 ], [ %i.agc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit279 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.hr = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.056492
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !27 ; 5 uses
  store ptr %i.ht, ptr %23, align 8, !tbaa !27
  %i.hu = load i64, ptr %i.ht, align 8            ; 3 uses
  %i.hv = lshr i64 %i.hu, 40
  %i.hw = trunc nuw nsw i64 %i.hv to i32
  %i.hx = and i32 %i.hw, 1048575                  ; 3 uses
  %i.hy = icmp samesign ult i32 %i.hx, 1048574
  br i1 %i.hy, label %bb.bd, label %bb.be, !prof !28

bb.bd:                                            ; preds = %bb.bc
  %i.hz = add nuw nsw i32 %i.hx, 1
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 40
  %i.ic = and i64 %i.hu, -1152920405095219201
  %i.id = or i64 %i.ib, %i.ic
  store i64 %i.id, ptr %i.ht, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.be:                                            ; preds = %bb.bc
  %i.ie = icmp eq i32 %i.hx, 1048574
  br i1 %i.ie, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !29

bb.bf:                                            ; preds = %bb.be
  %i.if = or i64 %i.hu, 1152920405095219200
  store i64 %i.if, ptr %i.ht, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ht)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bo

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.be, %bb.bd, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.ig = load ptr, ptr %23, align 8, !tbaa !27
  store ptr %i.ig, ptr %25, align 8, !tbaa !32
  store i64 0, ptr %i.fv, align 8
  store i64 %i.ft, ptr %26, align 8, !tbaa !71
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbN4cvc58internal12NodeTemplateILb0EEEEZNS1_13preprocessing6passes8FfBitsum13applyInternalEPNS5_17AssertionPipelineEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbN4cvc58internal12NodeTemplateILb0EEEEZNS1_13preprocessing6passes8FfBitsum13applyInternalEPNS5_17AssertionPipelineEE3$_0E9_M_invokeERKSt9_Any_dataOS3_">, ptr %i.fu, align 8, !tbaa !72
  invoke void @_ZN4cvc58internal15NodeDfsIterableC1ENS0_12NodeTemplateILb0EEENS0_10VisitOrderESt8functionIFbS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 %25, i32 noundef 1, ptr noundef nonnull align 8 %26)
          to label %bb.bg unwind label %bb.bp

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ih = load ptr, ptr %i.fu, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %i.ih, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  invoke void @_ZNK4cvc58internal15NodeDfsIterable5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeDfsIterator") align 8 %27, ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  invoke void @_ZNK4cvc58internal15NodeDfsIterable3endEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeDfsIterator") align 8 %28, ptr noundef nonnull align 8 dereferenceable(48) %24)
          to label %.preheader395 unwind label %bb.bt

.preheader395:                                    ; preds = %bb.bj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit261
  %i.il = invoke noundef zeroext i1 @_ZN4cvc58internal15NodeDfsIteratorneERS1_(ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull align 8 dereferenceable(128) %28)
          to label %bb.bk unwind label %bb.cj

bb.bk:                                            ; preds = %.preheader395
  br i1 %i.il, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4cvc58internal15NodeDfsIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @_ZN4cvc58internal15NodeDfsIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.im = load ptr, ptr %i.gk, align 8, !tbaa !74 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.im, null
  br i1 %.not.i.i157, label %_ZN4cvc58internal15NodeDfsIterableD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal13preprocessing6passes8FfBitsum13applyInternalEPNS1_17AssertionPipelineE:bb.a
bb.dw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pu = add i64 %i.ps, 1152920405095219200
  %i.pv = and i64 %i.pu, 1152920405095219200      ; 2 uses
  %i.pw = and i64 %i.ps, -1152920405095219201
  %i.px = or disjoint i64 %i.pv, %i.pw
  store i64 %i.px, ptr %i.pr, align 8
  %i.py = icmp eq i64 %i.pv, 0
  br i1 %i.py, label %bb.dx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit186, !prof !29

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit186 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pz = landingpad { ptr, i32 }
          catch ptr null
  %i.qa = extractvalue { ptr, i32 } %i.pz, 0
  call void @__clang_call_terminate(ptr %i.qa) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit186: ; preds = %bb.dx, %bb.dw, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dv
  %.pn115.pn = phi { ptr, i32 } [ %i.pq, %bb.dv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %bb.dw ], [ %lpad.loopexit.split-lp, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.hj

bb.dz:                                            ; preds = %._crit_edge490
  %i.qb = load ptr, ptr %29, align 8, !tbaa !27   ; 4 uses
  %i.qc = load ptr, ptr %35, align 8, !tbaa !27
  %.not.i187 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not.i187, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.ea, !prof !29

bb.ea:                                            ; preds = %bb.dz
  %i.qd = load i64, ptr %i.qb, align 8            ; 3 uses
  %i.qe = and i64 %i.qd, 1152920405095219200
  %.not.i.i188 = icmp eq i64 %i.qe, 1152920405095219200
  br i1 %.not.i.i188, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189, label %bb.eb, !prof !29

bb.eb:                                            ; preds = %bb.ea
  %i.qf = add i64 %i.qd, 1152920405095219200
  %i.qg = and i64 %i.qf, 1152920405095219200      ; 2 uses
  %i.qh = and i64 %i.qd, -1152920405095219201
  %i.qi = or disjoint i64 %i.qg, %i.qh
  store i64 %i.qi, ptr %i.qb, align 8
  %i.qj = icmp eq i64 %i.qg, 0
  br i1 %i.qj, label %bb.ec, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189, !prof !29

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qb)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189 unwind label %bb.ey

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189: ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.qk = load ptr, ptr %35, align 8, !tbaa !27   ; 5 uses
  store ptr %i.qk, ptr %29, align 8, !tbaa !27
  %i.ql = load i64, ptr %i.qk, align 8            ; 3 uses
  %i.qm = lshr i64 %i.ql, 40
  %i.qn = trunc nuw nsw i64 %i.qm to i32
  %i.qo = and i32 %i.qn, 1048575                  ; 3 uses
  %i.qp = icmp samesign ult i32 %i.qo, 1048574
  br i1 %i.qp, label %bb.ed, label %bb.ee, !prof !28

bb.ed:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189
  %i.qq = add nuw nsw i32 %i.qo, 1
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = shl nuw nsw i64 %i.qr, 40
  %i.qt = and i64 %i.ql, -1152920405095219201
  %i.qu = or i64 %i.qs, %i.qt
  store i64 %i.qu, ptr %i.qk, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.ee:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i189
  %i.qv = icmp eq i32 %i.qo, 1048574
  br i1 %i.qv, label %bb.ef, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !29

bb.ef:                                            ; preds = %bb.ee
  %i.qw = or i64 %i.ql, 1152920405095219200
  store i64 %i.qw, ptr %i.qk, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.ey

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.ee, %bb.ed, %bb.dz, %bb.ef
  %i.qx = load ptr, ptr %35, align 8, !tbaa !27   ; 3 uses
  %i.qy = load i64, ptr %i.qx, align 8            ; 3 uses
  %i.qz = and i64 %i.qy, 1152920405095219200
  %.not.i.i192 = icmp eq i64 %i.qz, 1152920405095219200
  br i1 %.not.i.i192, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194, label %bb.eg, !prof !29

bb.eg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ra = add i64 %i.qy, 1152920405095219200
  %i.rb = and i64 %i.ra, 1152920405095219200      ; 2 uses
  %i.rc = and i64 %i.qy, -1152920405095219201
  %i.rd = or disjoint i64 %i.rb, %i.rc
  store i64 %i.rd, ptr %i.qx, align 8
  %i.re = icmp eq i64 %i.rb, 0
  br i1 %i.re, label %bb.eh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194, !prof !29

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rf = landingpad { ptr, i32 }
          catch ptr null
  %i.rg = extractvalue { ptr, i32 } %i.rf, 0
  call void @__clang_call_terminate(ptr %i.rg) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.rh = load ptr, ptr %29, align 8, !tbaa !27
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i64, ptr %i.ri, align 8
  %i.rk = and i64 %i.rj, 1023
  %i.rl = icmp eq i64 %i.rk, 157
  br i1 %i.rl, label %bb.ej, label %bb.hi

bb.ej:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store ptr null, ptr %37, align 8, !tbaa !41
  %i.rm = load i64, ptr %i.b, align 8, !tbaa !42
  store i64 %i.rm, ptr %i.fx, align 8, !tbaa !42
  store ptr null, ptr %i.fy, align 8, !tbaa !57
  %i.rn = load i64, ptr %i.ga, align 8, !tbaa !56
  store i64 %i.rn, ptr %i.fz, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !132
  store ptr null, ptr %i.gc, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %37, ptr %13, align 8, !tbaa !133
  invoke void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %37, ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ek unwind label %bb.fa

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  invoke void @_ZN4cvc58internal6theory2ff5parse7bitSumsERKNS0_12NodeTemplateILb1EEESt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.180") align 8 %36, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 %37)
          to label %bb.el unwind label %bb.fb

bb.el:                                            ; preds = %bb.ek
  %i.ro = load ptr, ptr %i.fy, align 8, !tbaa !69 ; 2 uses
  %.not5.i.i.i300 = icmp eq ptr %i.ro, null
  br i1 %.not5.i.i.i300, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i306, label %.lr.ph.i.i.i301

.lr.ph.i.i.i301:                                  ; preds = %bb.el, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304
  %.06.i.i.i302 = phi ptr [ %i.rp, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304 ], [ %i.ro, %bb.el ] ; 3 uses
  %i.rp = load ptr, ptr %.06.i.i.i302, align 8, !tbaa !57 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.06.i.i.i302, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !27 ; 3 uses
  %i.rs = load i64, ptr %i.rr, align 8            ; 3 uses
  %i.rt = and i64 %i.rs, 1152920405095219200
  %.not.i.i.i.i.i.i303 = icmp eq i64 %i.rt, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i303, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304, label %bb.em, !prof !29

bb.em:                                            ; preds = %.lr.ph.i.i.i301
  %i.ru = add i64 %i.rs, 1152920405095219200
  %i.rv = and i64 %i.ru, 1152920405095219200      ; 2 uses
  %i.rw = and i64 %i.rs, -1152920405095219201
  %i.rx = or disjoint i64 %i.rv, %i.rw
  store i64 %i.rx, ptr %i.rr, align 8
  %i.ry = icmp eq i64 %i.rv, 0
  br i1 %i.ry, label %bb.en, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304, !prof !29

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.rr)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304 unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  %i.sa = extractvalue { ptr, i32 } %i.rz, 0
  call void @__clang_call_terminate(ptr %i.sa) #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304: ; preds = %bb.en, %bb.em, %.lr.ph.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i302, i64 noundef 24) #20
  %.not.i.i.i305 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i305, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i306, label %.lr.ph.i.i.i301, !llvm.loop !1

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i306: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i304, %bb.el
  %i.sb = load ptr, ptr %37, align 8, !tbaa !41
  %i.sc = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.sd = shl i64 %i.sc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sb, i8 0, i64 %i.sd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  %i.se = load ptr, ptr %37, align 8, !tbaa !41   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.gc
  br i1 %i.sf, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit307, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i306
  %i.sg = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.sh = shl i64 %i.sg, 3
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #20
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit307

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit307: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i306, %bb.ep
  %i.si = load i8, ptr %i.gd, align 8, !tbaa !135, !range !54, !noundef !55
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.eq, label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit

bb.eq:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit307
  %i.sk = load ptr, ptr %i.ge, align 8, !tbaa !80 ; 2 uses
  %i.sl = load ptr, ptr %36, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.sk, %i.sl
  br i1 %.not, label %bb.gu, label %.preheader

bb.er:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.sm = load ptr, ptr %i.gf, align 8, !tbaa !23, !noalias !136
  %i.sn = load ptr, ptr %i.gh, align 8, !tbaa !24, !noalias !136 ; 2 uses
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = icmp eq i64 %i.sq, 8
  br i1 %i.sr, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.ss = load ptr, ptr %i.sn, align 8, !tbaa !27, !noalias !136 ; 5 uses
  store ptr %i.ss, ptr %41, align 8, !tbaa !27, !alias.scope !136
  %i.st = load i64, ptr %i.ss, align 8, !noalias !136 ; 3 uses
  %i.su = lshr i64 %i.st, 40
  %i.sv = trunc nuw nsw i64 %i.su to i32
  %i.sw = and i32 %i.sv, 1048575                  ; 3 uses
  %i.sx = icmp samesign ult i32 %i.sw, 1048574
  br i1 %i.sx, label %bb.et, label %bb.eu, !prof !28

bb.et:                                            ; preds = %bb.es
  %i.sy = add nuw nsw i32 %i.sw, 1
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = shl nuw nsw i64 %i.sz, 40
  %i.tb = and i64 %i.st, -1152920405095219201
  %i.tc = or i64 %i.ta, %i.tb
  store i64 %i.tc, ptr %i.ss, align 8, !noalias !136
  br label %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit

bb.eu:                                            ; preds = %bb.es
  %i.td = icmp eq i32 %i.sw, 1048574
  br i1 %i.td, label %bb.ev, label %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit, !prof !29

bb.ev:                                            ; preds = %bb.eu
  %i.te = or i64 %i.st, 1152920405095219200
  store i64 %i.te, ptr %i.ss, align 8, !noalias !136
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit unwind label %bb.gr

bb.ew:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !137
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 dereferenceable(3592) %i.s, i32 noundef 157)
          to label %.noexc199 unwind label %bb.gr

.noexc199:                                        ; preds = %bb.ew
  %i.tf = load ptr, ptr %i.gh, align 8, !tbaa !30, !noalias !137 ; 2 uses
  %i.tg = load ptr, ptr %i.gf, align 8, !tbaa !30, !noalias !137 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !137
  %.not6.i.i.i.i = icmp eq ptr %i.tg, %i.tf
  br i1 %.not6.i.i.i.i, label %.loopexit4.i.i, label %.lr.ph.i.i.i.i196

.lr.ph.i.i.i.i196:                                ; preds = %.noexc199, %.noexc.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.tj, %.noexc.i.i ], [ %i.tf, %.noexc199 ] ; 2 uses
  %i.th = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !27, !noalias !137
  store ptr %i.th, ptr %11, align 8, !tbaa !32, !noalias !137
  %i.ti = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %11)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !137 ; 0 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i.i196
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.tj, %i.tg
  br i1 %.not.i.i.i.i197, label %.loopexit4.i.i, label %.lr.ph.i.i.i.i196, !llvm.loop !0

.loopexit4.i.i:                                   ; preds = %.noexc.i.i, %.noexc199
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !137
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %41, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i196, %.loopexit4.i.i
  %lpad.loopexit.split-lp643 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !137
  br label %.body200

_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit.i: ; preds = %.loopexit4.i.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !137
  br label %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit

bb.ex:                                            ; preds = %._crit_edge490
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ef, %bb.ec
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #19
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.pn103 = phi { ptr, i32 } [ %i.tl, %bb.ey ], [ %i.tk, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.hj

bb.fa:                                            ; preds = %bb.ej
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246

bb.fb:                                            ; preds = %bb.ek
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %37) #19
  br label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246

.preheader:                                       ; preds = %bb.eq, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236
  %.sroa.0353.0491 = phi ptr [ %i.wl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236 ], [ %i.sl, %bb.eq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !138
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 dereferenceable(3592) %i.s, i32 noundef 158)
          to label %.noexc203 unwind label %bb.gb

.noexc203:                                        ; preds = %.preheader
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0353.0491, i64 32
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !30, !noalias !138 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0353.0491, i64 40
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !30, !noalias !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !138
  %.not6.i.i.i = icmp eq ptr %i.tr, %i.tp
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc203, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.tu, %.noexc.i ], [ %i.tp, %.noexc203 ] ; 2 uses
  %i.ts = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !27, !noalias !138
  store ptr %i.ts, ptr %9, align 8, !tbaa !32, !noalias !138
  %i.tt = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 %9)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !138 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.tu, %i.tr
  br i1 %.not.i.i.i202, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !0

.loopexit4.i:                                     ; preds = %.noexc.i, %.noexc203
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !138
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %38, ptr noundef nonnull align 8 dereferenceable(124) %10)
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.loopexit4.i
  %lpad.loopexit.split-lp639 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !138
  br label %.body204

bb.fc:                                            ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.tv = invoke noundef zeroext i1 @_ZNK4cvc58internal16FiniteFieldValue5isOneEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0353.0491)
          to label %bb.fd unwind label %bb.gc

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.tv, label %bb.fe, label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  %i.tw = load ptr, ptr %38, align 8, !tbaa !27   ; 5 uses
  store ptr %i.tw, ptr %39, align 8, !tbaa !27
  %i.tx = load i64, ptr %i.tw, align 8            ; 3 uses
  %i.ty = lshr i64 %i.tx, 40
  %i.tz = trunc nuw nsw i64 %i.ty to i32
  %i.ua = and i32 %i.tz, 1048575                  ; 3 uses
  %i.ub = icmp samesign ult i32 %i.ua, 1048574
  br i1 %i.ub, label %bb.ff, label %bb.fg, !prof !28

bb.ff:                                            ; preds = %bb.fe
  %i.uc = add nuw nsw i32 %i.ua, 1
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw nsw i64 %i.ud, 40
  %i.uf = and i64 %i.tx, -1152920405095219201
  %i.ug = or i64 %i.ue, %i.uf
  store i64 %i.ug, ptr %i.tw, align 8
  br label %.critedge151

bb.fg:                                            ; preds = %bb.fe
  %i.uh = icmp eq i32 %i.ua, 1048574
  br i1 %i.uh, label %bb.fh, label %.critedge151, !prof !29

bb.fh:                                            ; preds = %bb.fg
  %i.ui = or i64 %i.tx, 1152920405095219200
  store i64 %i.ui, ptr %i.tw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tw)
          to label %.critedge151 unwind label %bb.gc

bb.fi:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_16FiniteFieldValueEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %40, ptr noundef nonnull align 8 dereferenceable(3592) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0353.0491)
          to label %bb.fj unwind label %bb.gd

bb.fj:                                            ; preds = %bb.fi
  %i.uj = load ptr, ptr %40, align 8, !tbaa !27   ; 2 uses
  %i.uk = load ptr, ptr %38, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !139
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal13preprocessing6passes8FfBitsum13applyInternalEPNS1_17AssertionPipelineE:bb.a
  %i.vv = and i64 %i.vu, 1152920405095219200      ; 2 uses
  %i.vw = and i64 %i.vs, -1152920405095219201
  %i.vx = or disjoint i64 %i.vv, %i.vw
  store i64 %i.vx, ptr %i.vr, align 8
  %i.vy = icmp eq i64 %i.vv, 0
  br i1 %i.vy, label %bb.fw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit233, !prof !29

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit233 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vz = landingpad { ptr, i32 }
          catch ptr null
  %i.wa = extractvalue { ptr, i32 } %i.vz, 0
  call void @__clang_call_terminate(ptr %i.wa) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit233: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.fv, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  %i.wb = load ptr, ptr %38, align 8, !tbaa !27   ; 3 uses
  %i.wc = load i64, ptr %i.wb, align 8            ; 3 uses
  %i.wd = and i64 %i.wc, 1152920405095219200
  %.not.i.i234 = icmp eq i64 %i.wd, 1152920405095219200
  br i1 %.not.i.i234, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, label %bb.fy, !prof !29

bb.fy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit233
  %i.we = add i64 %i.wc, 1152920405095219200
  %i.wf = and i64 %i.we, 1152920405095219200      ; 2 uses
  %i.wg = and i64 %i.wc, -1152920405095219201
  %i.wh = or disjoint i64 %i.wf, %i.wg
  store i64 %i.wh, ptr %i.wb, align 8
  %i.wi = icmp eq i64 %i.wf, 0
  br i1 %i.wi, label %bb.fz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, !prof !29

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.wj = landingpad { ptr, i32 }
          catch ptr null
  %i.wk = extractvalue { ptr, i32 } %i.wj, 0
  call void @__clang_call_terminate(ptr %i.wk) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit233, %bb.fy, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0353.0491, i64 56 ; 2 uses
  %.not382 = icmp eq ptr %i.wl, %i.sk
  br i1 %.not382, label %bb.er, label %.preheader

bb.gb:                                            ; preds = %.preheader
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.gc:                                            ; preds = %bb.fh, %bb.fc
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gd:                                            ; preds = %bb.fi
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fj
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %.body209

.body209:                                         ; preds = %bb.fm, %bb.ge
  %eh.lpad-body210 = phi { ptr, i32 } [ %i.wp, %bb.ge ], [ %i.up, %bb.fm ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #19
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %.body209
  %.pn107 = phi { ptr, i32 } [ %eh.lpad-body210, %.body209 ], [ %i.wo, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.gh

bb.gg:                                            ; preds = %bb.fu, %bb.ft
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #19
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg, %bb.gc
  %.pn109.pn = phi { ptr, i32 } [ %i.wq, %bb.gg ], [ %i.wn, %bb.gc ], [ %.pn107, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #19
  br label %.body204

.body204:                                         ; preds = %bb.gb, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gh
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %bb.gh ], [ %i.wm, %bb.gb ], [ %lpad.loopexit.split-lp639, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.hg

_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit: ; preds = %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit.i, %bb.eu, %bb.et, %bb.ev
  %i.wr = load ptr, ptr %29, align 8, !tbaa !27   ; 4 uses
  %i.ws = load ptr, ptr %41, align 8, !tbaa !27
  %.not.i237 = icmp eq ptr %i.wr, %i.ws
  br i1 %.not.i237, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242, label %bb.gi, !prof !29

bb.gi:                                            ; preds = %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit
  %i.wt = load i64, ptr %i.wr, align 8            ; 3 uses
  %i.wu = and i64 %i.wt, 1152920405095219200
  %.not.i.i238 = icmp eq i64 %i.wu, 1152920405095219200
  br i1 %.not.i.i238, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239, label %bb.gj, !prof !29

bb.gj:                                            ; preds = %bb.gi
  %i.wv = add i64 %i.wt, 1152920405095219200
  %i.ww = and i64 %i.wv, 1152920405095219200      ; 2 uses
  %i.wx = and i64 %i.wt, -1152920405095219201
  %i.wy = or disjoint i64 %i.ww, %i.wx
  store i64 %i.wy, ptr %i.wr, align 8
  %i.wz = icmp eq i64 %i.ww, 0
  br i1 %i.wz, label %bb.gk, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239, !prof !29

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239 unwind label %bb.gs

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239: ; preds = %bb.gk, %bb.gj, %bb.gi
  %i.xa = load ptr, ptr %41, align 8, !tbaa !27   ; 5 uses
  store ptr %i.xa, ptr %29, align 8, !tbaa !27
  %i.xb = load i64, ptr %i.xa, align 8            ; 3 uses
  %i.xc = lshr i64 %i.xb, 40
  %i.xd = trunc nuw nsw i64 %i.xc to i32
  %i.xe = and i32 %i.xd, 1048575                  ; 3 uses
  %i.xf = icmp samesign ult i32 %i.xe, 1048574
  br i1 %i.xf, label %bb.gl, label %bb.gm, !prof !28

bb.gl:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239
  %i.xg = add nuw nsw i32 %i.xe, 1
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = shl nuw nsw i64 %i.xh, 40
  %i.xj = and i64 %i.xb, -1152920405095219201
  %i.xk = or i64 %i.xi, %i.xj
  store i64 %i.xk, ptr %i.xa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242

bb.gm:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i239
  %i.xl = icmp eq i32 %i.xe, 1048574
  br i1 %i.xl, label %bb.gn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242, !prof !29

bb.gn:                                            ; preds = %bb.gm
  %i.xm = or i64 %i.xb, 1152920405095219200
  store i64 %i.xm, ptr %i.xa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242 unwind label %bb.gs

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242: ; preds = %bb.gm, %bb.gl, %_ZN4cvc58internal13preprocessing6passes5mkAddEPNS0_11NodeManagerERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE.exit, %bb.gn
  %i.xn = load ptr, ptr %41, align 8, !tbaa !27   ; 3 uses
  %i.xo = load i64, ptr %i.xn, align 8            ; 3 uses
  %i.xp = and i64 %i.xo, 1152920405095219200
  %.not.i.i243 = icmp eq i64 %i.xp, 1152920405095219200
  br i1 %.not.i.i243, label %bb.gt, label %bb.go, !prof !29

bb.go:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242
  %i.xq = add i64 %i.xo, 1152920405095219200
  %i.xr = and i64 %i.xq, 1152920405095219200      ; 2 uses
  %i.xs = and i64 %i.xo, -1152920405095219201
  %i.xt = or disjoint i64 %i.xr, %i.xs
  store i64 %i.xt, ptr %i.xn, align 8
  %i.xu = icmp eq i64 %i.xr, 0
  br i1 %i.xu, label %bb.gp, label %bb.gt, !prof !29

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xn)
          to label %bb.gt unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.xv = landingpad { ptr, i32 }
          catch ptr null
  %i.xw = extractvalue { ptr, i32 } %i.xv, 0
  call void @__clang_call_terminate(ptr %i.xw) #21
  unreachable

bb.gr:                                            ; preds = %bb.ew, %bb.ev
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %.body200

bb.gs:                                            ; preds = %bb.gn, %bb.gk
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #19
  br label %.body200

.body200:                                         ; preds = %bb.gr, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gs
  %.pn105 = phi { ptr, i32 } [ %i.xy, %bb.gs ], [ %i.xx, %bb.gr ], [ %lpad.loopexit.split-lp643, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  br label %bb.hg

bb.gt:                                            ; preds = %bb.gp, %bb.go, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  %.pre513 = load i8, ptr %i.gd, align 8, !tbaa !135, !range !54
  %i.xz = trunc nuw i8 %.pre513 to i1
  br i1 %i.xz, label %bb.gu, label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit

bb.gu:                                            ; preds = %bb.eq, %bb.gt
  store i8 0, ptr %i.gd, align 8, !tbaa !135
  %i.ya = load ptr, ptr %i.gh, align 8, !tbaa !24 ; 3 uses
  %i.yb = load ptr, ptr %i.gf, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ya, %i.yb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i314

.lr.ph.i.i.i.i314:                                ; preds = %bb.gu, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ym, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.ya, %bb.gu ] ; 2 uses
  %i.yc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !27 ; 3 uses
  %i.yd = load i64, ptr %i.yc, align 8            ; 3 uses
  %i.ye = and i64 %i.yd, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ye, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.gv, !prof !29

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i314
  %i.yf = add i64 %i.yd, 1152920405095219200
  %i.yg = and i64 %i.yf, 1152920405095219200      ; 2 uses
  %i.yh = and i64 %i.yd, -1152920405095219201
  %i.yi = or disjoint i64 %i.yg, %i.yh
  store i64 %i.yi, ptr %i.yc, align 8
  %i.yj = icmp eq i64 %i.yg, 0
  br i1 %i.yj, label %bb.gw, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !29

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yc)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.gw, %bb.gv, %.lr.ph.i.i.i.i314
  %i.ym = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i315 = icmp eq ptr %i.ym, %i.yb
  br i1 %.not.i.i.i.i315, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i314, !llvm.loop !3

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.gh, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %bb.gu
  %i.yn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ya, %bb.gu ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.yn, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, label %bb.gy

bb.gy:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.yo = load ptr, ptr %i.gg, align 8, !tbaa !82
  %i.yp = ptrtoint ptr %i.yo to i64
  %i.yq = ptrtoint ptr %i.yn to i64
  %i.yr = sub i64 %i.yp, %i.yq
  call void @_ZdlPvm(ptr noundef nonnull %i.yn, i64 noundef %i.yr) #20
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i: ; preds = %bb.gy, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ys = load ptr, ptr %36, align 8, !tbaa !81   ; 3 uses
  %i.yt = load ptr, ptr %i.ge, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ys, %i.yt
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i, %_ZNSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EEED2Ev.exit
  %.05.i.i.i3.i = phi ptr [ %i.zu, %_ZNSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EEED2Ev.exit ], [ %i.ys, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i ] ; 6 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !24 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 40
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i.i338 = icmp eq ptr %i.yv, %i.yx
  br i1 %.not4.i.i.i.i338, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i346, label %.lr.ph.i.i.i.i339

.lr.ph.i.i.i.i339:                                ; preds = %.lr.ph.i.i.i2.i, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342
  %.05.i.i.i.i340 = phi ptr [ %i.zi, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342 ], [ %i.yv, %.lr.ph.i.i.i2.i ] ; 2 uses
  %i.yy = load ptr, ptr %.05.i.i.i.i340, align 8, !tbaa !27 ; 3 uses
  %i.yz = load i64, ptr %i.yy, align 8            ; 3 uses
  %i.za = and i64 %i.yz, 1152920405095219200
  %.not.i.i.i.i.i.i.i341 = icmp eq i64 %i.za, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i341, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342, label %bb.gz, !prof !29

bb.gz:                                            ; preds = %.lr.ph.i.i.i.i339
  %i.zb = add i64 %i.yz, 1152920405095219200
  %i.zc = and i64 %i.zb, 1152920405095219200      ; 2 uses
  %i.zd = and i64 %i.yz, -1152920405095219201
  %i.ze = or disjoint i64 %i.zc, %i.zd
  store i64 %i.ze, ptr %i.yy, align 8
  %i.zf = icmp eq i64 %i.zc, 0
  br i1 %i.zf, label %bb.ha, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342, !prof !29

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yy)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342 unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.zg = landingpad { ptr, i32 }
          catch ptr null
  %i.zh = extractvalue { ptr, i32 } %i.zg, 0
  call void @__clang_call_terminate(ptr %i.zh) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342: ; preds = %bb.ha, %bb.gz, %.lr.ph.i.i.i.i339
  %i.zi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i340, i64 8 ; 2 uses
  %.not.i.i.i.i343 = icmp eq ptr %i.zi, %i.yx
  br i1 %.not.i.i.i.i343, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i344, label %.lr.ph.i.i.i.i339, !llvm.loop !3

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i344: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i342
  %.pr.i.i345 = load ptr, ptr %i.yu, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i346

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i346: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i344, %.lr.ph.i.i.i2.i
  %i.zj = phi ptr [ %.pr.i.i345, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i344 ], [ %i.yv, %.lr.ph.i.i.i2.i ] ; 3 uses
  %.not.i.i1.i.i347 = icmp eq ptr %i.zj, null
  br i1 %.not.i.i1.i.i347, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i348, label %bb.hc

bb.hc:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i346
  %i.zk = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 48
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !82
  %i.zm = ptrtoint ptr %i.zl to i64
  %i.zn = ptrtoint ptr %i.zj to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %i.zj, i64 noundef %i.zo) #20
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i348

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i348: ; preds = %bb.hc, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i346
  %i.zp = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.zp)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i.i unwind label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i348
  %i.zq = landingpad { ptr, i32 }
          catch ptr null
  %i.zr = extractvalue { ptr, i32 } %i.zq, 0
  call void @__clang_call_terminate(ptr %i.zr) #21
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i.i:           ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i348
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(56) %.05.i.i.i3.i)
          to label %_ZNSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EEED2Ev.exit unwind label %bb.he

bb.he:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i.i
  %i.zs = landingpad { ptr, i32 }
          catch ptr null
  %i.zt = extractvalue { ptr, i32 } %i.zs, 0
  call void @__clang_call_terminate(ptr %i.zt) #21
  unreachable

_ZNSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EEED2Ev.exit: ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 56 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.zu, %i.yt
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !4

_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZNSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS1_12NodeTemplateILb1EEESaIS5_EEED2Ev.exit
  %.pr.i5.i = load ptr, ptr %36, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i
  %i.zv = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ys, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.zv, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.zw = load ptr, ptr %i.gi, align 8, !tbaa !83
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zv to i64
  %i.zz = sub i64 %i.zx, %i.zy
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef %i.zz) #20
  br label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit307, %bb.hf, %_ZSt8_DestroyIPSt4pairIN4cvc58internal16FiniteFieldValueESt6vectorINS2_12NodeTemplateILb1EEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.hi

bb.hg:                                            ; preds = %.body200, %.body204
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn.pn, %.body204 ], [ %.pn105, %.body200 ] ; 2 uses
  %i.aaa = load i8, ptr %i.gd, align 8, !tbaa !135, !range !54, !noundef !55
  %i.aab = trunc nuw i8 %i.aaa to i1
  br i1 %i.aab, label %bb.hh, label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246

bb.hh:                                            ; preds = %bb.hg
  store i8 0, ptr %i.gd, align 8, !tbaa !135
  call void @_ZNSt4pairISt6vectorIS_IN4cvc58internal16FiniteFieldValueES0_INS2_12NodeTemplateILb1EEESaIS5_EEESaIS8_EES7_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(56) %36) #19
  br label %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246

_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246: ; preds = %bb.hh, %bb.hg, %bb.fb, %bb.fa
  %.pn109.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tm, %bb.fa ], [ %i.tn, %bb.fb ], [ %.pn109.pn.pn.pn, %bb.hg ], [ %.pn109.pn.pn.pn, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br label %bb.hj

bb.hi:                                            ; preds = %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit194
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit

bb.hj:                                            ; preds = %bb.dg, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit186, %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246, %bb.ez, %bb.dd
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit186 ], [ %.pn109.pn.pn.pn.pn, %_ZNSt14_Optional_baseISt4pairISt6vectorIS0_IN4cvc58internal16FiniteFieldValueES1_INS3_12NodeTemplateILb1EEESaIS6_EEESaIS9_EES8_ELb0ELb0EED2Ev.exit246 ], [ %.pn103, %bb.ez ], [ %.pn101, %bb.dd ], [ %i.nl, %bb.dg ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %30) #19
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.da
  %.pn115.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn.pn, %bb.hj ], [ %i.mx, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.ih

_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit: ; preds = %bb.ch, %bb.cg, %bb.cc, %bb.ci, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  store ptr %i.ja, ptr %42, align 8, !tbaa !27
  %i.aac = load i64, ptr %i.ja, align 8           ; 3 uses
  %i.aad = lshr i64 %i.aac, 40
  %i.aae = trunc nuw nsw i64 %i.aad to i32
  %i.aaf = and i32 %i.aae, 1048575                ; 3 uses
  %i.aag = icmp samesign ult i32 %i.aaf, 1048574
  br i1 %i.aag, label %bb.hl, label %bb.hm, !prof !28

bb.hl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  %i.aah = add nuw nsw i32 %i.aaf, 1
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = shl nuw nsw i64 %i.aai, 40
  %i.aak = and i64 %i.aac, -1152920405095219201
  %i.aal = or i64 %i.aaj, %i.aak
  store i64 %i.aal, ptr %i.ja, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit248

bb.hm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKNS1_ILb0EEE.exit
  %i.aam = icmp eq i32 %i.aaf, 1048574
  br i1 %i.aam, label %bb.hn, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit248, !prof !29

bb.hn:                                            ; preds = %bb.hm
  %i.aan = or i64 %i.aac, 1152920405095219200
  store i64 %i.aan, ptr %i.ja, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit248 unwind label %bb.ie

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit248: ; preds = %bb.hm, %bb.hl, %bb.hn
  %i.aao = invoke noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %.noexc323 unwind label %bb.if ; 4 uses

.noexc323:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit248
  %i.aap = load i64, ptr %i.fj, align 8, !tbaa !67 ; 2 uses
  %i.aaq = urem i64 %i.aao, %i.aap                ; 3 uses
  %i.aar = load ptr, ptr %22, align 8, !tbaa !66
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %i.aaq
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i316 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i316, label %.loopexit.i322, label %bb.ho

bb.ho:                                            ; preds = %.noexc323
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !57 ; 4 uses
  %i.aav = load ptr, ptr %42, align 8             ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !60
  %i.aaz = icmp eq i64 %i.aao, %i.aay
  %i.aba = load ptr, ptr %i.aaw, align 8
  %i.abb = icmp eq ptr %i.aav, %i.aba
  %i.abc = select i1 %i.aaz, i1 %i.abb, i1 false
  br i1 %i.abc, label %.loopexit386, label %.lr.ph.i.i.i317

bb.hp:                                            ; preds = %bb.hq
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abe = icmp eq i64 %i.aao, %i.abk
  %i.abf = load ptr, ptr %i.abd, align 8
  %i.abg = icmp eq ptr %i.aav, %i.abf
  %i.abh = select i1 %i.abe, i1 %i.abg, i1 false
  br i1 %i.abh, label %.loopexit386, label %.lr.ph.i.i.i317, !llvm.loop !2

.lr.ph.i.i.i317:                                  ; preds = %bb.ho, %bb.hp
  %.020.i.i.i318 = phi ptr [ %i.abi, %bb.hp ], [ %i.aau, %bb.ho ]
  %i.abi = load ptr, ptr %.020.i.i.i318, align 8, !tbaa !57 ; 5 uses
  %.not18.i.i.i319 = icmp eq ptr %i.abi, null
  br i1 %.not18.i.i.i319, label %.loopexit.i322, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph.i.i.i317
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !60 ; 2 uses
  %i.abl = urem i64 %i.abk, %i.aap
  %.not19.i.i.i320 = icmp eq i64 %i.abl, %i.aaq
  br i1 %.not19.i.i.i320, label %bb.hp, label %..loopexit_crit_edge21.i.i.i321, !llvm.loop !2

..loopexit_crit_edge21.i.i.i321:                  ; preds = %bb.hq
  br label %.loopexit.i322, !llvm.loop !2

.loopexit.i322:                                   ; preds = %.lr.ph.i.i.i317, %..loopexit_crit_edge21.i.i.i321, %.noexc323
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %42, ptr %3, align 8, !tbaa !30, !alias.scope !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %22, ptr %2, align 8, !tbaa !87
  %i.abm = invoke noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEES6_ELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESG_IJEEEEEPS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc324 unwind label %bb.if ; 2 uses

.noexc324:                                        ; preds = %.loopexit.i322
  store ptr %i.abm, ptr %i.gj, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.abn = invoke ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %22, i64 noundef %i.aaq, i64 noundef %i.aao, ptr noundef %i.abm, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.hr

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc324
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.loopexit386

bb.hr:                                            ; preds = %.noexc324
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body325

.loopexit386:                                     ; preds = %bb.hp, %bb.ho, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %.pn.i = phi ptr [ %i.abn, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.aau, %bb.ho ], [ %i.abi, %bb.hp ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16 ; 2 uses
  %i.abp = load ptr, ptr %.1.i, align 8, !tbaa !27 ; 4 uses
  %i.abq = load ptr, ptr %29, align 8, !tbaa !27
  %.not.i250 = icmp eq ptr %i.abp, %i.abq
  br i1 %.not.i250, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255, label %bb.hs, !prof !29

bb.hs:                                            ; preds = %.loopexit386
  %i.abr = load i64, ptr %i.abp, align 8          ; 3 uses
  %i.abs = and i64 %i.abr, 1152920405095219200
  %.not.i.i251 = icmp eq i64 %i.abs, 1152920405095219200
  br i1 %.not.i.i251, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252, label %bb.ht, !prof !29

bb.ht:                                            ; preds = %bb.hs
  %i.abt = add i64 %i.abr, 1152920405095219200
  %i.abu = and i64 %i.abt, 1152920405095219200    ; 2 uses
  %i.abv = and i64 %i.abr, -1152920405095219201
  %i.abw = or disjoint i64 %i.abu, %i.abv
  store i64 %i.abw, ptr %i.abp, align 8
  %i.abx = icmp eq i64 %i.abu, 0
  br i1 %i.abx, label %bb.hu, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252, !prof !29

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abp)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252 unwind label %bb.if

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252: ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.aby = load ptr, ptr %29, align 8, !tbaa !27  ; 5 uses
  store ptr %i.aby, ptr %.1.i, align 8, !tbaa !27
  %i.abz = load i64, ptr %i.aby, align 8          ; 3 uses
  %i.aca = lshr i64 %i.abz, 40
  %i.acb = trunc nuw nsw i64 %i.aca to i32
  %i.acc = and i32 %i.acb, 1048575                ; 3 uses
  %i.acd = icmp samesign ult i32 %i.acc, 1048574
  br i1 %i.acd, label %bb.hv, label %bb.hw, !prof !28

bb.hv:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252
  %i.ace = add nuw nsw i32 %i.acc, 1
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = shl nuw nsw i64 %i.acf, 40
  %i.ach = and i64 %i.abz, -1152920405095219201
  %i.aci = or i64 %i.acg, %i.ach
  store i64 %i.aci, ptr %i.aby, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255

bb.hw:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i252
  %i.acj = icmp eq i32 %i.acc, 1048574
  br i1 %i.acj, label %bb.hx, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255, !prof !29

bb.hx:                                            ; preds = %bb.hw
  %i.ack = or i64 %i.abz, 1152920405095219200
  store i64 %i.ack, ptr %i.aby, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aby)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255 unwind label %bb.if

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255: ; preds = %bb.hw, %bb.hv, %.loopexit386, %bb.hx
  %i.acl = load ptr, ptr %42, align 8, !tbaa !27  ; 3 uses
  %i.acm = load i64, ptr %i.acl, align 8          ; 3 uses
  %i.acn = and i64 %i.acm, 1152920405095219200
  %.not.i.i256 = icmp eq i64 %i.acn, 1152920405095219200
  br i1 %.not.i.i256, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, label %bb.hy, !prof !29

bb.hy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit255
  %i.aco = add i64 %i.acm, 1152920405095219200
  %i.acp = and i64 %i.aco, 1152920405095219200    ; 2 uses
  %i.acq = and i64 %i.acm, -1152920405095219201
  %i.acr = or disjoint i64 %i.acp, %i.acq
  store i64 %i.acr, ptr %i.acl, align 8
  %i.acs = icmp eq i64 %i.acp, 0
  br i1 %i.acs, label %bb.hz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, !prof !29

end_hunk_2
begin_hunk_3_@_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb:bb.a
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !48
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #19
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !48
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.k = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.k, ptr %6, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN4cvc58internal11NodeManager7getTypeENS0_12NodeTemplateILb0EEEbPSo(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %2, ptr noundef nonnull %i.l)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal8TypeNodeaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.n = call ptr @__cxa_allocate_exception(i64 48) #19 ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.o, ptr %7, align 8, !tbaa !32
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN4cvc58internal28TypeCheckingExceptionPrivateE, ptr nonnull @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev) #23
          to label %bb.v unwind label %bb.q

bb.m:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.r, %bb.o ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.u = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.x = load i64, ptr %i.v, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1523 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.p
  %.pn15.pn = phi { ptr, i32 } [ %.pn1523, %bb.r ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.p ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.s ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body

bb.u:                                             ; preds = %bb.f
  ret void

.body:                                            ; preds = %bb.e, %bb.t
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.t ], [ %i.h, %bb.e ]
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %.pn15.pn.pn.pn

bb.v:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable
}

declare void @_ZN4cvc58internal6theory2ff5parse13bitConstraintERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt14_Optional_baseIN4cvc58internal12NodeTemplateILb1EEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !53, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN4cvc58internal12NodeTemplateILb1EEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZNSt17_Optional_payloadIN4cvc58internal12NodeTemplateILb1EEELb0ELb0ELb0EED2Ev.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %_ZNSt17_Optional_payloadIN4cvc58internal12NodeTemplateILb1EEELb0ELb0ELb0EED2Ev.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt17_Optional_payloadIN4cvc58internal12NodeTemplateILb1EEELb0ELb0ELb0EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

_ZNSt17_Optional_payloadIN4cvc58internal12NodeTemplateILb1EEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN4cvc58internal15NodeDfsIterableC1ENS0_12NodeTemplateILb0EEENS0_10VisitOrderESt8functionIFbS3_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 8, i32 noundef, ptr noundef align 8) unnamed_addr #2

declare void @_ZNK4cvc58internal15NodeDfsIterable5beginEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeDfsIterator") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNK4cvc58internal15NodeDfsIterable3endEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeDfsIterator") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4cvc58internal15NodeDfsIteratorneERS1_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal15NodeDfsIteratordeEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef align 8) local_unnamed_addr #2

declare void @_ZN4cvc58internal11NodeBuildercvNS0_12NodeTemplateILb1EEEEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare void @_ZN4cvc58internal6theory2ff5parse7bitSumsERKNS0_12NodeTemplateILb1EEESt13unordered_setIS5_St4hashIS5_ESt8equal_toIS5_ESaIS5_EE(ptr dead_on_unwind writable sret(%"class.std::optional.180") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4cvc58internal16FiniteFieldValue5isOneEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4cvc58internal11NodeManager7mkConstINS0_16FiniteFieldValueEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(3592), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN4cvc58internal15NodeDfsIteratorppEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal15NodeDfsIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.j = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #20
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !146
  %i.n = shl i64 %i.m, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.n, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !145  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !146
  %i.s = shl i64 %i.r, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #20
  br label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev.exit

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #20
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEEbSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_bEEED2Ev.exit, %bb.e
  ret void
}

declare void @_ZN4cvc58internal13preprocessing17AssertionPipeline7replaceEmNS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorENS0_7TrustIdE(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef, ptr noundef align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal13preprocessing17PreprocessingPassD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13preprocessing6passes8FfBitsumD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN4cvc58internal13preprocessing17PreprocessingPassD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSG_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42   ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !77
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

end_hunk_3
