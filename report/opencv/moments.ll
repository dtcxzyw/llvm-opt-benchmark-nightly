inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv7momentsERKNS_11_InputArrayEb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.al
  %.pn103 = phi { ptr, i32 } [ %i.hi, %bb.al ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hj, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.body

bb.an:                                            ; preds = %bb.ah
  %i.hp = icmp eq i32 %i.e, 0
  %or.cond6 = or i1 %2, %i.hp
  br i1 %or.cond6, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %switch.tableidx = add nsw i32 %i.e, -2         ; 3 uses
  %i.hq = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond231 = select i1 %i.hq, i1 %switch.lobit, i1 false
  br i1 %or.cond231, label %switch.lookup, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv7momentsERKNS_11_InputArrayEb, ptr noundef nonnull @.str.1, i32 noundef 638) #17
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.at:                                            ; preds = %bb.aq
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.at
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !52
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.as
  %.pn = phi { ptr, i32 } [ %i.hr, %bb.as ], [ %i.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.hs, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.body

switch.lookup:                                    ; preds = %bb.ao
  %i.hy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv7momentsERKNS_11_InputArrayEb, i64 %i.hy
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.au

bb.au:                                            ; preds = %switch.lookup, %bb.an
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @_ZN2cvL13momentsInTileIhiiEEvRKNS_3MatEPd, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.lr.ph.us.preheader unwind label %bb.be

.lr.ph.us.preheader:                              ; preds = %bb.au
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ie = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.088168.us = phi i32 [ %i.mc, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.ir = sub nsw i32 %.sroa.7.0.extract.trunc, %.088168.us
  %.sroa.speculated149.us = call i32 @llvm.smin.i32(i32 %i.ir, i32 32) ; 2 uses
  %.sroa.6.0.insert.ext.us = zext i32 %.sroa.speculated149.us to i64
  %.sroa.6.0.insert.shift.us = shl nuw i64 %.sroa.6.0.insert.ext.us, 32
  %i.is = uitofp nneg i32 %.088168.us to double   ; 5 uses
  %i.it = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iv = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.is, i64 0
  %i.iw = insertelement <2 x double> poison, double %i.is, i64 1
  %i.ix = insertelement <2 x double> poison, double %i.is, i64 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph.us, %.loopexit.us
  %.087167.us = phi i32 [ 0, %.lr.ph.us ], [ %i.ma, %.loopexit.us ] ; 4 uses
  %i.iy = sub nsw i32 %.sroa.044.0.extract.trunc, %.087167.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.iy, i32 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store i32 %.087167.us, ptr %15, align 4, !tbaa !58
  store i32 %.088168.us, ptr %i.hz, align 4, !tbaa !60
  store i32 %.sroa.speculated.us, ptr %i.ia, align 4, !tbaa !61
  store i32 %.sroa.speculated149.us, ptr %i.ib, align 4, !tbaa !62
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.aw unwind label %.split.us

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br i1 %2, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %.sroa.0.0.insert.ext.us = zext i32 %.sroa.speculated.us to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.6.0.insert.shift.us, %.sroa.0.0.insert.ext.us
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %16, i64 %.sroa.0.0.insert.insert.us, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.ay unwind label %.split172.us

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store i32 0, ptr %i.ic, align 8, !tbaa !63
  store i32 0, ptr %i.id, align 4, !tbaa !64
  store i32 16842752, ptr %17, align 8, !tbaa !65
  store ptr %14, ptr %i.ie, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !22
  store i32 -1056833530, ptr %18, align 8, !tbaa !65
  store ptr %i.b, ptr %i.ig, align 8, !tbaa !26
  store i64 4294967297, ptr %i.if, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  store i64 0, ptr %i.ii, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !65
  store ptr %16, ptr %i.ih, align 8, !tbaa !26
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 5)
          to label %bb.az unwind label %.split175.us

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.iz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.ba unwind label %.split178.us ; 0 uses

bb.ba:                                            ; preds = %bb.az
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  invoke void %.0(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull %i.c)
          to label %bb.bc unwind label %.split181.us

bb.bc:                                            ; preds = %bb.bb
  %i.ja = load double, ptr %i.c, align 16, !tbaa !22 ; 2 uses
  br i1 %2, label %.preheader.us.preheader, label %..loopexit.us_crit_edge

..loopexit.us_crit_edge:                          ; preds = %bb.bc
  %.pre194 = load double, ptr %i.ij, align 8, !tbaa !22
  %i.jb = load <2 x double>, ptr %i.im, align 16, !tbaa !22
  %i.jc = load <6 x double>, ptr %i.ik, align 16, !tbaa !22
  %i.jd = shufflevector <6 x double> %i.jc, <6 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.je = load <2 x double>, ptr %i.ip, align 16, !tbaa !22
  br label %.loopexit.us

.preheader.us.preheader:                          ; preds = %bb.bc
  %i.jf = fmul double %i.ja, f0x3F70101010101010  ; 2 uses
  store double %i.jf, ptr %i.c, align 16, !tbaa !22
  %i.jg = load double, ptr %i.ij, align 8, !tbaa !22
  %i.jh = fmul double %i.jg, f0x3F70101010101010  ; 2 uses
  store double %i.jh, ptr %i.ij, align 8, !tbaa !22
  %i.ji = load <2 x double>, ptr %i.im, align 16, !tbaa !22
  %i.jj = fmul <2 x double> %i.ji, splat (double f0x3F70101010101010)
  %i.jk = load <6 x double>, ptr %i.ik, align 16, !tbaa !22
  %i.jl = shufflevector <6 x double> %i.jk, <6 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jm = fmul <4 x double> %i.jl, splat (double f0x3F70101010101010) ; 2 uses
  %i.jn = shufflevector <4 x double> %i.jm, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.jn, ptr %i.ik, align 16, !tbaa !22
  %i.jo = load <2 x double>, ptr %i.ip, align 16, !tbaa !22
  %i.jp = fmul <2 x double> %i.jo, splat (double f0x3F70101010101010)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %..loopexit.us_crit_edge, %.preheader.us.preheader
  %i.jq = phi double [ %.pre194, %..loopexit.us_crit_edge ], [ %i.jh, %.preheader.us.preheader ] ; 5 uses
  %i.jr = phi double [ %i.ja, %..loopexit.us_crit_edge ], [ %i.jf, %.preheader.us.preheader ]
  %i.js = phi <2 x double> [ %i.jb, %..loopexit.us_crit_edge ], [ %i.jj, %.preheader.us.preheader ] ; 4 uses
  %i.jt = phi <2 x double> [ %i.je, %..loopexit.us_crit_edge ], [ %i.jp, %.preheader.us.preheader ]
  %i.ju = phi <4 x double> [ %i.jd, %..loopexit.us_crit_edge ], [ %i.jm, %.preheader.us.preheader ] ; 6 uses
  %i.jv = uitofp nneg i32 %.087167.us to double   ; 7 uses
  %i.jw = load <2 x double>, ptr %7, align 16, !tbaa !22
  %i.jx = insertelement <2 x double> poison, double %i.jr, i64 0 ; 2 uses
  %i.jy = extractelement <4 x double> %i.ju, i64 0 ; 2 uses
  %i.jz = extractelement <4 x double> %i.ju, i64 1 ; 2 uses
  %i.ka = load <2 x double>, ptr %i.il, align 16, !tbaa !22
  %i.kb = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.jv, i64 0 ; 2 uses
  %i.kc = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = insertelement <2 x double> %i.iw, double %i.jv, i64 0 ; 2 uses
  %i.ke = fmul <2 x double> %i.kc, %i.kd          ; 3 uses
  %i.kf = extractelement <2 x double> %i.ke, i64 0 ; 2 uses
  %i.kg = fadd double %i.kf, %i.jq                ; 2 uses
  %i.kh = insertelement <2 x double> %i.jx, double %i.kg, i64 1
  %i.ki = fadd <2 x double> %i.kh, %i.jw
  store <2 x double> %i.ki, ptr %7, align 16, !tbaa !22
  %i.kj = extractelement <2 x double> %i.ke, i64 1 ; 2 uses
  %i.kk = fadd double %i.kj, %i.jy                ; 3 uses
  %i.kl = shufflevector <4 x double> %i.ju, <4 x double> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.km = insertelement <2 x double> %i.kl, double %i.jq, i64 0
  %i.kn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ke) ; 2 uses
  %i.ko = extractelement <2 x double> %i.kn, i64 0
  %i.kp = call double @llvm.fmuladd.f64(double %i.jv, double %i.ko, double %i.jz)
  %i.kq = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = fadd <2 x double> %i.ka, %i.kr
  store <2 x double> %i.ks, ptr %i.il, align 16, !tbaa !22
  %i.kt = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.kk, i64 0
  %i.ku = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.kt, <2 x double> %i.js)
  %i.kv = insertelement <2 x double> %i.kn, double %i.jq, i64 0
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.kv, <2 x double> %i.ku)
  %i.kx = load <2 x double>, ptr %i.in, align 16, !tbaa !22
  %i.ky = fadd <2 x double> %i.kx, %i.kw
  store <2 x double> %i.ky, ptr %i.in, align 16, !tbaa !22
  %i.kz = call double @llvm.fmuladd.f64(double %i.jq, double 3.000000e+00, double %i.kf)
  %i.la = fmul double %i.kz, %i.jv
  %i.lb = extractelement <2 x double> %i.js, i64 0
  %i.lc = fmul double %i.kk, %i.jv
  %i.ld = call double @llvm.fmuladd.f64(double %i.jz, double 3.000000e+00, double %i.la)
  %i.le = call double @llvm.fmuladd.f64(double %i.is, double %i.jq, double %i.lb)
  %i.lf = call double @llvm.fmuladd.f64(double %i.le, double 2.000000e+00, double %i.lc)
  %i.lg = extractelement <4 x double> %i.ju, i64 3
  %i.lh = call double @llvm.fmuladd.f64(double %i.jv, double %i.lf, double %i.lg)
  %i.li = insertelement <4 x double> poison, double %i.ld, i64 0
  %20 = shufflevector <4 x double> %i.ju, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.lj = shufflevector <4 x double> %i.li, <4 x double> %i.ju, <2 x i32> <i32 0, i32 5>
  %i.lk = insertelement <2 x double> %i.kl, double %i.lh, i64 1
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.lj, <2 x double> %i.lk)
  %i.lm = load <2 x double>, ptr %i.io, align 16, !tbaa !22
  %i.ln = fadd <2 x double> %i.lm, %i.ll
  store <2 x double> %i.ln, ptr %i.io, align 16, !tbaa !22
  %i.lo = call double @llvm.fmuladd.f64(double %i.jy, double 3.000000e+00, double %i.kj)
  %i.lp = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = fmul <2 x double> %i.lq, %i.iu
  %21 = insertelement <2 x double> %20, double 0.000000e+00, i64 1
  %22 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %21, <2 x double> %i.js)
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> %i.lr) ; 2 uses
  %i.lt = insertelement <2 x double> %i.ls, double 0.000000e+00, i64 1
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.lt, <2 x double> %i.jt)
  %i.lv = insertelement <2 x double> %i.ix, double %i.jv, i64 0
  %i.lw = shufflevector <2 x double> %i.js, <2 x double> %i.ls, <2 x i32> <i32 1, i32 3>
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.lw, <2 x double> %i.lu)
  %i.ly = load <2 x double>, ptr %i.iq, align 16, !tbaa !22
  %i.lz = fadd <2 x double> %i.ly, %i.lx
  store <2 x double> %i.lz, ptr %i.iq, align 16, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.ma = add nuw nsw i32 %.087167.us, 32         ; 2 uses
  %i.mb = icmp slt i32 %i.ma, %.sroa.044.0.extract.trunc
  br i1 %i.mb, label %bb.av, label %._crit_edge.us, !llvm.loop !66

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.mc = add nuw nsw i32 %.088168.us, 32         ; 2 uses
  %i.md = icmp slt i32 %i.mc, %.sroa.7.0.extract.trunc
  br i1 %i.md, label %.lr.ph.us, label %._crit_edge170, !llvm.loop !67

.split.us:                                        ; preds = %bb.av
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.bi

.split172.us:                                     ; preds = %bb.ax
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split175.us:                                     ; preds = %bb.ay
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.bf

.split178.us:                                     ; preds = %bb.az
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.split181.us:                                     ; preds = %bb.bb
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bh

._crit_edge170:                                   ; preds = %._crit_edge.us
  %i.mj = load double, ptr %7, align 16, !tbaa !8 ; 2 uses
  %i.mk = call double @llvm.fabs.f64(double %i.mj)
  %i.ml = fcmp ogt double %i.mk, f0x3CB0000000000000
  br i1 %i.ml, label %bb.bd, label %._crit_edge.i124

._crit_edge.i124:                                 ; preds = %._crit_edge170
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mm = load <2 x double>, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.bj

bb.bd:                                            ; preds = %._crit_edge170
  %i.mn = fdiv double 1.000000e+00, %i.mj         ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mp = load <2 x double>, ptr %i.mo, align 8, !tbaa !22 ; 2 uses
  %i.mq = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fmul <2 x double> %i.mr, %i.mp
  br label %bb.bj

bb.be:                                            ; preds = %bb.au
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %.split178.us, %.split175.us
  %.pn95 = phi { ptr, i32 } [ %i.mh, %.split178.us ], [ %i.mg, %.split175.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.split172.us
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.bf ], [ %i.mf, %.split172.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.bh

bb.bh:                                            ; preds = %.split181.us, %bb.bg
  %.pn98 = phi { ptr, i32 } [ %i.mi, %.split181.us ], [ %.pn95.pn, %bb.bg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.split.us
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.bh ], [ %i.me, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd, %._crit_edge.i124
  %.082.i = phi double [ %i.mn, %bb.bd ], [ 0.000000e+00, %._crit_edge.i124 ] ; 3 uses
  %i.mu = phi <2 x double> [ %i.ms, %bb.bd ], [ zeroinitializer, %._crit_edge.i124 ] ; 5 uses
  %i.mv = phi <2 x double> [ %i.mp, %bb.bd ], [ %i.mm, %._crit_edge.i124 ] ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mx = extractelement <2 x double> %i.mv, i64 0
  %i.my = fneg double %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.na = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.nb = load <2 x double>, ptr %i.mw, align 8, !tbaa !22
  %i.nc = insertelement <2 x double> poison, double %i.my, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.mu, <2 x double> %i.nb) ; 6 uses
  store <2 x double> %i.ne, ptr %i.na, align 16, !tbaa !22
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ng = extractelement <2 x double> %i.ne, i64 0
  %i.nh = load <2 x double>, ptr %i.mz, align 8, !tbaa !22
  %i.ni = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop239 = fadd <2 x double> %i.ne, %i.ne
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.nl = fneg <2 x double> %i.mu                 ; 3 uses
  %i.nm = shufflevector <2 x double> %i.mv, <2 x double> %i.mu, <2 x i32> <i32 1, i32 2>
  %i.nn = fneg <2 x double> %i.nm
  %i.no = load <2 x double>, ptr %i.nj, align 8, !tbaa !22
  %i.np = shufflevector <2 x double> %foldExtExtBinop239, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.mv, <2 x double> %i.np)
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.nr, <2 x double> %i.no)
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nu = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !19
  %i.nw = fmul <2 x double> %i.mv, %i.mu          ; 2 uses
  %i.nx = extractelement <2 x double> %i.nw, i64 0
  %i.ny = call double @llvm.fmuladd.f64(double %i.ng, double 3.000000e+00, double %i.nx)
  %i.nz = insertelement <2 x double> %i.ni, double %i.ny, i64 1
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nz, <2 x double> %i.nh) ; 4 uses
  store <2 x double> %i.oa, ptr %i.nf, align 16, !tbaa !22
  %i.ob = extractelement <2 x double> %i.oa, i64 0
  %i.oc = shufflevector <2 x double> %i.oa, <2 x double> %i.ne, <2 x i32> <i32 0, i32 2>
  %i.od = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.oc, <2 x double> %i.nt) ; 2 uses
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.oe, ptr %i.nk, align 16, !tbaa !22
  %i.of = extractelement <2 x double> %i.nw, i64 1
  %i.og = call double @llvm.fmuladd.f64(double %i.ob, double 3.000000e+00, double %i.of)
  %i.oh = extractelement <2 x double> %i.nl, i64 1
  %i.oi = call double @llvm.fmuladd.f64(double %i.oh, double %i.og, double %i.nv) ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %7, i64 128
  store double %i.oi, ptr %i.oj, align 16, !tbaa !23
  %i.ok = call noundef double @llvm.fabs.f64(double %.082.i)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.ok)
  %i.ol = fmul double %.082.i, %.082.i            ; 2 uses
  %i.om = fmul double %i.ol, %sqrt.i              ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.oo = insertelement <2 x double> poison, double %i.ol, i64 0 ; 2 uses
  %i.op = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = fmul <2 x double> %i.op, %i.ne
  store <2 x double> %i.oq, ptr %i.on, align 8, !tbaa !22
  %i.or = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.os = insertelement <2 x double> %i.oo, double %i.om, i64 1
  %i.ot = fmul <2 x double> %i.os, %i.oa
  store <2 x double> %i.ot, ptr %i.or, align 8, !tbaa !22
  %i.ou = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.ov = insertelement <2 x double> poison, double %i.om, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oy = fmul <2 x double> %i.ow, %i.ox
  store <2 x double> %i.oy, ptr %i.ou, align 8, !tbaa !22
  %i.oz = fmul double %i.om, %i.oi
  %i.pa = getelementptr inbounds nuw i8, ptr %7, i64 184
  store double %i.oz, ptr %i.pa, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %7, i64 192, i1 false), !tbaa.struct !25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %_ZN2cvL14contourMomentsERKNS_3MatE.exit

bb.bk:                                            ; preds = %bb.bi, %bb.be
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %bb.bi ], [ %i.mt, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.body

_ZN2cvL14contourMomentsERKNS_3MatE.exit:          ; preds = %.noexc120, %._crit_edge.i, %.thread.i, %bb.aa, %bb.bj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bm

.body:                                            ; preds = %bb.q, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn105 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn98.pn.pn.pn, %bb.bk ], [ %i.y, %bb.q ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aa, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  br label %bb.bl

bb.bl:                                            ; preds = %.body, %bb.r
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %.body ], [ %i.z, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bp

bb.bm:                                            ; preds = %_ZN2cvL14contourMomentsERKNS_3MatE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.pc, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bn
end_hunk_0
