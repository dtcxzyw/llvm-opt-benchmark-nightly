Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/conjecture_generator?download=true
inline.NumInlined: 9988
inline.NumDeleted: 3008
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers19ConjectureGenerator18getEnumerateUfTermENS0_12NodeTemplateILb1EEEjRSt6vectorIS5_SaIS5_EE:bb.a
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %.body179

bb.cg:                                            ; preds = %bb.ce, %bb.cc, %_ZN4cvc58internal8TypeNodeD2Ev.exit177
  %i.kf = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !84
  %i.kg = icmp eq ptr %i.jy, %i.kf
  br i1 %i.kg, label %bb.en, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit207

bb.ch:                                            ; preds = %bb.bx
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ci:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit175
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #21
  br label %bb.er

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit207: ; preds = %bb.cg, %.critedge136
  %indvars.iv744 = phi i64 [ %indvars.iv.next745, %.critedge136 ], [ 0, %bb.cg ] ; 2 uses
  %i.kj = load ptr, ptr %1, align 8, !tbaa !66
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8
  %i.km = trunc i64 %i.kl to i32
  %i.kn = and i32 %i.km, 1023                     ; 2 uses
  %i.ko = icmp eq i32 %i.kn, 1023
  %i.kp = select i1 %i.ko, i32 -1, i32 %i.kn
  %i.kq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kp)
          to label %.critedge136 unwind label %bb.cj

.critedge136:                                     ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit207
  %i.kr = icmp eq i32 %i.kq, 2
  %i.ks = load i64, ptr %i.kk, align 8
  %i.kt = lshr i64 %i.ks, 32
  %i.ku = and i64 %i.kt, 67108863
  %i.kv = sext i1 %i.kr to i64
  %i.kw = add nsw i64 %i.ku, %i.kv
  %i.kx = and i64 %i.kw, 4294967295
  %i.ky = icmp samesign ugt i64 %i.kx, %indvars.iv744
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1
  br i1 %i.ky, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit207, label %bb.ck, !llvm.loop !1154

bb.cj:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit207
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body179

bb.ck:                                            ; preds = %.critedge136
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.3") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cl unwind label %bb.cz

bb.cl:                                            ; preds = %bb.ck
  %i.la = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 3 uses
  %i.lb = load ptr, ptr %i.ek, align 8, !tbaa !355
  %.not.i.i221 = icmp eq ptr %i.la, %i.lb
  br i1 %.not.i.i221, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lc = load ptr, ptr %14, align 8, !tbaa !66   ; 5 uses
  store ptr %i.lc, ptr %i.la, align 8, !tbaa !66
  %i.ld = load i64, ptr %i.lc, align 8            ; 3 uses
  %i.le = lshr i64 %i.ld, 40
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = and i32 %i.lf, 1048575                  ; 3 uses
  %i.lh = icmp samesign ult i32 %i.lg, 1048574
  br i1 %i.lh, label %bb.cn, label %bb.co, !prof !83

bb.cn:                                            ; preds = %bb.cm
  %i.li = add nuw nsw i32 %i.lg, 1
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = shl nuw nsw i64 %i.lj, 40
  %i.ll = and i64 %i.ld, -1152920405095219201
  %i.lm = or i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %i.lc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.co:                                            ; preds = %bb.cm
  %i.ln = icmp eq i32 %i.lg, 1048574
  br i1 %i.ln, label %bb.cp, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !68

bb.cp:                                            ; preds = %bb.co
  %i.lo = or i64 %i.ld, 1152920405095219200
  store i64 %i.lo, ptr %i.lc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.da

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cp, %bb.co, %bb.cn
  %i.lp = load ptr, ptr %i.ej, align 8, !tbaa !354
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store ptr %i.lq, ptr %i.ej, align 8, !tbaa !354
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.cq:                                            ; preds = %bb.cl
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.la, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.da

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.cq
  %i.lr = load ptr, ptr %14, align 8, !tbaa !66   ; 3 uses
  %i.ls = load i64, ptr %i.lr, align 8            ; 3 uses
  %i.lt = and i64 %i.ls, 1152920405095219200
  %.not.i.i224 = icmp eq i64 %i.lt, 1152920405095219200
  br i1 %.not.i.i224, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225, label %bb.cr, !prof !68

bb.cr:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.lu = add i64 %i.ls, 1152920405095219200
  %i.lv = and i64 %i.lu, 1152920405095219200      ; 2 uses
  %i.lw = and i64 %i.ls, -1152920405095219201
  %i.lx = or disjoint i64 %i.lv, %i.lw
  store i64 %i.lx, ptr %i.lr, align 8
  %i.ly = icmp eq i64 %i.lv, 0
  br i1 %i.ly, label %bb.cs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225, !prof !68

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.not576 = icmp eq i64 %i.iw, 0
  br i1 %.not576, label %._crit_edge, label %.lr.ph561

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225
  %i.mb = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 3 uses
  %i.mc = load ptr, ptr %i.ek, align 8, !tbaa !355
  %.not.i226 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i226, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge
  %i.md = load ptr, ptr %11, align 8, !tbaa !66   ; 5 uses
  store ptr %i.md, ptr %i.mb, align 8, !tbaa !66
  %i.me = load i64, ptr %i.md, align 8            ; 3 uses
  %i.mf = lshr i64 %i.me, 40
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = and i32 %i.mg, 1048575                  ; 3 uses
  %i.mi = icmp samesign ult i32 %i.mh, 1048574
  br i1 %i.mi, label %bb.cv, label %bb.cw, !prof !83

bb.cv:                                            ; preds = %bb.cu
  %i.mj = add nuw nsw i32 %i.mh, 1
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl nuw nsw i64 %i.mk, 40
  %i.mm = and i64 %i.me, -1152920405095219201
  %i.mn = or i64 %i.ml, %i.mm
  store i64 %i.mn, ptr %i.md, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.mo = icmp eq i32 %i.mh, 1048574
  br i1 %i.mo, label %bb.cx, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !68

bb.cx:                                            ; preds = %bb.cw
  %i.mp = or i64 %i.me, 1152920405095219200
  store i64 %i.mp, ptr %i.md, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.ej

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.mq = load ptr, ptr %i.ej, align 8, !tbaa !354
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.mr, ptr %i.ej, align 8, !tbaa !354
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.cy:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.mb, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ej

bb.cz:                                            ; preds = %bb.ck
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cq, %bb.cp
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn110 = phi { ptr, i32 } [ %i.mt, %bb.da ], [ %i.ms, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.em

.lr.ph561:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239
  %i.mu = phi i64 [ %19, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239 ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225 ] ; 2 uses
  %.058560 = phi i32 [ %18, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239 ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit225 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.mv = load ptr, ptr %6, align 8, !tbaa !624
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mu
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !373 ; 5 uses
  store ptr %i.mx, ptr %16, align 8, !tbaa !373
  %i.my = load i64, ptr %i.mx, align 8            ; 3 uses
  %i.mz = lshr i64 %i.my, 40
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = and i32 %i.na, 1048575                  ; 3 uses
  %i.nc = icmp samesign ult i32 %i.nb, 1048574
  br i1 %i.nc, label %bb.dc, label %bb.dd, !prof !83

bb.dc:                                            ; preds = %.lr.ph561
  %i.nd = add nuw nsw i32 %i.nb, 1
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 40
  %i.ng = and i64 %i.my, -1152920405095219201
  %i.nh = or i64 %i.nf, %i.ng
  store i64 %i.nh, ptr %i.mx, align 8
  br label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230

bb.dd:                                            ; preds = %.lr.ph561
  %i.ni = icmp eq i32 %i.nb, 1048574
  br i1 %i.ni, label %bb.de, label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230, !prof !68

bb.de:                                            ; preds = %bb.dd
  %i.nj = or i64 %i.my, 1152920405095219200
  store i64 %i.nj, ptr %i.mx, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mx)
          to label %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230 unwind label %bb.dr

_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230:       ; preds = %bb.dd, %bb.dc, %bb.de
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0330.4, i64 %i.mu
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !374
  invoke void @_ZN4cvc58internal6theory11quantifiers15TermEnumeration16getEnumerateTermENS0_8TypeNodeEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.3") align 8 %15, ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 %16, i32 noundef %i.nl)
          to label %bb.df unwind label %bb.ds

bb.df:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230
  %i.nm = load ptr, ptr %16, align 8, !tbaa !373  ; 3 uses
  %i.nn = load i64, ptr %i.nm, align 8            ; 3 uses
  %i.no = and i64 %i.nn, 1152920405095219200
  %.not.i.i231 = icmp eq i64 %i.no, 1152920405095219200
  br i1 %.not.i.i231, label %_ZN4cvc58internal8TypeNodeD2Ev.exit232, label %bb.dg, !prof !68

bb.dg:                                            ; preds = %bb.df
  %i.np = add i64 %i.nn, 1152920405095219200
  %i.nq = and i64 %i.np, 1152920405095219200      ; 2 uses
  %i.nr = and i64 %i.nn, -1152920405095219201
  %i.ns = or disjoint i64 %i.nq, %i.nr
  store i64 %i.ns, ptr %i.nm, align 8
  %i.nt = icmp eq i64 %i.nq, 0
  br i1 %i.nt, label %bb.dh, label %_ZN4cvc58internal8TypeNodeD2Ev.exit232, !prof !68

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit232 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #29
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit232:           ; preds = %bb.df, %bb.dg, %bb.dh
  %i.nw = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 3 uses
  %i.nx = load ptr, ptr %i.ek, align 8, !tbaa !355
  %.not.i233 = icmp eq ptr %i.nw, %i.nx
  br i1 %.not.i233, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit232
  %i.ny = load ptr, ptr %15, align 8, !tbaa !66   ; 5 uses
  store ptr %i.ny, ptr %i.nw, align 8, !tbaa !66
  %i.nz = load i64, ptr %i.ny, align 8            ; 3 uses
  %i.oa = lshr i64 %i.nz, 40
  %i.ob = trunc nuw nsw i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 1048575                  ; 3 uses
  %i.od = icmp samesign ult i32 %i.oc, 1048574
  br i1 %i.od, label %bb.dk, label %bb.dl, !prof !83

bb.dk:                                            ; preds = %bb.dj
  %i.oe = add nuw nsw i32 %i.oc, 1
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 40
  %i.oh = and i64 %i.nz, -1152920405095219201
  %i.oi = or i64 %i.og, %i.oh
  store i64 %i.oi, ptr %i.ny, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i234

bb.dl:                                            ; preds = %bb.dj
  %i.oj = icmp eq i32 %i.oc, 1048574
  br i1 %i.oj, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i234, !prof !68

bb.dm:                                            ; preds = %bb.dl
  %i.ok = or i64 %i.nz, 1152920405095219200
  store i64 %i.ok, ptr %i.ny, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i234 unwind label %bb.dt

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i234: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.ol = load ptr, ptr %i.ej, align 8, !tbaa !354
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store ptr %i.om, ptr %i.ej, align 8, !tbaa !354
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit237

bb.dn:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit232
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.nw, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit237 unwind label %bb.dt

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit237: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i234, %bb.dn
  %i.on = load ptr, ptr %15, align 8, !tbaa !66   ; 3 uses
  %i.oo = load i64, ptr %i.on, align 8            ; 3 uses
  %i.op = and i64 %i.oo, 1152920405095219200
  %.not.i.i238 = icmp eq i64 %i.op, 1152920405095219200
  br i1 %.not.i.i238, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239, label %bb.do, !prof !68

bb.do:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit237
  %i.oq = add i64 %i.oo, 1152920405095219200
  %i.or = and i64 %i.oq, 1152920405095219200      ; 2 uses
  %i.os = and i64 %i.oo, -1152920405095219201
  %i.ot = or disjoint i64 %i.or, %i.os
  store i64 %i.ot, ptr %i.on, align 8
  %i.ou = icmp eq i64 %i.or, 0
  br i1 %i.ou, label %bb.dp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239, !prof !68

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.on)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ov = landingpad { ptr, i32 }
          catch ptr null
  %i.ow = extractvalue { ptr, i32 } %i.ov, 0
  call void @__clang_call_terminate(ptr %i.ow) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit239: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit237, %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %18 = add i32 %.058560, 1                       ; 2 uses
  %19 = zext i32 %18 to i64                       ; 2 uses
  %i.ox = icmp ugt i64 %i.iw, %19
  br i1 %i.ox, label %.lr.ph561, label %._crit_edge, !llvm.loop !1155

bb.dr:                                            ; preds = %bb.de
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.ds:                                            ; preds = %_ZN4cvc58internal8TypeNodeC2ERKS1_.exit230
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #21
  br label %bb.du

bb.dt:                                            ; preds = %bb.dn, %bb.dm
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %.pn115 = phi { ptr, i32 } [ %i.pa, %bb.dt ], [ %i.oz, %bb.ds ], [ %i.oy, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.em

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.pb = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.dv unwind label %bb.ek

bb.dv:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1160
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 dereferenceable(3592) %i.pb, i32 noundef 26)
          to label %.noexc242 unwind label %bb.ek

.noexc242:                                        ; preds = %bb.dv
  %i.pc = load ptr, ptr %13, align 8, !tbaa !375, !noalias !1160 ; 2 uses
  %i.pd = load ptr, ptr %i.ej, align 8, !tbaa !375, !noalias !1160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1160
  %.not6.i.i.i = icmp eq ptr %i.pd, %i.pc
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc242, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.pg, %.noexc.i ], [ %i.pc, %.noexc242 ] ; 2 uses
  %i.pe = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !66, !noalias !1160
  store ptr %i.pe, ptr %4, align 8, !tbaa !62, !noalias !1160
  %i.pf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %4)
          to label %.noexc.i unwind label %.loopexit.i240, !noalias !1160 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %i.pg, %i.pd
  br i1 %.not.i.i.i241, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !31

.loopexit4.i:                                     ; preds = %.noexc.i, %.noexc242
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1160
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.3") align 8 %17, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit259 unwind label %.loopexit.split-lp.i

.loopexit.i240:                                   ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp.i:                             ; preds = %.loopexit4.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i240
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i240 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1160
  br label %.body243

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit259: ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1160
  %i.ph = load ptr, ptr %i.dx, align 8, !tbaa !354 ; 3 uses
  %i.pi = load ptr, ptr %i.el, align 8, !tbaa !355
  %.not.i260 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i260, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit259
  %i.pj = load ptr, ptr %17, align 8, !tbaa !66   ; 5 uses
  store ptr %i.pj, ptr %i.ph, align 8, !tbaa !66
  %i.pk = load i64, ptr %i.pj, align 8            ; 3 uses
  %i.pl = lshr i64 %i.pk, 40
  %i.pm = trunc nuw nsw i64 %i.pl to i32
  %i.pn = and i32 %i.pm, 1048575                  ; 3 uses
  %i.po = icmp samesign ult i32 %i.pn, 1048574
  br i1 %i.po, label %bb.dy, label %bb.dz, !prof !83

bb.dy:                                            ; preds = %bb.dx
  %i.pp = add nuw nsw i32 %i.pn, 1
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl nuw nsw i64 %i.pq, 40
  %i.ps = and i64 %i.pk, -1152920405095219201
  %i.pt = or i64 %i.pr, %i.ps
  store i64 %i.pt, ptr %i.pj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i261

bb.dz:                                            ; preds = %bb.dx
  %i.pu = icmp eq i32 %i.pn, 1048574
  br i1 %i.pu, label %bb.ea, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i261, !prof !68

bb.ea:                                            ; preds = %bb.dz
  %i.pv = or i64 %i.pk, 1152920405095219200
  store i64 %i.pv, ptr %i.pj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i261 unwind label %bb.el

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i261: ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.pw = load ptr, ptr %i.dx, align 8, !tbaa !354
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store ptr %i.px, ptr %i.dx, align 8, !tbaa !354
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit264

bb.eb:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit259
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ph, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit264 unwind label %bb.el

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit264: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i261, %bb.eb
  %i.py = load ptr, ptr %17, align 8, !tbaa !66   ; 3 uses
  %i.pz = load i64, ptr %i.py, align 8            ; 3 uses
  %i.qa = and i64 %i.pz, 1152920405095219200
  %.not.i.i265 = icmp eq i64 %i.qa, 1152920405095219200
  br i1 %.not.i.i265, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266, label %bb.ec, !prof !68

bb.ec:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit264
  %i.qb = add i64 %i.pz, 1152920405095219200
  %i.qc = and i64 %i.qb, 1152920405095219200      ; 2 uses
  %i.qd = and i64 %i.pz, -1152920405095219201
  %i.qe = or disjoint i64 %i.qc, %i.qd
  store i64 %i.qe, ptr %i.py, align 8
  %i.qf = icmp eq i64 %i.qc, 0
  br i1 %i.qf, label %bb.ed, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266, !prof !68

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.py)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266 unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qg = landingpad { ptr, i32 }
          catch ptr null
  %i.qh = extractvalue { ptr, i32 } %i.qg, 0
  call void @__clang_call_terminate(ptr %i.qh) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit264, %bb.ec, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.qi = load ptr, ptr %13, align 8, !tbaa !353  ; 3 uses
  %i.qj = load ptr, ptr %i.ej, align 8, !tbaa !354 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qi, %i.qj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i267

.lr.ph.i.i.i267:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.qu, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.qi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266 ] ; 2 uses
  %i.qk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !66 ; 3 uses
  %i.ql = load i64, ptr %i.qk, align 8            ; 3 uses
  %i.qm = and i64 %i.ql, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.qm, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.ef, !prof !68

bb.ef:                                            ; preds = %.lr.ph.i.i.i267
  %i.qn = add i64 %i.ql, 1152920405095219200
  %i.qo = and i64 %i.qn, 1152920405095219200      ; 2 uses
  %i.qp = and i64 %i.ql, -1152920405095219201
  %i.qq = or disjoint i64 %i.qo, %i.qp
  store i64 %i.qq, ptr %i.qk, align 8
  %i.qr = icmp eq i64 %i.qo, 0
  br i1 %i.qr, label %bb.eg, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !68

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qk)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qs = landingpad { ptr, i32 }
          catch ptr null
  %i.qt = extractvalue { ptr, i32 } %i.qs, 0
  call void @__clang_call_terminate(ptr %i.qt) #29
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.eg, %bb.ef, %.lr.ph.i.i.i267
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.qu, %i.qj
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i267, !llvm.loop !5

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !353
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266
  %i.qv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qi, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit266 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.qw = load ptr, ptr %i.ek, align 8, !tbaa !355
  %i.qx = ptrtoint ptr %i.qw to i64
end_hunk_0
