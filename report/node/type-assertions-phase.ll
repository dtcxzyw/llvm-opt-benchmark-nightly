inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS2_9FloatTypeILm64EEES6_PNS0_4ZoneE:bb.a
  %.sroa.speculated.i3.i = select i1 %i.ej, double %i.ei, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.ai, %bb.aj, %bb.ak
  %.0.i9.i = phi double [ %..i.i, %bb.ai ], [ %i.dj, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.aj ], [ %.sroa.speculated.i.i, %bb.ak ], [ %i.ds, %.thread17.i ] ; 5 uses
  %.0.i4.i = phi double [ %..i.i, %bb.ai ], [ %i.dl, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.aj ], [ %.sroa.speculated.i3.i, %bb.ak ], [ %i.dx, %.thread17.i ] ; 4 uses
  %i.ek = load i8, ptr %i.h, align 1
  %i.el = load i32, ptr %i.k, align 4
  %i.em = and i32 %i.el, 2
  %.not10.i.i64 = icmp eq i32 %i.em, 0            ; 3 uses
  switch i8 %i.ek, label %bb.an [
    i8 2, label %bb.ao
    i8 0, label %bb.al
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load double, ptr %i.en, align 8         ; 3 uses
  br i1 %.not10.i.i64, label %.thread.i75, label %bb.ap

.thread.i75:                                      ; preds = %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load double, ptr %i.ep, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.es = load i8, ptr %i.er, align 2             ; 3 uses
  %i.et = icmp ult i8 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8
  %.sroa.0.0.i.i3.i.i65 = select i1 %i.et, ptr %i.eu, ptr %i.ev ; 3 uses
  %i.ew = load double, ptr %.sroa.0.0.i.i3.i.i65, align 8 ; 3 uses
  br i1 %.not10.i.i64, label %.thread17.i72, label %bb.aq

.thread17.i72:                                    ; preds = %bb.am
  %i.ex = zext i8 %i.es to i64
  %i.ey = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i65, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  %i.fa = load double, ptr %i.ez, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.an:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  unreachable

bb.ao:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %..i.i76 = select i1 %.not10.i.i64, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.ap:                                            ; preds = %bb.al
  %i.fb = fcmp olt double %i.eo, -0.000000e+00
  %.sroa.speculated5.i.i73 = select i1 %i.fb, double %i.eo, double -0.000000e+00
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fd = load double, ptr %i.fc, align 8         ; 2 uses
  %i.fe = fcmp ogt double %i.fd, -0.000000e+00
  %.sroa.speculated5.i5.i74 = select i1 %i.fe, double %i.fd, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.aq:                                            ; preds = %bb.am
  %i.ff = fcmp olt double %i.ew, -0.000000e+00
  %.sroa.speculated.i.i66 = select i1 %i.ff, double %i.ew, double -0.000000e+00
  %i.fg = zext i8 %i.es to i64
  %i.fh = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i65, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load double, ptr %i.fi, align 8         ; 2 uses
  %i.fk = fcmp ogt double %i.fj, -0.000000e+00
  %.sroa.speculated.i3.i67 = select i1 %i.fk, double %i.fj, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77: ; preds = %.thread.i75, %.thread17.i72, %bb.ao, %bb.ap, %bb.aq
  %.0.i9.i68 = phi double [ %..i.i76, %bb.ao ], [ %i.eo, %.thread.i75 ], [ %.sroa.speculated5.i.i73, %bb.ap ], [ %.sroa.speculated.i.i66, %bb.aq ], [ %i.ew, %.thread17.i72 ] ; 5 uses
  %.0.i4.i69 = phi double [ %..i.i76, %bb.ao ], [ %i.eq, %.thread.i75 ], [ %.sroa.speculated5.i5.i74, %bb.ap ], [ %.sroa.speculated.i3.i67, %bb.aq ], [ %i.fa, %.thread17.i72 ] ; 4 uses
  %i.fl = fmul double %.0.i9.i, %.0.i9.i68        ; 5 uses
  %i.fm = fmul double %.0.i9.i, %.0.i4.i69
  %.fr = freeze double %i.fm                      ; 5 uses
  %i.fn = fmul double %.0.i4.i, %.0.i9.i68        ; 5 uses
  %i.fo = fmul double %.0.i4.i, %.0.i4.i69        ; 5 uses
  %or.cond152 = fcmp uno double %i.fl, %.fr
  %i.fp = fcmp uno double %i.fn, 0.000000e+00
  %or.cond153 = select i1 %or.cond152, i1 true, i1 %i.fp
  %i.fq = fcmp uno double %i.fo, 0.000000e+00
  %or.cond154 = select i1 %or.cond153, i1 true, i1 %i.fq
  br i1 %or.cond154, label %bb.ar, label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77
  %i.fr = fcmp olt double %i.fl, %.fr
  %.1.1.i = select i1 %i.fr, double %i.fl, double %.fr ; 2 uses
  %i.fs = fcmp olt double %.1.1.i, %i.fn
  %.1.2.i = select i1 %i.fs, double %.1.1.i, double %i.fn ; 2 uses
  %i.ft = fcmp olt double %.1.2.i, %i.fo
  %.1.3.i = select i1 %i.ft, double %.1.2.i, double %i.fo ; 2 uses
  %i.fu = fcmp oeq double %.1.3.i, 0.000000e+00
  %i.fv = select i1 %i.fu, double 0.000000e+00, double %.1.3.i ; 4 uses
  %i.fw = fcmp olt double %.fr, %i.fl
  %.1.1.i79 = select i1 %i.fw, double %i.fl, double %.fr ; 2 uses
  %i.fx = fcmp olt double %i.fn, %.1.1.i79
  %.1.2.i80 = select i1 %i.fx, double %.1.1.i79, double %i.fn ; 2 uses
  %i.fy = fcmp olt double %i.fo, %.1.2.i80
  %.1.3.i81 = select i1 %i.fy, double %.1.2.i80, double %i.fo ; 2 uses
  %i.fz = fcmp oeq double %.1.3.i81, 0.000000e+00
  %i.ga = select i1 %i.fz, double 0.000000e+00, double %.1.3.i81 ; 4 uses
  %i.gb = fcmp ole double %i.fv, 0.000000e+00
  %i.gc = fcmp oge double %i.ga, 0.000000e+00
  %or.cond = and i1 %i.gb, %i.gc
  br i1 %or.cond, label %bb.as, label %bb.au

bb.ar:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ay

bb.as:                                            ; preds = %.critedge
  %i.gd = fcmp olt double %.0.i9.i, 0.000000e+00
  %i.ge = fcmp olt double %.0.i9.i68, 0.000000e+00
  %or.cond122 = or i1 %i.gd, %i.ge
  br i1 %or.cond122, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gf = or disjoint i32 %i.aq, 2
  %i.gg = fadd double %i.fv, 0.000000e+00
  %i.gh = fadd double %i.ga, 0.000000e+00
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %.critedge
  %.040 = phi i32 [ %i.gf, %bb.at ], [ %i.cm, %bb.as ], [ %i.cm, %.critedge ] ; 2 uses
  %.038 = phi double [ %i.gg, %bb.at ], [ %i.fv, %bb.as ], [ %i.fv, %.critedge ]
  %.0 = phi double [ %i.gh, %bb.at ], [ %i.ga, %bb.as ], [ %i.ga, %.critedge ]
  %i.gi = fcmp une double %.0.i9.i, -inf
  %i.gj = fcmp une double %.0.i4.i, +inf
  %or.cond123.not134 = select i1 %i.gi, i1 %i.gj, i1 false
  %i.gk = fcmp ugt double %.0.i9.i68, 0.000000e+00
  %or.cond124 = or i1 %or.cond123.not134, %i.gk
  %i.gl = fcmp ult double %.0.i4.i69, 0.000000e+00
  %or.cond125 = select i1 %or.cond124, i1 true, i1 %i.gl
  br i1 %or.cond125, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gm = fcmp une double %.0.i9.i68, -inf
  %i.gn = fcmp une double %.0.i4.i69, +inf
  %or.cond126.not137 = select i1 %i.gm, i1 %i.gn, i1 false
  %i.go = fcmp ugt double %.0.i9.i, 0.000000e+00
  %or.cond127 = select i1 %or.cond126.not137, i1 true, i1 %i.go
  %i.gp = fcmp ult double %.0.i4.i, 0.000000e+00
  %or.cond128 = select i1 %or.cond127, i1 true, i1 %i.gp
  br i1 %or.cond128, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gq = or i32 %.040, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1 = phi i32 [ %i.gq, %bb.aw ], [ %.040, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef %.038, double noundef %.0, i32 noundef %.1, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ar, %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %2, align 8
  %i.c = fmul double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.513", align 8   ; 7 uses
  %5 = alloca %"class.std::function.507", align 8 ; 6 uses
  %6 = alloca %"struct.std::array.512", align 8   ; 8 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8158.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7157.0..sroa_idx, align 4
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.b, 1
  %i.p = icmp eq i8 %i.i, 1
  %or.cond159 = and i1 %i.o, %i.p
  br i1 %or.cond159, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_, ptr %i.r, align 8
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE10ProductSetERKNS2_9FloatTypeILm64EEES8_jPNS0_4ZoneESt8functionIFdddEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5)
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #23, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  %i.u = load i8, ptr %0, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_ZNSt14_Function_baseD2Ev.exit._crit_edge, label %bb.ay

_ZNSt14_Function_baseD2Ev.exit._crit_edge:        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre = load i8, ptr %i.a, align 1
  %.pre176 = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre176, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.b, %bb.d ]
  %i.y = and i32 %i.w, 2
  %.not10.i.i = icmp eq i32 %i.y, 0               ; 3 uses
  switch i8 %i.x, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8          ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load double, ptr %i.ab, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %i.ai = load double, ptr %.sroa.0.0.i.i3.i.i, align 8 ; 3 uses
  br i1 %.not10.i.i, label %.thread17.i, label %bb.m

.thread17.i:                                      ; preds = %bb.i
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %..i.i = select i1 %.not10.i.i, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.l:                                             ; preds = %bb.h
  %i.an = fcmp olt double %i.aa, -0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.an, double %i.aa, double -0.000000e+00
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %i.aq = fcmp ogt double %i.ap, -0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.aq, double %i.ap, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %i.ar = fcmp olt double %i.ai, -0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ar, double %i.ai, double -0.000000e+00
  %i.as = zext i8 %i.ae to i64
  %i.at = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fcmp ogt double %i.av, -0.000000e+00
  %.sroa.speculated.i3.i = select i1 %i.aw, double %i.av, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.k, %bb.l, %bb.m
  %.0.i9.i = phi double [ %..i.i, %bb.k ], [ %i.aa, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.l ], [ %.sroa.speculated.i.i, %bb.m ], [ %i.ai, %.thread17.i ] ; 7 uses
  %.0.i4.i = phi double [ %..i.i, %bb.k ], [ %i.ac, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.l ], [ %.sroa.speculated.i3.i, %bb.m ], [ %i.am, %.thread17.i ] ; 7 uses
  %i.ax = load i8, ptr %i.h, align 1
  %i.ay = load i32, ptr %i.k, align 4             ; 2 uses
  %i.az = and i32 %i.ay, 2
  %.not10.i.i81 = icmp eq i32 %i.az, 0            ; 3 uses
  switch i8 %i.ax, label %bb.p [
    i8 2, label %bb.q
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 3 uses
  br i1 %.not10.i.i81, label %.thread.i92, label %bb.r

.thread.i92:                                      ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load double, ptr %i.bc, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bf = load i8, ptr %i.be, align 2             ; 3 uses
  %i.bg = icmp ult i8 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.sroa.0.0.i.i3.i.i82 = select i1 %i.bg, ptr %i.bh, ptr %i.bi ; 3 uses
  %i.bj = load double, ptr %.sroa.0.0.i.i3.i.i82, align 8 ; 3 uses
  br i1 %.not10.i.i81, label %.thread17.i89, label %bb.s

.thread17.i89:                                    ; preds = %bb.o
  %i.bk = zext i8 %i.bf to i64
  %i.bl = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load double, ptr %i.bm, align 8
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %..i.i93 = select i1 %.not10.i.i81, double +qnan, double -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.r:                                             ; preds = %bb.n
  %10 = fcmp olt double %i.bb, -0.000000e+00
  %.sroa.speculated5.i.i90 = select i1 %10, double %i.bb, double -0.000000e+00
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load double, ptr %11, align 8             ; 2 uses
  %13 = fcmp ogt double %12, -0.000000e+00
  %.sroa.speculated5.i5.i91 = select i1 %13, double %12, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %14 = fcmp olt double %i.bj, -0.000000e+00
  %.sroa.speculated.i.i83 = select i1 %14, double %i.bj, double -0.000000e+00
  %i.bo = zext i8 %i.bf to i64
  %i.bp = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %15 = fcmp ogt double %i.br, -0.000000e+00
  %.sroa.speculated.i3.i84 = select i1 %15, double %i.br, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread17.i89, %bb.q, %bb.r, %bb.s
  %.0.i9.i85 = phi double [ %..i.i93, %bb.q ], [ %i.bb, %.thread.i92 ], [ %.sroa.speculated5.i.i90, %bb.r ], [ %.sroa.speculated.i.i83, %bb.s ], [ %i.bj, %.thread17.i89 ] ; 8 uses
  %.0.i4.i86 = phi double [ %..i.i93, %bb.q ], [ %i.bd, %.thread.i92 ], [ %.sroa.speculated5.i5.i91, %bb.r ], [ %.sroa.speculated.i3.i84, %bb.s ], [ %i.bn, %.thread17.i89 ] ; 7 uses
  %i.bs = trunc i32 %i.w to i1
  %i.bt = and i32 %i.ay, 3
  %or.cond.not.i = icmp ne i32 %i.bt, 0
  %or.cond161.not = select i1 %i.bs, i1 true, i1 %or.cond.not.i
  br i1 %or.cond161.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.bu = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.bu, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %i.bv = fcmp oeq double %.0.i9.i, -inf
  %i.bw = fcmp oeq double %.0.i4.i, +inf
  %or.cond162 = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond162, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bx = fcmp oeq double %.0.i9.i85, -inf
  br i1 %i.bx, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = fcmp oeq double %.0.i4.i86, +inf
  %i.bz = zext i1 %i.by to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.ca = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.bz, %bb.v ] ; 2 uses
  %i.cb = load i32, ptr %i.d, align 4
  %i.cc = and i32 %i.cb, 2
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = fcmp ogt double %.0.i4.i86, 0.000000e+00
  %or.cond163 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond163, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread
  %i.cf = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cg = fcmp olt double %.0.i9.i85, 0.000000e+00
  %or.cond164 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond164, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.ci = fcmp olt double %.0.i9.i, 0.000000e+00
  %or.cond165 = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = fcmp ogt double %.0.i4.i86, 1.000000e+00
  %or.cond166 = select i1 %or.cond165, i1 %i.cj, i1 false
  br i1 %or.cond166, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cl = fcmp oge double %.0.i4.i, 0.000000e+00
  %or.cond168.not171 = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cm = fcmp olt double %.0.i9.i85, -1.000000e+00
  %or.cond169 = select i1 %or.cond168.not171, i1 %i.cm, i1 false
  br i1 %or.cond169, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.cn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = fdiv double %.0.i4.i, %.0.i4.i86
  %i.cp = call noundef i1 @llvm.is.fpclass.f64(double %i.co, i32 32)
  br i1 %i.cp, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = fcmp ogt double %.0.i9.i, 0.000000e+00
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = fdiv double %.0.i9.i, %.0.i9.i85
  %i.cs = call noundef i1 @llvm.is.fpclass.f64(double %i.cr, i32 32)
  %i.ct = select i1 %i.cs, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.cu = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread ], [ 0, %bb.ab ], [ %i.ct, %bb.ac ]
  %i.cv = or disjoint i32 %i.cu, %i.ca            ; 7 uses
  %i.cw = fcmp ult double %.0.i9.i85, 0.000000e+00
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i32, ptr %i.k, align 4
  %i.cy = and i32 %i.cx, 2
  %.not172 = icmp eq i32 %i.cy, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cz = phi i1 [ false, %bb.ad ], [ %.not172, %bb.ae ] ; 3 uses
  %i.da = fcmp olt double %.0.i4.i86, 0.000000e+00
  %or.cond = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.db = fcmp ogt double %.0.i9.i85, 0.000000e+00
  br i1 %i.db, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load i32, ptr %i.k, align 4
  %i.dd = and i32 %i.dc, 2
  %.not173 = icmp eq i32 %i.dd, 0
  br i1 %.not173, label %.critedge, label %bb.ak

.critedge:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %16 = fdiv double %.0.i9.i, %.0.i9.i85          ; 2 uses
  store double %16, ptr %6, align 8
  %17 = fdiv double %.0.i9.i, %.0.i4.i86
  %.fr = freeze double %17                        ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %.fr, ptr %18, align 8
  %19 = fdiv double %.0.i4.i, %.0.i9.i85          ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %19, ptr %i.de, align 8
  %20 = fdiv double %.0.i4.i, %.0.i4.i86          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 24
  store double %20, ptr %i.df, align 8
  %or.cond179 = fcmp uno double %16, %.fr
  %i.dg = fcmp uno double %19, 0.000000e+00
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %i.dg
  %i.dh = fcmp uno double %20, 0.000000e+00
  %or.cond181 = select i1 %or.cond180, i1 true, i1 %i.dh
  br i1 %or.cond181, label %bb.ai, label %.critedge80

.critedge80:                                      ; preds = %.critedge
  %i.di = call noundef double @_ZN2v88internal8compiler10turboshaft9array_minIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.dj = call noundef double @_ZN2v88internal8compiler10turboshaft9array_maxIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %7, double noundef %i.di, double noundef %i.dj, i32 noundef %i.cv, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.ai:                                            ; preds = %.critedge
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7123.0..sroa_idx, align 4
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8124.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.dk = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.dk, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cz, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dl = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dm = fcmp oeq double %i.dl, -inf
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !401 ; 3 uses
  store ptr %i.dn, ptr %4, align 8, !noalias !401
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !noalias !401
  store double -inf, ptr %i.dn, align 8, !noalias !401
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !noalias !401
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE3SetESt6vectorIdSaIdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.cv, ptr noundef %3)
  %i.dr = load ptr, ptr %4, align 8, !noalias !401 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.dp, align 8, !noalias !401
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.ap:                                            ; preds = %bb.am
  %i.dw = call noundef i1 @llvm.is.fpclass.f64(double %i.dl, i32 32)
  br i1 %i.dw, label %bb.aq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !5

bb.aq:                                            ; preds = %bb.ap
  %i.dx = or disjoint i32 %i.ca, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.ap, %bb.aq
  %.014.i.i = phi double [ 0.000000e+00, %bb.aq ], [ %i.dl, %bb.ap ]
  %.0.i4.i.i = phi i32 [ %i.dx, %bb.aq ], [ %i.cv, %bb.ap ]
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !404
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.dy, align 4, !alias.scope !404
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double -inf, ptr %i.dz, align 8, !alias.scope !404
  %.sroa.4.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %.014.i.i, ptr %.sroa.4.0..sroa_idx.i.i95, align 8, !alias.scope !404
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %bb.an, %bb.ao, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ay

bb.ar:                                            ; preds = %bb.al
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7116.0..sroa_idx, align 4
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8117.0..sroa_idx, align 8
  br label %bb.ay

bb.as:                                            ; preds = %bb.ak
  %i.ea = fcmp ult double %.0.i9.i, 0.000000e+00
  br i1 %i.ea, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = load i32, ptr %i.d, align 4
  %i.ec = and i32 %i.eb, 2
  %.not174 = icmp eq i32 %i.ec, 0
  br i1 %.not174, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.cz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8110.0..sroa_idx, align 8
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ed = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef -inf, double noundef %i.ed, i32 noundef %i.cv, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at, %bb.as, %bb.af
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ax, %bb.aw, %bb.av, %bb.ar, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, %bb.aj, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 6 uses
  %i.b = load double, ptr %2, align 8             ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %i.d = fcmp ueq double %i.c, +inf
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !315

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = tail call noundef i1 @llvm.is.fpclass.f64(double %i.b, i32 32)
  br i1 %i.g, label %bb.b, label %bb.d, !prof !5

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ogt double %i.a, 0.000000e+00
  %i.i = select i1 %i.h, double -inf, double +inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.j = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.g, !prof !5

bb.e:                                             ; preds = %bb.d
  %or.cond15.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond15.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt double %i.a, 0.000000e+00
  %i.l = select i1 %i.k, double +inf, double -inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = fdiv double %i.a, %i.b
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi double [ %i.m, %bb.g ], [ +qnan, %bb.a ], [ %i.i, %bb.c ], [ +qnan, %bb.b ], [ %i.l, %bb.f ], [ +qnan, %bb.e ]
  ret double %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split, %bb.a
end_hunk_0
