Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/moments?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv7momentsERKNS_11_InputArrayEb:bb.a
  %i.fj = fdiv double 1.000000e+00, %i.ey         ; 2 uses
  %i.fk = shufflevector <4 x double> %i.em, <4 x double> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fl = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x double> %i.fk, %i.fm
  %.082.i136 = select i1 %i.fa, double %i.fj, double 0.000000e+00 ; 3 uses
  %i.fo = insertelement <2 x i1> poison, i1 %i.fa, i64 0
  %i.fp = shufflevector <2 x i1> %i.fo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fq = select <2 x i1> %i.fp, <2 x double> %i.fn, <2 x double> zeroinitializer ; 6 uses
  %i.fr = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = shufflevector <4 x double> %i.em, <4 x double> %i.ew, <2 x i32> <i32 3, i32 4>
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fq, <2 x double> %i.ft) ; 6 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  store <2 x double> %i.fu, ptr %i.fd, align 8, !tbaa !12
  %i.fw = fmul <2 x double> %i.fk, %i.fq          ; 2 uses
  %i.fx = call noundef double @llvm.fabs.f64(double %.082.i136)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fz = extractelement <2 x double> %i.fw, i64 0
  %i.ga = call double @llvm.fmuladd.f64(double %i.fv, double 3.000000e+00, double %i.fz)
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x double> %i.em, <4 x double> %i.gb, <2 x i32> <i32 2, i32 4>
  %i.gd = fneg <2 x double> %i.gc
  %i.ge = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x double> %i.ge, double %i.ga, i64 1
  %i.gg = shufflevector <4 x double> %i.ew, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.gf, <2 x double> %i.gg) ; 4 uses
  %i.gi = extractelement <2 x double> %i.gh, i64 0
  store <2 x double> %i.gh, ptr %i.fe, align 8, !tbaa !12
  %i.gj = extractelement <2 x double> %i.fw, i64 1
  %i.gk = call double @llvm.fmuladd.f64(double %i.gi, double 3.000000e+00, double %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %foldExtExtBinop = fadd <2 x double> %i.fu, %i.fu
  %i.gm = shufflevector <4 x double> %i.em, <4 x double> poison, <2 x i32> <i32 2, i32 1>
  %i.gn = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.gm, <2 x double> %i.gn)
  %sqrt.i139 = call nnan double @llvm.sqrt.f64(double %i.fx)
  %i.gp = fmul double %.082.i136, %.082.i136      ; 2 uses
  %i.gq = fmul double %i.gp, %sqrt.i139           ; 3 uses
  %i.gr = insertelement <2 x double> poison, double %i.gp, i64 0 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x double> %i.gs, %i.fu
  store <2 x double> %i.gt, ptr %i.fi, align 8, !tbaa !12
  %i.gu = fneg <2 x double> %i.fq                 ; 3 uses
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = shufflevector <2 x double> %i.ex, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x double> %i.ew, <4 x double> %i.gw, <2 x i32> <i32 3, i32 4>
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.go, <2 x double> %i.gx)
  %i.gz = shufflevector <2 x double> %i.fu, <2 x double> %i.gh, <2 x i32> <i32 0, i32 2>
  %i.ha = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.gz, <2 x double> %i.gy) ; 2 uses
  store <2 x double> %i.ha, ptr %i.ff, align 8, !tbaa !12
  %i.hb = extractelement <2 x double> %i.gu, i64 1
  %i.hc = call double @llvm.fmuladd.f64(double %i.hb, double %i.gk, double %i.fg) ; 2 uses
  store double %i.hc, ptr %i.fh, align 8, !tbaa !13
  %i.hd = insertelement <2 x double> %i.gr, double %i.gq, i64 1
  %i.he = fmul <2 x double> %i.hd, %i.gh
  store <2 x double> %i.he, ptr %i.fy, align 8, !tbaa !12
  %i.hf = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x double> %i.hg, %i.ha
  store <2 x double> %i.hh, ptr %i.gl, align 8, !tbaa !12
  %i.hi = fmul double %i.gq, %i.hc
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.hi, ptr %i.hj, align 8, !tbaa !14
  br label %_ZN2cvL14contourMomentsERKNS_3MatE.exit

bb.ah:                                            ; preds = %bb.u
  %i.hk = and i32 %i.d, 4064
  %.not = icmp eq i32 %i.hk, 0
  br i1 %.not, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7momentsERKNS_11_InputArrayEb, ptr noundef nonnull @.str.1, i32 noundef 623) #17
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.am:                                            ; preds = %bb.aj
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !35
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.al
  %.pn103 = phi { ptr, i32 } [ %i.hl, %bb.al ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hm, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.body

bb.an:                                            ; preds = %bb.ah
  %i.hs = icmp eq i32 %i.e, 0
  %or.cond6 = or i1 %2, %i.hs
  br i1 %or.cond6, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %switch.tableidx = add nsw i32 %i.e, -2         ; 3 uses
  %i.ht = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond231 = select i1 %i.ht, i1 %switch.lobit, i1 false
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
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

bb.at:                                            ; preds = %bb.aq
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load ptr, ptr %11, align 8, !tbaa !34   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.at
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !35
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %bb.as
  %.pn = phi { ptr, i32 } [ %i.hu, %bb.as ], [ %i.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %i.hv, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %.body

switch.lookup:                                    ; preds = %bb.ao
  %i.ib = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv7momentsERKNS_11_InputArrayEb, i64 %i.ib
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.au

bb.au:                                            ; preds = %switch.lookup, %bb.an
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @_ZN2cvL13momentsInTileIhiiEEvRKNS_3MatEPd, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %.lr.ph.us.preheader unwind label %bb.be

.lr.ph.us.preheader:                              ; preds = %bb.au
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.088168.us = phi i32 [ %i.me, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.iu = sub nuw nsw i32 %.sroa.7.0.extract.trunc, %.088168.us
  %.sroa.speculated149.us = call i32 @llvm.smin.i32(i32 %i.iu, i32 32) ; 2 uses
  %.sroa.6.0.insert.ext.us = zext nneg i32 %.sroa.speculated149.us to i64
  %.sroa.6.0.insert.shift.us = shl nuw nsw i64 %.sroa.6.0.insert.ext.us, 32
  %i.iv = uitofp nneg i32 %.088168.us to double   ; 5 uses
  %i.iw = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.iv, i64 0
  %i.iz = insertelement <2 x double> poison, double %i.iv, i64 1
  %i.ja = insertelement <2 x double> poison, double %i.iv, i64 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph.us, %.loopexit.us
  %.087167.us = phi i32 [ 0, %.lr.ph.us ], [ %i.mc, %.loopexit.us ] ; 4 uses
  %i.jb = sub nuw nsw i32 %.sroa.044.0.extract.trunc, %.087167.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %i.jb, i32 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store i32 %.087167.us, ptr %15, align 4, !tbaa !65
  store i32 %.088168.us, ptr %i.ic, align 4, !tbaa !66
  store i32 %.sroa.speculated.us, ptr %i.id, align 4, !tbaa !67
  store i32 %.sroa.speculated149.us, ptr %i.ie, align 4, !tbaa !68
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.aw unwind label %.split.us

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br i1 %2, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %.sroa.0.0.insert.ext.us = zext nneg i32 %.sroa.speculated.us to i64
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.6.0.insert.shift.us, %.sroa.0.0.insert.ext.us
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %16, i64 %.sroa.0.0.insert.insert.us, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %bb.ay unwind label %.split172.us

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store i32 0, ptr %i.if, align 8, !tbaa !69
  store i32 0, ptr %i.ig, align 4, !tbaa !70
  store i32 16842752, ptr %17, align 8, !tbaa !71
  store ptr %14, ptr %i.ih, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !12
  store i32 -1056833530, ptr %18, align 8, !tbaa !71
  store ptr %i.b, ptr %i.ij, align 8, !tbaa !18
  store i64 4294967297, ptr %i.ii, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  store i64 0, ptr %i.il, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !71
  store ptr %16, ptr %i.ik, align 8, !tbaa !18
  invoke void @_ZN2cv7compareERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 5)
          to label %bb.az unwind label %.split175.us

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.jc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %16)
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
  %i.jd = load double, ptr %i.c, align 16, !tbaa !12 ; 2 uses
  br i1 %2, label %.preheader.us.preheader, label %..loopexit.us_crit_edge

..loopexit.us_crit_edge:                          ; preds = %bb.bc
  %.pre194 = load double, ptr %i.im, align 8, !tbaa !12
  %i.je = load <2 x double>, ptr %i.ip, align 16, !tbaa !12
  %i.jf = load <6 x double>, ptr %i.in, align 16, !tbaa !12
  %i.jg = shufflevector <6 x double> %i.jf, <6 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jh = load <2 x double>, ptr %i.is, align 16, !tbaa !12
  br label %.loopexit.us

.preheader.us.preheader:                          ; preds = %bb.bc
  %i.ji = fmul double %i.jd, f0x3F70101010101010  ; 2 uses
  store double %i.ji, ptr %i.c, align 16, !tbaa !12
  %i.jj = load double, ptr %i.im, align 8, !tbaa !12
  %i.jk = fmul double %i.jj, f0x3F70101010101010  ; 2 uses
  store double %i.jk, ptr %i.im, align 8, !tbaa !12
  %i.jl = load <2 x double>, ptr %i.ip, align 16, !tbaa !12
  %i.jm = fmul <2 x double> %i.jl, splat (double f0x3F70101010101010)
  %i.jn = load <6 x double>, ptr %i.in, align 16, !tbaa !12
  %i.jo = shufflevector <6 x double> %i.jn, <6 x double> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jp = fmul <4 x double> %i.jo, splat (double f0x3F70101010101010) ; 2 uses
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.jq, ptr %i.in, align 16, !tbaa !12
  %i.jr = load <2 x double>, ptr %i.is, align 16, !tbaa !12
  %i.js = fmul <2 x double> %i.jr, splat (double f0x3F70101010101010)
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %..loopexit.us_crit_edge, %.preheader.us.preheader
  %i.jt = phi double [ %.pre194, %..loopexit.us_crit_edge ], [ %i.jk, %.preheader.us.preheader ] ; 5 uses
  %i.ju = phi double [ %i.jd, %..loopexit.us_crit_edge ], [ %i.ji, %.preheader.us.preheader ]
  %i.jv = phi <2 x double> [ %i.je, %..loopexit.us_crit_edge ], [ %i.jm, %.preheader.us.preheader ] ; 4 uses
  %i.jw = phi <2 x double> [ %i.jh, %..loopexit.us_crit_edge ], [ %i.js, %.preheader.us.preheader ]
  %i.jx = phi <4 x double> [ %i.jg, %..loopexit.us_crit_edge ], [ %i.jp, %.preheader.us.preheader ] ; 5 uses
  %i.jy = uitofp nneg i32 %.087167.us to double   ; 8 uses
  %i.jz = load <2 x double>, ptr %7, align 16, !tbaa !12
  %i.ka = insertelement <2 x double> poison, double %i.ju, i64 0 ; 2 uses
  %i.kb = extractelement <4 x double> %i.jx, i64 0 ; 3 uses
  %i.kc = extractelement <4 x double> %i.jx, i64 1 ; 2 uses
  %i.kd = load <2 x double>, ptr %i.io, align 16, !tbaa !12
  %i.ke = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.jy, i64 0
  %i.kf = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = insertelement <2 x double> %i.iz, double %i.jy, i64 0 ; 2 uses
  %i.kh = fmul <2 x double> %i.kf, %i.kg          ; 3 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0 ; 2 uses
  %i.kj = fadd double %i.ki, %i.jt                ; 2 uses
  %i.kk = insertelement <2 x double> %i.ka, double %i.kj, i64 1
  %i.kl = fadd <2 x double> %i.kk, %i.jz
  store <2 x double> %i.kl, ptr %7, align 16, !tbaa !12
  %i.km = extractelement <2 x double> %i.kh, i64 1 ; 2 uses
  %i.kn = fadd double %i.km, %i.kb                ; 3 uses
  %i.ko = shufflevector <4 x double> %i.jx, <4 x double> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.kp = insertelement <2 x double> %i.ko, double %i.jt, i64 0
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kp, <2 x double> splat (double 2.000000e+00), <2 x double> %i.kh) ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0
  %i.ks = call double @llvm.fmuladd.f64(double %i.jy, double %i.kr, double %i.kc)
  %i.kt = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.ku = insertelement <2 x double> %i.kt, double %i.ks, i64 1
  %i.kv = fadd <2 x double> %i.kd, %i.ku
  store <2 x double> %i.kv, ptr %i.io, align 16, !tbaa !12
  %i.kw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.kn, i64 0
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.kw, <2 x double> %i.jv)
  %i.ky = insertelement <2 x double> %i.kq, double %i.jt, i64 0
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.ky, <2 x double> %i.kx)
  %i.la = load <2 x double>, ptr %i.iq, align 16, !tbaa !12
  %i.lb = fadd <2 x double> %i.la, %i.kz
  store <2 x double> %i.lb, ptr %i.iq, align 16, !tbaa !12
  %i.lc = call double @llvm.fmuladd.f64(double %i.jt, double 3.000000e+00, double %i.ki)
  %i.ld = fmul double %i.lc, %i.jy
  %i.le = extractelement <2 x double> %i.jv, i64 0 ; 2 uses
  %i.lf = fmul double %i.kn, %i.jy
  %i.lg = call double @llvm.fmuladd.f64(double %i.kc, double 3.000000e+00, double %i.ld)
  %i.lh = call double @llvm.fmuladd.f64(double %i.iv, double %i.jt, double %i.le)
  %i.li = call double @llvm.fmuladd.f64(double %i.lh, double 2.000000e+00, double %i.lf)
  %i.lj = extractelement <4 x double> %i.jx, i64 3
  %i.lk = call double @llvm.fmuladd.f64(double %i.jy, double %i.li, double %i.lj)
  %i.ll = insertelement <4 x double> poison, double %i.lg, i64 0
  %i.lm = shufflevector <4 x double> %i.ll, <4 x double> %i.jx, <2 x i32> <i32 0, i32 5>
  %i.ln = insertelement <2 x double> %i.ko, double %i.lk, i64 1
  %i.lo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.lm, <2 x double> %i.ln)
  %i.lp = load <2 x double>, ptr %i.ir, align 16, !tbaa !12
  %i.lq = fadd <2 x double> %i.lp, %i.lo
  store <2 x double> %i.lq, ptr %i.ir, align 16, !tbaa !12
  %i.lr = call double @llvm.fmuladd.f64(double %i.kb, double 3.000000e+00, double %i.km)
  %20 = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.ls = insertelement <2 x double> %20, double %i.lr, i64 1
  %21 = fmul <2 x double> %i.ls, %i.ix
  %22 = call double @llvm.fmuladd.f64(double %i.jy, double %i.kb, double %i.le)
  %i.lt = insertelement <2 x double> %i.jv, double %22, i64 0
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> %21) ; 2 uses
  %i.lv = insertelement <2 x double> %i.lu, double 0.000000e+00, i64 1
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.lv, <2 x double> %i.jw)
  %i.lx = insertelement <2 x double> %i.ja, double %i.jy, i64 0
  %i.ly = shufflevector <2 x double> %i.jv, <2 x double> %i.lu, <2 x i32> <i32 1, i32 3>
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.ly, <2 x double> %i.lw)
  %i.ma = load <2 x double>, ptr %i.it, align 16, !tbaa !12
  %i.mb = fadd <2 x double> %i.ma, %i.lz
  store <2 x double> %i.mb, ptr %i.it, align 16, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.mc = add nuw nsw i32 %.087167.us, 32         ; 2 uses
  %i.md = icmp slt i32 %i.mc, %.sroa.044.0.extract.trunc
  br i1 %i.md, label %bb.av, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.me = add nuw nsw i32 %.088168.us, 32         ; 2 uses
  %i.mf = icmp slt i32 %i.me, %.sroa.7.0.extract.trunc
  br i1 %i.mf, label %.lr.ph.us, label %._crit_edge170, !llvm.loop !60

.split.us:                                        ; preds = %bb.av
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.bi

.split172.us:                                     ; preds = %bb.ax
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split175.us:                                     ; preds = %bb.ay
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.bf

.split178.us:                                     ; preds = %bb.az
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.split181.us:                                     ; preds = %bb.bb
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bh

._crit_edge170:                                   ; preds = %._crit_edge.us
  %i.ml = load double, ptr %7, align 16, !tbaa !10 ; 2 uses
  %i.mm = call double @llvm.fabs.f64(double %i.ml)
  %i.mn = fcmp ogt double %i.mm, f0x3CB0000000000000
  br i1 %i.mn, label %bb.bd, label %._crit_edge.i124

._crit_edge.i124:                                 ; preds = %._crit_edge170
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mo = load <2 x double>, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  br label %bb.bj

bb.bd:                                            ; preds = %._crit_edge170
  %i.mp = fdiv double 1.000000e+00, %i.ml         ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mr = load <2 x double>, ptr %i.mq, align 8, !tbaa !12 ; 2 uses
  %i.ms = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x double> %i.mt, %i.mr
  br label %bb.bj

bb.be:                                            ; preds = %bb.au
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bf:                                            ; preds = %.split178.us, %.split175.us
  %.pn95 = phi { ptr, i32 } [ %i.mj, %.split178.us ], [ %i.mi, %.split175.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.split172.us
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.bf ], [ %i.mh, %.split172.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.bh

bb.bh:                                            ; preds = %.split181.us, %bb.bg
  %.pn98 = phi { ptr, i32 } [ %i.mk, %.split181.us ], [ %.pn95.pn, %bb.bg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.split.us
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.bh ], [ %i.mg, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bd, %._crit_edge.i124
  %.082.i = phi double [ %i.mp, %bb.bd ], [ 0.000000e+00, %._crit_edge.i124 ] ; 3 uses
  %i.mw = phi <2 x double> [ %i.mu, %bb.bd ], [ zeroinitializer, %._crit_edge.i124 ] ; 5 uses
  %i.mx = phi <2 x double> [ %i.mr, %bb.bd ], [ %i.mo, %._crit_edge.i124 ] ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  %i.na = fneg double %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.nc = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.nd = load <2 x double>, ptr %i.my, align 8, !tbaa !12
  %i.ne = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ng = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.mw, <2 x double> %i.nd) ; 6 uses
  store <2 x double> %i.ng, ptr %i.nc, align 16, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ni = extractelement <2 x double> %i.ng, i64 0
  %i.nj = load <2 x double>, ptr %i.nb, align 8, !tbaa !12
  %i.nk = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop233 = fadd <2 x double> %i.ng, %i.ng
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.nn = fneg <2 x double> %i.mw                 ; 3 uses
  %i.no = shufflevector <2 x double> %i.mx, <2 x double> %i.mw, <2 x i32> <i32 1, i32 2>
  %i.np = fneg <2 x double> %i.no
  %i.nq = load <2 x double>, ptr %i.nl, align 8, !tbaa !12
  %i.nr = shufflevector <2 x double> %foldExtExtBinop233, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.mx, <2 x double> %i.nr)
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nt, <2 x double> %i.nq)
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !11
  %i.ny = fmul <2 x double> %i.mx, %i.mw          ; 2 uses
  %i.nz = extractelement <2 x double> %i.ny, i64 0
  %i.oa = call double @llvm.fmuladd.f64(double %i.ni, double 3.000000e+00, double %i.nz)
  %i.ob = insertelement <2 x double> %i.nk, double %i.oa, i64 1
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.ob, <2 x double> %i.nj) ; 4 uses
  store <2 x double> %i.oc, ptr %i.nh, align 16, !tbaa !12
  %i.od = extractelement <2 x double> %i.oc, i64 0
  %i.oe = shufflevector <2 x double> %i.oc, <2 x double> %i.ng, <2 x i32> <i32 0, i32 2>
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.oe, <2 x double> %i.nv) ; 2 uses
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.og, ptr %i.nm, align 16, !tbaa !12
  %i.oh = extractelement <2 x double> %i.ny, i64 1
  %i.oi = call double @llvm.fmuladd.f64(double %i.od, double 3.000000e+00, double %i.oh)
  %i.oj = extractelement <2 x double> %i.nn, i64 1
  %i.ok = call double @llvm.fmuladd.f64(double %i.oj, double %i.oi, double %i.nx) ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 128
  store double %i.ok, ptr %i.ol, align 16, !tbaa !13
  %i.om = call noundef double @llvm.fabs.f64(double %.082.i)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.om)
  %i.on = fmul double %.082.i, %.082.i            ; 2 uses
  %i.oo = fmul double %i.on, %sqrt.i              ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 136
  %i.oq = insertelement <2 x double> poison, double %i.on, i64 0 ; 2 uses
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %i.or, %i.ng
  store <2 x double> %i.os, ptr %i.op, align 8, !tbaa !12
  %i.ot = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.ou = insertelement <2 x double> %i.oq, double %i.oo, i64 1
  %i.ov = fmul <2 x double> %i.ou, %i.oc
  store <2 x double> %i.ov, ptr %i.ot, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.ox = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pa = fmul <2 x double> %i.oy, %i.oz
  store <2 x double> %i.pa, ptr %i.ow, align 8, !tbaa !12
  %i.pb = fmul double %i.oo, %i.ok
  %i.pc = getelementptr inbounds nuw i8, ptr %7, i64 184
  store double %i.pb, ptr %i.pc, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %7, i64 192, i1 false), !tbaa.struct !61
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %_ZN2cvL14contourMomentsERKNS_3MatE.exit

bb.bk:                                            ; preds = %bb.bi, %bb.be
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %bb.bi ], [ %i.mv, %bb.be ]
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
  %i.pd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.pe, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.bn

end_hunk_0
