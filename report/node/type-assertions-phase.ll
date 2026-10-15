Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS2_9FloatTypeILm32EEES6_PNS0_4ZoneE:bb.a

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit: ; preds = %.thread.i, %.thread18.i, %bb.ag, %bb.ah, %bb.ai
  %.0.i10.i = phi float [ %..i.i, %bb.ag ], [ %i.dn, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.ah ], [ %.sroa.speculated.i.i, %bb.ai ], [ %i.dw, %.thread18.i ] ; 5 uses
  %.0.i4.i = phi float [ %..i.i, %bb.ag ], [ %i.dp, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.ah ], [ %.sroa.speculated.i3.i, %bb.ai ], [ %i.eb, %.thread18.i ] ; 4 uses
  %i.eo = load i8, ptr %i.h, align 1
  %i.ep = load i32, ptr %i.k, align 4
  %i.eq = and i32 %i.ep, 2
  %.not10.i.i63 = icmp eq i32 %i.eq, 0            ; 3 uses
  switch i8 %i.eo, label %bb.al [
    i8 2, label %bb.am
    i8 0, label %bb.aj
    i8 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load float, ptr %i.er, align 8          ; 3 uses
  br i1 %.not10.i.i63, label %.thread.i74, label %bb.an

.thread.i74:                                      ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eu = load float, ptr %i.et, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.ak:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ew = load i8, ptr %i.ev, align 2             ; 3 uses
  %i.ex = icmp ult i8 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %.sroa.0.0.i.i3.i.i64 = select i1 %i.ex, ptr %i.ey, ptr %i.ez ; 3 uses
  %i.fa = load float, ptr %.sroa.0.0.i.i3.i.i64, align 4 ; 3 uses
  br i1 %.not10.i.i63, label %.thread18.i71, label %bb.ao

.thread18.i71:                                    ; preds = %bb.ak
  %i.fb = zext i8 %i.ew to i64
  %i.fc = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i64, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4
  %i.fe = load float, ptr %i.fd, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  unreachable

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %..i.i75 = select i1 %.not10.i.i63, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.an:                                            ; preds = %bb.aj
  %i.ff = fcmp olt float %i.es, 0.000000e+00
  %.sroa.speculated5.i.i72 = select i1 %i.ff, float %i.es, float -0.000000e+00
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fh = load float, ptr %i.fg, align 4          ; 2 uses
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  %.sroa.speculated5.i5.i73 = select i1 %i.fi, float %i.fh, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.ao:                                            ; preds = %bb.ak
  %i.fj = fcmp olt float %i.fa, 0.000000e+00
  %.sroa.speculated.i.i65 = select i1 %i.fj, float %i.fa, float -0.000000e+00
  %i.fk = zext i8 %i.ew to i64
  %i.fl = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i64, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = load float, ptr %i.fm, align 4          ; 2 uses
  %i.fo = fcmp ogt float %i.fn, 0.000000e+00
  %.sroa.speculated.i3.i66 = select i1 %i.fo, float %i.fn, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76: ; preds = %.thread.i74, %.thread18.i71, %bb.am, %bb.an, %bb.ao
  %.0.i10.i67 = phi float [ %..i.i75, %bb.am ], [ %i.es, %.thread.i74 ], [ %.sroa.speculated5.i.i72, %bb.an ], [ %.sroa.speculated.i.i65, %bb.ao ], [ %i.fa, %.thread18.i71 ] ; 5 uses
  %.0.i4.i68 = phi float [ %..i.i75, %bb.am ], [ %i.eu, %.thread.i74 ], [ %.sroa.speculated5.i5.i73, %bb.an ], [ %.sroa.speculated.i3.i66, %bb.ao ], [ %i.fe, %.thread18.i71 ] ; 4 uses
  %i.fp = fmul float %.0.i10.i, %.0.i10.i67       ; 5 uses
  %i.fq = fmul float %.0.i10.i, %.0.i4.i68
  %.fr = freeze float %i.fq                       ; 5 uses
  %i.fr = fmul float %.0.i4.i, %.0.i10.i67        ; 5 uses
  %i.fs = fmul float %.0.i4.i, %.0.i4.i68         ; 5 uses
  %or.cond169 = fcmp uno float %i.fp, %.fr
  %i.ft = fcmp uno float %i.fr, 0.000000e+00
  %or.cond170 = select i1 %or.cond169, i1 true, i1 %i.ft
  %i.fu = fcmp uno float %i.fs, 0.000000e+00
  %or.cond171 = select i1 %or.cond170, i1 true, i1 %i.fu
  br i1 %or.cond171, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76
  %i.fv = fcmp olt float %i.fp, %.fr
  %.1.1.i = select i1 %i.fv, float %i.fp, float %.fr ; 2 uses
  %i.fw = fcmp olt float %.1.1.i, %i.fr
  %.1.2.i = select i1 %i.fw, float %.1.1.i, float %i.fr ; 2 uses
  %i.fx = fcmp olt float %.1.2.i, %i.fs
  %.1.3.i = select i1 %i.fx, float %.1.2.i, float %i.fs ; 2 uses
  %i.fy = fcmp oeq float %.1.3.i, 0.000000e+00
  %i.fz = select i1 %i.fy, float 0.000000e+00, float %.1.3.i ; 4 uses
  %i.ga = fcmp olt float %.fr, %i.fp
  %.1.1.i78 = select i1 %i.ga, float %i.fp, float %.fr ; 2 uses
  %i.gb = fcmp olt float %i.fr, %.1.1.i78
  %.1.2.i79 = select i1 %i.gb, float %.1.1.i78, float %i.fr ; 2 uses
  %i.gc = fcmp olt float %i.fs, %.1.2.i79
  %.1.3.i80 = select i1 %i.gc, float %.1.2.i79, float %i.fs ; 2 uses
  %i.gd = fcmp oeq float %.1.3.i80, 0.000000e+00
  %i.ge = select i1 %i.gd, float 0.000000e+00, float %.1.3.i80 ; 4 uses
  %i.gf = fcmp ugt float %i.fz, 0.000000e+00
  %i.gg = fcmp ult float %i.ge, 0.000000e+00
  %or.cond = or i1 %i.gf, %i.gg
  br i1 %or.cond, label %bb.as, label %bb.aq

bb.ap:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.aw

bb.aq:                                            ; preds = %.critedge
  %i.gh = fcmp olt float %.0.i10.i, 0.000000e+00
  %i.gi = fcmp olt float %.0.i10.i67, 0.000000e+00
  %or.cond139 = or i1 %i.gh, %i.gi
  br i1 %or.cond139, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gj = or disjoint i32 %i.aq, 2
  %i.gk = fadd float %i.fz, 0.000000e+00
  %i.gl = fadd float %i.ge, 0.000000e+00
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %.critedge
  %.040 = phi i32 [ %i.gj, %bb.ar ], [ %i.cq, %bb.aq ], [ %i.cq, %.critedge ] ; 2 uses
  %.037 = phi float [ %i.gk, %bb.ar ], [ %i.fz, %bb.aq ], [ %i.fz, %.critedge ]
  %.0 = phi float [ %i.gl, %bb.ar ], [ %i.ge, %bb.aq ], [ %i.ge, %.critedge ]
  %i.gm = fcmp une float %.0.i10.i, -inf
  %i.gn = fcmp une float %.0.i4.i, +inf
  %or.cond140.not151 = select i1 %i.gm, i1 %i.gn, i1 false
  %i.go = fcmp ugt float %.0.i10.i67, 0.000000e+00
  %or.cond141 = or i1 %or.cond140.not151, %i.go
  %i.gp = fcmp ult float %.0.i4.i68, 0.000000e+00
  %or.cond142 = select i1 %or.cond141, i1 true, i1 %i.gp
  br i1 %or.cond142, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gq = fcmp une float %.0.i10.i67, -inf
  %i.gr = fcmp une float %.0.i4.i68, +inf
  %or.cond143.not154 = select i1 %i.gq, i1 %i.gr, i1 false
  %i.gs = fcmp ugt float %.0.i10.i, 0.000000e+00
  %or.cond144 = select i1 %or.cond143.not154, i1 true, i1 %i.gs
  %i.gt = fcmp ult float %.0.i4.i, 0.000000e+00
  %or.cond145 = select i1 %or.cond144, i1 true, i1 %i.gt
  br i1 %or.cond145, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gu = or i32 %.040, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.1 = phi i32 [ %i.gu, %bb.au ], [ %.040, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %9, float noundef %.037, float noundef %.0, i32 noundef %.1, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap, %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = load float, ptr %2, align 4
  %i.c = fmul float %i.a, %i.b
  ret float %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS2_9FloatTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.466", align 8   ; 7 uses
  %5 = alloca %"class.std::function.461", align 8 ; 6 uses
  %6 = alloca %"struct.std::array", align 16      ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 9 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
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
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8183.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 4, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7182.0..sroa_idx, align 4
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.b, 1
  %i.p = icmp eq i8 %i.i, 1
  %or.cond184 = and i1 %i.o, %i.p
  br i1 %or.cond184, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSI_, ptr %i.r, align 8
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE10ProductSetERKNS2_9FloatTypeILm32EEES8_jPNS0_4ZoneESt8functionIFfffEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5)
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
  %.pre201 = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre201, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.e, %bb.d ] ; 2 uses
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
  %i.aa = load float, ptr %i.z, align 8           ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = load float, ptr %i.ab, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %i.ai = load float, ptr %.sroa.0.0.i.i3.i.i, align 4 ; 3 uses
  br i1 %.not10.i.i, label %.thread18.i, label %bb.m

.thread18.i:                                      ; preds = %bb.i
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load float, ptr %i.al, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %..i.i = select i1 %.not10.i.i, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.l:                                             ; preds = %bb.h
  %10 = fcmp olt float %i.aa, 0.000000e+00
  %.sroa.speculated5.i.i = select i1 %10, float %i.aa, float -0.000000e+00
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %12 = load float, ptr %11, align 4              ; 2 uses
  %i.an = fcmp ogt float %12, 0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.an, float %12, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %13 = fcmp olt float %i.ai, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %13, float %i.ai, float -0.000000e+00
  %i.ao = zext i8 %i.ae to i64
  %i.ap = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load float, ptr %i.aq, align 4          ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  %.sroa.speculated.i3.i = select i1 %i.as, float %i.ar, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit: ; preds = %.thread.i, %.thread18.i, %bb.k, %bb.l, %bb.m
  %.0.i10.i = phi float [ %..i.i, %bb.k ], [ %i.aa, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.l ], [ %.sroa.speculated.i.i, %bb.m ], [ %i.ai, %.thread18.i ] ; 7 uses
  %.0.i4.i = phi float [ %..i.i, %bb.k ], [ %i.ac, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.l ], [ %.sroa.speculated.i3.i, %bb.m ], [ %i.am, %.thread18.i ] ; 6 uses
  %i.at = load i8, ptr %i.h, align 1
  %i.au = load i32, ptr %i.k, align 4             ; 2 uses
  %i.av = and i32 %i.au, 2
  %.not10.i.i81 = icmp eq i32 %i.av, 0            ; 3 uses
  switch i8 %i.at, label %bb.p [
    i8 2, label %bb.q
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load float, ptr %i.aw, align 8          ; 3 uses
  br i1 %.not10.i.i81, label %.thread.i92, label %bb.r

.thread.i92:                                      ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.az = load float, ptr %i.ay, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bb = load i8, ptr %i.ba, align 2             ; 3 uses
  %i.bc = icmp ult i8 %i.bb, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.sroa.0.0.i.i3.i.i82 = select i1 %i.bc, ptr %i.bd, ptr %i.be ; 3 uses
  %i.bf = load float, ptr %.sroa.0.0.i.i3.i.i82, align 4 ; 3 uses
  br i1 %.not10.i.i81, label %.thread18.i89, label %bb.s

.thread18.i89:                                    ; preds = %bb.o
  %i.bg = zext i8 %i.bb to i64
  %i.bh = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load float, ptr %i.bi, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %..i.i93 = select i1 %.not10.i.i81, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.r:                                             ; preds = %bb.n
  %14 = fcmp olt float %i.ax, 0.000000e+00
  %.sroa.speculated5.i.i90 = select i1 %14, float %i.ax, float -0.000000e+00
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %16 = load float, ptr %15, align 4              ; 2 uses
  %i.bk = fcmp ogt float %16, 0.000000e+00
  %.sroa.speculated5.i5.i91 = select i1 %i.bk, float %16, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %17 = fcmp olt float %i.bf, 0.000000e+00
  %.sroa.speculated.i.i83 = select i1 %17, float %i.bf, float -0.000000e+00
  %i.bl = zext i8 %i.bb to i64
  %i.bm = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load float, ptr %i.bn, align 4          ; 2 uses
  %i.bp = fcmp ogt float %i.bo, 0.000000e+00
  %.sroa.speculated.i3.i84 = select i1 %i.bp, float %i.bo, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread18.i89, %bb.q, %bb.r, %bb.s
  %.0.i10.i85 = phi float [ %..i.i93, %bb.q ], [ %i.ax, %.thread.i92 ], [ %.sroa.speculated5.i.i90, %bb.r ], [ %.sroa.speculated.i.i83, %bb.s ], [ %i.bf, %.thread18.i89 ] ; 7 uses
  %.0.i4.i86 = phi float [ %..i.i93, %bb.q ], [ %i.az, %.thread.i92 ], [ %.sroa.speculated5.i5.i91, %bb.r ], [ %.sroa.speculated.i3.i84, %bb.s ], [ %i.bj, %.thread18.i89 ] ; 7 uses
  %i.bq = trunc i32 %i.w to i1
  %i.br = and i32 %i.au, 3
  %or.cond.not.i = icmp ne i32 %i.br, 0
  %or.cond186.not = select i1 %i.bq, i1 true, i1 %or.cond.not.i
  br i1 %or.cond186.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94
  %i.bs = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef 0.000000e+00) #23
  br i1 %i.bs, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit
  %i.bt = fcmp oeq float %.0.i10.i, -inf
  %i.bu = fcmp oeq float %.0.i4.i, +inf
  %or.cond187 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond187, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bv = fcmp oeq float %.0.i10.i85, -inf
  br i1 %i.bv, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = fcmp oeq float %.0.i4.i86, +inf
  %i.bx = zext i1 %i.bw to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94
  %i.by = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.bx, %bb.v ] ; 2 uses
  %i.bz = load i32, ptr %i.d, align 4
  %i.ca = and i32 %i.bz, 2
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = fcmp ogt float %.0.i4.i86, 0.000000e+00
  %or.cond188 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond188, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread
  %i.cd = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %i.ce = fcmp olt float %.0.i10.i85, 0.000000e+00
  %or.cond189 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond189, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %i.cg = fcmp olt float %.0.i10.i, 0.000000e+00
  %or.cond190 = select i1 %i.cf, i1 %i.cg, i1 false
  %i.ch = fcmp ogt float %.0.i4.i86, 1.000000e+00
  %or.cond191 = select i1 %or.cond190, i1 %i.ch, i1 false
  br i1 %or.cond191, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %i.cj = fcmp oge float %.0.i4.i, 0.000000e+00
  %or.cond193.not196 = select i1 %i.ci, i1 %i.cj, i1 false
  %i.ck = fcmp olt float %.0.i10.i85, -1.000000e+00
  %or.cond194 = select i1 %or.cond193.not196, i1 %i.ck, i1 false
  br i1 %or.cond194, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = fcmp olt float %.0.i4.i, 0.000000e+00
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = fdiv float %.0.i4.i, %.0.i4.i86
  %i.cn = fpext float %i.cm to double
  %i.co = call noundef i1 @llvm.is.fpclass.f64(double %i.cn, /* (nzero) */ i32 32)
  br i1 %i.co, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cp = fcmp ogt float %.0.i10.i, 0.000000e+00
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = fdiv float %.0.i10.i, %.0.i10.i85
  %i.cr = fpext float %i.cq to double
  %i.cs = call noundef i1 @llvm.is.fpclass.f64(double %i.cr, /* (nzero) */ i32 32)
  %i.ct = select i1 %i.cs, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.cu = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread ], [ 0, %bb.ab ], [ %i.ct, %bb.ac ]
  %i.cv = or disjoint i32 %i.cu, %i.by            ; 7 uses
  %i.cw = fcmp ult float %.0.i10.i85, 0.000000e+00
  br i1 %i.cw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load i32, ptr %i.k, align 4
  %i.cy = and i32 %i.cx, 2
  %.not197 = icmp eq i32 %i.cy, 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cz = phi i1 [ false, %bb.ad ], [ %.not197, %bb.ae ] ; 3 uses
  %i.da = fcmp olt float %.0.i4.i86, 0.000000e+00
  %or.cond = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.db = fcmp ogt float %.0.i10.i85, 0.000000e+00
  br i1 %i.db, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load i32, ptr %i.k, align 4
  %i.dd = and i32 %i.dc, 2
  %.not198 = icmp eq i32 %i.dd, 0
  br i1 %.not198, label %.critedge, label %bb.ak

.critedge:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %18 = fdiv float %.0.i10.i, %.0.i4.i86
  %.fr = freeze float %18                         ; 2 uses
  %i.de = insertelement <4 x float> poison, float %.0.i10.i, i64 0
  %i.df = insertelement <4 x float> %i.de, float %.fr, i64 1
  %19 = insertelement <4 x float> %i.df, float %.0.i4.i, i64 2
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %21 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.0.i10.i85, i64 0
  %22 = insertelement <4 x float> %21, float %.0.i4.i86, i64 3
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %24 = fdiv <4 x float> %20, %23                 ; 4 uses
  store <4 x float> %24, ptr %6, align 16
  %i.dg = extractelement <4 x float> %24, i64 0
  %or.cond204 = fcmp uno float %i.dg, %.fr
  %25 = extractelement <4 x float> %24, i64 2
  %26 = fcmp uno float %25, 0.000000e+00
  %or.cond205 = select i1 %or.cond204, i1 true, i1 %26
  %27 = extractelement <4 x float> %24, i64 3
  %i.dh = fcmp uno float %27, 0.000000e+00
  %or.cond206 = select i1 %or.cond205, i1 true, i1 %i.dh
  br i1 %or.cond206, label %bb.ai, label %.critedge80

.critedge80:                                      ; preds = %.critedge
  %i.di = call noundef float @_ZN2v88internal8compiler10turboshaft9array_minIfLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.dj = call noundef float @_ZN2v88internal8compiler10turboshaft9array_maxIfLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %7, float noundef %i.di, float noundef %i.dj, i32 noundef %i.cv, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aj

bb.ai:                                            ; preds = %.critedge
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7125.0..sroa_idx, align 4
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8126.0..sroa_idx, align 8
  %.sroa.10128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10128.0..sroa_idx, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.dk = fcmp olt float %.0.i4.i, 0.000000e+00
  br i1 %i.dk, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cz, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dl = call noundef float @nextafterf(float noundef 0.000000e+00, float noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dm = fcmp oeq float %i.dl, -inf
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #25, !noalias !336 ; 3 uses
  store ptr %i.dn, ptr %4, align 8, !noalias !336
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !noalias !336
  store float -inf, ptr %i.dn, align 4, !noalias !336
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !noalias !336
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE3SetESt6vectorIfSaIfEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.cv, ptr noundef %3)
  %i.dr = load ptr, ptr %4, align 8, !noalias !336 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.dp, align 8, !noalias !336
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit

bb.ap:                                            ; preds = %bb.am
  %i.dw = fpext float %i.dl to double
  %i.dx = call noundef i1 @llvm.is.fpclass.f64(double %i.dw, /* (nzero) */ i32 32)
  br i1 %i.dx, label %bb.aq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i, !prof !39

bb.aq:                                            ; preds = %bb.ap
  %i.dy = or disjoint i32 %i.by, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i: ; preds = %bb.ap, %bb.aq
  %.015.i.i = phi float [ 0.000000e+00, %bb.aq ], [ %i.dl, %bb.ap ]
  %.0.i4.i.i = phi i32 [ %i.dy, %bb.aq ], [ %i.cv, %bb.ap ]
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !337
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.dz, align 4, !alias.scope !337
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float -inf, ptr %i.ea, align 8, !alias.scope !337
  %.sroa_idx6.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %.015.i.i, ptr %.sroa_idx6.i.i95, align 4, !alias.scope !337
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.eb, align 8, !alias.scope !337
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit: ; preds = %bb.an, %bb.ao, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ay

bb.ar:                                            ; preds = %bb.al
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7117.0..sroa_idx, align 4
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float 0.000000e+00, float +inf>, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.10120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10120.0..sroa_idx, align 8
  br label %bb.ay

bb.as:                                            ; preds = %bb.ak
  %i.ec = fcmp ult float %.0.i10.i, 0.000000e+00
  br i1 %i.ec, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = load i32, ptr %i.d, align 4
  %i.ee = and i32 %i.ed, 2
  %.not199 = icmp eq i32 %i.ee, 0
  br i1 %.not199, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.cz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float 0.000000e+00, float +inf>, ptr %.sroa.8110.0..sroa_idx, align 8
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10112.0..sroa_idx, align 8
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ef = call noundef float @nextafterf(float noundef 0.000000e+00, float noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %9, float noundef -inf, float noundef %i.ef, i32 noundef %i.cv, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at, %bb.as, %bb.af
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cv, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ax, %bb.aw, %bb.av, %bb.ar, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit, %bb.aj, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4              ; 6 uses
  %i.b = load float, ptr %2, align 4              ; 4 uses
  %i.c = tail call float @llvm.fabs.f32(float %i.a)
  %i.d = fcmp ueq float %i.c, +inf
  %i.e = tail call float @llvm.fabs.f32(float %i.b)
  %i.f = fcmp ueq float %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !48

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = fpext float %i.b to double
  %i.h = tail call noundef i1 @llvm.is.fpclass.f64(double %i.g, /* (nzero) */ i32 32)
  br i1 %i.h, label %bb.b, label %bb.d, !prof !39

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq float %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt float %i.a, 0.000000e+00
  %i.j = select i1 %i.i, float -inf, float +inf
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.k = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.g, !prof !39

bb.e:                                             ; preds = %bb.d
  %or.cond15.i.i.i = fcmp ueq float %i.a, 0.000000e+00
  br i1 %or.cond15.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = fcmp ogt float %i.a, 0.000000e+00
  %i.m = select i1 %i.l, float +inf, float -inf
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.g:                                             ; preds = %bb.d
  %i.n = fdiv float %i.a, %i.b
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi float [ %i.n, %bb.g ], [ +qnan, %bb.a ], [ %i.j, %bb.c ], [ +qnan, %bb.b ], [ %i.m, %bb.f ], [ +qnan, %bb.e ]
  ret float %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE:bb.a
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
  %i.bp = load double, ptr %i.bo, align 8         ; 2 uses
  %i.bq = fcmp olt double %i.bb, 0.000000e+00
  %.sroa.speculated5.i.i90 = select i1 %i.bq, double %i.bb, double -0.000000e+00
  %i.br = fcmp ogt double %i.bp, 0.000000e+00
  %.sroa.speculated5.i5.i91 = select i1 %i.br, double %i.bp, double -0.000000e+00
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
  %.0.i9.i85 = phi double [ %..i.i93, %bb.q ], [ %i.bb, %.thread.i92 ], [ %.sroa.speculated5.i.i90, %bb.r ], [ %.sroa.speculated.i.i83, %bb.s ], [ %i.bj, %.thread17.i89 ] ; 8 uses
  %.0.i4.i86 = phi double [ %..i.i93, %bb.q ], [ %i.bd, %.thread.i92 ], [ %.sroa.speculated5.i5.i91, %bb.r ], [ %.sroa.speculated.i3.i84, %bb.s ], [ %i.bn, %.thread17.i89 ] ; 7 uses
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
  %i.dm = insertelement <2 x double> poison, double %.0.i4.i86, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %.0.i9.i85, i64 1
  %i.do = fdiv <2 x double> %i.dl, %i.dn
  %.fr182 = freeze <2 x double> %i.do             ; 2 uses
  %i.dp = extractelement <2 x double> %.fr182, i64 1 ; 2 uses
  store double %i.dp, ptr %6, align 8
  %i.dq = extractelement <2 x double> %.fr182, i64 0 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.dq, ptr %i.dr, align 8
  %i.ds = insertelement <2 x double> poison, double %.0.i4.i, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %.0.i9.i85, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %.0.i4.i86, i64 1
  %i.dw = fdiv <2 x double> %i.dt, %i.dv          ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.dw, ptr %i.dx, align 8
  %or.cond179 = fcmp uno double %i.dp, %i.dq
  %10 = extractelement <2 x double> %i.dw, i64 0
  %i.dy = fcmp uno double %10, 0.000000e+00
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %i.dy
  %11 = extractelement <2 x double> %i.dw, i64 1
  %i.dz = fcmp uno double %11, 0.000000e+00
  %or.cond181 = select i1 %or.cond180, i1 true, i1 %i.dz
  br i1 %or.cond181, label %bb.ai, label %.critedge80

.critedge80:                                      ; preds = %.critedge
  %i.ea = call noundef double @_ZN2v88internal8compiler10turboshaft9array_minIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.eb = call noundef double @_ZN2v88internal8compiler10turboshaft9array_maxIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %7, double noundef %i.ea, double noundef %i.eb, i32 noundef %i.db, ptr noundef %3)
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
  %i.ec = fcmp olt double %.0.i4.i, 0.000000e+00
  br i1 %i.ec, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  br i1 %i.df, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ed = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ee = fcmp oeq double %i.ed, -inf
  br i1 %i.ee, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ef = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !422 ; 3 uses
  store ptr %i.ef, ptr %4, align 8, !noalias !422
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !noalias !422
  store double -inf, ptr %i.ef, align 8, !noalias !422
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.eg, ptr %i.ei, align 8, !noalias !422
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE3SetESt6vectorIdSaIdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.db, ptr noundef %3)
  %i.ej = load ptr, ptr %4, align 8, !noalias !422 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = load ptr, ptr %i.eh, align 8, !noalias !422
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.ap:                                            ; preds = %bb.am
  %i.eo = call noundef i1 @llvm.is.fpclass.f64(double %i.ed, /* (nzero) */ i32 32)
  br i1 %i.eo, label %bb.aq, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !39

bb.aq:                                            ; preds = %bb.ap
  %i.ep = or disjoint i32 %i.cg, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.ap, %bb.aq
  %.014.i.i = phi double [ 0.000000e+00, %bb.aq ], [ %i.ed, %bb.ap ]
  %.0.i4.i.i = phi i32 [ %i.ep, %bb.aq ], [ %i.db, %bb.ap ]
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !423
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.eq, align 4, !alias.scope !423
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double -inf, ptr %i.er, align 8, !alias.scope !423
  %.sroa.4.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %.014.i.i, ptr %.sroa.4.0..sroa_idx.i.i95, align 8, !alias.scope !423
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
  %i.es = fcmp ult double %.0.i9.i, 0.000000e+00
  br i1 %i.es, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = load i32, ptr %i.d, align 4
  %i.eu = and i32 %i.et, 2
  %.not174 = icmp eq i32 %i.eu, 0
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
  %i.ev = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef -inf, double noundef %i.ev, i32 noundef %i.db, ptr noundef %3)
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
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 6 uses
  %i.b = load double, ptr %2, align 8             ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %i.d = fcmp ueq double %i.c, +inf
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !48

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = tail call noundef i1 @llvm.is.fpclass.f64(double %i.b, /* (nzero) */ i32 32)
  br i1 %i.g, label %bb.b, label %bb.d, !prof !39

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ogt double %i.a, 0.000000e+00
  %i.i = select i1 %i.h, double -inf, double +inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.j = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.g, !prof !39

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

end_hunk_1
