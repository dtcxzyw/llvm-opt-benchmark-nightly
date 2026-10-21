Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/sygus_unif_rl?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1487
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers11SygusUnifRl20registerStrategyNodeENS0_12NodeTemplateILb1EEES5_NS2_8NodeRoleERSt3mapIS5_S7_IS6_bSt4lessIS6_ESaISt4pairIKS6_bEEES8_IS5_ESaISA_IKS5_SE_EEERSt6vectorIS5_SaIS5_EERS7_IS5_St13unordered_setIjSt4hashIjESt8equal_toIjESaIjEESF_SaISA_ISG_SV_EEE:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i71, i64 40
  %i.bn = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3mapIN4cvc58internal6theory11quantifiers8NodeRoleEbSt4lessIS4_ESaISt4pairIKS4_bEEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store i8 1, ptr %i.bn, align 1, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i.i75 = icmp eq ptr %i.bp, null
  br i1 %.not10.i.i.i.i75, label %.critedge.i84, label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEEixERSF_.exit74
  %i.br = load ptr, ptr %1, align 8, !tbaa !88
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 1099511627775            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i76
  %.012.i.i.i.i77 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i76 ], [ %.1.i.i.i.i82, %bb.k ] ; 3 uses
  %.0811.i.i.i.i78 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i76 ], [ %.19.i.i.i.i79, %bb.k ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i77, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = and i64 %i.bw, 1099511627775
  %i.by = icmp samesign ult i64 %i.bx, %i.bt      ; 2 uses
  %.19.i.i.i.i79 = select i1 %i.by, ptr %.0811.i.i.i.i78, ptr %.012.i.i.i.i77 ; 4 uses
  %.1.in.v.i.i.i.i80 = select i1 %i.by, i64 24, i64 16
  %.1.in.i.i.i.i81 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i77, i64 %.1.in.v.i.i.i.i80
  %.1.i.i.i.i82 = load ptr, ptr %.1.in.i.i.i.i81, align 8, !tbaa !318 ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %.1.i.i.i.i82, null
  br i1 %.not.i.i.i.i83, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers17SygusUnifStrategyESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, label %bb.k, !llvm.loop !1

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers17SygusUnifStrategyESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i: ; preds = %bb.k
  %i.bz = icmp eq ptr %.19.i.i.i.i79, %i.bq
  br i1 %i.bz, label %.critedge.i84, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers17SygusUnifStrategyESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i79, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !88
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = and i64 %i.cc, 1099511627775
  %i.ce = icmp samesign ult i64 %i.bt, %i.cd
  br i1 %i.ce, label %.critedge.i84, label %bb.m

.critedge.i84:                                    ; preds = %bb.l, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers17SygusUnifStrategyESt4lessIS3_ESaISt4pairIKS3_S6_EEE11lower_boundERSA_.exit.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEES_INS1_6theory11quantifiers8NodeRoleEbSt4lessIS6_ESaISt4pairIKS6_bEEES7_IS3_ESaIS9_IKS3_SD_EEEixERSF_.exit74
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.97) #29
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %.critedge.i84
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i79, i64 40
  %i.cg = load ptr, ptr %16, align 8, !tbaa !342  ; 5 uses
  store ptr %i.cg, ptr %17, align 8, !tbaa !342
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = lshr i64 %i.ch, 40
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1048575                  ; 3 uses
  %i.cl = icmp samesign ult i32 %i.ck, 1048574
  br i1 %i.cl, label %bb.n, label %bb.o, !prof !92

bb.n:                                             ; preds = %bb.m
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = and i64 %i.ch, -1152920405095219201
  %i.cq = or i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cg, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit

bb.o:                                             ; preds = %bb.m
  %i.cr = icmp eq i32 %i.ck, 1048574
  br i1 %i.cr, label %bb.p, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit, !prof !89

bb.p:                                             ; preds = %bb.o
  %i.cs = or i64 %i.ch, 1152920405095219200
  store i64 %i.cs, ptr %i.cg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit unwind label %bb.z

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit:          ; preds = %bb.o, %bb.n, %bb.p
  %i.ct = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN4cvc58internal6theory11quantifiers17SygusUnifStrategy15getEnumTypeInfoENS0_8TypeNodeE(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull align 8 %17)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.cu = load ptr, ptr %17, align 8, !tbaa !342  ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.r, !prof !89

bb.r:                                             ; preds = %bb.q
  %i.cx = add i64 %i.cv, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cv, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.cu, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.s, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !89

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #27
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.q, %bb.r, %bb.s
  %i.de = load i32, ptr %i.a, align 4, !tbaa !385
  %i.df = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4cvc58internal6theory11quantifiers12EnumTypeInfo15getStrategyNodeENS2_8NodeRoleE(ptr noundef nonnull align 8 dereferenceable(104) %i.ct, i32 noundef %i.de)
          to label %bb.u unwind label %bb.z       ; 3 uses

bb.u:                                             ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !325
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !555
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !378
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 3
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %.not185 = icmp eq i32 %i.dn, 0
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.cc, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ds = load ptr, ptr %16, align 8, !tbaa !342  ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 3 uses
  %i.du = and i64 %i.dt, 1152920405095219200
  %.not.i.i86 = icmp eq i64 %i.du, 1152920405095219200
  br i1 %.not.i.i86, label %_ZN4cvc58internal8TypeNodeD2Ev.exit87, label %bb.v, !prof !89

bb.v:                                             ; preds = %._crit_edge
  %i.dv = add i64 %i.dt, 1152920405095219200
  %i.dw = and i64 %i.dv, 1152920405095219200      ; 2 uses
  %i.dx = and i64 %i.dt, -1152920405095219201
  %i.dy = or disjoint i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.ds, align 8
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %bb.w, label %_ZN4cvc58internal8TypeNodeD2Ev.exit87, !prof !89

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit87 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #27
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit87:            ; preds = %._crit_edge, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.cd

bb.y:                                             ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  br label %bb.ce

bb.z:                                             ; preds = %bb.p, %.critedge.i84, %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.aa:                                            ; preds = %.lr.ph, %bb.cc
  %i.ee = phi i32 [ 0, %.lr.ph ], [ %i.ku, %bb.cc ]
  %i.ef = zext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.df, align 8, !tbaa !378
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !380 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !563
  %i.ek = icmp eq i32 %i.ej, 1
  %i.el = load i32, ptr %i.a, align 4
  %i.em = icmp eq i32 %i.el, 1
  %or.cond = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit ], [ 1, %.preheader ] ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !564
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !88 ; 8 uses
  %i.er = load i64, ptr %i.eq, align 8            ; 4 uses
  %i.es = lshr i64 %i.er, 40
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = and i32 %i.et, 1048575                  ; 3 uses
  %i.ev = icmp samesign ult i32 %i.eu, 1048574
  br i1 %i.ev, label %bb.ac, label %bb.ad, !prof !92

bb.ac:                                            ; preds = %bb.ab
  %i.ew = add nuw nsw i32 %i.eu, 1
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 40
  %i.ez = and i64 %i.er, -1152920405095219201
  %i.fa = or i64 %i.ey, %i.ez                     ; 2 uses
  store i64 %i.fa, ptr %i.eq, align 8
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.fb = icmp eq i32 %i.eu, 1048574
  br i1 %i.fb, label %bb.ae, label %bb.af, !prof !89

bb.ae:                                            ; preds = %bb.ad
  %i.fc = or i64 %i.er, 1152920405095219200
  store i64 %i.fc, ptr %i.eq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %._crit_edge160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge160:                                   ; preds = %bb.ae
  %.pre = load i64, ptr %i.eq, align 8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge160, %bb.ad, %bb.ac
  %i.fd = phi i64 [ %.pre, %._crit_edge160 ], [ %i.er, %bb.ad ], [ %i.fa, %bb.ac ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !566
  %i.fg = load ptr, ptr %2, align 8, !tbaa !88
  %.not154 = icmp eq ptr %i.eq, %i.fg
  %i.fh = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.ff, %i.fh
  %.124 = select i1 %.not154, i1 %.not, i1 false  ; 2 uses
  %i.fi = and i64 %i.fd, 1152920405095219200
  %.not.i.i.i89 = icmp eq i64 %i.fi, 1152920405095219200
  br i1 %.not.i.i.i89, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, label %bb.ag, !prof !89

bb.ag:                                            ; preds = %bb.af
  %i.fj = add i64 %i.fd, 1152920405095219200
  %i.fk = and i64 %i.fj, 1152920405095219200      ; 2 uses
  %i.fl = and i64 %i.fd, -1152920405095219201
  %i.fm = or disjoint i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %i.eq, align 8
  %i.fn = icmp eq i64 %i.fk, 0
  br i1 %i.fn, label %bb.ah, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit, !prof !89

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #27
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fq = icmp samesign ult i64 %indvars.iv, 2
  %or.cond157 = select i1 %.124, i1 %i.fq, i1 false
  br i1 %or.cond157, label %bb.ab, label %bb.aj, !llvm.loop !552

bb.aj:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers8NodeRoleEED2Ev.exit
  br i1 %.124, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.fr = load ptr, ptr %i.en, align 8, !tbaa !564
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !88 ; 13 uses
  store ptr %i.fs, ptr %18, align 8, !tbaa !88
  %i.ft = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.fu = lshr i64 %i.ft, 40
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = and i32 %i.fv, 1048575                  ; 3 uses
  %i.fx = icmp samesign ult i32 %i.fw, 1048574
  br i1 %i.fx, label %bb.al, label %bb.am, !prof !92

bb.al:                                            ; preds = %bb.ak
  %i.fy = add nuw nsw i32 %i.fw, 1
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 40
  %i.gb = and i64 %i.ft, -1152920405095219201
  %i.gc = or i64 %i.ga, %i.gb
  store i64 %i.gc, ptr %i.fs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.am:                                            ; preds = %bb.ak
  %i.gd = icmp eq i32 %i.fw, 1048574
  br i1 %i.gd, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !89

bb.an:                                            ; preds = %bb.am
  %i.ge = or i64 %i.ft, 1152920405095219200
  store i64 %i.ge, ptr %i.fs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bp

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.am, %bb.al, %bb.an
  %i.gf = load ptr, ptr %1, align 8, !tbaa !88    ; 5 uses
  store ptr %i.gf, ptr %19, align 8, !tbaa !88
  %i.gg = load i64, ptr %i.gf, align 8            ; 3 uses
  %i.gh = lshr i64 %i.gg, 40
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 1048575                  ; 3 uses
  %i.gk = icmp samesign ult i32 %i.gj, 1048574
  br i1 %i.gk, label %bb.ao, label %bb.ap, !prof !92

bb.ao:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gl = add nuw nsw i32 %i.gj, 1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 40
  %i.go = and i64 %i.gg, -1152920405095219201
  %i.gp = or i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.gf, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107

bb.ap:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.gq = icmp eq i32 %i.gj, 1048574
  br i1 %i.gq, label %bb.aq, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107, !prof !89

bb.aq:                                            ; preds = %bb.ap
  %i.gr = or i64 %i.gg, 1152920405095219200
  store i64 %i.gr, ptr %i.gf, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107 unwind label %bb.bq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107: ; preds = %bb.ap, %bb.ao, %bb.aq
  %i.gs = load ptr, ptr %2, align 8, !tbaa !88    ; 5 uses
  store ptr %i.gs, ptr %20, align 8, !tbaa !88
  %i.gt = load i64, ptr %i.gs, align 8            ; 3 uses
  %i.gu = lshr i64 %i.gt, 40
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = and i32 %i.gv, 1048575                  ; 3 uses
  %i.gx = icmp samesign ult i32 %i.gw, 1048574
  br i1 %i.gx, label %bb.ar, label %bb.as, !prof !92

bb.ar:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107
  %i.gy = add nuw nsw i32 %i.gw, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 40
  %i.hb = and i64 %i.gt, -1152920405095219201
  %i.hc = or i64 %i.ha, %i.hb
  store i64 %i.hc, ptr %i.gs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit107
  %i.hd = icmp eq i32 %i.gw, 1048574
  br i1 %i.hd, label %bb.at, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109, !prof !89

bb.at:                                            ; preds = %bb.as
  %i.he = or i64 %i.gt, 1152920405095219200
  store i64 %i.he, ptr %i.gs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109 unwind label %bb.br

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109: ; preds = %bb.as, %bb.ar, %bb.at
  store ptr %i.fs, ptr %21, align 8, !tbaa !88
  %i.hf = load i64, ptr %i.fs, align 8            ; 3 uses
  %i.hg = lshr i64 %i.hf, 40
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i32 %i.hh, 1048575                  ; 3 uses
  %i.hj = icmp samesign ult i32 %i.hi, 1048574
  br i1 %i.hj, label %bb.au, label %bb.av, !prof !92

bb.au:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109
  %i.hk = add nuw nsw i32 %i.hi, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 40
  %i.hn = and i64 %i.hf, -1152920405095219201
  %i.ho = or i64 %i.hm, %i.hn
  store i64 %i.ho, ptr %i.fs, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111

bb.av:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit109
  %i.hp = icmp eq i32 %i.hi, 1048574
  br i1 %i.hp, label %bb.aw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111, !prof !89

bb.aw:                                            ; preds = %bb.av
  %i.hq = or i64 %i.hf, 1152920405095219200
  store i64 %i.hq, ptr %i.fs, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111 unwind label %bb.bs

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111: ; preds = %bb.av, %bb.au, %bb.aw
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !325
  invoke void @_ZN4cvc58internal6theory11quantifiers11SygusUnifRl29registerConditionalEnumeratorENS0_12NodeTemplateILb1EEES5_S5_j(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 %19, ptr noundef nonnull align 8 %20, ptr noundef nonnull align 8 %21, i32 noundef %i.hr)
          to label %bb.ax unwind label %bb.bt

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit111
  %i.hs = load ptr, ptr %21, align 8, !tbaa !88   ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8            ; 3 uses
  %i.hu = and i64 %i.ht, 1152920405095219200
  %.not.i.i112 = icmp eq i64 %i.hu, 1152920405095219200
  br i1 %.not.i.i112, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ay, !prof !89

bb.ay:                                            ; preds = %bb.ax
  %i.hv = add i64 %i.ht, 1152920405095219200
  %i.hw = and i64 %i.hv, 1152920405095219200      ; 2 uses
  %i.hx = and i64 %i.ht, -1152920405095219201
  %i.hy = or disjoint i64 %i.hw, %i.hx
  store i64 %i.hy, ptr %i.hs, align 8
  %i.hz = icmp eq i64 %i.hw, 0
  br i1 %i.hz, label %bb.az, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !89

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.ax, %bb.ay, %bb.az
  %i.ic = load ptr, ptr %20, align 8, !tbaa !88   ; 3 uses
  %i.id = load i64, ptr %i.ic, align 8            ; 3 uses
  %i.ie = and i64 %i.id, 1152920405095219200
  %.not.i.i113 = icmp eq i64 %i.ie, 1152920405095219200
  br i1 %.not.i.i113, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114, label %bb.bb, !prof !89

bb.bb:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.if = add i64 %i.id, 1152920405095219200
  %i.ig = and i64 %i.if, 1152920405095219200      ; 2 uses
  %i.ih = and i64 %i.id, -1152920405095219201
  %i.ii = or disjoint i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.ic, align 8
  %i.ij = icmp eq i64 %i.ig, 0
  br i1 %i.ij, label %bb.bc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114, !prof !89

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.bb, %bb.bc
  %i.im = load ptr, ptr %19, align 8, !tbaa !88   ; 3 uses
  %i.in = load i64, ptr %i.im, align 8            ; 3 uses
  %i.io = and i64 %i.in, 1152920405095219200
  %.not.i.i115 = icmp eq i64 %i.io, 1152920405095219200
  br i1 %.not.i.i115, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, label %bb.be, !prof !89

bb.be:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit114
  %i.ip = add i64 %i.in, 1152920405095219200
  %i.iq = and i64 %i.ip, 1152920405095219200      ; 2 uses
  %i.ir = and i64 %i.in, -1152920405095219201
  %i.is = or disjoint i64 %i.iq, %i.ir
  store i64 %i.is, ptr %i.im, align 8
  %i.it = icmp eq i64 %i.iq, 0
  br i1 %i.it, label %bb.bf, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, !prof !89

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116 unwind label %bb.bg
end_hunk_0
