Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots18congestion_control20draw_congestion_plotNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEB6_:bb.a
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !21603, !range !7296, !alias.scope !21394, !noundef !3744
  %.not.i.i.i.i.i = icmp eq i64 %i.gj, -2, !dbg !21603
  br i1 %.not.i.i.i.i.i, label %bb.cu, label %bb.co, !dbg !21603

bb.co:                                            ; preds = %bb.cn
    #dbg_value(ptr %i.gi, !7298, !DIExpression(), !20549)
    #dbg_value(ptr %i.gi, !7304, !DIExpression(), !20551)
    #dbg_value(ptr %i.gi, !7311, !DIExpression(), !20553)
    #dbg_value(ptr %i.gi, !7315, !DIExpression(), !20555)
    #dbg_value(ptr %i.gi, !7320, !DIExpression(), !20557)
  store i64 -1, ptr %i.gi, align 8, !dbg !21604, !alias.scope !21395
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aa, i64 2480, !dbg !21605 ; 5 uses
    #dbg_value(ptr %i.gk, !7327, !DIExpression(), !20565)
  invoke void @_RNvXs1_NtNtCsesm4W3jWBtC_8font_kit7loaders8freetypeNtB5_4FontNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gk)
          to label %bb.cr unwind label %bb.cp, !dbg !21606

bb.cp:                                            ; preds = %bb.co
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21396), !dbg !21606
    #dbg_value(ptr %i.gk, !7334, !DIExpression(), !20569)
  call void @llvm.experimental.noalias.scope.decl(metadata !21397), !dbg !21607
    #dbg_value(ptr %i.gk, !7341, !DIExpression(), !20573)
    #dbg_value(ptr %i.gk, !7344, !DIExpression(), !20575)
    #dbg_value(i64 1, !7352, !DIExpression(), !20577)
    #dbg_value(i8 1, !7358, !DIExpression(), !20577)
    #dbg_value(i64 1, !7360, !DIExpression(), !20579)
    #dbg_value(i8 1, !7365, !DIExpression(), !20579)
  %i.gm = load ptr, ptr %i.gk, align 8, !dbg !21608, !alias.scope !21398, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %i.gm, !7357, !DIExpression(), !20583)
    #dbg_value(ptr %i.gm, !7364, !DIExpression(), !20579)
  %i.gn = atomicrmw sub ptr %i.gm, i64 1 release, align 8, !dbg !21609, !noalias !21399
  %i.go = icmp eq i64 %i.gn, 1, !dbg !21610
  br i1 %i.go, label %bb.cq, label %.body42, !dbg !21610

bb.cq:                                            ; preds = %bb.cp
    #dbg_value(i8 2, !7373, !DIExpression(), !20585)
  fence acquire, !dbg !21611
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsesm4W3jWBtC_8font_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gk) #34
          to label %.body42 unwind label %bb.ct, !dbg !21612

bb.cr:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !21400), !dbg !21606
    #dbg_value(ptr %i.gk, !7334, !DIExpression(), !20589)
  call void @llvm.experimental.noalias.scope.decl(metadata !21401), !dbg !21613
    #dbg_value(ptr %i.gk, !7341, !DIExpression(), !20593)
    #dbg_value(ptr %i.gk, !7344, !DIExpression(), !20595)
    #dbg_value(i64 1, !7352, !DIExpression(), !20597)
    #dbg_value(i8 1, !7358, !DIExpression(), !20597)
    #dbg_value(i64 1, !7360, !DIExpression(), !20599)
    #dbg_value(i8 1, !7365, !DIExpression(), !20599)
  %i.gp = load ptr, ptr %i.gk, align 8, !dbg !21614, !alias.scope !21402, !nonnull !3744, !noundef !3744
    #dbg_value(ptr %i.gp, !7357, !DIExpression(), !20601)
    #dbg_value(ptr %i.gp, !7364, !DIExpression(), !20599)
  %i.gq = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !dbg !21615, !noalias !21403
  %i.gr = icmp eq i64 %i.gq, 1, !dbg !21616
  br i1 %i.gr, label %bb.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart6series16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2C_8ranged1d5types7numeric14RangedCoordf64NtB3l_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !21616

bb.cs:                                            ; preds = %bb.cr
    #dbg_value(i8 2, !7373, !DIExpression(), !20603)
  fence acquire, !dbg !21617
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsesm4W3jWBtC_8font_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gk) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart6series16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2C_8ranged1d5types7numeric14RangedCoordf64NtB3l_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.p, !dbg !21618

bb.ct:                                            ; preds = %bb.cq
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21606
  unreachable, !dbg !21606

bb.cu:                                            ; preds = %bb.cn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aa, i64 32, !dbg !21603
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs4bweDUTR8gt_8plotters5style4font3ttf9FontErrorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.gt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart6series16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2C_8ranged1d5types7numeric14RangedCoordf64NtB3l_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.p, !dbg !21603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart6series16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2C_8ranged1d5types7numeric14RangedCoordf64NtB3l_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.cr, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.cs, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !21576
  br label %bb.by, !dbg !21619

bb.cv:                                            ; preds = %.body35, %.body42, %.body
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21620
  unreachable, !dbg !21620

bb.cw:                                            ; preds = %.body
  resume { ptr, i32 } %.pn.pn, !dbg !21620
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0ECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21639 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
    #dbg_value(ptr poison, !21725, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21734)
    #dbg_value(ptr poison, !21725, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21734)
    #dbg_value(ptr poison, !21737, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21741)
    #dbg_value(ptr poison, !21737, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21741)
    #dbg_value(ptr poison, !21735, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21742)
    #dbg_value(ptr poison, !21735, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21742)
  %i.c = alloca [64 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !21725, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21747)
    #dbg_value(ptr poison, !21725, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21747)
    #dbg_value(ptr poison, !21737, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21748)
    #dbg_value(ptr poison, !21737, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21748)
    #dbg_value(ptr poison, !21735, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21749)
    #dbg_value(ptr poison, !21735, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21749)
    #dbg_value(i32 %1, !21698, !DIExpression(), !21750)
    #dbg_value(i32 %2, !21699, !DIExpression(), !21750)
    #dbg_declare(ptr %3, !21700, !DIExpression(), !21751)
    #dbg_declare(ptr %i.c, !21711, !DIExpression(), !21752)
    #dbg_declare(ptr %i.b, !21719, !DIExpression(), !21753)
    #dbg_declare(ptr %i.a, !21721, !DIExpression(), !21754)
    #dbg_value(double 2.000000e+00, !21755, !DIExpression(), !21759)
    #dbg_value(double 2.000000e+00, !21760, !DIExpression(), !21764)
    #dbg_value(i64 1, !21765, !DIExpression(), !21769)
    #dbg_value(i32 1, !21770, !DIExpression(), !21778)
    #dbg_value(i32 1, !21779, !DIExpression(), !21783)
    #dbg_value(i64 1, !21765, !DIExpression(), !21786)
    #dbg_value(i32 1, !21770, !DIExpression(), !21789)
    #dbg_value(i32 1, !21779, !DIExpression(), !21792)
  %i.d = sitofp i32 %1 to double, !dbg !21895     ; 5 uses
  %i.e = fdiv double %i.d, f0x3FF6A09E667F3BCD, !dbg !21895 ; 2 uses
    #dbg_value(double %i.e, !21701, !DIExpression(), !21793)
    #dbg_value(double %i.e, !21794, !DIExpression(), !21797)
    #dbg_value(double %i.e, !21798, !DIExpression(), !21801)
  %i.f = fneg double %i.e, !dbg !21896
    #dbg_value(double %i.f, !21802, !DIExpression(), !21805)
    #dbg_value(double %i.f, !21806, !DIExpression(), !21809)
  %i.g = tail call double @llvm.ceil.f64(double %i.f), !dbg !21897
  %i.h = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.g), !dbg !21896 ; 2 uses
    #dbg_value(i32 %i.h, !21702, !DIExpression(), !21810)
  %i.i = tail call double @llvm.floor.f64(double %i.e), !dbg !21898
  %i.j = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.i), !dbg !21899 ; 4 uses
    #dbg_value(i32 %i.j, !21703, !DIExpression(), !21810)
    #dbg_value(i32 %i.h, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21811)
    #dbg_value(i32 %i.j, !21704, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !21811)
    #dbg_value(ptr undef, !21735, !DIExpression(), !21749)
    #dbg_value(ptr undef, !21737, !DIExpression(), !21748)
    #dbg_value(ptr undef, !21725, !DIExpression(), !21747)
    #dbg_value(ptr undef, !21726, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !21812)
  %i.k = icmp slt i32 %i.h, %i.j, !dbg !21900
  br i1 %i.k, label %.lr.ph, label %.preheader, !dbg !21746

.lr.ph:                                           ; preds = %bb.a
  %i.l = sitofp i32 %2 to double
  %i.m = fadd double %i.d, -1.000000e+00
  %i.n = insertelement <2 x double> poison, double %i.l, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.d, i64 1 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o
  %i.q = load ptr, ptr %3, align 8, !nonnull !3744, !align !4908
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3744, !align !4908
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3744, !align !10455 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %bb.b, !dbg !21746

.preheader:                                       ; preds = %.backedge, %bb.a
  %.sroa.010.073 = add i32 %i.j, 1, !dbg !21901   ; 2 uses
  %i.w = icmp slt i32 %.sroa.010.073, %1, !dbg !21902
  br i1 %i.w, label %.lr.ph76, label %._crit_edge, !dbg !21903

.lr.ph76:                                         ; preds = %.preheader
  %i.x = sitofp i32 %2 to double                  ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %i.d, -1.000000e+00
  %i.aa = load ptr, ptr %3, align 8, !nonnull !3744, !align !4908 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3744, !align !4908 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3744, !align !10455 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  br label %bb.c, !dbg !21903

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.072 = phi i32 [ %i.h, %.lr.ph ], [ %i.ag, %.backedge ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072, !21738, !DIExpression(), !21813)
    #dbg_value(i32 %.sroa.0.072, !21766, !DIExpression(), !21769)
    #dbg_value(i32 %.sroa.0.072, !21771, !DIExpression(), !21778)
    #dbg_value(i32 %.sroa.0.072, !21780, !DIExpression(), !21783)
  %i.ag = add i32 %.sroa.0.072, 1, !dbg !21904    ; 2 uses
    #dbg_value(i32 %i.ag, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21811)
    #dbg_value(i32 %.sroa.0.072, !21705, !DIExpression(), !21815)
  %i.ah = sitofp i32 %.sroa.0.072 to double, !dbg !21905 ; 2 uses
  %i.ai = fmul nnan double %i.ah, %i.ah, !dbg !21905
    #dbg_value(double poison, !21756, !DIExpression(), !21817)
    #dbg_value(double poison, !21761, !DIExpression(), !21820)
    #dbg_value(double poison, !21706, !DIExpression(), !21821)
    #dbg_value(double poison, !21822, !DIExpression(), !21826)
    #dbg_value(double %i.m, !21707, !DIExpression(), !21827)
    #dbg_value(double %i.m, !21823, !DIExpression(), !21826)
    #dbg_value(double %i.ao, !21708, !DIExpression(), !21828)
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0, !dbg !21906
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !21906
  %i.al = fsub <2 x double> %i.p, %i.ak, !dbg !21906
    #dbg_value(double poison, !21756, !DIExpression(), !21830)
    #dbg_value(double poison, !21761, !DIExpression(), !21833)
  %i.am = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.al), !dbg !21907 ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0, !dbg !21908
  %i.ao = tail call nsz double @llvm.minimumnum.f64(double %i.an, double %i.m), !dbg !21908 ; 2 uses
    #dbg_value(double poison, !21709, !DIExpression(), !21834)
    #dbg_value(double poison, !21802, !DIExpression(), !21836)
    #dbg_value(double poison, !21806, !DIExpression(), !21839)
  %i.ap = extractelement <2 x double> %i.am, i64 1, !dbg !21909 ; 3 uses
  %i.aq = fcmp ogt double %i.ap, %i.ao, !dbg !21909
  br i1 %i.aq, label %bb.p, label %bb.q, !dbg !21909

._crit_edge:                                      ; preds = %bb.e, %.preheader
  store i8 -2, ptr %0, align 8, !dbg !21910
  br label %bb.d, !dbg !21911

bb.c:                                             ; preds = %.lr.ph76, %bb.e
  %.sroa.010.075 = phi i32 [ %.sroa.010.073, %.lr.ph76 ], [ %.sroa.010.0, %bb.e ] ; 4 uses
  %.sroa.010.0.in74 = phi i32 [ %i.j, %.lr.ph76 ], [ %.sroa.010.075, %bb.e ]
    #dbg_value(i32 %.sroa.010.075, !21766, !DIExpression(), !21786)
    #dbg_value(i32 %.sroa.010.075, !21771, !DIExpression(), !21789)
    #dbg_value(i32 %.sroa.010.075, !21780, !DIExpression(), !21792)
    #dbg_value(i32 %.sroa.010.075, !21712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !21840)
    #dbg_value(i32 %.sroa.010.075, !21713, !DIExpression(), !21841)
  %i.ar = sitofp i32 %.sroa.010.075 to double, !dbg !21912 ; 4 uses
    #dbg_value(double %i.ar, !21717, !DIExpression(), !21842)
  %i.as = fmul nnan double %i.ar, %i.ar, !dbg !21912
  %i.at = fsub double %i.y, %i.as, !dbg !21913
    #dbg_value(double %i.at, !21756, !DIExpression(), !21844)
    #dbg_value(double %i.at, !21761, !DIExpression(), !21847)
  %i.au = call double @llvm.sqrt.f64(double %i.at), !dbg !21914
    #dbg_value(double %i.au, !21714, !DIExpression(), !21848)
    #dbg_value(double %i.au, !21822, !DIExpression(), !21850)
    #dbg_value(double %i.z, !21715, !DIExpression(), !21851)
    #dbg_value(double %i.z, !21823, !DIExpression(), !21850)
  %i.av = call nsz double @llvm.minimumnum.f64(double %i.au, double %i.z), !dbg !21915 ; 3 uses
    #dbg_value(double %i.av, !21716, !DIExpression(), !21852)
  %i.aw = fcmp ogt double %i.av, %i.ar, !dbg !21916
  br i1 %i.aw, label %bb.f, label %bb.e, !dbg !21916

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, %bb.r, %._crit_edge
  ret void, !dbg !21917

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, %bb.c
  %.sroa.010.0 = add nsw i32 %.sroa.010.075, 1, !dbg !21901 ; 2 uses
    #dbg_value(i32 %.sroa.010.0, !21712, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21840)
    #dbg_value(ptr undef, !21735, !DIExpression(), !21742)
    #dbg_value(ptr undef, !21737, !DIExpression(), !21741)
    #dbg_value(ptr undef, !21725, !DIExpression(), !21734)
    #dbg_value(ptr undef, !21726, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !21853)
  %exitcond77.not = icmp eq i32 %.sroa.010.0, %1, !dbg !21902
  br i1 %exitcond77.not, label %._crit_edge, label %bb.c, !dbg !21903

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21918
  %i.ax = fadd double %i.ar, 1.000000e+00, !dbg !21919 ; 2 uses
    #dbg_value(ptr poison, !21855, !DIExpression(DW_OP_deref, DW_OP_deref), !21660)
    #dbg_value(ptr poison, !21861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21660)
    #dbg_value(ptr poison, !21862, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21660)
    #dbg_value(i32 %.sroa.010.075, !21859, !DIExpression(), !21660)
    #dbg_value(double %i.av, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21660)
    #dbg_value(double %i.ax, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21660)
  %i.ay = load ptr, ptr %i.aa, align 8, !dbg !21920, !noalias !21864, !nonnull !3744, !align !4908, !noundef !3744
  %i.az = load ptr, ptr %i.ac, align 8, !dbg !21921, !noalias !21864, !nonnull !3744, !align !4908, !noundef !3744
  %i.ba = load i32, ptr %i.ae, align 4, !dbg !21922, !noalias !21864, !noundef !3744
  %i.bb = load i32, ptr %i.af, align 4, !dbg !21922, !noalias !21864, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0, i32 noundef %.sroa.010.075, double noundef %i.av, double noundef %i.ax), !dbg !21923, !noalias !21865
    #dbg_value(ptr %i.b, !21866, !DIExpression(), !21870)
    #dbg_value(ptr %i.b, !21871, !DIExpression(), !21875)
  %i.bc = load i8, ptr %i.b, align 8, !dbg !21924, !range !10475, !noundef !3744
  %.not = icmp eq i8 %i.bc, -2, !dbg !21924
  br i1 %.not, label %bb.g, label %bb.h, !dbg !21925

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21753
  %i.bd = xor i32 %.sroa.010.0.in74, -1, !dbg !21926
    #dbg_value(ptr poison, !21855, !DIExpression(DW_OP_deref, DW_OP_deref), !21667)
    #dbg_value(ptr poison, !21861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21667)
    #dbg_value(ptr poison, !21862, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21667)
    #dbg_value(i32 %i.bd, !21859, !DIExpression(), !21667)
    #dbg_value(double %i.av, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21667)
    #dbg_value(double %i.ax, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21667)
  %i.be = load ptr, ptr %i.aa, align 8, !dbg !21927, !noalias !21876, !nonnull !3744, !align !4908, !noundef !3744
  %i.bf = load ptr, ptr %i.ac, align 8, !dbg !21928, !noalias !21876, !nonnull !3744, !align !4908, !noundef !3744
  %i.bg = load i32, ptr %i.ae, align 4, !dbg !21929, !noalias !21876, !noundef !3744
  %i.bh = load i32, ptr %i.af, align 4, !dbg !21929, !noalias !21876, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef 1, i32 noundef 0, i32 noundef %i.bd, double noundef %i.av, double noundef %i.ax)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.i, !dbg !21930

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !21931
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !21932

bb.i:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21672)
  %i.bj = load i8, ptr %i.b, align 8, !dbg !21933, !range !10475, !alias.scope !21878, !noundef !3744
  %i.bk = icmp eq i8 %i.bj, -2, !dbg !21933
  br i1 %i.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.j, !dbg !21933

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.o, !dbg !21933

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.g
    #dbg_value(ptr %i.a, !21866, !DIExpression(), !21881)
    #dbg_value(ptr %i.a, !21871, !DIExpression(), !21884)
  %i.bl = load i8, ptr %i.a, align 8, !dbg !21934, !range !10475, !noundef !3744
  %.not65 = icmp eq i8 %i.bl, -2, !dbg !21934
  br i1 %.not65, label %bb.m, label %bb.k, !dbg !21935

bb.k:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !21936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21937
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21676)
  %i.bm = load i8, ptr %i.b, align 8, !dbg !21938, !range !10475, !alias.scope !21885, !noundef !3744
  %i.bn = icmp eq i8 %i.bm, -2, !dbg !21938
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, label %bb.l, !dbg !21938

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !21938
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !21938

bb.m:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !21680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21937
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21682)
  %i.bo = load i8, ptr %i.b, align 8, !dbg !21939, !range !10475, !alias.scope !21886, !noundef !3744
  %i.bp = icmp eq i8 %i.bo, -2, !dbg !21939
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, label %bb.n, !dbg !21939

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !21939
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, !dbg !21939

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21940
  br label %bb.e, !dbg !21941

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69: ; preds = %bb.l, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21940
  br label %bb.d, !dbg !21942

bb.o:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21943
  unreachable, !dbg !21943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.bi, !dbg !21943

bb.p:                                             ; preds = %bb.b
  %i.br = tail call double @llvm.ceil.f64(double %i.ap), !dbg !21944 ; 2 uses
    #dbg_value(double %i.br, !21708, !DIExpression(), !21828)
  %i.bs = fcmp ult double %i.br, %i.d, !dbg !21945
  br i1 %i.bs, label %bb.q, label %.backedge, !dbg !21945

bb.q:                                             ; preds = %bb.p, %bb.b
  %.sroa.03.0 = phi double [ %i.br, %bb.p ], [ %i.ao, %bb.b ], !dbg !21827
    #dbg_value(double %.sroa.03.0, !21708, !DIExpression(), !21828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21946
    #dbg_value(ptr poison, !21855, !DIExpression(DW_OP_deref, DW_OP_deref), !21686)
    #dbg_value(ptr poison, !21861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21686)
    #dbg_value(ptr poison, !21862, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21686)
    #dbg_value(i32 %.sroa.0.072, !21859, !DIExpression(), !21686)
    #dbg_value(double poison, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21686)
    #dbg_value(double %.sroa.03.0, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21686)
  %i.bt = load ptr, ptr %i.q, align 8, !dbg !21947, !noalias !21889, !nonnull !3744, !align !4908, !noundef !3744
  %i.bu = load ptr, ptr %i.s, align 8, !dbg !21948, !noalias !21889, !nonnull !3744, !align !4908, !noundef !3744
  %i.bv = load i32, ptr %i.u, align 4, !dbg !21949, !noalias !21889, !noundef !3744
  %i.bw = load i32, ptr %i.v, align 4, !dbg !21949, !noalias !21889, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef 1, i32 noundef 0, i32 noundef %.sroa.0.072, double noundef %i.ap, double noundef %.sroa.03.0), !dbg !21950, !noalias !21890
    #dbg_value(ptr %i.c, !21866, !DIExpression(), !21892)
    #dbg_value(ptr %i.c, !21871, !DIExpression(), !21894)
  %i.bx = load i8, ptr %i.c, align 8, !dbg !21951, !range !10475, !noundef !3744
  %.not66 = icmp eq i8 %i.bx, -2, !dbg !21951
  br i1 %.not66, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71, label %bb.r, !dbg !21952

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71: ; preds = %bb.q
    #dbg_value(ptr %i.c, !10477, !DIExpression(), !21691)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21953
  br label %.backedge, !dbg !21954

.backedge:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71, %bb.p
    #dbg_value(i32 %i.ag, !21704, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21811)
    #dbg_value(ptr undef, !21735, !DIExpression(), !21749)
    #dbg_value(ptr undef, !21737, !DIExpression(), !21748)
    #dbg_value(ptr undef, !21725, !DIExpression(), !21747)
    #dbg_value(ptr undef, !21726, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !21812)
  %exitcond.not = icmp eq i32 %i.ag, %i.j, !dbg !21900
  br i1 %exitcond.not, label %.preheader, label %bb.b, !dbg !21746

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !21955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21953
  br label %bb.d, !dbg !21942
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0ECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21974 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
    #dbg_value(ptr poison, !22060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22069)
    #dbg_value(ptr poison, !22060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22069)
    #dbg_value(ptr poison, !22072, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22076)
    #dbg_value(ptr poison, !22072, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22076)
    #dbg_value(ptr poison, !22070, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22077)
    #dbg_value(ptr poison, !22070, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22077)
  %i.c = alloca [64 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !22060, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22082)
    #dbg_value(ptr poison, !22060, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22082)
    #dbg_value(ptr poison, !22072, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22083)
    #dbg_value(ptr poison, !22072, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22083)
    #dbg_value(ptr poison, !22070, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22084)
    #dbg_value(ptr poison, !22070, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22084)
    #dbg_value(i32 %1, !22033, !DIExpression(), !22085)
    #dbg_value(i32 %2, !22034, !DIExpression(), !22085)
    #dbg_declare(ptr %3, !22035, !DIExpression(), !22086)
    #dbg_declare(ptr %i.c, !22046, !DIExpression(), !22087)
    #dbg_declare(ptr %i.b, !22054, !DIExpression(), !22088)
    #dbg_declare(ptr %i.a, !22056, !DIExpression(), !22089)
    #dbg_value(double 2.000000e+00, !22090, !DIExpression(), !22094)
    #dbg_value(double 2.000000e+00, !22095, !DIExpression(), !22099)
    #dbg_value(i64 1, !22100, !DIExpression(), !22104)
    #dbg_value(i32 1, !22105, !DIExpression(), !22113)
    #dbg_value(i32 1, !22114, !DIExpression(), !22118)
    #dbg_value(i64 1, !22100, !DIExpression(), !22121)
    #dbg_value(i32 1, !22105, !DIExpression(), !22124)
    #dbg_value(i32 1, !22114, !DIExpression(), !22127)
  %i.d = sitofp i32 %1 to double, !dbg !22230     ; 5 uses
  %i.e = fdiv double %i.d, f0x3FF6A09E667F3BCD, !dbg !22230 ; 2 uses
    #dbg_value(double %i.e, !22036, !DIExpression(), !22128)
    #dbg_value(double %i.e, !22129, !DIExpression(), !22132)
    #dbg_value(double %i.e, !22133, !DIExpression(), !22136)
  %i.f = fneg double %i.e, !dbg !22231
    #dbg_value(double %i.f, !22137, !DIExpression(), !22140)
    #dbg_value(double %i.f, !22141, !DIExpression(), !22144)
  %i.g = tail call double @llvm.ceil.f64(double %i.f), !dbg !22232
  %i.h = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.g), !dbg !22231 ; 2 uses
    #dbg_value(i32 %i.h, !22037, !DIExpression(), !22145)
  %i.i = tail call double @llvm.floor.f64(double %i.e), !dbg !22233
  %i.j = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.i), !dbg !22234 ; 4 uses
    #dbg_value(i32 %i.j, !22038, !DIExpression(), !22145)
    #dbg_value(i32 %i.h, !22039, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22146)
    #dbg_value(i32 %i.j, !22039, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22146)
    #dbg_value(ptr undef, !22070, !DIExpression(), !22084)
    #dbg_value(ptr undef, !22072, !DIExpression(), !22083)
    #dbg_value(ptr undef, !22060, !DIExpression(), !22082)
    #dbg_value(ptr undef, !22061, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22147)
  %i.k = icmp slt i32 %i.h, %i.j, !dbg !22235
  br i1 %i.k, label %.lr.ph, label %.preheader, !dbg !22081

.lr.ph:                                           ; preds = %bb.a
  %i.l = sitofp i32 %2 to double
  %i.m = fadd double %i.d, -1.000000e+00
  %i.n = insertelement <2 x double> poison, double %i.l, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.d, i64 1 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o
  %i.q = load ptr, ptr %3, align 8, !nonnull !3744, !align !4908
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3744, !align !4908
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3744, !align !10455 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  br label %bb.b, !dbg !22081

.preheader:                                       ; preds = %.backedge, %bb.a
  %.sroa.010.073 = add i32 %i.j, 1, !dbg !22236   ; 2 uses
  %i.w = icmp slt i32 %.sroa.010.073, %1, !dbg !22237
  br i1 %i.w, label %.lr.ph76, label %._crit_edge, !dbg !22238

.lr.ph76:                                         ; preds = %.preheader
  %i.x = sitofp i32 %2 to double                  ; 2 uses
  %i.y = fmul double %i.x, %i.x
  %i.z = fadd double %i.d, -1.000000e+00
  %i.aa = load ptr, ptr %3, align 8, !nonnull !3744, !align !4908 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3744, !align !4908 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3744, !align !10455 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  br label %bb.c, !dbg !22238

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.0.072 = phi i32 [ %i.h, %.lr.ph ], [ %i.ag, %.backedge ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072, !22073, !DIExpression(), !22148)
    #dbg_value(i32 %.sroa.0.072, !22101, !DIExpression(), !22104)
    #dbg_value(i32 %.sroa.0.072, !22106, !DIExpression(), !22113)
    #dbg_value(i32 %.sroa.0.072, !22115, !DIExpression(), !22118)
  %i.ag = add i32 %.sroa.0.072, 1, !dbg !22239    ; 2 uses
    #dbg_value(i32 %i.ag, !22039, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22146)
    #dbg_value(i32 %.sroa.0.072, !22040, !DIExpression(), !22150)
  %i.ah = sitofp i32 %.sroa.0.072 to double, !dbg !22240 ; 2 uses
  %i.ai = fmul nnan double %i.ah, %i.ah, !dbg !22240
    #dbg_value(double poison, !22091, !DIExpression(), !22152)
    #dbg_value(double poison, !22096, !DIExpression(), !22155)
    #dbg_value(double poison, !22041, !DIExpression(), !22156)
    #dbg_value(double poison, !22157, !DIExpression(), !22161)
    #dbg_value(double %i.m, !22042, !DIExpression(), !22162)
    #dbg_value(double %i.m, !22158, !DIExpression(), !22161)
    #dbg_value(double %i.ao, !22043, !DIExpression(), !22163)
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0, !dbg !22241
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !22241
  %i.al = fsub <2 x double> %i.p, %i.ak, !dbg !22241
    #dbg_value(double poison, !22091, !DIExpression(), !22165)
    #dbg_value(double poison, !22096, !DIExpression(), !22168)
  %i.am = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.al), !dbg !22242 ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0, !dbg !22243
  %i.ao = tail call nsz double @llvm.minimumnum.f64(double %i.an, double %i.m), !dbg !22243 ; 2 uses
    #dbg_value(double poison, !22044, !DIExpression(), !22169)
    #dbg_value(double poison, !22137, !DIExpression(), !22171)
    #dbg_value(double poison, !22141, !DIExpression(), !22174)
  %i.ap = extractelement <2 x double> %i.am, i64 1, !dbg !22244 ; 3 uses
  %i.aq = fcmp ogt double %i.ap, %i.ao, !dbg !22244
  br i1 %i.aq, label %bb.p, label %bb.q, !dbg !22244

._crit_edge:                                      ; preds = %bb.e, %.preheader
  store i8 -2, ptr %0, align 8, !dbg !22245
  br label %bb.d, !dbg !22246

bb.c:                                             ; preds = %.lr.ph76, %bb.e
  %.sroa.010.075 = phi i32 [ %.sroa.010.073, %.lr.ph76 ], [ %.sroa.010.0, %bb.e ] ; 4 uses
  %.sroa.010.0.in74 = phi i32 [ %i.j, %.lr.ph76 ], [ %.sroa.010.075, %bb.e ]
    #dbg_value(i32 %.sroa.010.075, !22101, !DIExpression(), !22121)
    #dbg_value(i32 %.sroa.010.075, !22106, !DIExpression(), !22124)
    #dbg_value(i32 %.sroa.010.075, !22115, !DIExpression(), !22127)
    #dbg_value(i32 %.sroa.010.075, !22047, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !22175)
    #dbg_value(i32 %.sroa.010.075, !22048, !DIExpression(), !22176)
  %i.ar = sitofp i32 %.sroa.010.075 to double, !dbg !22247 ; 4 uses
    #dbg_value(double %i.ar, !22052, !DIExpression(), !22177)
  %i.as = fmul nnan double %i.ar, %i.ar, !dbg !22247
  %i.at = fsub double %i.y, %i.as, !dbg !22248
    #dbg_value(double %i.at, !22091, !DIExpression(), !22179)
    #dbg_value(double %i.at, !22096, !DIExpression(), !22182)
  %i.au = call double @llvm.sqrt.f64(double %i.at), !dbg !22249
    #dbg_value(double %i.au, !22049, !DIExpression(), !22183)
    #dbg_value(double %i.au, !22157, !DIExpression(), !22185)
    #dbg_value(double %i.z, !22050, !DIExpression(), !22186)
    #dbg_value(double %i.z, !22158, !DIExpression(), !22185)
  %i.av = call nsz double @llvm.minimumnum.f64(double %i.au, double %i.z), !dbg !22250 ; 3 uses
    #dbg_value(double %i.av, !22051, !DIExpression(), !22187)
  %i.aw = fcmp ogt double %i.av, %i.ar, !dbg !22251
  br i1 %i.aw, label %bb.f, label %bb.e, !dbg !22251

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, %bb.r, %._crit_edge
  ret void, !dbg !22252

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, %bb.c
  %.sroa.010.0 = add nsw i32 %.sroa.010.075, 1, !dbg !22236 ; 2 uses
    #dbg_value(i32 %.sroa.010.0, !22047, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22175)
    #dbg_value(ptr undef, !22070, !DIExpression(), !22077)
    #dbg_value(ptr undef, !22072, !DIExpression(), !22076)
    #dbg_value(ptr undef, !22060, !DIExpression(), !22069)
    #dbg_value(ptr undef, !22061, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22188)
  %exitcond77.not = icmp eq i32 %.sroa.010.0, %1, !dbg !22237
  br i1 %exitcond77.not, label %._crit_edge, label %bb.c, !dbg !22238

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22253
  %i.ax = fadd double %i.ar, 1.000000e+00, !dbg !22254 ; 2 uses
    #dbg_value(ptr poison, !22190, !DIExpression(DW_OP_deref, DW_OP_deref), !21995)
    #dbg_value(ptr poison, !22196, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21995)
    #dbg_value(ptr poison, !22197, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21995)
    #dbg_value(i32 %.sroa.010.075, !22194, !DIExpression(), !21995)
    #dbg_value(double %i.av, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21995)
    #dbg_value(double %i.ax, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21995)
  %i.ay = load ptr, ptr %i.aa, align 8, !dbg !22255, !noalias !22199, !nonnull !3744, !align !4908, !noundef !3744
  %i.az = load ptr, ptr %i.ac, align 8, !dbg !22256, !noalias !22199, !nonnull !3744, !align !4908, !noundef !3744
  %i.ba = load i32, ptr %i.ae, align 4, !dbg !22257, !noalias !22199, !noundef !3744
  %i.bb = load i32, ptr %i.af, align 4, !dbg !22257, !noalias !22199, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.010.075, double noundef %i.av, double noundef %i.ax), !dbg !22258, !noalias !22200
    #dbg_value(ptr %i.b, !22201, !DIExpression(), !22205)
    #dbg_value(ptr %i.b, !22206, !DIExpression(), !22210)
  %i.bc = load i8, ptr %i.b, align 8, !dbg !22259, !range !10475, !noundef !3744
  %.not = icmp eq i8 %i.bc, -2, !dbg !22259
  br i1 %.not, label %bb.g, label %bb.h, !dbg !22260

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22088
  %i.bd = xor i32 %.sroa.010.0.in74, -1, !dbg !22261
    #dbg_value(ptr poison, !22190, !DIExpression(DW_OP_deref, DW_OP_deref), !22002)
    #dbg_value(ptr poison, !22196, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !22002)
    #dbg_value(ptr poison, !22197, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !22002)
    #dbg_value(i32 %i.bd, !22194, !DIExpression(), !22002)
    #dbg_value(double %i.av, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22002)
    #dbg_value(double %i.ax, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22002)
  %i.be = load ptr, ptr %i.aa, align 8, !dbg !22262, !noalias !22211, !nonnull !3744, !align !4908, !noundef !3744
  %i.bf = load ptr, ptr %i.ac, align 8, !dbg !22263, !noalias !22211, !nonnull !3744, !align !4908, !noundef !3744
  %i.bg = load i32, ptr %i.ae, align 4, !dbg !22264, !noalias !22211, !noundef !3744
  %i.bh = load i32, ptr %i.af, align 4, !dbg !22264, !noalias !22211, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef -1, i32 noundef 0, i32 noundef %i.bd, double noundef %i.av, double noundef %i.ax)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.i, !dbg !22265

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !22266
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !22267

bb.i:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22007)
  %i.bj = load i8, ptr %i.b, align 8, !dbg !22268, !range !10475, !alias.scope !22213, !noundef !3744
  %i.bk = icmp eq i8 %i.bj, -2, !dbg !22268
  br i1 %i.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.j, !dbg !22268

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.o, !dbg !22268

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.g
    #dbg_value(ptr %i.a, !22201, !DIExpression(), !22216)
    #dbg_value(ptr %i.a, !22206, !DIExpression(), !22219)
  %i.bl = load i8, ptr %i.a, align 8, !dbg !22269, !range !10475, !noundef !3744
  %.not65 = icmp eq i8 %i.bl, -2, !dbg !22269
  br i1 %.not65, label %bb.m, label %bb.k, !dbg !22270

bb.k:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !22271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22272
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22011)
  %i.bm = load i8, ptr %i.b, align 8, !dbg !22273, !range !10475, !alias.scope !22220, !noundef !3744
  %i.bn = icmp eq i8 %i.bm, -2, !dbg !22273
  br i1 %i.bn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, label %bb.l, !dbg !22273

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !22273
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !22273

bb.m:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !22015)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22272
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22017)
  %i.bo = load i8, ptr %i.b, align 8, !dbg !22274, !range !10475, !alias.scope !22221, !noundef !3744
  %i.bp = icmp eq i8 %i.bo, -2, !dbg !22274
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, label %bb.n, !dbg !22274

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !22274
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, !dbg !22274

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22275
  br label %bb.e, !dbg !22276

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69: ; preds = %bb.l, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22275
  br label %bb.d, !dbg !22277

bb.o:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !22278
  unreachable, !dbg !22278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.bi, !dbg !22278

bb.p:                                             ; preds = %bb.b
  %i.br = tail call double @llvm.ceil.f64(double %i.ap), !dbg !22279 ; 2 uses
    #dbg_value(double %i.br, !22043, !DIExpression(), !22163)
  %i.bs = fcmp ult double %i.br, %i.d, !dbg !22280
  br i1 %i.bs, label %bb.q, label %.backedge, !dbg !22280

bb.q:                                             ; preds = %bb.p, %bb.b
  %.sroa.03.0 = phi double [ %i.br, %bb.p ], [ %i.ao, %bb.b ], !dbg !22162
    #dbg_value(double %.sroa.03.0, !22043, !DIExpression(), !22163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22281
    #dbg_value(ptr poison, !22190, !DIExpression(DW_OP_deref, DW_OP_deref), !22021)
    #dbg_value(ptr poison, !22196, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !22021)
    #dbg_value(ptr poison, !22197, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !22021)
    #dbg_value(i32 %.sroa.0.072, !22194, !DIExpression(), !22021)
    #dbg_value(double poison, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22021)
    #dbg_value(double %.sroa.03.0, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22021)
  %i.bt = load ptr, ptr %i.q, align 8, !dbg !22282, !noalias !22224, !nonnull !3744, !align !4908, !noundef !3744
  %i.bu = load ptr, ptr %i.s, align 8, !dbg !22283, !noalias !22224, !nonnull !3744, !align !4908, !noundef !3744
  %i.bv = load i32, ptr %i.u, align 4, !dbg !22284, !noalias !22224, !noundef !3744
  %i.bw = load i32, ptr %i.v, align 4, !dbg !22284, !noalias !22224, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.0.072, double noundef %i.ap, double noundef %.sroa.03.0), !dbg !22285, !noalias !22225
    #dbg_value(ptr %i.c, !22201, !DIExpression(), !22227)
    #dbg_value(ptr %i.c, !22206, !DIExpression(), !22229)
  %i.bx = load i8, ptr %i.c, align 8, !dbg !22286, !range !10475, !noundef !3744
  %.not66 = icmp eq i8 %i.bx, -2, !dbg !22286
  br i1 %.not66, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71, label %bb.r, !dbg !22287

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71: ; preds = %bb.q
    #dbg_value(ptr %i.c, !10477, !DIExpression(), !22026)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22288
  br label %.backedge, !dbg !22289

.backedge:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71, %bb.p
    #dbg_value(i32 %i.ag, !22039, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22146)
    #dbg_value(ptr undef, !22070, !DIExpression(), !22084)
    #dbg_value(ptr undef, !22072, !DIExpression(), !22083)
    #dbg_value(ptr undef, !22060, !DIExpression(), !22082)
    #dbg_value(ptr undef, !22061, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !22147)
  %exitcond.not = icmp eq i32 %i.ag, %i.j, !dbg !22235
  br i1 %exitcond.not, label %.preheader, label %bb.b, !dbg !22081

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !22290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22288
  br label %bb.d, !dbg !22277
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 -1, 2) %5, i32 noundef range(i32 -1, 2) %6, i32 noundef %7, double noundef %8, double noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22302 {
bb.a:
    #dbg_value(ptr poison, !22399, !DIExpression(), !22403)
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !22399, !DIExpression(), !22405)
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
end_hunk_0
begin_hunk_1_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i32 %i.dr, !37764, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36337)
    #dbg_value(i8 poison, !37764, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36337)
    #dbg_value(ptr undef, !37535, !DIExpression(), !36324)
    #dbg_value(ptr undef, !37526, !DIExpression(), !36323)
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i83.i.i, !dbg !38316

.lr.ph.i83.i.i:                                   ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i
  %.sroa.0.024.i84.i.i = phi i32 [ %i.fs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i ], [ %i.dp, %bb.n ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37624, !DIExpression(), !36339)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37630, !DIExpression(), !36341)
    #dbg_value(i64 1, !37627, !DIExpression(), !36339)
    #dbg_value(i32 1, !37628, !DIExpression(), !36342)
    #dbg_value(i32 1, !37631, !DIExpression(), !36341)
    #dbg_value(i32 poison, !37764, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36337)
    #dbg_value(i1 poison, !37764, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36337)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37765, !DIExpression(), !36343)
  %i.fh = sitofp i32 %.sroa.0.024.i84.i.i to double, !dbg !38317 ; 2 uses
  %i.fi = fmul nnan double %i.fh, %i.fh, !dbg !38317
  %i.fj = fsub double %i.dj, %i.fi, !dbg !38318
    #dbg_value(double %i.fj, !37773, !DIExpression(), !36345)
    #dbg_value(double %i.fj, !37775, !DIExpression(), !36347)
  %i.fk = tail call double @llvm.sqrt.f64(double %i.fj), !dbg !38319
    #dbg_value(double %i.fk, !37766, !DIExpression(), !36348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !38320, !noalias !37778
    #dbg_value(ptr poison, !37780, !DIExpression(DW_OP_deref, DW_OP_deref), !36352)
    #dbg_value(ptr poison, !37786, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36352)
    #dbg_value(ptr poison, !37787, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36352)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37784, !DIExpression(), !36352)
    #dbg_value(double %i.ds, !37785, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36352)
    #dbg_value(double %i.fk, !37785, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36352)
  %i.fl = load ptr, ptr %i.au, align 8, !dbg !38321, !noalias !37789, !nonnull !3744, !align !4908, !noundef !3744
  %i.fm = load ptr, ptr %i.as, align 8, !dbg !38322, !noalias !37789, !nonnull !3744, !align !4908, !noundef !3744
  %i.fn = load i32, ptr %i.at, align 4, !dbg !38323, !noalias !37789, !noundef !3744
  %i.fo = load i32, ptr %i.cz, align 4, !dbg !38323, !noalias !37789, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef align 8 dereferenceable(64) %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.0.024.i84.i.i, double noundef %i.ds, double noundef %i.fk)
          to label %.noexc90.i.i unwind label %.loopexit285.i.i, !dbg !38324, !noalias !37692

.noexc90.i.i:                                     ; preds = %.lr.ph.i83.i.i
    #dbg_value(ptr %i.o, !37790, !DIExpression(), !36358)
    #dbg_value(ptr %i.o, !37792, !DIExpression(), !36361)
  %i.fp = load i8, ptr %i.o, align 8, !dbg !38325, !range !10475, !noalias !37778, !noundef !3744
  %.not.i85.i.i = icmp eq i8 %i.fp, -2, !dbg !38325
  br i1 %.not.i85.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38326

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i, %bb.n
    #dbg_value(i32 poison, !37764, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36337)
    #dbg_value(i8 poison, !37764, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36337)
  store i8 -2, ptr %i.ao, align 8, !dbg !38327, !alias.scope !37772, !noalias !37794
    #dbg_value(ptr %i.ao, !37514, !DIExpression(), !36363)
    #dbg_value(ptr %i.ao, !37511, !DIExpression(), !36365)
  br label %bb.q, !dbg !38328

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i: ; preds = %.noexc90.i.i
  %i.fq = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i84.i.i, i32 1), !dbg !38329 ; 2 uses
  %i.fr = extractvalue { i32, i1 } %i.fq, 1, !dbg !38330
    #dbg_value(i1 %i.fr, !37764, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36337)
  %i.fs = extractvalue { i32, i1 } %i.fq, 0, !dbg !38330 ; 2 uses
    #dbg_value(i32 %i.fs, !37764, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36337)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38331, !noalias !37778
    #dbg_value(i8 poison, !37764, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36337)
    #dbg_value(ptr undef, !37535, !DIExpression(), !36324)
    #dbg_value(ptr undef, !37526, !DIExpression(), !36323)
  %.not.i.i87.i.i = icmp sgt i32 %i.fs, %i.dr
  %or.cond.i88.i.i = or i1 %i.fr, %.not.i.i87.i.i, !dbg !38316
  br i1 %or.cond.i88.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i83.i.i, !dbg !38316

bb.o:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false), !dbg !38332, !noalias !37700
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit234.i.i, !dbg !38333

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i: ; preds = %bb.bb, %.body.i.i, %.loopexit.split-lp286.i.i, %.loopexit285.i.i
  %.pn56.i.i = phi { ptr, i32 } [ %.pn54.i.i, %.body.i.i ], [ %.pn54.i.i, %bb.bb ], [ %lpad.loopexit287.i.i, %.loopexit285.i.i ], [ %lpad.loopexit.split-lp288.i.i, %.loopexit.split-lp286.i.i ] ; 2 uses
    #dbg_value(ptr %i.ap, !10477, !DIExpression(), !36368)
  %i.ft = load i8, ptr %i.ap, align 8, !dbg !38334, !range !10475, !alias.scope !37798, !noalias !37569, !noundef !3744
  %i.fu = icmp eq i8 %i.ft, -2, !dbg !38334
  br i1 %i.fu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i, label %bb.p, !dbg !38334

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i unwind label %bb.en, !dbg !38334, !noalias !37692

.loopexit285.i.i:                                 ; preds = %.lr.ph.i83.i.i
  %lpad.loopexit287.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i

.loopexit.split-lp286.i.i:                        ; preds = %bb.ey, %bb.ei
  %lpad.loopexit.split-lp288.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.noexc90.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !dbg !38335, !noalias !37794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38331, !noalias !37778
  %.pr265.i.i = load i8, ptr %i.ao, align 8, !dbg !38336, !noalias !37569
    #dbg_value(ptr %i.ao, !37514, !DIExpression(), !36363)
    #dbg_value(ptr %i.ao, !37511, !DIExpression(), !36365)
  %.not21.i.i = icmp eq i8 %.pr265.i.i, -2, !dbg !38336
  br i1 %.not21.i.i, label %bb.q, label %bb.r, !dbg !38328

bb.q:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  %i.fv = fcmp ogt double %i.di, 0.000000e+00, !dbg !38337
  br i1 %i.fv, label %bb.ai, label %.loopexit284.i.i, !dbg !38337

bb.r:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !38338, !noalias !37700
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit232.i.i, !dbg !38339

.loopexit284.i.i:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i, %bb.ai, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !38340, !noalias !37569
    #dbg_value(ptr %i.au, !37485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36371)
    #dbg_value(ptr %i.as, !37485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36371)
    #dbg_value(ptr %i.at, !37485, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36371)
  call void @llvm.experimental.noalias.scope.decl(metadata !37800), !dbg !38341
    #dbg_value(ptr poison, !37465, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36377)
    #dbg_value(ptr poison, !37465, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36377)
    #dbg_value(ptr poison, !37469, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36378)
    #dbg_value(ptr poison, !37469, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36378)
    #dbg_value(ptr poison, !37474, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36379)
    #dbg_value(ptr poison, !37474, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36379)
    #dbg_value(i32 %i.cy, !37483, !DIExpression(), !36380)
    #dbg_value(i32 %i.cx, !37484, !DIExpression(), !36380)
    #dbg_declare(ptr %i.n, !37496, !DIExpression(), !36381)
    #dbg_declare(ptr %i.m, !37504, !DIExpression(), !36382)
    #dbg_declare(ptr %i.l, !37506, !DIExpression(), !36383)
    #dbg_value(double 2.000000e+00, !37802, !DIExpression(), !36386)
    #dbg_value(double 2.000000e+00, !37805, !DIExpression(), !36389)
    #dbg_value(i64 1, !37808, !DIExpression(), !36392)
    #dbg_value(i32 1, !37811, !DIExpression(), !36397)
    #dbg_value(i32 1, !37818, !DIExpression(), !36400)
    #dbg_value(i64 1, !37808, !DIExpression(), !36402)
    #dbg_value(i32 1, !37811, !DIExpression(), !36404)
    #dbg_value(i32 1, !37818, !DIExpression(), !36406)
  %i.fw = sitofp i32 %i.cy to double, !dbg !38342 ; 9 uses
  %i.fx = fdiv double %i.fw, f0x3FF6A09E667F3BCD, !dbg !38342 ; 2 uses
    #dbg_value(double %i.fx, !37486, !DIExpression(), !36407)
    #dbg_value(double %i.fx, !37824, !DIExpression(), !36410)
    #dbg_value(double %i.fx, !37826, !DIExpression(), !36413)
  %i.fy = fneg double %i.fx, !dbg !38343
    #dbg_value(double %i.fy, !37828, !DIExpression(), !36416)
    #dbg_value(double %i.fy, !37830, !DIExpression(), !36419)
  %i.fz = call double @llvm.ceil.f64(double %i.fy), !dbg !38344
  %i.ga = call i32 @llvm.fptosi.sat.i32.f64(double %i.fz), !dbg !38343 ; 3 uses
    #dbg_value(i32 %i.ga, !37487, !DIExpression(), !36420)
  %i.gb = call double @llvm.floor.f64(double %i.fx), !dbg !38345
  %i.gc = call i32 @llvm.fptosi.sat.i32.f64(double %i.gb), !dbg !38346 ; 7 uses
    #dbg_value(i32 %i.gc, !37488, !DIExpression(), !36420)
    #dbg_value(i32 %i.ga, !37489, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36421)
    #dbg_value(i32 %i.gc, !37489, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36421)
    #dbg_value(ptr undef, !37474, !DIExpression(), !36379)
    #dbg_value(ptr undef, !37469, !DIExpression(), !36378)
    #dbg_value(ptr undef, !37465, !DIExpression(), !36377)
    #dbg_value(ptr undef, !37466, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36422)
  %i.gd = icmp slt i32 %i.ga, %i.gc, !dbg !38347  ; 2 uses
  br i1 %i.gd, label %.lr.ph.i96.i.i, label %.preheader.i.i.i, !dbg !38348

.lr.ph.i96.i.i:                                   ; preds = %.loopexit284.i.i
  %i.ge = sitofp i32 %i.cx to double
  %i.gf = fadd double %i.fw, -1.000000e+00
  %i.gg = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fw, i64 1 ; 2 uses
  %i.gi = fmul nnan <2 x double> %i.gh, %i.gh
  br label %bb.s, !dbg !38348

.preheader.i.i.i:                                 ; preds = %.backedge.i.i.i, %.loopexit284.i.i
  %.sroa.010.073.i.i.i = add i32 %i.gc, 1, !dbg !38349 ; 2 uses
  %i.gj = icmp slt i32 %.sroa.010.073.i.i.i, %i.cy, !dbg !38350
  br i1 %i.gj, label %.lr.ph76.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, !dbg !38351

.lr.ph76.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.gk = sitofp i32 %i.cx to double              ; 2 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = fadd double %i.fw, -1.000000e+00
  br label %bb.t, !dbg !38351

bb.s:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i96.i.i
  %.sroa.0.072.i.i.i = phi i32 [ %i.ga, %.lr.ph.i96.i.i ], [ %i.gn, %.backedge.i.i.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37470, !DIExpression(), !36423)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37809, !DIExpression(), !36392)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37812, !DIExpression(), !36397)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37819, !DIExpression(), !36400)
  %i.gn = add i32 %.sroa.0.072.i.i.i, 1, !dbg !38352 ; 2 uses
    #dbg_value(i32 %i.gn, !37489, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36421)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37490, !DIExpression(), !36426)
  %i.go = sitofp i32 %.sroa.0.072.i.i.i to double, !dbg !38353 ; 2 uses
  %i.gp = fmul nnan double %i.go, %i.go, !dbg !38353
    #dbg_value(double poison, !37803, !DIExpression(), !36428)
    #dbg_value(double poison, !37806, !DIExpression(), !36430)
    #dbg_value(double poison, !37491, !DIExpression(), !36431)
    #dbg_value(double poison, !37833, !DIExpression(), !36434)
    #dbg_value(double %i.gf, !37492, !DIExpression(), !36435)
    #dbg_value(double %i.gf, !37834, !DIExpression(), !36434)
    #dbg_value(double %i.gv, !37493, !DIExpression(), !36436)
  %i.gq = insertelement <2 x double> poison, double %i.gp, i64 0, !dbg !38354
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !38354
  %i.gs = fsub <2 x double> %i.gi, %i.gr, !dbg !38354
    #dbg_value(double poison, !37803, !DIExpression(), !36438)
    #dbg_value(double poison, !37806, !DIExpression(), !36440)
  %i.gt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gs), !dbg !38355 ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0, !dbg !38356
  %i.gv = call nsz double @llvm.minimumnum.f64(double %i.gu, double %i.gf), !dbg !38356 ; 2 uses
    #dbg_value(double poison, !37494, !DIExpression(), !36441)
    #dbg_value(double poison, !37828, !DIExpression(), !36443)
    #dbg_value(double poison, !37830, !DIExpression(), !36445)
  %i.gw = extractelement <2 x double> %i.gt, i64 1, !dbg !38357 ; 3 uses
  %i.gx = fcmp ogt double %i.gw, %i.gv, !dbg !38357
  br i1 %i.gx, label %bb.af, label %bb.ag, !dbg !38357

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %bb.u, %.preheader.i.i.i
  store i8 -2, ptr %i.an, align 8, !dbg !38358, !alias.scope !37800, !noalias !37838
    #dbg_value(ptr %i.an, !37514, !DIExpression(), !36448)
    #dbg_value(ptr %i.an, !37511, !DIExpression(), !36450)
  br label %bb.bd, !dbg !38359

bb.t:                                             ; preds = %bb.u, %.lr.ph76.i.i.i
  %.sroa.010.075.i.i.i = phi i32 [ %.sroa.010.073.i.i.i, %.lr.ph76.i.i.i ], [ %.sroa.010.0.i.i.i, %bb.u ] ; 4 uses
  %.sroa.010.0.in74.i.i.i = phi i32 [ %i.gc, %.lr.ph76.i.i.i ], [ %.sroa.010.075.i.i.i, %bb.u ]
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37809, !DIExpression(), !36402)
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37812, !DIExpression(), !36404)
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37819, !DIExpression(), !36406)
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37497, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !36451)
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37498, !DIExpression(), !36452)
  %i.gy = sitofp i32 %.sroa.010.075.i.i.i to double, !dbg !38360 ; 4 uses
    #dbg_value(double %i.gy, !37502, !DIExpression(), !36453)
  %i.gz = fmul nnan double %i.gy, %i.gy, !dbg !38360
  %i.ha = fsub double %i.gl, %i.gz, !dbg !38361
    #dbg_value(double %i.ha, !37803, !DIExpression(), !36455)
    #dbg_value(double %i.ha, !37806, !DIExpression(), !36457)
  %i.hb = call double @llvm.sqrt.f64(double %i.ha), !dbg !38362
    #dbg_value(double %i.hb, !37499, !DIExpression(), !36458)
    #dbg_value(double %i.hb, !37833, !DIExpression(), !36460)
    #dbg_value(double %i.gm, !37500, !DIExpression(), !36461)
    #dbg_value(double %i.gm, !37834, !DIExpression(), !36460)
  %i.hc = call nsz double @llvm.minimumnum.f64(double %i.hb, double %i.gm), !dbg !38363 ; 3 uses
    #dbg_value(double %i.hc, !37501, !DIExpression(), !36462)
  %i.hd = fcmp ogt double %i.hc, %i.gy, !dbg !38364
  br i1 %i.hd, label %bb.v, label %bb.u, !dbg !38364

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i, %bb.t
  %.sroa.010.0.i.i.i = add nsw i32 %.sroa.010.075.i.i.i, 1, !dbg !38349 ; 2 uses
    #dbg_value(i32 %.sroa.010.0.i.i.i, !37497, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36451)
    #dbg_value(ptr undef, !37474, !DIExpression(), !35951)
    #dbg_value(ptr undef, !37469, !DIExpression(), !35950)
    #dbg_value(ptr undef, !37465, !DIExpression(), !35949)
    #dbg_value(ptr undef, !37466, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36463)
  %exitcond77.not.i.i.i = icmp eq i32 %.sroa.010.0.i.i.i, %i.cy, !dbg !38350
  br i1 %exitcond77.not.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %bb.t, !dbg !38351

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !38365, !noalias !37842
  %i.he = fadd double %i.gy, 1.000000e+00, !dbg !38366 ; 2 uses
    #dbg_value(ptr poison, !37844, !DIExpression(DW_OP_deref, DW_OP_deref), !36466)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36466)
    #dbg_value(ptr poison, !37851, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36466)
    #dbg_value(i32 %.sroa.010.075.i.i.i, !37848, !DIExpression(), !36466)
    #dbg_value(double %i.hc, !37849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36466)
    #dbg_value(double %i.he, !37849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36466)
  %i.hf = load ptr, ptr %i.au, align 8, !dbg !38367, !noalias !37853, !nonnull !3744, !align !4908, !noundef !3744
  %i.hg = load ptr, ptr %i.as, align 8, !dbg !38368, !noalias !37853, !nonnull !3744, !align !4908, !noundef !3744
  %i.hh = load i32, ptr %i.at, align 4, !dbg !38369, !noalias !37853, !noundef !3744
  %i.hi = load i32, ptr %i.cz, align 4, !dbg !38369, !noalias !37853, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef align 8 dereferenceable(64) %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hg, i32 noundef %i.hh, i32 noundef %i.hi, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.010.075.i.i.i, double noundef %i.hc, double noundef %i.he)
          to label %.noexc97.i.i unwind label %.loopexit275.i.i, !dbg !38370, !noalias !37692

.noexc97.i.i:                                     ; preds = %bb.v
    #dbg_value(ptr %i.m, !37854, !DIExpression(), !36472)
    #dbg_value(ptr %i.m, !37857, !DIExpression(), !36475)
  %i.hj = load i8, ptr %i.m, align 8, !dbg !38371, !range !10475, !noalias !37842, !noundef !3744
  %.not.i94.i.i = icmp eq i8 %i.hj, -2, !dbg !38371
  br i1 %.not.i94.i.i, label %bb.w, label %bb.x, !dbg !38372

bb.w:                                             ; preds = %.noexc97.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38373, !noalias !37842
  %i.hk = xor i32 %.sroa.010.0.in74.i.i.i, -1, !dbg !38374
    #dbg_value(ptr poison, !37844, !DIExpression(DW_OP_deref, DW_OP_deref), !36477)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36477)
    #dbg_value(ptr poison, !37851, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36477)
    #dbg_value(i32 %i.hk, !37848, !DIExpression(), !36477)
    #dbg_value(double %i.hc, !37849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36477)
    #dbg_value(double %i.he, !37849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36477)
  %i.hl = load ptr, ptr %i.au, align 8, !dbg !38375, !noalias !37860, !nonnull !3744, !align !4908, !noundef !3744
  %i.hm = load ptr, ptr %i.as, align 8, !dbg !38376, !noalias !37860, !nonnull !3744, !align !4908, !noundef !3744
  %i.hn = load i32, ptr %i.at, align 4, !dbg !38377, !noalias !37860, !noundef !3744
  %i.ho = load i32, ptr %i.cz, align 4, !dbg !38377, !noalias !37860, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef align 8 dereferenceable(64) %i.hl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm, i32 noundef %i.hn, i32 noundef %i.ho, i32 noundef 0, i32 noundef 1, i32 noundef %i.hk, double noundef %i.hc, double noundef %i.he)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.y, !dbg !38378, !noalias !37861

bb.x:                                             ; preds = %.noexc97.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !dbg !38379, !noalias !37838
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i, !dbg !38380

bb.y:                                             ; preds = %bb.w
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36482)
  %i.hq = load i8, ptr %i.m, align 8, !dbg !38381, !range !10475, !alias.scope !37863, !noalias !37842, !noundef !3744
  %i.hr = icmp eq i8 %i.hq, -2, !dbg !38381
  br i1 %i.hr, label %.body.i.i, label %bb.z, !dbg !38381

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body.i.i unwind label %bb.ae, !dbg !38381, !noalias !37861

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.w
    #dbg_value(ptr %i.l, !37854, !DIExpression(), !36486)
    #dbg_value(ptr %i.l, !37857, !DIExpression(), !36488)
  %i.hs = load i8, ptr %i.l, align 8, !dbg !38382, !range !10475, !noalias !37842, !noundef !3744
  %.not65.i.i.i = icmp eq i8 %i.hs, -2, !dbg !38382
  br i1 %.not65.i.i.i, label %bb.ac, label %bb.aa, !dbg !38383

bb.aa:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !38384, !noalias !37838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !38385, !noalias !37842
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36490)
  %i.ht = load i8, ptr %i.m, align 8, !dbg !38386, !range !10475, !alias.scope !37866, !noalias !37842, !noundef !3744
  %i.hu = icmp eq i8 %i.ht, -2, !dbg !38386
  br i1 %i.hu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i, label %bb.ab, !dbg !38386

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38386, !noalias !37692

bb.ac:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
    #dbg_value(ptr %i.l, !10477, !DIExpression(), !36494)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !38385, !noalias !37842
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36496)
  %i.hv = load i8, ptr %i.m, align 8, !dbg !38387, !range !10475, !alias.scope !37867, !noalias !37842, !noundef !3744
  %i.hw = icmp eq i8 %i.hv, -2, !dbg !38387
  br i1 %i.hw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i, label %bb.ad, !dbg !38387

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i unwind label %.loopexit275.i.i, !dbg !38387, !noalias !37692

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !38388, !noalias !37842
  br label %bb.u, !dbg !38389

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !38388, !noalias !37842
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38390

bb.ae:                                            ; preds = %bb.z
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38391, !noalias !37861
  unreachable, !dbg !38391

bb.af:                                            ; preds = %bb.s
  %i.hy = call double @llvm.ceil.f64(double %i.gw), !dbg !38392 ; 2 uses
    #dbg_value(double %i.hy, !37493, !DIExpression(), !36436)
  %i.hz = fcmp ult double %i.hy, %i.fw, !dbg !38393
  br i1 %i.hz, label %bb.ag, label %.backedge.i.i.i, !dbg !38393

bb.ag:                                            ; preds = %bb.af, %bb.s
  %.sroa.03.0.i.i.i = phi double [ %i.hy, %bb.af ], [ %i.gv, %bb.s ], !dbg !38394
    #dbg_value(double %.sroa.03.0.i.i.i, !37493, !DIExpression(), !36436)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !38395, !noalias !37842
    #dbg_value(ptr poison, !37844, !DIExpression(DW_OP_deref, DW_OP_deref), !36500)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36500)
    #dbg_value(ptr poison, !37851, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36500)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37848, !DIExpression(), !36500)
    #dbg_value(double poison, !37849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36500)
    #dbg_value(double %.sroa.03.0.i.i.i, !37849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36500)
  %i.ia = load ptr, ptr %i.au, align 8, !dbg !38396, !noalias !37870, !nonnull !3744, !align !4908, !noundef !3744
  %i.ib = load ptr, ptr %i.as, align 8, !dbg !38397, !noalias !37870, !nonnull !3744, !align !4908, !noundef !3744
  %i.ic = load i32, ptr %i.at, align 4, !dbg !38398, !noalias !37870, !noundef !3744
  %i.id = load i32, ptr %i.cz, align 4, !dbg !38398, !noalias !37870, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ia, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ib, i32 noundef %i.ic, i32 noundef %i.id, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.0.072.i.i.i, double noundef %i.gw, double noundef %.sroa.03.0.i.i.i)
          to label %.noexc100.i.i unwind label %.loopexit.split-lp276.loopexit.i.i, !dbg !38399, !noalias !37692

.noexc100.i.i:                                    ; preds = %bb.ag
    #dbg_value(ptr %i.n, !37854, !DIExpression(), !36505)
    #dbg_value(ptr %i.n, !37857, !DIExpression(), !36507)
  %i.ie = load i8, ptr %i.n, align 8, !dbg !38400, !range !10475, !noalias !37842, !noundef !3744
  %.not66.i.i.i = icmp eq i8 %i.ie, -2, !dbg !38400
  br i1 %.not66.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i, label %bb.ah, !dbg !38401

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i: ; preds = %.noexc100.i.i
    #dbg_value(ptr %i.n, !10477, !DIExpression(), !36509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !38402, !noalias !37842
  br label %.backedge.i.i.i, !dbg !38403

.backedge.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i, %bb.af
    #dbg_value(i32 %i.gn, !37489, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36421)
    #dbg_value(ptr undef, !37474, !DIExpression(), !36379)
    #dbg_value(ptr undef, !37469, !DIExpression(), !36378)
    #dbg_value(ptr undef, !37465, !DIExpression(), !36377)
    #dbg_value(ptr undef, !37466, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36422)
  %exitcond.not.i.i.i = icmp eq i32 %i.gn, %i.gc, !dbg !38347
  br i1 %exitcond.not.i.i.i, label %.preheader.i.i.i, label %bb.s, !dbg !38348

bb.ah:                                            ; preds = %.noexc100.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !38404, !noalias !37838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !38402, !noalias !37842
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38390

bb.ai:                                            ; preds = %bb.q
  %i.if = tail call double @llvm.floor.f64(double %i.di), !dbg !38405
    #dbg_value(ptr %i.au, !37871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36517)
    #dbg_value(ptr %i.at, !37871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36517)
    #dbg_value(ptr %i.as, !37871, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36517)
    #dbg_declare(ptr %.sroa.10.i.i.i, !37884, !DIExpression(DW_OP_LLVM_fragment, 8, 504), !36518)
    #dbg_value(ptr poison, !10477, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36520)
    #dbg_value(ptr %.sroa.10.i.i.i, !10477, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36520)
end_hunk_1
begin_hunk_2_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(ptr %i.i, !10477, !DIExpression(), !36635)
  %i.li = icmp eq i8 %.pre38.i.i.i.i, -2, !dbg !38489
  br i1 %i.li, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i, label %bb.aw, !dbg !38489

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit29.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i unwind label %.loopexit.i.i.i, !dbg !38489, !noalias !37928

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i: ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit29.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !38490, !noalias !37915
    #dbg_value(ptr %i.k, !10477, !DIExpression(), !36637)
  %i.lj = load i8, ptr %i.k, align 8, !dbg !38491, !range !10475, !alias.scope !37950, !noalias !37915, !noundef !3744
  %i.lk = icmp eq i8 %i.lj, -2, !dbg !38491
  br i1 %i.lk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i, label %bb.ax, !dbg !38491

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i, !dbg !38491, !noalias !37692

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i: ; preds = %bb.av
    #dbg_value(i8 %i.lh, !37884, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36582)
  %.sroa.10.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !38492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.0..sroa_idx28.i.i.i, i64 63, i1 false), !dbg !38492, !noalias !37925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !38488, !noalias !37915
    #dbg_value(ptr %i.g, !10477, !DIExpression(), !36641)
  %.pre.i.i.i.i = load i8, ptr %i.i, align 8, !dbg !38470, !range !10475, !alias.scope !37951, !noalias !37915
  %i.ll = icmp eq i8 %.pre.i.i.i.i, -2, !dbg !38470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38469, !noalias !37915
    #dbg_value(ptr %i.i, !10477, !DIExpression(), !36614)
  br i1 %i.ll, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i, label %bb.ay, !dbg !38470

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !dbg !38470, !noalias !37928

bb.az:                                            ; preds = %bb.ap, %bb.al
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38493, !noalias !37928
  unreachable, !dbg !38493

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i: ; preds = %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.thread.i.i.i.i, %bb.ao
  %.sroa.0.0.i.i.i = phi i8 [ %i.lh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i ], [ %i.lh, %bb.ay ], [ %i.kr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.thread.i.i.i.i ], [ %i.jx, %bb.ao ], !dbg !38449 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i.i.i, !37884, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36582)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !38490, !noalias !37915
    #dbg_value(ptr %i.k, !10477, !DIExpression(), !36645)
  %i.ln = load i8, ptr %i.k, align 8, !dbg !38494, !range !10475, !alias.scope !37952, !noalias !37915, !noundef !3744
  %i.lo = icmp eq i8 %i.ln, -2, !dbg !38494
  br i1 %i.lo, label %bb.bc, label %bb.ba, !dbg !38494

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.bc unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38494, !noalias !37692

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i: ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i
    #dbg_value(i8 -2, !37884, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36582)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38495, !noalias !37915
    #dbg_value(ptr undef, !10477, !DIExpression(), !36520)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i), !dbg !38496
    #dbg_value(i32 %i.iq, !37881, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36538)
    #dbg_value(i8 poison, !37881, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36538)
    #dbg_value(ptr undef, !37535, !DIExpression(), !36525)
    #dbg_value(ptr undef, !37526, !DIExpression(), !36524)
  %.not.i.i103.i.i = icmp sgt i32 %i.iq, %i.ik
  %or.cond.i104.i.i = or i1 %i.ir, %.not.i.i103.i.i, !dbg !38410
  br i1 %or.cond.i104.i.i, label %.loopexit284.i.i, label %bb.aj, !dbg !38410

.body.i.i:                                        ; preds = %bb.bv, %.body138.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp276.loopexit.i.i, %.loopexit275.i.i, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit19.i.i.i.i, %bb.z, %bb.y
  %.pn54.i.i = phi { ptr, i32 } [ %.pn12.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit19.i.i.i.i ], [ %i.hp, %bb.y ], [ %i.hp, %bb.z ], [ %.pn52.i.i, %.body138.i.i ], [ %.pn12.i.i.i.i, %bb.al ], [ %.pn52.i.i, %bb.bv ], [ %lpad.loopexit277.i.i, %.loopexit275.i.i ], [ %lpad.loopexit279.i.i, %.loopexit.split-lp276.loopexit.i.i ], [ %lpad.loopexit282.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
    #dbg_value(ptr %i.ao, !10477, !DIExpression(), !36649)
  %i.lp = load i8, ptr %i.ao, align 8, !dbg !38497, !range !10475, !alias.scope !37953, !noalias !37569, !noundef !3744
  %i.lq = icmp eq i8 %i.lp, -2, !dbg !38497
  br i1 %i.lq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i, label %bb.bb, !dbg !38497

bb.bb:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i unwind label %bb.en, !dbg !38497, !noalias !37692

.loopexit275.i.i:                                 ; preds = %bb.ad, %bb.v
  %lpad.loopexit277.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp276.loopexit.i.i:               ; preds = %bb.ag
  %lpad.loopexit279.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ax, %bb.aj
  %lpad.loopexit282.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %bb.ew, %bb.eh, %bb.ba, %bb.ab
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bc:                                            ; preds = %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i, %bb.ak
  %.sroa.0.1.ph.i.i.i = phi i8 [ %i.jg, %bb.ak ], [ %.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.ba ]
    #dbg_value(i8 %.sroa.0.1.ph.i.i.i, !37884, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36582)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38495, !noalias !37915
    #dbg_value(i8 %.sroa.0.1.ph.i.i.i, !37387, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36652)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !38498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.i.i.i, i64 63, i1 false), !dbg !38499, !noalias !37700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i), !dbg !38496
    #dbg_value(ptr undef, !37514, !DIExpression(), !35960)
    #dbg_value(ptr undef, !37511, !DIExpression(), !35959)
  store i8 %.sroa.0.1.ph.i.i.i, ptr %0, align 8, !dbg !38498, !alias.scope !37692, !noalias !37700
  br label %bb.ex, !dbg !38339

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i
  %.pr268.i.i = load i8, ptr %i.an, align 8, !dbg !38500, !noalias !37569
    #dbg_value(ptr %i.an, !37514, !DIExpression(), !36448)
    #dbg_value(ptr %i.an, !37511, !DIExpression(), !36450)
  %.not23.i.i = icmp eq i8 %.pr268.i.i, -2, !dbg !38500
  br i1 %.not23.i.i, label %bb.bd, label %bb.bu, !dbg !38359

bb.bd:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !38501, !noalias !37569
    #dbg_value(ptr %i.au, !37345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36653)
    #dbg_value(ptr %i.as, !37345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36653)
    #dbg_value(ptr %i.at, !37345, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36653)
  call void @llvm.experimental.noalias.scope.decl(metadata !37954), !dbg !38502
    #dbg_value(ptr poison, !37325, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36659)
    #dbg_value(ptr poison, !37325, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36659)
    #dbg_value(ptr poison, !37329, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36660)
    #dbg_value(ptr poison, !37329, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36660)
    #dbg_value(ptr poison, !37334, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36661)
    #dbg_value(ptr poison, !37334, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36661)
    #dbg_value(i32 %i.cy, !37343, !DIExpression(), !36662)
    #dbg_value(i32 %i.cx, !37344, !DIExpression(), !36662)
    #dbg_declare(ptr %i.c, !37356, !DIExpression(), !36663)
    #dbg_declare(ptr %i.b, !37364, !DIExpression(), !36664)
    #dbg_declare(ptr %i.a, !37366, !DIExpression(), !36665)
    #dbg_value(double 2.000000e+00, !37956, !DIExpression(), !36668)
    #dbg_value(double 2.000000e+00, !37959, !DIExpression(), !36671)
    #dbg_value(i64 1, !37962, !DIExpression(), !36674)
    #dbg_value(i32 1, !37965, !DIExpression(), !36679)
    #dbg_value(i32 1, !37972, !DIExpression(), !36682)
    #dbg_value(i64 1, !37962, !DIExpression(), !36684)
    #dbg_value(i32 1, !37965, !DIExpression(), !36686)
    #dbg_value(i32 1, !37972, !DIExpression(), !36688)
    #dbg_value(double %i.fx, !37346, !DIExpression(), !36689)
    #dbg_value(double %i.fy, !37978, !DIExpression(), !36692)
    #dbg_value(double %i.fy, !37980, !DIExpression(), !36695)
    #dbg_value(i32 %i.ga, !37347, !DIExpression(), !36696)
    #dbg_value(i32 %i.gc, !37348, !DIExpression(), !36696)
    #dbg_value(i32 %i.ga, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36697)
    #dbg_value(i32 %i.gc, !37349, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36697)
    #dbg_value(ptr undef, !37334, !DIExpression(), !36661)
    #dbg_value(ptr undef, !37329, !DIExpression(), !36660)
    #dbg_value(ptr undef, !37325, !DIExpression(), !36659)
    #dbg_value(ptr undef, !37326, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36698)
  br i1 %i.gd, label %.lr.ph.i128.i.i, label %.preheader.i115.i.i, !dbg !38503

.lr.ph.i128.i.i:                                  ; preds = %bb.bd
  %i.lr = sitofp i32 %i.cx to double
  %i.ls = fadd double %i.fw, -1.000000e+00
  %i.lt = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.fw, i64 1 ; 2 uses
  %i.lv = fmul nnan <2 x double> %i.lu, %i.lu
  br label %bb.be, !dbg !38503

.preheader.i115.i.i:                              ; preds = %.backedge.i133.i.i, %bb.bd
  %.sroa.010.073.i116.i.i = add i32 %i.gc, 1, !dbg !38504 ; 2 uses
  %i.lw = icmp slt i32 %.sroa.010.073.i116.i.i, %i.cy, !dbg !38505
  br i1 %i.lw, label %.lr.ph76.i118.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, !dbg !38506

.lr.ph76.i118.i.i:                                ; preds = %.preheader.i115.i.i
  %i.lx = sitofp i32 %i.cx to double              ; 2 uses
  %i.ly = fmul double %i.lx, %i.lx
  %i.lz = fadd double %i.fw, -1.000000e+00
  br label %bb.bf, !dbg !38506

bb.be:                                            ; preds = %.backedge.i133.i.i, %.lr.ph.i128.i.i
  %.sroa.0.072.i129.i.i = phi i32 [ %i.ga, %.lr.ph.i128.i.i ], [ %i.ma, %.backedge.i133.i.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37330, !DIExpression(), !36699)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37963, !DIExpression(), !36674)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37966, !DIExpression(), !36679)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37973, !DIExpression(), !36682)
  %i.ma = add i32 %.sroa.0.072.i129.i.i, 1, !dbg !38507 ; 2 uses
    #dbg_value(i32 %i.ma, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36697)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37350, !DIExpression(), !36702)
  %i.mb = sitofp i32 %.sroa.0.072.i129.i.i to double, !dbg !38508 ; 2 uses
  %i.mc = fmul nnan double %i.mb, %i.mb, !dbg !38508
    #dbg_value(double poison, !37957, !DIExpression(), !36704)
    #dbg_value(double poison, !37960, !DIExpression(), !36706)
    #dbg_value(double poison, !37351, !DIExpression(), !36707)
    #dbg_value(double poison, !37983, !DIExpression(), !36710)
    #dbg_value(double %i.ls, !37352, !DIExpression(), !36711)
    #dbg_value(double %i.ls, !37984, !DIExpression(), !36710)
    #dbg_value(double %i.mi, !37353, !DIExpression(), !36712)
  %i.md = insertelement <2 x double> poison, double %i.mc, i64 0, !dbg !38509
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !38509
  %i.mf = fsub <2 x double> %i.lv, %i.me, !dbg !38509
    #dbg_value(double poison, !37957, !DIExpression(), !36714)
    #dbg_value(double poison, !37960, !DIExpression(), !36716)
  %i.mg = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.mf), !dbg !38510 ; 2 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 0, !dbg !38511
  %i.mi = call nsz double @llvm.minimumnum.f64(double %i.mh, double %i.ls), !dbg !38511 ; 2 uses
    #dbg_value(double poison, !37354, !DIExpression(), !36717)
    #dbg_value(double poison, !37978, !DIExpression(), !36719)
    #dbg_value(double poison, !37980, !DIExpression(), !36721)
  %i.mj = extractelement <2 x double> %i.mg, i64 1, !dbg !38512 ; 3 uses
  %i.mk = fcmp ogt double %i.mj, %i.mi, !dbg !38512
  br i1 %i.mk, label %bb.br, label %bb.bs, !dbg !38512

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %bb.bg, %.preheader.i115.i.i
  store i8 -2, ptr %i.am, align 8, !dbg !38513, !alias.scope !37954, !noalias !37988
    #dbg_value(ptr %i.am, !37514, !DIExpression(), !36724)
    #dbg_value(ptr %i.am, !37511, !DIExpression(), !36726)
  br label %bb.bw, !dbg !38514

bb.bf:                                            ; preds = %bb.bg, %.lr.ph76.i118.i.i
  %.sroa.010.075.i119.i.i = phi i32 [ %.sroa.010.073.i116.i.i, %.lr.ph76.i118.i.i ], [ %.sroa.010.0.i121.i.i, %bb.bg ] ; 4 uses
  %.sroa.010.0.in74.i120.i.i = phi i32 [ %i.gc, %.lr.ph76.i118.i.i ], [ %.sroa.010.075.i119.i.i, %bb.bg ]
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37963, !DIExpression(), !36684)
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37966, !DIExpression(), !36686)
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37973, !DIExpression(), !36688)
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37357, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !36727)
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37358, !DIExpression(), !36728)
  %i.ml = sitofp i32 %.sroa.010.075.i119.i.i to double, !dbg !38515 ; 4 uses
    #dbg_value(double %i.ml, !37362, !DIExpression(), !36729)
  %i.mm = fmul nnan double %i.ml, %i.ml, !dbg !38515
  %i.mn = fsub double %i.ly, %i.mm, !dbg !38516
    #dbg_value(double %i.mn, !37957, !DIExpression(), !36731)
    #dbg_value(double %i.mn, !37960, !DIExpression(), !36733)
  %i.mo = call double @llvm.sqrt.f64(double %i.mn), !dbg !38517
    #dbg_value(double %i.mo, !37359, !DIExpression(), !36734)
    #dbg_value(double %i.mo, !37983, !DIExpression(), !36736)
    #dbg_value(double %i.lz, !37360, !DIExpression(), !36737)
    #dbg_value(double %i.lz, !37984, !DIExpression(), !36736)
  %i.mp = call nsz double @llvm.minimumnum.f64(double %i.mo, double %i.lz), !dbg !38518 ; 3 uses
    #dbg_value(double %i.mp, !37361, !DIExpression(), !36738)
  %i.mq = fcmp ogt double %i.mp, %i.ml, !dbg !38519
  br i1 %i.mq, label %bb.bh, label %bb.bg, !dbg !38519

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i, %bb.bf
  %.sroa.010.0.i121.i.i = add nsw i32 %.sroa.010.075.i119.i.i, 1, !dbg !38504 ; 2 uses
    #dbg_value(i32 %.sroa.010.0.i121.i.i, !37357, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36727)
    #dbg_value(ptr undef, !37334, !DIExpression(), !35920)
    #dbg_value(ptr undef, !37329, !DIExpression(), !35919)
    #dbg_value(ptr undef, !37325, !DIExpression(), !35918)
    #dbg_value(ptr undef, !37326, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36739)
  %exitcond77.not.i122.i.i = icmp eq i32 %.sroa.010.0.i121.i.i, %i.cy, !dbg !38505
  br i1 %exitcond77.not.i122.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %bb.bf, !dbg !38506

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38520, !noalias !37992
  %i.mr = fadd double %i.ml, 1.000000e+00, !dbg !38521 ; 2 uses
    #dbg_value(ptr poison, !37994, !DIExpression(DW_OP_deref, DW_OP_deref), !36742)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36742)
    #dbg_value(ptr poison, !38001, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36742)
    #dbg_value(i32 %.sroa.010.075.i119.i.i, !37998, !DIExpression(), !36742)
    #dbg_value(double %i.mp, !37999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36742)
    #dbg_value(double %i.mr, !37999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36742)
  %i.ms = load ptr, ptr %i.au, align 8, !dbg !38522, !noalias !38003, !nonnull !3744, !align !4908, !noundef !3744
  %i.mt = load ptr, ptr %i.as, align 8, !dbg !38523, !noalias !38003, !nonnull !3744, !align !4908, !noundef !3744
  %i.mu = load i32, ptr %i.at, align 4, !dbg !38524, !noalias !38003, !noundef !3744
  %i.mv = load i32, ptr %i.cz, align 4, !dbg !38524, !noalias !38003, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ms, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mt, i32 noundef %i.mu, i32 noundef %i.mv, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.010.075.i119.i.i, double noundef %i.mp, double noundef %i.mr)
          to label %.noexc135.i.i unwind label %.loopexit.i.i, !dbg !38525, !noalias !37692

.noexc135.i.i:                                    ; preds = %bb.bh
    #dbg_value(ptr %i.b, !38004, !DIExpression(), !36748)
    #dbg_value(ptr %i.b, !38007, !DIExpression(), !36751)
  %i.mw = load i8, ptr %i.b, align 8, !dbg !38526, !range !10475, !noalias !37992, !noundef !3744
  %.not.i123.i.i = icmp eq i8 %i.mw, -2, !dbg !38526
  br i1 %.not.i123.i.i, label %bb.bi, label %bb.bj, !dbg !38527

bb.bi:                                            ; preds = %.noexc135.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38528, !noalias !37992
  %i.mx = xor i32 %.sroa.010.0.in74.i120.i.i, -1, !dbg !38529
    #dbg_value(ptr poison, !37994, !DIExpression(DW_OP_deref, DW_OP_deref), !36753)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36753)
    #dbg_value(ptr poison, !38001, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36753)
    #dbg_value(i32 %i.mx, !37998, !DIExpression(), !36753)
    #dbg_value(double %i.mp, !37999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36753)
    #dbg_value(double %i.mr, !37999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36753)
  %i.my = load ptr, ptr %i.au, align 8, !dbg !38530, !noalias !38010, !nonnull !3744, !align !4908, !noundef !3744
  %i.mz = load ptr, ptr %i.as, align 8, !dbg !38531, !noalias !38010, !nonnull !3744, !align !4908, !noundef !3744
  %i.na = load i32, ptr %i.at, align 4, !dbg !38532, !noalias !38010, !noundef !3744
  %i.nb = load i32, ptr %i.cz, align 4, !dbg !38532, !noalias !38010, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.my, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz, i32 noundef %i.na, i32 noundef %i.nb, i32 noundef 0, i32 noundef -1, i32 noundef %i.mx, double noundef %i.mp, double noundef %i.mr)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.bk, !dbg !38533, !noalias !38011

bb.bj:                                            ; preds = %.noexc135.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !38534, !noalias !37988
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i, !dbg !38535

bb.bk:                                            ; preds = %bb.bi
  %i.nc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36758)
  %i.nd = load i8, ptr %i.b, align 8, !dbg !38536, !range !10475, !alias.scope !38013, !noalias !37992, !noundef !3744
  %i.ne = icmp eq i8 %i.nd, -2, !dbg !38536
  br i1 %i.ne, label %.body138.i.i, label %bb.bl, !dbg !38536

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body138.i.i unwind label %bb.bq, !dbg !38536, !noalias !38011

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.bi
    #dbg_value(ptr %i.a, !38004, !DIExpression(), !36762)
    #dbg_value(ptr %i.a, !38007, !DIExpression(), !36764)
  %i.nf = load i8, ptr %i.a, align 8, !dbg !38537, !range !10475, !noalias !37992, !noundef !3744
  %.not65.i126.i.i = icmp eq i8 %i.nf, -2, !dbg !38537
  br i1 %.not65.i126.i.i, label %bb.bo, label %bb.bm, !dbg !38538

bb.bm:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !38539, !noalias !37988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38540, !noalias !37992
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36766)
  %i.ng = load i8, ptr %i.b, align 8, !dbg !38541, !range !10475, !alias.scope !38016, !noalias !37992, !noundef !3744
  %i.nh = icmp eq i8 %i.ng, -2, !dbg !38541
  br i1 %i.nh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i, label %bb.bn, !dbg !38541

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38541, !noalias !37692

bb.bo:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !36770)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38540, !noalias !37992
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36772)
  %i.ni = load i8, ptr %i.b, align 8, !dbg !38542, !range !10475, !alias.scope !38017, !noalias !37992, !noundef !3744
  %i.nj = icmp eq i8 %i.ni, -2, !dbg !38542
  br i1 %i.nj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i, label %bb.bp, !dbg !38542

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i unwind label %.loopexit.i.i, !dbg !38542, !noalias !37692

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38543, !noalias !37992
  br label %bb.bg, !dbg !38544

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i: ; preds = %bb.bn, %bb.bm, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38543, !noalias !37992
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38545

bb.bq:                                            ; preds = %bb.bl
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38546, !noalias !38011
  unreachable, !dbg !38546

bb.br:                                            ; preds = %bb.be
  %i.nl = call double @llvm.ceil.f64(double %i.mj), !dbg !38547 ; 2 uses
    #dbg_value(double %i.nl, !37353, !DIExpression(), !36712)
  %i.nm = fcmp ult double %i.nl, %i.fw, !dbg !38548
  br i1 %i.nm, label %bb.bs, label %.backedge.i133.i.i, !dbg !38548

bb.bs:                                            ; preds = %bb.br, %bb.be
  %.sroa.03.0.i130.i.i = phi double [ %i.nl, %bb.br ], [ %i.mi, %bb.be ], !dbg !38549
    #dbg_value(double %.sroa.03.0.i130.i.i, !37353, !DIExpression(), !36712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !38550, !noalias !37992
    #dbg_value(ptr poison, !37994, !DIExpression(DW_OP_deref, DW_OP_deref), !36776)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36776)
    #dbg_value(ptr poison, !38001, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36776)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37998, !DIExpression(), !36776)
    #dbg_value(double poison, !37999, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36776)
    #dbg_value(double %.sroa.03.0.i130.i.i, !37999, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36776)
  %i.nn = load ptr, ptr %i.au, align 8, !dbg !38551, !noalias !38020, !nonnull !3744, !align !4908, !noundef !3744
  %i.no = load ptr, ptr %i.as, align 8, !dbg !38552, !noalias !38020, !nonnull !3744, !align !4908, !noundef !3744
  %i.np = load i32, ptr %i.at, align 4, !dbg !38553, !noalias !38020, !noundef !3744
  %i.nq = load i32, ptr %i.cz, align 4, !dbg !38553, !noalias !38020, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.nn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.no, i32 noundef %i.np, i32 noundef %i.nq, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.0.072.i129.i.i, double noundef %i.mj, double noundef %.sroa.03.0.i130.i.i)
          to label %.noexc140.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !38554, !noalias !37692

.noexc140.i.i:                                    ; preds = %bb.bs
    #dbg_value(ptr %i.c, !38004, !DIExpression(), !36781)
    #dbg_value(ptr %i.c, !38007, !DIExpression(), !36783)
  %i.nr = load i8, ptr %i.c, align 8, !dbg !38555, !range !10475, !noalias !37992, !noundef !3744
  %.not66.i131.i.i = icmp eq i8 %i.nr, -2, !dbg !38555
  br i1 %.not66.i131.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i, label %bb.bt, !dbg !38556

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i: ; preds = %.noexc140.i.i
    #dbg_value(ptr %i.c, !10477, !DIExpression(), !36785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38557, !noalias !37992
  br label %.backedge.i133.i.i, !dbg !38558

.backedge.i133.i.i:                               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i, %bb.br
    #dbg_value(i32 %i.ma, !37349, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36697)
    #dbg_value(ptr undef, !37334, !DIExpression(), !36661)
    #dbg_value(ptr undef, !37329, !DIExpression(), !36660)
    #dbg_value(ptr undef, !37325, !DIExpression(), !36659)
    #dbg_value(ptr undef, !37326, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36698)
  %exitcond.not.i134.i.i = icmp eq i32 %i.ma, %i.gc, !dbg !38559
  br i1 %exitcond.not.i134.i.i, label %.preheader.i115.i.i, label %bb.be, !dbg !38503

bb.bt:                                            ; preds = %.noexc140.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !38560, !noalias !37988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38557, !noalias !37992
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38545

bb.bu:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !dbg !38561, !noalias !37700
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit230.i.i, !dbg !38562

.body138.i.i:                                     ; preds = %bb.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.bl, %bb.bk
  %.pn52.i.i = phi { ptr, i32 } [ %i.nc, %bb.bk ], [ %.pn50.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i ], [ %i.nc, %bb.bl ], [ %.pn50.i.i, %bb.by ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit272.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp273.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
    #dbg_value(ptr %i.an, !10477, !DIExpression(), !36787)
  %i.ns = load i8, ptr %i.an, align 8, !dbg !38563, !range !10475, !alias.scope !38022, !noalias !37569, !noundef !3744
end_hunk_2
