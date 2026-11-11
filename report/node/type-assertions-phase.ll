Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 18
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
  %i.fb = fcmp olt double %i.eo, 0.000000e+00
  %.sroa.speculated5.i.i73 = select i1 %i.fb, double %i.eo, double -0.000000e+00
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fd = load double, ptr %i.fc, align 8         ; 2 uses
  %i.fe = fcmp ogt double %i.fd, 0.000000e+00
  %.sroa.speculated5.i5.i74 = select i1 %i.fe, double %i.fd, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.aq:                                            ; preds = %bb.am
  %i.ff = fcmp olt double %i.ew, 0.000000e+00
  %.sroa.speculated.i.i66 = select i1 %i.ff, double %i.ew, double -0.000000e+00
  %i.fg = zext i8 %i.es to i64
  %i.fh = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i65, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load double, ptr %i.fi, align 8         ; 2 uses
  %i.fk = fcmp ogt double %i.fj, 0.000000e+00
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
  %.041 = phi i32 [ %i.gf, %bb.at ], [ %i.cm, %bb.as ], [ %i.cm, %.critedge ] ; 2 uses
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
  %i.gq = or i32 %.041, 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1 = phi i32 [ %i.gq, %bb.aw ], [ %.041, %bb.av ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef %.038, double noundef %.0, i32 noundef %.1, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ar, %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 !guid !604 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %2, align 8
  %i.c = fmul double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 !guid !605 {
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
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 !guid !610 {
bb.a:
  %4 = alloca %"class.std::vector.513", align 8   ; 7 uses
  %5 = alloca %"class.std::function.507", align 8 ; 6 uses
  %6 = alloca %"struct.std::array.512", align 16  ; 6 uses
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
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #23, !inline_history !2 ; 0 uses
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
  %i.an = fcmp olt double %i.aa, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.an, double %i.aa, double -0.000000e+00
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.aq, double %i.ap, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %i.ar = fcmp olt double %i.ai, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ar, double %i.ai, double -0.000000e+00
  %i.as = zext i8 %i.ae to i64
  %i.at = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load double, ptr %i.au, align 8         ; 2 uses
  %i.aw = fcmp ogt double %i.av, 0.000000e+00
  %.sroa.speculated.i3.i = select i1 %i.aw, double %i.av, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.k, %bb.l, %bb.m
  %.0.i9.i = phi double [ %..i.i, %bb.k ], [ %i.aa, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.l ], [ %.sroa.speculated.i.i, %bb.m ], [ %i.ai, %.thread17.i ] ; 6 uses
  %.0.i4.i = phi double [ %..i.i, %bb.k ], [ %i.ac, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.l ], [ %.sroa.speculated.i3.i, %bb.m ], [ %i.am, %.thread17.i ] ; 6 uses
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
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = fcmp olt double %i.bb, 0.000000e+00
  %.sroa.speculated5.i.i90 = select i1 %i.bp, double %i.bb, double -0.000000e+00
  %i.bq = load double, ptr %i.bo, align 8         ; 2 uses
  %i.br = fcmp ogt double %i.bq, 0.000000e+00
  %.sroa.speculated5.i5.i91 = select i1 %i.br, double %i.bq, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %i.bs = zext i8 %i.bf to i64
  %i.bt = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = load double, ptr %i.bu, align 8         ; 2 uses
  %i.bw = fcmp olt double %i.bj, 0.000000e+00
  %.sroa.speculated.i.i83 = select i1 %i.bw, double %i.bj, double -0.000000e+00
  %i.bx = fcmp ogt double %i.bv, 0.000000e+00
  %.sroa.speculated.i3.i84 = select i1 %i.bx, double %i.bv, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread17.i89, %bb.q, %bb.r, %bb.s
  %.0.i9.i85 = phi double [ %..i.i93, %bb.q ], [ %i.bb, %.thread.i92 ], [ %.sroa.speculated5.i.i90, %bb.r ], [ %.sroa.speculated.i.i83, %bb.s ], [ %i.bj, %.thread17.i89 ] ; 7 uses
  %.0.i4.i86 = phi double [ %..i.i93, %bb.q ], [ %i.bd, %.thread.i92 ], [ %.sroa.speculated5.i5.i91, %bb.r ], [ %.sroa.speculated.i3.i84, %bb.s ], [ %i.bn, %.thread17.i89 ] ; 6 uses
  %i.by = trunc i32 %i.w to i1
  %i.bz = and i32 %i.ay, 3
  %or.cond.not.i = icmp ne i32 %i.bz, 0
  %or.cond161.not = select i1 %i.by, i1 true, i1 %or.cond.not.i
  br i1 %or.cond161.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.ca = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.ca, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %i.cb = fcmp oeq double %.0.i9.i, -inf
  %i.cc = fcmp oeq double %.0.i4.i, +inf
  %or.cond162 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond162, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cd = fcmp oeq double %.0.i9.i85, -inf
  br i1 %i.cd, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = fcmp oeq double %.0.i4.i86, +inf
  %i.cf = zext i1 %i.ce to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.cg = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.cf, %bb.v ] ; 2 uses
  %i.ch = load i32, ptr %i.d, align 4
  %i.ci = and i32 %i.ch, 2
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = fcmp ogt double %.0.i4.i86, 0.000000e+00
  %or.cond163 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond163, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread
  %i.cl = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cm = fcmp olt double %.0.i9.i85, 0.000000e+00
  %or.cond164 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond164, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.co = fcmp olt double %.0.i9.i, 0.000000e+00
  %or.cond165 = select i1 %i.cn, i1 %i.co, i1 false
  %i.cp = fcmp ogt double %.0.i4.i86, 1.000000e+00
  %or.cond166 = select i1 %or.cond165, i1 %i.cp, i1 false
  br i1 %or.cond166, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %i.cr = fcmp oge double %.0.i4.i, 0.000000e+00
  %or.cond168.not171 = select i1 %i.cq, i1 %i.cr, i1 false
  %i.cs = fcmp olt double %.0.i9.i85, -1.000000e+00
  %or.cond169 = select i1 %or.cond168.not171, i1 %i.cs, i1 false
  br i1 %or.cond169, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = fdiv double %.0.i4.i, %.0.i4.i86
  %i.cv = call noundef i1 @llvm.is.fpclass.f64(double %i.cu, /* (nzero) */ i32 32)
  br i1 %i.cv, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = fcmp ogt double %.0.i9.i, 0.000000e+00
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = fdiv double %.0.i9.i, %.0.i9.i85
  %i.cy = call noundef i1 @llvm.is.fpclass.f64(double %i.cx, /* (nzero) */ i32 32)
  %i.cz = select i1 %i.cy, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.da = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread ], [ 0, %bb.ab ], [ %i.cz, %bb.ac ]
  %i.db = or disjoint i32 %i.da, %i.cg            ; 7 uses
  %i.dc = fcmp ult double %.0.i9.i85, 0.000000e+00
  br i1 %i.dc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i32, ptr %i.k, align 4
  %i.de = and i32 %i.dd, 2
  %.not172 = icmp eq i32 %i.de, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.df = phi i1 [ false, %bb.ad ], [ %.not172, %bb.ae ] ; 3 uses
  %i.dg = fcmp olt double %.0.i4.i86, 0.000000e+00
  %or.cond = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.dh = fcmp ogt double %.0.i9.i85, 0.000000e+00
  br i1 %i.dh, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.di = load i32, ptr %i.k, align 4
  %i.dj = and i32 %i.di, 2
  %.not173 = icmp eq i32 %i.dj, 0
  br i1 %.not173, label %.critedge, label %bb.ak

.critedge:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.dk = insertelement <2 x double> poison, double %.0.i9.i, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x double> poison, double %.0.i9.i85, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %.0.i4.i86, i64 1 ; 2 uses
  %i.do = fdiv <2 x double> %i.dl, %i.dn
  %.fr182 = freeze <2 x double> %i.do             ; 3 uses
  %i.dp = extractelement <2 x double> %.fr182, i64 0
  store <2 x double> %.fr182, ptr %6, align 16
  %i.dq = insertelement <2 x double> poison, double %.0.i4.i, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x double> %i.dr, %i.dn          ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.du = extractelement <2 x double> %i.ds, i64 0
  %i.dv = extractelement <2 x double> %i.ds, i64 1
  store <2 x double> %i.ds, ptr %i.dt, align 16
  %10 = extractelement <2 x double> %.fr182, i64 1
  %or.cond179 = fcmp uno double %i.dp, %10
  %i.dw = fcmp uno double %i.du, 0.000000e+00
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %i.dw
  %i.dx = fcmp uno double %i.dv, 0.000000e+00
  %or.cond181 = select i1 %or.cond180, i1 true, i1 %i.dx
  br i1 %or.cond181, label %bb.ai, label %.critedge80

.critedge80:                                      ; preds = %.critedge
  %i.dy = call noundef double @_ZN2v88internal8compiler10turboshaft9array_minIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.dz = call noundef double @_ZN2v88internal8compiler10turboshaft9array_maxIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %7, double noundef %i.dy, double noundef %i.dz, i32 noundef %i.db, ptr noundef %3)
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
  %i.ea = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.ea, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.df, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.eb = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ec = fcmp oeq double %i.eb, -inf
  br i1 %i.ec, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ed = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !611 ; 3 uses
  store ptr %i.ed, ptr %4, align 8, !noalias !611
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !noalias !611
  store double -inf, ptr %i.ed, align 8, !noalias !611
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ee, ptr %i.eg, align 8, !noalias !611
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE3SetESt6vectorIdSaIdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.db, ptr noundef %3)
  %i.eh = load ptr, ptr %4, align 8, !noalias !611 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load ptr, ptr %i.ef, align 8, !noalias !611
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eh to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.el) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.ap:                                            ; preds = %bb.am
  %i.em = call noundef i1 @llvm.is.fpclass.f64(double %i.eb, /* (nzero) */ i32 32)
  br i1 %i.em, label %bb.aq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !86

bb.aq:                                            ; preds = %bb.ap
  %i.en = or disjoint i32 %i.cg, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.ap, %bb.aq
  %.014.i.i = phi double [ 0.000000e+00, %bb.aq ], [ %i.eb, %bb.ap ]
  %.0.i4.i.i = phi i32 [ %i.en, %bb.aq ], [ %i.db, %bb.ap ]
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !612
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.eo, align 4, !alias.scope !612
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double -inf, ptr %i.ep, align 8, !alias.scope !612
  %.sroa.4.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %.014.i.i, ptr %.sroa.4.0..sroa_idx.i.i95, align 8, !alias.scope !612
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %bb.an, %bb.ao, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ay

bb.ar:                                            ; preds = %bb.al
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.db, ptr %.sroa.7116.0..sroa_idx, align 4
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8117.0..sroa_idx, align 8
  br label %bb.ay

bb.as:                                            ; preds = %bb.ak
  %i.eq = fcmp ult double %.0.i9.i, 0.000000e+00
  br i1 %i.eq, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = load i32, ptr %i.d, align 4
  %i.es = and i32 %i.er, 2
  %.not174 = icmp eq i32 %i.es, 0
  br i1 %.not174, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.df, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.db, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8110.0..sroa_idx, align 8
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.et = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef -inf, double noundef %i.et, i32 noundef %i.db, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at, %bb.as, %bb.af
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.db, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ax, %bb.aw, %bb.av, %bb.ar, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, %bb.aj, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 !guid !613 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 6 uses
  %i.b = load double, ptr %2, align 8             ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %i.d = fcmp ueq double %i.c, +inf
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !93

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = tail call noundef i1 @llvm.is.fpclass.f64(double %i.b, /* (nzero) */ i32 32)
  br i1 %i.g, label %bb.b, label %bb.d, !prof !86

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ogt double %i.a, 0.000000e+00
  %i.i = select i1 %i.h, double -inf, double +inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.j = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.g, !prof !86

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
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 !guid !614 {
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
end_hunk_0
