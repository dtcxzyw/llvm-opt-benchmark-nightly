Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingBSplineCurve?download=true
inline.NumInlined: 1494
inline.NumDeleted: 467
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl8validateEv:bb.a
  br i1 %.035, label %bb.af, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.035, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %.pn64109 = phi { ptr, i32 } [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ]
  call void @__cxa_free_exception(ptr %i.bo) #23
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.af, %bb.ad
  %.pn64.pn = phi { ptr, i32 } [ %.pn64109, %bb.af ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.bq, %bb.ad ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ax

bb.ah:                                            ; preds = %bb.i
  %switch = icmp ult i32 %i.w, 3
  br i1 %switch, label %.preheader161, label %.loopexit

bb.ai:                                            ; preds = %bb.z
  %i.by = getelementptr i8, ptr %i.bj, i64 -4
  %i.bz = load float, ptr %i.by, align 4, !tbaa !92
  %i.ca = fadd float %i.bz, -1.000000e+00
  br label %.preheader161

.preheader161:                                    ; preds = %bb.ah, %bb.ai
  %.134122.ph = phi float [ %i.ca, %bb.ai ], [ f0xFF7FFFFF, %bb.ah ]
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader161, %bb.ar
  %.032123 = phi i64 [ %i.cz, %bb.ar ], [ 0, %.preheader161 ] ; 3 uses
  %.134122 = phi float [ %i.cd, %bb.ar ], [ %.134122.ph, %.preheader161 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.032123
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !92 ; 3 uses
  %i.ce = fcmp olt float %i.cd, %.134122
  br i1 %i.ce, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.5, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90: ; preds = %bb.ak
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.032123)
          to label %_ZNSolsEm.exit91 unwind label %bb.an ; 2 uses

_ZNSolsEm.exit91:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull @.str.12, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZNSolsEm.exit91
  %i.ci = fpext float %i.cd to double
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, double noundef %i.ci)
          to label %_ZNSolsEf.exit93 unwind label %bb.an

_ZNSolsEf.exit93:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.7, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZNSolsEf.exit93
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.13, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.cm = fpext float %.134122 to double
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, double noundef %i.cm)
          to label %_ZNSolsEf.exit96 unwind label %bb.an

_ZNSolsEf.exit96:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %_ZNSolsEf.exit96
  %i.cp = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.thread

bb.al:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.cq = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef %i.cq)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
          to label %bb.ay unwind label %bb.ao

bb.an:                                            ; preds = %_ZNSolsEf.exit96, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZNSolsEf.exit93, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZNSolsEm.exit91, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit90, %bb.ak
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.0 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !84    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ao
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !20
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.ap, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn114 = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.thread ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ]
  call void @__cxa_free_exception(ptr %i.cp) #23
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.ap, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn114, %bb.ap ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.cr, %bb.an ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ax

bb.ar:                                            ; preds = %bb.aj
  %i.cz = add nuw i64 %.032123, 1                 ; 2 uses
  %exitcond131.not = icmp eq i64 %i.cz, %i.h
  br i1 %exitcond131.not, label %.loopexit, label %bb.aj, !llvm.loop !93

.loopexit:                                        ; preds = %bb.ar, %bb.ah
  %i.da = icmp eq i64 %i.g, 16
  %.off = add i32 %i.w, -2
  %switch76 = icmp ult i32 %.off, 3
  %or.cond = and i1 %i.da, %switch76
  br i1 %or.cond, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %.loopexit
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !89
  %i.dd = load float, ptr %i.d, align 4, !tbaa !89
  %i.de = fsub float %i.dd, %i.dc
  %i.df = fadd float %i.de, 1.000000e+00
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df)
  %i.dh = fpext float %i.dg to double
  %i.di = fcmp olt double %i.dh, 1.000000e-03
  br i1 %i.di, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull @.str.14)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dj) #23
  br label %bb.ax

bb.aw:                                            ; preds = %bb.as, %.loopexit
  ret void

bb.ax:                                            ; preds = %bb.p, %bb.y, %bb.ag, %bb.aq, %bb.av, %bb.h, %bb.d
  %.pn74 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.u, %bb.h ], [ %.pn70.pn, %bb.p ], [ %.pn67.pn, %bb.y ], [ %.pn64.pn, %bb.ag ], [ %.pn.pn, %bb.aq ], [ %i.dk, %bb.av ]
  resume { ptr, i32 } %.pn74

bb.ay:                                            ; preds = %bb.am, %bb.ac, %bb.u, %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  switch i32 %i.b, label %bb.af [
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
    i32 4, label %bb.l
    i32 5, label %bb.v
    i32 3, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr i64 %i.i, 5                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %i.l = and i64 %i.i, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.l ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.preheader.i.i.i.i
  %.057.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %i.j, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.037.056.i.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.d, %.lr.ph.preheader.i.i.i.i ] ; 13 uses
  %.val.i.i.i.i.i = load float, ptr %.sroa.037.056.i.i.i.i, align 4, !tbaa !89
  %i.m = getelementptr i8, ptr %.sroa.037.056.i.i.i.i, i64 4
  %.val1.i.i.i.i.i = load float, ptr %i.m, align 4, !tbaa !92
  %i.n = fcmp une float %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.n, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 8
  %.val.i16.i.i.i.i = load float, ptr %i.o, align 4, !tbaa !89
  %i.p = getelementptr i8, ptr %.sroa.037.056.i.i.i.i, i64 12
  %.val1.i17.i.i.i.i = load float, ptr %i.p, align 4, !tbaa !92
  %i.q = fcmp une float %.val.i16.i.i.i.i, %.val1.i17.i.i.i.i
  br i1 %i.q, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 16
  %.val.i18.i.i.i.i = load float, ptr %i.r, align 4, !tbaa !89
  %i.s = getelementptr i8, ptr %.sroa.037.056.i.i.i.i, i64 20
  %.val1.i19.i.i.i.i = load float, ptr %i.s, align 4, !tbaa !92
  %i.t = fcmp une float %.val.i18.i.i.i.i, %.val1.i19.i.i.i.i
  br i1 %i.t, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit88", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  %.val.i20.i.i.i.i = load float, ptr %i.u, align 4, !tbaa !89
  %i.v = getelementptr i8, ptr %.sroa.037.056.i.i.i.i, i64 28
  %.val1.i21.i.i.i.i = load float, ptr %i.v, align 4, !tbaa !92
  %i.w = fcmp une float %.val.i20.i.i.i.i, %.val1.i21.i.i.i.i
  br i1 %i.w, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit90", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 32
  %i.y = add nsw i64 %.057.i.i.i.i, -1
  %i.z = icmp sgt i64 %.057.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !94

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre62.i.i.i.i = sub i64 %i.g, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi63.i.i.i.i = phi i64 [ %.pre62.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %bb.b ]
  %.sroa.037.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.d, %bb.b ] ; 6 uses
  %i.aa = ashr exact i64 %.pre-phi63.i.i.i.i, 3
  switch i64 %i.aa, label %.thread [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i22.i.i.i.i = load float, ptr %.sroa.037.0.lcssa.i.i.i.i, align 4, !tbaa !89
  %i.ab = getelementptr i8, ptr %.sroa.037.0.lcssa.i.i.i.i, i64 4
  %.val1.i23.i.i.i.i = load float, ptr %i.ab, align 4, !tbaa !92
  %i.ac = fcmp une float %.val.i22.i.i.i.i, %.val1.i23.i.i.i.i
  br i1 %i.ac, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i
  %.sroa.037.1.i.i.i.i = phi ptr [ %i.ad, %bb.h ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.val.i24.i.i.i.i = load float, ptr %.sroa.037.1.i.i.i.i, align 4, !tbaa !89
  %i.ae = getelementptr i8, ptr %.sroa.037.1.i.i.i.i, i64 4
  %.val1.i25.i.i.i.i = load float, ptr %i.ae, align 4, !tbaa !92
  %i.af = fcmp une float %.val.i24.i.i.i.i, %.val1.i25.i.i.i.i
  br i1 %i.af, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i26.i.i.i.i = load float, ptr %.sroa.037.2.i.i.i.i, align 4, !tbaa !89
  %i.ah = getelementptr i8, ptr %.sroa.037.2.i.i.i.i, i64 4
  %.val1.i27.i.i.i.i = load float, ptr %i.ah, align 4, !tbaa !92
  %i.ai = fcmp une float %.val.i26.i.i.i.i, %.val1.i27.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ai, ptr %.sroa.037.2.i.i.i.i, ptr %i.f
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit88": ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit90": ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit88", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit90", %bb.g, %bb.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.037.1.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i, %bb.k ], [ %.sroa.037.0.lcssa.i.i.i.i, %bb.g ], [ %i.al, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit90" ], [ %i.ak, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit88" ], [ %i.aj, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.037.056.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.am = icmp eq ptr %i.f, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %i.am, label %.thread, label %bb.ai

bb.l:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69 ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = ashr i64 %i.at, 5                       ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i14, label %._crit_edge.i.i.i.i11

.lr.ph.preheader.i.i.i.i14:                       ; preds = %bb.l
  %i.aw = and i64 %i.at, -32
  %scevgep.i.i.i.i15 = getelementptr i8, ptr %i.ao, i64 %i.aw ; 2 uses
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i14
  %.051.i.i.i.i = phi i64 [ %i.bg, %bb.p ], [ %i.au, %.lr.ph.preheader.i.i.i.i14 ] ; 2 uses
  %.sroa.031.050.i.i.i.i = phi ptr [ %i.bf, %bb.p ], [ %i.ao, %.lr.ph.preheader.i.i.i.i14 ] ; 9 uses
  %i.ax = getelementptr i8, ptr %.sroa.031.050.i.i.i.i, i64 4
  %.val.i.i.i.i.i17 = load float, ptr %i.ax, align 4, !tbaa !92
  %i.ay = fcmp une float %.val.i.i.i.i.i17, 0.000000e+00
  br i1 %i.ay, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.az = getelementptr i8, ptr %.sroa.031.050.i.i.i.i, i64 12
  %.val.i16.i.i.i.i18 = load float, ptr %i.az, align 4, !tbaa !92
  %i.ba = fcmp une float %.val.i16.i.i.i.i18, 0.000000e+00
  br i1 %i.ba, label %.loopexit.split.loop.exit41.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %.sroa.031.050.i.i.i.i, i64 20
  %.val.i17.i.i.i.i = load float, ptr %i.bb, align 4, !tbaa !92
  %i.bc = fcmp une float %.val.i17.i.i.i.i, 0.000000e+00
  br i1 %i.bc, label %.loopexit.split.loop.exit43.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %.sroa.031.050.i.i.i.i, i64 28
  %.val.i18.i.i.i.i19 = load float, ptr %i.bd, align 4, !tbaa !92
  %i.be = fcmp une float %.val.i18.i.i.i.i19, 0.000000e+00
  br i1 %i.be, label %.loopexit.split.loop.exit45.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 32
  %i.bg = add nsw i64 %.051.i.i.i.i, -1
  %i.bh = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i16, label %._crit_edge.loopexit.i.i.i.i20, !llvm.loop !95

._crit_edge.loopexit.i.i.i.i20:                   ; preds = %bb.p
  %.pre.i.i.i.i21 = ptrtoint ptr %scevgep.i.i.i.i15 to i64
  %.pre56.i.i.i.i = sub i64 %i.ar, %.pre.i.i.i.i21
  br label %._crit_edge.i.i.i.i11

._crit_edge.i.i.i.i11:                            ; preds = %._crit_edge.loopexit.i.i.i.i20, %bb.l
  %.pre-phi57.i.i.i.i = phi i64 [ %.pre56.i.i.i.i, %._crit_edge.loopexit.i.i.i.i20 ], [ %i.at, %bb.l ]
  %.sroa.031.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i15, %._crit_edge.loopexit.i.i.i.i20 ], [ %i.ao, %bb.l ] ; 5 uses
  %i.bi = ashr exact i64 %.pre-phi57.i.i.i.i, 3
  switch i64 %i.bi, label %.thread [
    i64 3, label %bb.q
    i64 2, label %bb.s
    i64 1, label %bb.u
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i11
  %i.bj = getelementptr i8, ptr %.sroa.031.0.lcssa.i.i.i.i, i64 4
  %.val.i19.i.i.i.i = load float, ptr %i.bj, align 4, !tbaa !92
  %i.bk = fcmp une float %.val.i19.i.i.i.i, 0.000000e+00
  br i1 %i.bk, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i11
  %.sroa.031.1.i.i.i.i = phi ptr [ %i.bl, %bb.r ], [ %.sroa.031.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i11 ] ; 3 uses
  %i.bm = getelementptr i8, ptr %.sroa.031.1.i.i.i.i, i64 4
  %.val.i20.i.i.i.i13 = load float, ptr %i.bm, align 4, !tbaa !92
  %i.bn = fcmp une float %.val.i20.i.i.i.i13, 0.000000e+00
  br i1 %i.bn, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i11
  %.sroa.031.2.i.i.i.i = phi ptr [ %i.bo, %bb.t ], [ %.sroa.031.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i11 ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.031.2.i.i.i.i, i64 4
  %.val.i21.i.i.i.i = load float, ptr %i.bp, align 4, !tbaa !92
  %i.bq = fcmp une float %.val.i21.i.i.i.i, 0.000000e+00
  %spec.select.i.i.i.i12 = select i1 %i.bq, ptr %.sroa.031.2.i.i.i.i, ptr %i.aq
  br label %.loopexit

.loopexit.split.loop.exit41.i.i.i.i:              ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 8
  br label %.loopexit

.loopexit.split.loop.exit43.i.i.i.i:              ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 16
  br label %.loopexit

.loopexit.split.loop.exit45.i.i.i.i:              ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i, i64 24
  br label %.loopexit

bb.v:                                             ; preds = %bb.a, %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !69 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 3 uses
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = ashr i64 %i.ca, 5                       ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i31, label %._crit_edge.i.i.i.i22

.lr.ph.preheader.i.i.i.i31:                       ; preds = %bb.v
  %i.cd = and i64 %i.ca, -32
  %scevgep.i.i.i.i32 = getelementptr i8, ptr %i.bv, i64 %i.cd ; 2 uses
  br label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %bb.z, %.lr.ph.preheader.i.i.i.i31
  %.051.i.i.i.i34 = phi i64 [ %i.cn, %bb.z ], [ %i.cb, %.lr.ph.preheader.i.i.i.i31 ] ; 2 uses
  %.sroa.031.050.i.i.i.i35 = phi ptr [ %i.cm, %bb.z ], [ %i.bv, %.lr.ph.preheader.i.i.i.i31 ] ; 9 uses
  %i.ce = getelementptr i8, ptr %.sroa.031.050.i.i.i.i35, i64 4
  %.val.i.i.i.i.i36 = load float, ptr %i.ce, align 4, !tbaa !92
  %i.cf = fcmp une float %.val.i.i.i.i.i36, 1.000000e+00
  br i1 %i.cf, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit", label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i33
  %i.cg = getelementptr i8, ptr %.sroa.031.050.i.i.i.i35, i64 12
  %.val.i16.i.i.i.i37 = load float, ptr %i.cg, align 4, !tbaa !92
  %i.ch = fcmp une float %.val.i16.i.i.i.i37, 1.000000e+00
  br i1 %i.ch, label %.loopexit.split.loop.exit41.i.i.i.i45, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr i8, ptr %.sroa.031.050.i.i.i.i35, i64 20
  %.val.i17.i.i.i.i38 = load float, ptr %i.ci, align 4, !tbaa !92
  %i.cj = fcmp une float %.val.i17.i.i.i.i38, 1.000000e+00
  br i1 %i.cj, label %.loopexit.split.loop.exit43.i.i.i.i44, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr i8, ptr %.sroa.031.050.i.i.i.i35, i64 28
  %.val.i18.i.i.i.i39 = load float, ptr %i.ck, align 4, !tbaa !92
  %i.cl = fcmp une float %.val.i18.i.i.i.i39, 1.000000e+00
  br i1 %i.cl, label %.loopexit.split.loop.exit45.i.i.i.i43, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i35, i64 32
  %i.cn = add nsw i64 %.051.i.i.i.i34, -1
  %i.co = icmp sgt i64 %.051.i.i.i.i34, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i33, label %._crit_edge.loopexit.i.i.i.i40, !llvm.loop !96

._crit_edge.loopexit.i.i.i.i40:                   ; preds = %bb.z
  %.pre.i.i.i.i41 = ptrtoint ptr %scevgep.i.i.i.i32 to i64
  %.pre56.i.i.i.i42 = sub i64 %i.by, %.pre.i.i.i.i41
  br label %._crit_edge.i.i.i.i22

._crit_edge.i.i.i.i22:                            ; preds = %._crit_edge.loopexit.i.i.i.i40, %bb.v
  %.pre-phi57.i.i.i.i23 = phi i64 [ %.pre56.i.i.i.i42, %._crit_edge.loopexit.i.i.i.i40 ], [ %i.ca, %bb.v ]
  %.sroa.031.0.lcssa.i.i.i.i24 = phi ptr [ %scevgep.i.i.i.i32, %._crit_edge.loopexit.i.i.i.i40 ], [ %i.bv, %bb.v ] ; 5 uses
  %i.cp = ashr exact i64 %.pre-phi57.i.i.i.i23, 3
  switch i64 %i.cp, label %.thread [
    i64 3, label %bb.aa
    i64 2, label %bb.ac
    i64 1, label %bb.ae
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i22
  %i.cq = getelementptr i8, ptr %.sroa.031.0.lcssa.i.i.i.i24, i64 4
  %.val.i19.i.i.i.i30 = load float, ptr %i.cq, align 4, !tbaa !92
  %i.cr = fcmp une float %.val.i19.i.i.i.i30, 1.000000e+00
  br i1 %i.cr, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa.i.i.i.i24, i64 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i22
  %.sroa.031.1.i.i.i.i28 = phi ptr [ %i.cs, %bb.ab ], [ %.sroa.031.0.lcssa.i.i.i.i24, %._crit_edge.i.i.i.i22 ] ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.031.1.i.i.i.i28, i64 4
  %.val.i20.i.i.i.i29 = load float, ptr %i.ct, align 4, !tbaa !92
  %i.cu = fcmp une float %.val.i20.i.i.i.i29, 1.000000e+00
  br i1 %i.cu, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.031.1.i.i.i.i28, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i22
  %.sroa.031.2.i.i.i.i25 = phi ptr [ %i.cv, %bb.ad ], [ %.sroa.031.0.lcssa.i.i.i.i24, %._crit_edge.i.i.i.i22 ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.sroa.031.2.i.i.i.i25, i64 4
  %.val.i21.i.i.i.i26 = load float, ptr %i.cw, align 4, !tbaa !92
  %i.cx = fcmp une float %.val.i21.i.i.i.i26, 1.000000e+00
  %spec.select.i.i.i.i28 = select i1 %i.cx, ptr %.sroa.031.2.i.i.i.i25, ptr %i.bx
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit"

.loopexit.split.loop.exit41.i.i.i.i45:            ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i35, i64 8
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit"

.loopexit.split.loop.exit43.i.i.i.i44:            ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i35, i64 16
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit"

.loopexit.split.loop.exit45.i.i.i.i43:            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.031.050.i.i.i.i35, i64 24
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit": ; preds = %.lr.ph.i.i.i.i33, %bb.aa, %bb.ac, %bb.ae, %.loopexit.split.loop.exit41.i.i.i.i45, %.loopexit.split.loop.exit43.i.i.i.i44, %.loopexit.split.loop.exit45.i.i.i.i43
  %.sroa.08.0.in.sroa.speculated.i.i.i.i27 = phi ptr [ %.sroa.031.1.i.i.i.i28, %bb.ac ], [ %spec.select.i.i.i.i28, %bb.ae ], [ %i.da, %.loopexit.split.loop.exit45.i.i.i.i43 ], [ %.sroa.031.0.lcssa.i.i.i.i24, %bb.aa ], [ %i.cz, %.loopexit.split.loop.exit43.i.i.i.i44 ], [ %i.cy, %.loopexit.split.loop.exit41.i.i.i.i45 ], [ %.sroa.031.050.i.i.i.i35, %.lr.ph.i.i.i.i33 ]
  %i.db = icmp eq ptr %i.bx, %.sroa.08.0.in.sroa.speculated.i.i.i.i27
  br i1 %i.db, label %.thread, label %bb.ai

bb.af:                                            ; preds = %bb.a
  %i.dc = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull @.str.15)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #24
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dc) #23
  resume { ptr, i32 } %i.dd

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i16, %.loopexit.split.loop.exit45.i.i.i.i, %.loopexit.split.loop.exit43.i.i.i.i, %.loopexit.split.loop.exit41.i.i.i.i, %bb.u, %bb.s, %bb.q
  %.sroa.08.0.in.sroa.speculated.i.i.i.i12 = phi ptr [ %.sroa.031.1.i.i.i.i, %bb.s ], [ %spec.select.i.i.i.i12, %bb.u ], [ %i.bt, %.loopexit.split.loop.exit45.i.i.i.i ], [ %.sroa.031.0.lcssa.i.i.i.i, %bb.q ], [ %i.bs, %.loopexit.split.loop.exit43.i.i.i.i ], [ %i.br, %.loopexit.split.loop.exit41.i.i.i.i ], [ %.sroa.031.050.i.i.i.i, %.lr.ph.i.i.i.i16 ]
  %i.de = icmp eq ptr %i.aq, %.sroa.08.0.in.sroa.speculated.i.i.i.i12
  br i1 %i.de, label %.thread, label %bb.ai

.thread:                                          ; preds = %._crit_edge.i.i.i.i22, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.i11, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit", %.loopexit
  %i.df = load ptr, ptr %0, align 8, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit", %.thread, %.loopexit
  %.0 = phi i1 [ false, %.loopexit ], [ %i.di, %.thread ], [ false, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_0EbT_SC_T0_.exit" ], [ false, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEEZNKS2_23GradingBSplineCurveImpl10isIdentityEvE3$_2EbT_SC_T0_.exit" ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_522IsGradingCurveIdentityERKSt10shared_ptrIKNS_19GradingBSplineCurveEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN16OpenColorIO_v2_519GradingBSplineCurveE, ptr nonnull @_ZTIN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 0) #23 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %i.c)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForRGBCurveERNS0_10KnotsCoefsEi(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %4 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %5 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 13 uses
  %7 = alloca %"class.std::vector.3", align 8     ; 26 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 9
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = shl nsw i32 %2, 1                        ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.l
  store i32 -1, ptr %i.n, align 4, !tbaa !21
  %i.o = or disjoint i32 %i.k, 1
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.l
  store i32 -1, ptr %i.t, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p
  store i32 0, ptr %i.u, align 4, !tbaa !21
  br label %bb.cf

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %.pre157 = load ptr, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  br i1 %i.y, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre163 = ptrtoint ptr %.pre to i64
  %.pre164 = ptrtoint ptr %.pre157 to i64
  %.pre166 = sub i64 %.pre163, %.pre164           ; 2 uses
  %.pre168 = ashr exact i64 %.pre166, 3
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = ptrtoint ptr %.pre to i64
  %i.ai = ptrtoint ptr %.pre157 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp eq i64 %i.ag, %i.ak
  br i1 %i.al, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.az unwind label %bb.h      ; 0 uses

bb.h:                                             ; preds = %bb.az, %bb.g, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi169 = phi i64 [ %.pre168, %._crit_edge ], [ %i.ak, %bb.f ] ; 3 uses
  %.pre-phi167 = phi i64 [ %.pre166, %._crit_edge ], [ %i.aj, %bb.f ]
  %i.ao = add nsw i64 %.pre-phi169, -1            ; 4 uses
  %.not263.i = icmp eq i64 %i.ao, 0
  br i1 %.not263.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i, %bb.i
  %.sroa.19.0.lcssa.i = phi ptr [ null, %bb.i ], [ %.sroa.19.2.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ] ; 6 uses
  %.sroa.0.0.lcssa.i = phi ptr [ null, %bb.i ], [ %.sroa.0.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ] ; 14 uses
  %.sroa.18.0.lcssa.i = phi ptr [ null, %bb.i ], [ %.sroa.18.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ] ; 6 uses
  %.sroa.0165.0.lcssa.i = phi ptr [ null, %bb.i ], [ %.sroa.0165.2.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ] ; 17 uses
  %i.ap = icmp eq i64 %.pre-phi167, 16
  br i1 %i.ap, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.aq = add nsw i64 %.pre-phi169, -3
  %i.ar = add nsw i64 %.pre-phi169, -2            ; 5 uses
  br label %bb.ad

.lr.ph.i:                                         ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i
  %.068240.i = phi i64 [ %i.as, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0165.0239.i = phi ptr [ %.sroa.0165.2.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 7 uses
  %.sroa.16.0238.i = phi ptr [ %.sroa.16.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 6 uses
  %.sroa.18.0237.i = phi ptr [ %.sroa.18.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 7 uses
  %.sroa.15.0236.i = phi ptr [ %.sroa.15.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 3 uses
  %.sroa.0.0235.i = phi ptr [ %.sroa.0.1.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 9 uses
  %.sroa.19.0234.i = phi ptr [ %.sroa.19.2.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit86.i ], [ null, %bb.i ] ; 2 uses
  %i.as = add nuw i64 %.068240.i, 1               ; 3 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !89
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.068240.i ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !89
  %i.ay = fsub float %i.av, %i.ax                 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !92
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !92
  %i.bd = fsub float %i.ba, %i.bc                 ; 3 uses
  %i.be = fdiv float %i.bd, %i.ay                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.16.0238.i, %.sroa.19.0234.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  store float %i.be, ptr %.sroa.16.0238.i, align 4, !tbaa !42
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bf = ptrtoint ptr %.sroa.16.0238.i to i64
  %i.bg = ptrtoint ptr %.sroa.0165.0239.i to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775804
  br i1 %i.bi, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.k
  %i.bj = ashr exact i64 %i.bh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 2305843009213693951)
  %i.bn = select i1 %i.bl, i64 2305843009213693951, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bn, 0
end_hunk_0
