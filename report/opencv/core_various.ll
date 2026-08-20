inline.NumInlined: 209
inline.NumDeleted: 100
begin_hunk_0_@main:_ZNSt12__shared_ptrIN2cv18SimpleBlobDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 6, ptr %i.cy, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 22
  store i8 0, ptr %i.cz, align 2, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #11
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.da, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.db, align 4, !tbaa !32
  store i32 16842752, ptr %23, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %10, ptr %i.dc, align 8, !tbaa !35
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.ab unwind label %bb.af

bb.u:                                             ; preds = %.noexc.i112
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.v:                                             ; preds = %.noexc113
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bs
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.v
  %i.dh = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.u
  %.pn50 = phi { ptr, i32 } [ %i.dd, %bb.u ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.de, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %bb.bz

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i116
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.bx

bb.x:                                             ; preds = %bb.s
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  br label %bb.bx

bb.y:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.0265.0279 = phi ptr [ %i.cr, %.lr.ph ], [ %i.dv, %bb.z ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #11
  store i64 0, ptr %i.cv, align 8
  store i32 50397184, ptr %20, align 8, !tbaa !33
  store ptr %10, ptr %i.cu, align 8, !tbaa !35
  %i.dl = load float, ptr %.sroa.0265.0279, align 4, !tbaa !43
  %i.dm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dn = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0265.0279, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !46
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dq)
  %.sroa.2.0.insert.ext.i = zext i32 %i.dr to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dn to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0265.0279, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.cw, align 8, !tbaa !36
  %i.du = fptosi float %i.dt to i32
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.du, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0265.0279, i64 28 ; 2 uses
  %i.dw = load ptr, ptr %i.cs, align 8, !tbaa !41
  %.not = icmp eq ptr %i.dv, %i.dw
  br i1 %.not, label %._crit_edge.i.i118, label %bb.y, !llvm.loop !49

bb.aa:                                            ; preds = %bb.y
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #11
  br label %bb.bx

bb.ab:                                            ; preds = %._crit_edge.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.dy = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cx
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.ab
  %i.ea = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  %i.ec = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef 200, i32 noundef 200, i32 noundef 64, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #11
  store <4 x i32> <i32 1120403456, i32 1120403456, i32 1120403456, i32 1112014848>, ptr %26, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %26, i64 16
  store float 3.000000e+01, ptr %i.ed, align 16, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %27, i8 0, i64 32, i1 false), !tbaa !54
  invoke void @_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE(ptr noundef nonnull align 4 dereferenceable(20) %26, ptr noundef nonnull %27)
          to label %.preheader unwind label %bb.ai

.preheader:                                       ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %bb.aj

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.em = invoke { i64, i64 } @_ZNK2cv11RotatedRect12boundingRectEv(ptr noundef nonnull align 4 dereferenceable(20) %26)
          to label %bb.as unwind label %bb.ba     ; 2 uses

bb.af:                                            ; preds = %._crit_edge.i.i118
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #11
  %i.eo = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.cx
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.af
  %i.eq = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #11
  br label %bb.bx

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ah:                                            ; preds = %bb.ac
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #11
  br label %bb.bw

bb.ai:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.aj:                                            ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #11
  store i64 0, ptr %i.ef, align 8
  store i32 50397184, ptr %28, align 8, !tbaa !33
  store ptr %24, ptr %i.ee, align 8, !tbaa !35
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv ; 3 uses
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !43
  %i.ex = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.ey = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ex)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !46
  %i.fb = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fc = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fb)
  %.sroa.2.0.insert.ext.i131 = zext i32 %i.fc to i64
  %.sroa.2.0.insert.shift.i132 = shl nuw i64 %.sroa.2.0.insert.ext.i131, 32
  %.sroa.0.0.insert.ext.i133 = zext i32 %i.ey to i64
  %.sroa.0.0.insert.insert.i134 = or disjoint i64 %.sroa.2.0.insert.shift.i132, %.sroa.0.0.insert.ext.i133
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %37 = and i64 %indvars.iv.next, 3
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %37 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !43
  %i.ff = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fg = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !46
  %i.fj = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fk = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fj)
  %.sroa.2.0.insert.ext.i135 = zext i32 %i.fk to i64
  %.sroa.2.0.insert.shift.i136 = shl nuw i64 %.sroa.2.0.insert.ext.i135, 32
  %.sroa.0.0.insert.ext.i137 = zext i32 %i.fg to i64
  %.sroa.0.0.insert.insert.i138 = or disjoint i64 %.sroa.2.0.insert.shift.i136, %.sroa.0.0.insert.ext.i137
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #11
  store <2 x double> <double 0.000000e+00, double 2.550000e+02>, ptr %29, align 16, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 %.sroa.0.0.insert.insert.i134, i64 %.sroa.0.0.insert.insert.i138, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #11
  store i64 0, ptr %i.ei, align 8
  store i32 50397184, ptr %30, align 8, !tbaa !33
  store ptr %24, ptr %i.eh, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #11
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr @__const.main.vertex_names, i64 %indvars.iv
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !55 ; 3 uses
  store ptr %i.ej, ptr %31, align 8, !tbaa !19
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fm) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.fn, ptr %i.a, align 8, !tbaa !22
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i140, label %._crit_edge.i.i139

.noexc.i140:                                      ; preds = %bb.ak
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc142 unwind label %bb.aq ; 2 uses

.noexc142:                                        ; preds = %.noexc.i140
  store ptr %i.fp, ptr %31, align 8, !tbaa !24
  %i.fq = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.fq, ptr %i.ej, align 8, !tbaa !26
  br label %._crit_edge.i.i139

._crit_edge.i.i139:                               ; preds = %.noexc142, %bb.ak
  %i.fr = phi ptr [ %i.fp, %.noexc142 ], [ %i.ej, %bb.ak ] ; 2 uses
  switch i64 %i.fn, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i139
  %i.fs = load i8, ptr %i.fm, align 1, !tbaa !26
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !26
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr nonnull align 1 %i.fm, i64 %i.fn, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i139
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  store i64 %i.ft, ptr %i.ek, align 8, !tbaa !27
  %i.fu = load ptr, ptr %31, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fw = load float, ptr %i.ev, align 8, !tbaa !43
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fx)
  %i.fz = load float, ptr %i.ez, align 4, !tbaa !46
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.gb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ga)
  %.sroa.2.0.insert.ext.i144 = zext i32 %i.gb to i64
  %.sroa.2.0.insert.shift.i145 = shl nuw i64 %.sroa.2.0.insert.ext.i144, 32
  %.sroa.0.0.insert.ext.i146 = zext i32 %i.fy to i64
  %.sroa.0.0.insert.insert.i147 = or disjoint i64 %.sroa.2.0.insert.shift.i145, %.sroa.0.0.insert.ext.i146
  store <2 x double> splat (double 2.550000e+02), ptr %32, align 16, !tbaa !36
  store <2 x double> <double 2.550000e+02, double 0.000000e+00>, ptr %i.el, align 16, !tbaa !36
  invoke void @_ZN2cv7putTextERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEidNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 %.sroa.0.0.insert.insert.i147, i32 noundef 0, double noundef 1.000000e+00, ptr noundef nonnull align 8 dead_on_return %32, i32 noundef 1, i32 noundef 8, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gc = load ptr, ptr %31, align 8, !tbaa !24   ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ej
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.ao
  %i.ge = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.ae, label %bb.aj, !llvm.loop !56

bb.ap:                                            ; preds = %bb.aj
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #11
  br label %bb.bv

bb.aq:                                            ; preds = %.noexc.i140
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.ar:                                            ; preds = %bb.an
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %31, align 8, !tbaa !24   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ej
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ar
  %i.gl = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.aq
  %.pn73 = phi { ptr, i32 } [ %i.gh, %bb.aq ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.gi, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #11
  br label %bb.bv

bb.as:                                            ; preds = %bb.ae
  %i.gn = extractvalue { i64, i64 } %i.em, 0
  %i.go = extractvalue { i64, i64 } %i.em, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #11
  %i.gp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 0, ptr %i.gq, align 8
  store i32 50397184, ptr %33, align 8, !tbaa !33
  store ptr %24, ptr %i.gp, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #11
  store double 2.550000e+02, ptr %34, align 8, !tbaa !36
  %i.gr = getelementptr inbounds nuw i8, ptr %34, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv9rectangleERKNS_17_InputOutputArrayENS_5Rect_IiEERKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %33, i64 %i.gn, i64 %i.go, ptr noundef nonnull align 8 dereferenceable(32) %34, i32 noundef 2, i32 noundef 8, i32 noundef 0)
          to label %._crit_edge.i.i154 unwind label %bb.bb

._crit_edge.i.i154:                               ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #11
  %i.gs = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.gs, ptr %35, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gs, ptr noundef nonnull align 1 dereferenceable(10) @.str.7, i64 10, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 10, ptr %i.gt, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %35, i64 26
  store i8 0, ptr %i.gu, align 2, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #11
  %i.gv = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i32 0, ptr %i.gv, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %36, i64 20
  store i32 0, ptr %i.gw, align 4, !tbaa !32
  store i32 16842752, ptr %36, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %24, ptr %i.gx, align 8, !tbaa !35
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %._crit_edge.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #11
  %i.gy = load ptr, ptr %35, align 8, !tbaa !24   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.gs
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.at
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !26
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #11
  %i.hc = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %bb.au unwind label %bb.ba     ; 0 uses

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.hd = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %_ZN2cv9TickMeter5startEv.exit unwind label %bb.bd ; 2 uses

_ZN2cv9TickMeter5startEv.exit:                    ; preds = %bb.au
  %i.he = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %.noexc162 unwind label %bb.bd

.noexc162:                                        ; preds = %_ZN2cv9TickMeter5startEv.exit
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.noexc162
  %i.hg = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.av unwind label %bb.bd
end_hunk_0
