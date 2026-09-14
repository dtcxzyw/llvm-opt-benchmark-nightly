Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.15?download=true
inline.NumInlined: 1411
inline.NumDeleted: 745
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCsaTqK2fWTXJW_11qlog_dancer5plots18congestion_control20draw_congestion_plotNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !21585
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 102, !dbg !21586
  %.sroa.032.0.copyload = load i24, ptr %i.fy, align 2, !dbg !21586
    #dbg_value(i24 %.sroa.032.0.copyload, !21373, !DIExpression(), !21376)
    #dbg_value(i24 %.sroa.032.0.copyload, !21385, !DIExpression(), !21388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !21587
  invoke void @_RNvXs_NtNtCs4bweDUTR8gt_8plotters5style5shapeNtB4_10ShapeStyleINtNtCskKLDkoKarTP_4core7convert4FromNtNtB6_5color8RGBColorE4fromCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, i24 %.sroa.032.0.copyload)
          to label %bb.cg unwind label %bb.cb, !dbg !21588

bb.cg:                                            ; preds = %bb.cf
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2536, !dbg !21589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !dbg !21589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !21590
    #dbg_value(i32 0, !21381, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21384)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 2592, !dbg !21591
  store i32 0, ptr %i.ga, align 8, !dbg !21591
  invoke void @_RNvMs0_NtNtCs4bweDUTR8gt_8plotters5chart6seriesINtB5_16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtB9_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB29_8ranged1d5types7numeric14RangedCoordf64NtB2S_14RangedCoordu64EE4drawCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(2616) %i.fw)
          to label %bb.ch unwind label %bb.cb, !dbg !21592

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !21389), !dbg !21593
    #dbg_declare(ptr %i.ab, !6491, !DIExpression(), !20521)
    #dbg_declare(ptr %i.u, !6506, !DIExpression(), !20522)
  %i.gb = load i8, ptr %i.ab, align 8, !dbg !21594, !range !4898, !alias.scope !21389, !noalias !21390, !noundef !3744
  %.not.i = icmp eq i8 %i.gb, -2, !dbg !21594
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.ci, !dbg !21595, !prof !4899

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !21596, !noalias !21391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ab, i64 64, i1 false), !dbg !21596, !noalias !21390
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #31
          to label %bb.cl unwind label %bb.cj, !dbg !21597, !noalias !21389

bb.cj:                                            ; preds = %bb.ci
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.u, !4901, !DIExpression(), !20525)
  %i.gd = load i8, ptr %i.u, align 8, !dbg !21598, !range !4907, !alias.scope !21392, !noalias !21389, !noundef !3744
  %i.ge = icmp slt i8 %i.gd, 13, !dbg !21598
  br i1 %i.ge, label %bb.ck, label %.body35, !dbg !21598

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(64) %i.u)
          to label %.body35 unwind label %bb.cm, !dbg !21598

bb.cl:                                            ; preds = %bb.ci
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21599, !noalias !21389
  unreachable, !dbg !21599

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !21600
    #dbg_value(ptr %i.aa, !7476, !DIExpression(), !20529)
    #dbg_value(ptr %i.aa, !7272, !DIExpression(), !20531)
  %i.gg = load i64, ptr %i.aa, align 8, !dbg !21601, !range !7276, !alias.scope !21393, !noundef !3744
  %i.gh = icmp eq i64 %i.gg, -1, !dbg !21601
  br i1 %i.gh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs4bweDUTR8gt_8plotters5chart6series16SeriesLabelStyleNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendINtNtNtNtBI_5coord8ranged2d9cartesian11Cartesian2dNtNtNtNtB2C_8ranged1d5types7numeric14RangedCoordf64NtB3l_14RangedCoordu64EEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.cn, !dbg !21601

bb.cn:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuINtNtNtCs4bweDUTR8gt_8plotters7drawing4area20DrawingAreaErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEE6unwrapCsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.aa, !7278, !DIExpression(), !20537)
    #dbg_value(ptr %i.aa, !7283, !DIExpression(), !20539)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !21602 ; 2 uses
    #dbg_value(ptr %i.gi, !7290, !DIExpression(), !20541)
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
  %i.j = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.i), !dbg !21899 ; 3 uses
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
  %.sroa.010.0.in74 = phi i32 [ %.sroa.010.073, %.lr.ph76 ], [ %.sroa.010.0, %bb.e ] ; 4 uses
    #dbg_value(i32 %.sroa.010.0.in74, !21766, !DIExpression(), !21786)
    #dbg_value(i32 %.sroa.010.0.in74, !21771, !DIExpression(), !21789)
    #dbg_value(i32 %.sroa.010.0.in74, !21780, !DIExpression(), !21792)
    #dbg_value(i32 %.sroa.010.0.in74, !21712, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !21840)
    #dbg_value(i32 %.sroa.010.0.in74, !21713, !DIExpression(), !21841)
  %i.ar = sitofp i32 %.sroa.010.0.in74 to double, !dbg !21912 ; 4 uses
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
  %.sroa.010.0 = add nsw i32 %.sroa.010.0.in74, 1, !dbg !21901 ; 2 uses
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
    #dbg_value(i32 %.sroa.010.0.in74, !21859, !DIExpression(), !21660)
    #dbg_value(double %i.av, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21660)
    #dbg_value(double %i.ax, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21660)
  %i.ay = load ptr, ptr %i.aa, align 8, !dbg !21920, !noalias !21864, !nonnull !3744, !align !4908, !noundef !3744
  %i.az = load ptr, ptr %i.ac, align 8, !dbg !21921, !noalias !21864, !nonnull !3744, !align !4908, !noundef !3744
  %i.ba = load i32, ptr %i.ae, align 4, !dbg !21922, !noalias !21864, !noundef !3744
  %i.bb = load i32, ptr %i.af, align 4, !dbg !21922, !noalias !21864, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef 1, i32 noundef 0, i32 noundef %.sroa.010.0.in74, double noundef %i.av, double noundef %i.ax), !dbg !21923, !noalias !21865
    #dbg_value(ptr %i.b, !21866, !DIExpression(), !21870)
    #dbg_value(ptr %i.b, !21871, !DIExpression(), !21875)
  %i.bc = load i8, ptr %i.b, align 8, !dbg !21924, !range !10475, !noundef !3744
  %.not = icmp eq i8 %i.bc, -2, !dbg !21924
  br i1 %.not, label %bb.g, label %bb.h, !dbg !21925

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21753
  %4 = sub i32 0, %.sroa.010.0.in74, !dbg !21926
    #dbg_value(ptr poison, !21855, !DIExpression(DW_OP_deref, DW_OP_deref), !21667)
    #dbg_value(ptr poison, !21861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21667)
    #dbg_value(ptr poison, !21862, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21667)
    #dbg_value(i32 %4, !21859, !DIExpression(), !21667)
    #dbg_value(double %i.av, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21667)
    #dbg_value(double %i.ax, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21667)
  %i.bd = load ptr, ptr %i.aa, align 8, !dbg !21927, !noalias !21876, !nonnull !3744, !align !4908, !noundef !3744
  %i.be = load ptr, ptr %i.ac, align 8, !dbg !21928, !noalias !21876, !nonnull !3744, !align !4908, !noundef !3744
  %i.bf = load i32, ptr %i.ae, align 4, !dbg !21929, !noalias !21876, !noundef !3744
  %i.bg = load i32, ptr %i.af, align 4, !dbg !21929, !noalias !21876, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef 1, i32 noundef 0, i32 noundef %4, double noundef %i.av, double noundef %i.ax)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.i, !dbg !21930

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !21931
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !21932

bb.i:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21672)
  %i.bi = load i8, ptr %i.b, align 8, !dbg !21933, !range !10475, !alias.scope !21878, !noundef !3744
  %i.bj = icmp eq i8 %i.bi, -2, !dbg !21933
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.j, !dbg !21933

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.o, !dbg !21933

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.g
    #dbg_value(ptr %i.a, !21866, !DIExpression(), !21881)
    #dbg_value(ptr %i.a, !21871, !DIExpression(), !21884)
  %i.bk = load i8, ptr %i.a, align 8, !dbg !21934, !range !10475, !noundef !3744
  %.not65 = icmp eq i8 %i.bk, -2, !dbg !21934
  br i1 %.not65, label %bb.m, label %bb.k, !dbg !21935

bb.k:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !21936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21937
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21676)
  %i.bl = load i8, ptr %i.b, align 8, !dbg !21938, !range !10475, !alias.scope !21885, !noundef !3744
  %i.bm = icmp eq i8 %i.bl, -2, !dbg !21938
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, label %bb.l, !dbg !21938

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !21938
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !21938

bb.m:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0CsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !21680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21937
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !21682)
  %i.bn = load i8, ptr %i.b, align 8, !dbg !21939, !range !10475, !alias.scope !21886, !noundef !3744
  %i.bo = icmp eq i8 %i.bn, -2, !dbg !21939
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, label %bb.n, !dbg !21939

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
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !21943
  unreachable, !dbg !21943

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.bh, !dbg !21943

bb.p:                                             ; preds = %bb.b
  %i.bq = tail call double @llvm.ceil.f64(double %i.ap), !dbg !21944 ; 2 uses
    #dbg_value(double %i.bq, !21708, !DIExpression(), !21828)
  %i.br = fcmp ult double %i.bq, %i.d, !dbg !21945
  br i1 %i.br, label %bb.q, label %.backedge, !dbg !21945

bb.q:                                             ; preds = %bb.p, %bb.b
  %.sroa.03.0 = phi double [ %i.bq, %bb.p ], [ %i.ao, %bb.b ], !dbg !21827
    #dbg_value(double %.sroa.03.0, !21708, !DIExpression(), !21828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21946
    #dbg_value(ptr poison, !21855, !DIExpression(DW_OP_deref, DW_OP_deref), !21686)
    #dbg_value(ptr poison, !21861, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !21686)
    #dbg_value(ptr poison, !21862, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !21686)
    #dbg_value(i32 %.sroa.0.072, !21859, !DIExpression(), !21686)
    #dbg_value(double poison, !21860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21686)
    #dbg_value(double %.sroa.03.0, !21860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21686)
  %i.bs = load ptr, ptr %i.q, align 8, !dbg !21947, !noalias !21889, !nonnull !3744, !align !4908, !noundef !3744
  %i.bt = load ptr, ptr %i.s, align 8, !dbg !21948, !noalias !21889, !nonnull !3744, !align !4908, !noundef !3744
  %i.bu = load i32, ptr %i.u, align 4, !dbg !21949, !noalias !21889, !noundef !3744
  %i.bv = load i32, ptr %i.v, align 4, !dbg !21949, !noalias !21889, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef 1, i32 noundef 0, i32 noundef %.sroa.0.072, double noundef %i.ap, double noundef %.sroa.03.0), !dbg !21950, !noalias !21890
    #dbg_value(ptr %i.c, !21866, !DIExpression(), !21892)
    #dbg_value(ptr %i.c, !21871, !DIExpression(), !21894)
  %i.bw = load i8, ptr %i.c, align 8, !dbg !21951, !range !10475, !noundef !3744
  %.not66 = icmp eq i8 %i.bw, -2, !dbg !21951
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
  %i.j = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.i), !dbg !22234 ; 3 uses
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
  %.sroa.010.0.in74 = phi i32 [ %.sroa.010.073, %.lr.ph76 ], [ %.sroa.010.0, %bb.e ] ; 4 uses
    #dbg_value(i32 %.sroa.010.0.in74, !22101, !DIExpression(), !22121)
    #dbg_value(i32 %.sroa.010.0.in74, !22106, !DIExpression(), !22124)
    #dbg_value(i32 %.sroa.010.0.in74, !22115, !DIExpression(), !22127)
    #dbg_value(i32 %.sroa.010.0.in74, !22047, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !22175)
    #dbg_value(i32 %.sroa.010.0.in74, !22048, !DIExpression(), !22176)
  %i.ar = sitofp i32 %.sroa.010.0.in74 to double, !dbg !22247 ; 4 uses
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
  %.sroa.010.0 = add nsw i32 %.sroa.010.0.in74, 1, !dbg !22236 ; 2 uses
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
    #dbg_value(i32 %.sroa.010.0.in74, !22194, !DIExpression(), !21995)
    #dbg_value(double %i.av, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21995)
    #dbg_value(double %i.ax, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21995)
  %i.ay = load ptr, ptr %i.aa, align 8, !dbg !22255, !noalias !22199, !nonnull !3744, !align !4908, !noundef !3744
  %i.az = load ptr, ptr %i.ac, align 8, !dbg !22256, !noalias !22199, !nonnull !3744, !align !4908, !noundef !3744
  %i.ba = load i32, ptr %i.ae, align 4, !dbg !22257, !noalias !22199, !noundef !3744
  %i.bb = load i32, ptr %i.af, align 4, !dbg !22257, !noalias !22199, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.010.0.in74, double noundef %i.av, double noundef %i.ax), !dbg !22258, !noalias !22200
    #dbg_value(ptr %i.b, !22201, !DIExpression(), !22205)
    #dbg_value(ptr %i.b, !22206, !DIExpression(), !22210)
  %i.bc = load i8, ptr %i.b, align 8, !dbg !22259, !range !10475, !noundef !3744
  %.not = icmp eq i8 %i.bc, -2, !dbg !22259
  br i1 %.not, label %bb.g, label %bb.h, !dbg !22260

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22088
  %4 = sub i32 0, %.sroa.010.0.in74, !dbg !22261
    #dbg_value(ptr poison, !22190, !DIExpression(DW_OP_deref, DW_OP_deref), !22002)
    #dbg_value(ptr poison, !22196, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !22002)
    #dbg_value(ptr poison, !22197, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !22002)
    #dbg_value(i32 %4, !22194, !DIExpression(), !22002)
    #dbg_value(double %i.av, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22002)
    #dbg_value(double %i.ax, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22002)
  %i.bd = load ptr, ptr %i.aa, align 8, !dbg !22262, !noalias !22211, !nonnull !3744, !align !4908, !noundef !3744
  %i.be = load ptr, ptr %i.ac, align 8, !dbg !22263, !noalias !22211, !nonnull !3744, !align !4908, !noundef !3744
  %i.bf = load i32, ptr %i.ae, align 4, !dbg !22264, !noalias !22211, !noundef !3744
  %i.bg = load i32, ptr %i.af, align 4, !dbg !22264, !noalias !22211, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef -1, i32 noundef 0, i32 noundef %4, double noundef %i.av, double noundef %i.ax)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.i, !dbg !22265

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !22266
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !22267

bb.i:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22007)
  %i.bi = load i8, ptr %i.b, align 8, !dbg !22268, !range !10475, !alias.scope !22213, !noundef !3744
  %i.bj = icmp eq i8 %i.bi, -2, !dbg !22268
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.j, !dbg !22268

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.o, !dbg !22268

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.g
    #dbg_value(ptr %i.a, !22201, !DIExpression(), !22216)
    #dbg_value(ptr %i.a, !22206, !DIExpression(), !22219)
  %i.bk = load i8, ptr %i.a, align 8, !dbg !22269, !range !10475, !noundef !3744
  %.not65 = icmp eq i8 %i.bk, -2, !dbg !22269
  br i1 %.not65, label %bb.m, label %bb.k, !dbg !22270

bb.k:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !22271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22272
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22011)
  %i.bl = load i8, ptr %i.b, align 8, !dbg !22273, !range !10475, !alias.scope !22220, !noundef !3744
  %i.bm = icmp eq i8 %i.bl, -2, !dbg !22273
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, label %bb.l, !dbg !22273

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b), !dbg !22273
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69, !dbg !22273

bb.m:                                             ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs6_0CsaTqK2fWTXJW_11qlog_dancer.exit
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !22015)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22272
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !22017)
  %i.bn = load i8, ptr %i.b, align 8, !dbg !22274, !range !10475, !alias.scope !22221, !noundef !3744
  %i.bo = icmp eq i8 %i.bn, -2, !dbg !22274
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70, label %bb.n, !dbg !22274

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
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !22278
  unreachable, !dbg !22278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.bh, !dbg !22278

bb.p:                                             ; preds = %bb.b
  %i.bq = tail call double @llvm.ceil.f64(double %i.ap), !dbg !22279 ; 2 uses
    #dbg_value(double %i.bq, !22043, !DIExpression(), !22163)
  %i.br = fcmp ult double %i.bq, %i.d, !dbg !22280
  br i1 %i.br, label %bb.q, label %.backedge, !dbg !22280

bb.q:                                             ; preds = %bb.p, %bb.b
  %.sroa.03.0 = phi double [ %i.bq, %bb.p ], [ %i.ao, %bb.b ], !dbg !22162
    #dbg_value(double %.sroa.03.0, !22043, !DIExpression(), !22163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22281
    #dbg_value(ptr poison, !22190, !DIExpression(DW_OP_deref, DW_OP_deref), !22021)
    #dbg_value(ptr poison, !22196, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !22021)
    #dbg_value(ptr poison, !22197, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !22021)
    #dbg_value(i32 %.sroa.0.072, !22194, !DIExpression(), !22021)
    #dbg_value(double poison, !22195, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22021)
    #dbg_value(double %.sroa.03.0, !22195, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22021)
  %i.bs = load ptr, ptr %i.q, align 8, !dbg !22282, !noalias !22224, !nonnull !3744, !align !4908, !noundef !3744
  %i.bt = load ptr, ptr %i.s, align 8, !dbg !22283, !noalias !22224, !nonnull !3744, !align !4908, !noundef !3744
  %i.bu = load i32, ptr %i.u, align 4, !dbg !22284, !noalias !22224, !noundef !3744
  %i.bv = load i32, ptr %i.v, align 4, !dbg !22284, !noalias !22224, !noundef !3744
  call fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.0.072, double noundef %i.ap, double noundef %.sroa.03.0), !dbg !22285, !noalias !22225
    #dbg_value(ptr %i.c, !22201, !DIExpression(), !22227)
    #dbg_value(ptr %i.c, !22206, !DIExpression(), !22229)
  %i.bw = load i8, ptr %i.c, align 8, !dbg !22286, !range !10475, !noundef !3744
  %.not66 = icmp eq i8 %i.bw, -2, !dbg !22286
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
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
    #dbg_value(ptr poison, !22399, !DIExpression(), !22407)
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !22399, !DIExpression(), !22409)
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
    #dbg_value(ptr %1, !22370, !DIExpression(), !22410)
    #dbg_value(ptr %2, !22371, !DIExpression(), !22410)
    #dbg_value(i32 %3, !22395, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22410)
    #dbg_value(i32 %4, !22395, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22410)
    #dbg_value(i32 %5, !22396, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22410)
    #dbg_value(i32 %6, !22396, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !22410)
    #dbg_value(i32 %7, !22372, !DIExpression(), !22410)
    #dbg_value(double %8, !22397, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22410)
    #dbg_value(double %9, !22397, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22410)
    #dbg_declare(ptr %i.l, !22384, !DIExpression(), !22411)
    #dbg_declare(ptr %i.j, !22386, !DIExpression(), !22412)
    #dbg_declare(ptr %i.h, !22388, !DIExpression(), !22413)
    #dbg_declare(ptr %i.f, !22390, !DIExpression(), !22414)
    #dbg_declare(ptr %i.d, !22392, !DIExpression(), !22415)
    #dbg_declare(ptr %i.b, !22394, !DIExpression(), !22416)
    #dbg_value(i32 %3, !22373, !DIExpression(), !22417)
    #dbg_value(i32 %4, !22374, !DIExpression(), !22417)
    #dbg_value(i32 %5, !22375, !DIExpression(), !22417)
    #dbg_value(i32 %6, !22376, !DIExpression(), !22417)
    #dbg_value(double %8, !22377, !DIExpression(), !22417)
    #dbg_value(double %9, !22378, !DIExpression(), !22417)
  %i.m = icmp slt i32 %5, 0, !dbg !22533
  br i1 %i.m, label %bb.c, label %bb.b, !dbg !22533

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %6, 0, !dbg !22534
  %i.o = fneg double %8, !dbg !22534
    #dbg_value(double poison, !22379, !DIExpression(), !22418)
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !22535

bb.c:                                             ; preds = %bb.a
  %i.p = fneg double %8, !dbg !22536
    #dbg_value(double %i.p, !22379, !DIExpression(), !22418)
  br label %bb.d, !dbg !22537

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1 = phi double [ %i.p, %bb.c ], [ %i.o, %bb.b ], !dbg !22536
    #dbg_value(double %.sroa.0.1, !22379, !DIExpression(), !22418)
  %i.q = fneg double %9, !dbg !22538
    #dbg_value(double %i.q, !22380, !DIExpression(), !22419)
  br label %bb.e, !dbg !22539

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.08.0 = phi double [ %i.q, %bb.d ], [ %9, %bb.b ], !dbg !22540 ; 3 uses
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.d ], [ %8, %bb.b ], !dbg !22536 ; 3 uses
    #dbg_value(double %.sroa.0.2, !22379, !DIExpression(), !22418)
    #dbg_value(double %.sroa.08.0, !22380, !DIExpression(), !22419)
  %i.r = fcmp ogt double %.sroa.0.2, %.sroa.08.0, !dbg !22541 ; 2 uses
  %.sroa.08.1 = select i1 %i.r, double %.sroa.0.2, double %.sroa.08.0, !dbg !22541 ; 2 uses
  %.sroa.0.3 = select i1 %i.r, double %.sroa.08.0, double %.sroa.0.2, !dbg !22541 ; 2 uses
    #dbg_value(double %.sroa.0.3, !22379, !DIExpression(), !22418)
    #dbg_value(double %.sroa.08.1, !22380, !DIExpression(), !22419)
    #dbg_value(double %.sroa.0.3, !22420, !DIExpression(), !22423)
    #dbg_value(double %.sroa.0.3, !22424, !DIExpression(), !22427)
  %i.s = tail call double @llvm.ceil.f64(double %.sroa.0.3), !dbg !22542 ; 3 uses
  %i.t = fsub double %i.s, %.sroa.0.3, !dbg !22543 ; 2 uses
    #dbg_value(double %i.t, !22381, !DIExpression(), !22428)
end_hunk_0
begin_hunk_1_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
bb.l:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false), !dbg !38308, !noalias !37699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit236.i.i, !dbg !38309

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i: ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i, %.loopexit.split-lp291.i.i, %.loopexit290.i.i
  %.pn58.i.i = phi { ptr, i32 } [ %.pn56.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i ], [ %.pn56.i.i, %bb.p ], [ %lpad.loopexit292.i.i, %.loopexit290.i.i ], [ %lpad.loopexit.split-lp293.i.i, %.loopexit.split-lp291.i.i ] ; 2 uses
    #dbg_value(ptr %i.aq, !10477, !DIExpression(), !36302)
  %i.ff = load i8, ptr %i.aq, align 8, !dbg !38310, !range !10475, !alias.scope !37749, !noalias !37568, !noundef !3744
  %i.fg = icmp eq i8 %i.ff, -2, !dbg !38310
  br i1 %i.fg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit81.i.i, label %bb.m, !dbg !38310

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit81.i.i unwind label %bb.en, !dbg !38310, !noalias !37691

.loopexit290.i.i:                                 ; preds = %.lr.ph.i72.i.i
  %lpad.loopexit292.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i

.loopexit.split-lp291.i.i:                        ; preds = %bb.ez, %bb.ej
  %lpad.loopexit.split-lp293.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.noexc79.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !38311, !noalias !37745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !38307, !noalias !37729
  %.pr263.i.i = load i8, ptr %i.ap, align 8, !dbg !38312, !noalias !37568
    #dbg_value(ptr %i.ap, !37513, !DIExpression(), !36297)
    #dbg_value(ptr %i.ap, !37510, !DIExpression(), !36299)
  %.not20.i.i = icmp eq i8 %.pr263.i.i, -2, !dbg !38312
  br i1 %.not20.i.i, label %bb.n, label %bb.o, !dbg !38304

bb.n:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !38313, !noalias !37568
    #dbg_value(ptr %i.au, !37750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36316)
    #dbg_value(ptr %i.as, !37750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36316)
    #dbg_value(ptr %i.at, !37750, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37771), !dbg !38314
    #dbg_declare(ptr poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !36319)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36322)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36322)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36323)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36323)
    #dbg_value(double %i.df, !37757, !DIExpression(), !36324)
    #dbg_value(i32 %i.cx, !37758, !DIExpression(), !36324)
    #dbg_declare(ptr %i.o, !37767, !DIExpression(), !36325)
    #dbg_value(double %i.dl, !37772, !DIExpression(), !36328)
    #dbg_value(double %i.dl, !37774, !DIExpression(), !36331)
    #dbg_value(double %i.dm, !37759, !DIExpression(), !36332)
    #dbg_value(i32 %i.dp, !37760, !DIExpression(), !36333)
    #dbg_value(i32 %i.dr, !37761, !DIExpression(), !36334)
    #dbg_value(double %i.ds, !37762, !DIExpression(), !36335)
    #dbg_value(i32 %i.dp, !37763, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36336)
    #dbg_value(i32 %i.dr, !37763, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36336)
    #dbg_value(i8 poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36336)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36323)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36322)
  br i1 %.not.i23.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i83.i.i, !dbg !38315

.lr.ph.i83.i.i:                                   ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i
  %.sroa.0.024.i84.i.i = phi i32 [ %i.fs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i ], [ %i.dp, %bb.n ] ; 3 uses
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37623, !DIExpression(), !36338)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37629, !DIExpression(), !36340)
    #dbg_value(i64 1, !37626, !DIExpression(), !36338)
    #dbg_value(i32 1, !37627, !DIExpression(), !36341)
    #dbg_value(i32 1, !37630, !DIExpression(), !36340)
    #dbg_value(i32 poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36336)
    #dbg_value(i1 poison, !37763, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36336)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37764, !DIExpression(), !36342)
  %i.fh = sitofp i32 %.sroa.0.024.i84.i.i to double, !dbg !38316 ; 2 uses
  %i.fi = fmul nnan double %i.fh, %i.fh, !dbg !38316
  %i.fj = fsub double %i.dj, %i.fi, !dbg !38317
    #dbg_value(double %i.fj, !37772, !DIExpression(), !36344)
    #dbg_value(double %i.fj, !37774, !DIExpression(), !36346)
  %i.fk = tail call double @llvm.sqrt.f64(double %i.fj), !dbg !38318
    #dbg_value(double %i.fk, !37765, !DIExpression(), !36347)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !38319, !noalias !37777
    #dbg_value(ptr poison, !37779, !DIExpression(DW_OP_deref, DW_OP_deref), !36351)
    #dbg_value(ptr poison, !37785, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36351)
    #dbg_value(ptr poison, !37786, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36351)
    #dbg_value(i32 %.sroa.0.024.i84.i.i, !37783, !DIExpression(), !36351)
    #dbg_value(double %i.ds, !37784, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36351)
    #dbg_value(double %i.fk, !37784, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36351)
  %i.fl = load ptr, ptr %i.au, align 8, !dbg !38320, !noalias !37788, !nonnull !3744, !align !4908, !noundef !3744
  %i.fm = load ptr, ptr %i.as, align 8, !dbg !38321, !noalias !37788, !nonnull !3744, !align !4908, !noundef !3744
  %i.fn = load i32, ptr %i.at, align 4, !dbg !38322, !noalias !37788, !noundef !3744
  %i.fo = load i32, ptr %i.cz, align 4, !dbg !38322, !noalias !37788, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef align 8 dereferenceable(64) %i.fl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fm, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef -1, i32 noundef 0, i32 noundef %.sroa.0.024.i84.i.i, double noundef %i.ds, double noundef %i.fk)
          to label %.noexc90.i.i unwind label %.loopexit285.i.i, !dbg !38323, !noalias !37691

.noexc90.i.i:                                     ; preds = %.lr.ph.i83.i.i
    #dbg_value(ptr %i.o, !37789, !DIExpression(), !36357)
    #dbg_value(ptr %i.o, !37791, !DIExpression(), !36360)
  %i.fp = load i8, ptr %i.o, align 8, !dbg !38324, !range !10475, !noalias !37777, !noundef !3744
  %.not.i85.i.i = icmp eq i8 %i.fp, -2, !dbg !38324
  br i1 %.not.i85.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38325

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i, %bb.n
    #dbg_value(i32 poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36336)
    #dbg_value(i8 poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36336)
  store i8 -2, ptr %i.ao, align 8, !dbg !38326, !alias.scope !37771, !noalias !37793
    #dbg_value(ptr %i.ao, !37513, !DIExpression(), !36362)
    #dbg_value(ptr %i.ao, !37510, !DIExpression(), !36364)
  br label %bb.q, !dbg !38327

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i86.i.i: ; preds = %.noexc90.i.i
  %i.fq = tail call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.024.i84.i.i, i32 1), !dbg !38328 ; 2 uses
  %i.fr = extractvalue { i32, i1 } %i.fq, 1, !dbg !38329
    #dbg_value(i1 %i.fr, !37763, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36336)
  %i.fs = extractvalue { i32, i1 } %i.fq, 0, !dbg !38329 ; 2 uses
    #dbg_value(i32 %i.fs, !37763, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36336)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38330, !noalias !37777
    #dbg_value(i8 poison, !37763, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36336)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36323)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36322)
  %.not.i.i87.i.i = icmp sgt i32 %i.fs, %i.dr
  %or.cond.i88.i.i = or i1 %i.fr, %.not.i.i87.i.i, !dbg !38315
  br i1 %or.cond.i88.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %.lr.ph.i83.i.i, !dbg !38315

bb.o:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs0_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i64 64, i1 false), !dbg !38331, !noalias !37699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit234.i.i, !dbg !38332

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i: ; preds = %bb.bb, %.body.i.i, %.loopexit.split-lp286.i.i, %.loopexit285.i.i
  %.pn56.i.i = phi { ptr, i32 } [ %.pn54.i.i, %.body.i.i ], [ %.pn54.i.i, %bb.bb ], [ %lpad.loopexit287.i.i, %.loopexit285.i.i ], [ %lpad.loopexit.split-lp288.i.i, %.loopexit.split-lp286.i.i ] ; 2 uses
    #dbg_value(ptr %i.ap, !10477, !DIExpression(), !36367)
  %i.ft = load i8, ptr %i.ap, align 8, !dbg !38333, !range !10475, !alias.scope !37797, !noalias !37568, !noundef !3744
  %i.fu = icmp eq i8 %i.ft, -2, !dbg !38333
  br i1 %i.fu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i, label %bb.p, !dbg !38333

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit92.i.i unwind label %bb.en, !dbg !38333, !noalias !37691

.loopexit285.i.i:                                 ; preds = %.lr.ph.i83.i.i
  %lpad.loopexit287.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i

.loopexit.split-lp286.i.i:                        ; preds = %bb.ey, %bb.ei
  %lpad.loopexit.split-lp288.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.noexc90.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !dbg !38334, !noalias !37793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !38330, !noalias !37777
  %.pr265.i.i = load i8, ptr %i.ao, align 8, !dbg !38335, !noalias !37568
    #dbg_value(ptr %i.ao, !37513, !DIExpression(), !36362)
    #dbg_value(ptr %i.ao, !37510, !DIExpression(), !36364)
  %.not21.i.i = icmp eq i8 %.pr265.i.i, -2, !dbg !38335
  br i1 %.not21.i.i, label %bb.q, label %bb.r, !dbg !38327

bb.q:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  %i.fv = fcmp ogt double %i.di, 0.000000e+00, !dbg !38336
  br i1 %i.fv, label %bb.ai, label %.loopexit284.i.i, !dbg !38336

bb.r:                                             ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_aNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs1_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !38337, !noalias !37699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit232.i.i, !dbg !38338

.loopexit284.i.i:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i, %bb.ai, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !38339, !noalias !37568
    #dbg_value(ptr %i.au, !37484, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36370)
    #dbg_value(ptr %i.as, !37484, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36370)
    #dbg_value(ptr %i.at, !37484, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36370)
  call void @llvm.experimental.noalias.scope.decl(metadata !37799), !dbg !38340
    #dbg_value(ptr poison, !37464, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36376)
    #dbg_value(ptr poison, !37464, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36376)
    #dbg_value(ptr poison, !37468, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36377)
    #dbg_value(ptr poison, !37468, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36377)
    #dbg_value(ptr poison, !37473, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36378)
    #dbg_value(ptr poison, !37473, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36378)
    #dbg_value(i32 %i.cy, !37482, !DIExpression(), !36379)
    #dbg_value(i32 %i.cx, !37483, !DIExpression(), !36379)
    #dbg_declare(ptr %i.n, !37495, !DIExpression(), !36380)
    #dbg_declare(ptr %i.m, !37503, !DIExpression(), !36381)
    #dbg_declare(ptr %i.l, !37505, !DIExpression(), !36382)
    #dbg_value(double 2.000000e+00, !37801, !DIExpression(), !36385)
    #dbg_value(double 2.000000e+00, !37804, !DIExpression(), !36388)
    #dbg_value(i64 1, !37807, !DIExpression(), !36391)
    #dbg_value(i32 1, !37810, !DIExpression(), !36396)
    #dbg_value(i32 1, !37817, !DIExpression(), !36399)
    #dbg_value(i64 1, !37807, !DIExpression(), !36401)
    #dbg_value(i32 1, !37810, !DIExpression(), !36403)
    #dbg_value(i32 1, !37817, !DIExpression(), !36405)
  %i.fw = sitofp i32 %i.cy to double, !dbg !38341 ; 9 uses
  %i.fx = fdiv double %i.fw, f0x3FF6A09E667F3BCD, !dbg !38341 ; 2 uses
    #dbg_value(double %i.fx, !37485, !DIExpression(), !36406)
    #dbg_value(double %i.fx, !37823, !DIExpression(), !36409)
    #dbg_value(double %i.fx, !37825, !DIExpression(), !36412)
  %i.fy = fneg double %i.fx, !dbg !38342
    #dbg_value(double %i.fy, !37827, !DIExpression(), !36415)
    #dbg_value(double %i.fy, !37829, !DIExpression(), !36418)
  %i.fz = call double @llvm.ceil.f64(double %i.fy), !dbg !38343
  %i.ga = call i32 @llvm.fptosi.sat.i32.f64(double %i.fz), !dbg !38342 ; 3 uses
    #dbg_value(i32 %i.ga, !37486, !DIExpression(), !36419)
  %i.gb = call double @llvm.floor.f64(double %i.fx), !dbg !38344
  %i.gc = call i32 @llvm.fptosi.sat.i32.f64(double %i.gb), !dbg !38345 ; 5 uses
    #dbg_value(i32 %i.gc, !37487, !DIExpression(), !36419)
    #dbg_value(i32 %i.ga, !37488, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36420)
    #dbg_value(i32 %i.gc, !37488, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36420)
    #dbg_value(ptr undef, !37473, !DIExpression(), !36378)
    #dbg_value(ptr undef, !37468, !DIExpression(), !36377)
    #dbg_value(ptr undef, !37464, !DIExpression(), !36376)
    #dbg_value(ptr undef, !37465, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36421)
  %i.gd = icmp slt i32 %i.ga, %i.gc, !dbg !38346  ; 2 uses
  br i1 %i.gd, label %.lr.ph.i96.i.i, label %.preheader.i.i.i, !dbg !38347

.lr.ph.i96.i.i:                                   ; preds = %.loopexit284.i.i
  %i.ge = sitofp i32 %i.cx to double
  %i.gf = fadd double %i.fw, -1.000000e+00
  %i.gg = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.fw, i64 1 ; 2 uses
  %i.gi = fmul nnan <2 x double> %i.gh, %i.gh
  br label %bb.s, !dbg !38347

.preheader.i.i.i:                                 ; preds = %.backedge.i.i.i, %.loopexit284.i.i
  %.sroa.010.073.i.i.i = add i32 %i.gc, 1, !dbg !38348 ; 2 uses
  %i.gj = icmp slt i32 %.sroa.010.073.i.i.i, %i.cy, !dbg !38349
  br i1 %i.gj, label %.lr.ph76.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, !dbg !38350

.lr.ph76.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.gk = sitofp i32 %i.cx to double              ; 2 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = fadd double %i.fw, -1.000000e+00
  br label %bb.t, !dbg !38350

bb.s:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i96.i.i
  %.sroa.0.072.i.i.i = phi i32 [ %i.ga, %.lr.ph.i96.i.i ], [ %i.gn, %.backedge.i.i.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37469, !DIExpression(), !36422)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37808, !DIExpression(), !36391)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37811, !DIExpression(), !36396)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37818, !DIExpression(), !36399)
  %i.gn = add i32 %.sroa.0.072.i.i.i, 1, !dbg !38351 ; 2 uses
    #dbg_value(i32 %i.gn, !37488, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36420)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37489, !DIExpression(), !36425)
  %i.go = sitofp i32 %.sroa.0.072.i.i.i to double, !dbg !38352 ; 2 uses
  %i.gp = fmul nnan double %i.go, %i.go, !dbg !38352
    #dbg_value(double poison, !37802, !DIExpression(), !36427)
    #dbg_value(double poison, !37805, !DIExpression(), !36429)
    #dbg_value(double poison, !37490, !DIExpression(), !36430)
    #dbg_value(double poison, !37832, !DIExpression(), !36433)
    #dbg_value(double %i.gf, !37491, !DIExpression(), !36434)
    #dbg_value(double %i.gf, !37833, !DIExpression(), !36433)
    #dbg_value(double %i.gv, !37492, !DIExpression(), !36435)
  %i.gq = insertelement <2 x double> poison, double %i.gp, i64 0, !dbg !38353
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !38353
  %i.gs = fsub <2 x double> %i.gi, %i.gr, !dbg !38353
    #dbg_value(double poison, !37802, !DIExpression(), !36437)
    #dbg_value(double poison, !37805, !DIExpression(), !36439)
  %i.gt = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gs), !dbg !38354 ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0, !dbg !38355
  %i.gv = call nsz double @llvm.minimumnum.f64(double %i.gu, double %i.gf), !dbg !38355 ; 2 uses
    #dbg_value(double poison, !37493, !DIExpression(), !36440)
    #dbg_value(double poison, !37827, !DIExpression(), !36442)
    #dbg_value(double poison, !37829, !DIExpression(), !36444)
  %i.gw = extractelement <2 x double> %i.gt, i64 1, !dbg !38356 ; 3 uses
  %i.gx = fcmp ogt double %i.gw, %i.gv, !dbg !38356
  br i1 %i.gx, label %bb.af, label %bb.ag, !dbg !38356

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %bb.u, %.preheader.i.i.i
  store i8 -2, ptr %i.an, align 8, !dbg !38357, !alias.scope !37799, !noalias !37837
    #dbg_value(ptr %i.an, !37513, !DIExpression(), !36447)
    #dbg_value(ptr %i.an, !37510, !DIExpression(), !36449)
  br label %bb.bd, !dbg !38358

bb.t:                                             ; preds = %bb.u, %.lr.ph76.i.i.i
  %.sroa.010.0.in74.i.i.i = phi i32 [ %.sroa.010.073.i.i.i, %.lr.ph76.i.i.i ], [ %.sroa.010.0.i.i.i, %bb.u ] ; 4 uses
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37808, !DIExpression(), !36401)
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37811, !DIExpression(), !36403)
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37818, !DIExpression(), !36405)
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37496, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !36450)
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37497, !DIExpression(), !36451)
  %i.gy = sitofp i32 %.sroa.010.0.in74.i.i.i to double, !dbg !38359 ; 4 uses
    #dbg_value(double %i.gy, !37501, !DIExpression(), !36452)
  %i.gz = fmul nnan double %i.gy, %i.gy, !dbg !38359
  %i.ha = fsub double %i.gl, %i.gz, !dbg !38360
    #dbg_value(double %i.ha, !37802, !DIExpression(), !36454)
    #dbg_value(double %i.ha, !37805, !DIExpression(), !36456)
  %i.hb = call double @llvm.sqrt.f64(double %i.ha), !dbg !38361
    #dbg_value(double %i.hb, !37498, !DIExpression(), !36457)
    #dbg_value(double %i.hb, !37832, !DIExpression(), !36459)
    #dbg_value(double %i.gm, !37499, !DIExpression(), !36460)
    #dbg_value(double %i.gm, !37833, !DIExpression(), !36459)
  %i.hc = call nsz double @llvm.minimumnum.f64(double %i.hb, double %i.gm), !dbg !38362 ; 3 uses
    #dbg_value(double %i.hc, !37500, !DIExpression(), !36461)
  %i.hd = fcmp ogt double %i.hc, %i.gy, !dbg !38363
  br i1 %i.hd, label %bb.v, label %bb.u, !dbg !38363

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i, %bb.t
  %.sroa.010.0.i.i.i = add nsw i32 %.sroa.010.0.in74.i.i.i, 1, !dbg !38348 ; 2 uses
    #dbg_value(i32 %.sroa.010.0.i.i.i, !37496, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36450)
    #dbg_value(ptr undef, !37473, !DIExpression(), !35950)
    #dbg_value(ptr undef, !37468, !DIExpression(), !35949)
    #dbg_value(ptr undef, !37464, !DIExpression(), !35948)
    #dbg_value(ptr undef, !37465, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36462)
  %exitcond77.not.i.i.i = icmp eq i32 %.sroa.010.0.i.i.i, %i.cy, !dbg !38349
  br i1 %exitcond77.not.i.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %bb.t, !dbg !38350

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !38364, !noalias !37841
  %i.he = fadd double %i.gy, 1.000000e+00, !dbg !38365 ; 2 uses
    #dbg_value(ptr poison, !37843, !DIExpression(DW_OP_deref, DW_OP_deref), !36465)
    #dbg_value(ptr poison, !37849, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36465)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36465)
    #dbg_value(i32 %.sroa.010.0.in74.i.i.i, !37847, !DIExpression(), !36465)
    #dbg_value(double %i.hc, !37848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36465)
    #dbg_value(double %i.he, !37848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36465)
  %i.hf = load ptr, ptr %i.au, align 8, !dbg !38366, !noalias !37852, !nonnull !3744, !align !4908, !noundef !3744
  %i.hg = load ptr, ptr %i.as, align 8, !dbg !38367, !noalias !37852, !nonnull !3744, !align !4908, !noundef !3744
  %i.hh = load i32, ptr %i.at, align 4, !dbg !38368, !noalias !37852, !noundef !3744
  %i.hi = load i32, ptr %i.cz, align 4, !dbg !38368, !noalias !37852, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef align 8 dereferenceable(64) %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hg, i32 noundef %i.hh, i32 noundef %i.hi, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.010.0.in74.i.i.i, double noundef %i.hc, double noundef %i.he)
          to label %.noexc97.i.i unwind label %.loopexit275.i.i, !dbg !38369, !noalias !37691

.noexc97.i.i:                                     ; preds = %bb.v
    #dbg_value(ptr %i.m, !37853, !DIExpression(), !36471)
    #dbg_value(ptr %i.m, !37856, !DIExpression(), !36474)
  %i.hj = load i8, ptr %i.m, align 8, !dbg !38370, !range !10475, !noalias !37841, !noundef !3744
  %.not.i94.i.i = icmp eq i8 %i.hj, -2, !dbg !38370
  br i1 %.not.i94.i.i, label %bb.w, label %bb.x, !dbg !38371

bb.w:                                             ; preds = %.noexc97.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38372, !noalias !37841
  %7 = sub i32 0, %.sroa.010.0.in74.i.i.i, !dbg !38373
    #dbg_value(ptr poison, !37843, !DIExpression(DW_OP_deref, DW_OP_deref), !36476)
    #dbg_value(ptr poison, !37849, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36476)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36476)
    #dbg_value(i32 %7, !37847, !DIExpression(), !36476)
    #dbg_value(double %i.hc, !37848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36476)
    #dbg_value(double %i.he, !37848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36476)
  %i.hk = load ptr, ptr %i.au, align 8, !dbg !38374, !noalias !37859, !nonnull !3744, !align !4908, !noundef !3744
  %i.hl = load ptr, ptr %i.as, align 8, !dbg !38375, !noalias !37859, !nonnull !3744, !align !4908, !noundef !3744
  %i.hm = load i32, ptr %i.at, align 4, !dbg !38376, !noalias !37859, !noundef !3744
  %i.hn = load i32, ptr %i.cz, align 4, !dbg !38376, !noalias !37859, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef align 8 dereferenceable(64) %i.hk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl, i32 noundef %i.hm, i32 noundef %i.hn, i32 noundef 0, i32 noundef 1, i32 noundef %7, double noundef %i.hc, double noundef %i.he)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.y, !dbg !38377, !noalias !37860

bb.x:                                             ; preds = %.noexc97.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !dbg !38378, !noalias !37837
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i, !dbg !38379

bb.y:                                             ; preds = %bb.w
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36481)
  %i.hp = load i8, ptr %i.m, align 8, !dbg !38380, !range !10475, !alias.scope !37862, !noalias !37841, !noundef !3744
  %i.hq = icmp eq i8 %i.hp, -2, !dbg !38380
  br i1 %i.hq, label %.body.i.i, label %bb.z, !dbg !38380

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %.body.i.i unwind label %bb.ae, !dbg !38380, !noalias !37860

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.w
    #dbg_value(ptr %i.l, !37853, !DIExpression(), !36485)
    #dbg_value(ptr %i.l, !37856, !DIExpression(), !36487)
  %i.hr = load i8, ptr %i.l, align 8, !dbg !38381, !range !10475, !noalias !37841, !noundef !3744
  %.not65.i.i.i = icmp eq i8 %i.hr, -2, !dbg !38381
  br i1 %.not65.i.i.i, label %bb.ac, label %bb.aa, !dbg !38382

bb.aa:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !dbg !38383, !noalias !37837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !38384, !noalias !37841
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36489)
  %i.hs = load i8, ptr %i.m, align 8, !dbg !38385, !range !10475, !alias.scope !37865, !noalias !37841, !noundef !3744
  %i.ht = icmp eq i8 %i.hs, -2, !dbg !38385
  br i1 %i.ht, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i, label %bb.ab, !dbg !38385

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38385, !noalias !37691

bb.ac:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
    #dbg_value(ptr %i.l, !10477, !DIExpression(), !36493)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !38384, !noalias !37841
    #dbg_value(ptr %i.m, !10477, !DIExpression(), !36495)
  %i.hu = load i8, ptr %i.m, align 8, !dbg !38386, !range !10475, !alias.scope !37866, !noalias !37841, !noundef !3744
  %i.hv = icmp eq i8 %i.hu, -2, !dbg !38386
  br i1 %i.hv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i, label %bb.ad, !dbg !38386

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i unwind label %.loopexit275.i.i, !dbg !38386, !noalias !37691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !38387, !noalias !37841
  br label %bb.u, !dbg !38388

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !38387, !noalias !37841
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38389

bb.ae:                                            ; preds = %bb.z
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38390, !noalias !37860
  unreachable, !dbg !38390

bb.af:                                            ; preds = %bb.s
  %i.hx = call double @llvm.ceil.f64(double %i.gw), !dbg !38391 ; 2 uses
    #dbg_value(double %i.hx, !37492, !DIExpression(), !36435)
  %i.hy = fcmp ult double %i.hx, %i.fw, !dbg !38392
  br i1 %i.hy, label %bb.ag, label %.backedge.i.i.i, !dbg !38392

bb.ag:                                            ; preds = %bb.af, %bb.s
  %.sroa.03.0.i.i.i = phi double [ %i.hx, %bb.af ], [ %i.gv, %bb.s ], !dbg !38393
    #dbg_value(double %.sroa.03.0.i.i.i, !37492, !DIExpression(), !36435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !38394, !noalias !37841
    #dbg_value(ptr poison, !37843, !DIExpression(DW_OP_deref, DW_OP_deref), !36499)
    #dbg_value(ptr poison, !37849, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36499)
    #dbg_value(ptr poison, !37850, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36499)
    #dbg_value(i32 %.sroa.0.072.i.i.i, !37847, !DIExpression(), !36499)
    #dbg_value(double poison, !37848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36499)
    #dbg_value(double %.sroa.03.0.i.i.i, !37848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36499)
  %i.hz = load ptr, ptr %i.au, align 8, !dbg !38395, !noalias !37869, !nonnull !3744, !align !4908, !noundef !3744
  %i.ia = load ptr, ptr %i.as, align 8, !dbg !38396, !noalias !37869, !nonnull !3744, !align !4908, !noundef !3744
  %i.ib = load i32, ptr %i.at, align 4, !dbg !38397, !noalias !37869, !noundef !3744
  %i.ic = load i32, ptr %i.cz, align 4, !dbg !38397, !noalias !37869, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef align 8 dereferenceable(64) %i.hz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia, i32 noundef %i.ib, i32 noundef %i.ic, i32 noundef 0, i32 noundef 1, i32 noundef %.sroa.0.072.i.i.i, double noundef %i.gw, double noundef %.sroa.03.0.i.i.i)
          to label %.noexc100.i.i unwind label %.loopexit.split-lp276.loopexit.i.i, !dbg !38398, !noalias !37691

.noexc100.i.i:                                    ; preds = %bb.ag
    #dbg_value(ptr %i.n, !37853, !DIExpression(), !36504)
    #dbg_value(ptr %i.n, !37856, !DIExpression(), !36506)
  %i.id = load i8, ptr %i.n, align 8, !dbg !38399, !range !10475, !noalias !37841, !noundef !3744
  %.not66.i.i.i = icmp eq i8 %i.id, -2, !dbg !38399
  br i1 %.not66.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i, label %bb.ah, !dbg !38400

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i: ; preds = %.noexc100.i.i
    #dbg_value(ptr %i.n, !10477, !DIExpression(), !36508)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !38401, !noalias !37841
  br label %.backedge.i.i.i, !dbg !38402

.backedge.i.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i.i.i, %bb.af
    #dbg_value(i32 %i.gn, !37488, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36420)
    #dbg_value(ptr undef, !37473, !DIExpression(), !36378)
    #dbg_value(ptr undef, !37468, !DIExpression(), !36377)
    #dbg_value(ptr undef, !37464, !DIExpression(), !36376)
    #dbg_value(ptr undef, !37465, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36421)
  %exitcond.not.i.i.i = icmp eq i32 %i.gn, %i.gc, !dbg !38346
  br i1 %exitcond.not.i.i.i, label %.preheader.i.i.i, label %bb.s, !dbg !38347

bb.ah:                                            ; preds = %.noexc100.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !38403, !noalias !37837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !38401, !noalias !37841
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38389

bb.ai:                                            ; preds = %bb.q
  %i.ie = tail call double @llvm.floor.f64(double %i.di), !dbg !38404
    #dbg_value(ptr %i.au, !37870, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36516)
    #dbg_value(ptr %i.at, !37870, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36516)
    #dbg_value(ptr %i.as, !37870, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36516)
    #dbg_declare(ptr %.sroa.10.i.i.i, !37883, !DIExpression(DW_OP_LLVM_fragment, 8, 504), !36517)
    #dbg_value(ptr poison, !10477, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36519)
    #dbg_value(ptr %.sroa.10.i.i.i, !10477, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36519)
    #dbg_declare(ptr poison, !37880, !DIExpression(DW_OP_LLVM_fragment, 72, 24), !36520)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36523)
    #dbg_value(ptr poison, !37525, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36523)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36524)
    #dbg_value(ptr poison, !37534, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36524)
    #dbg_value(double %i.dg, !37877, !DIExpression(), !36525)
    #dbg_value(double %i.dg, !37887, !DIExpression(), !36528)
    #dbg_value(double %i.dg, !37889, !DIExpression(), !36531)
    #dbg_value(double %i.ie, !37878, !DIExpression(), !36525)
  %i.if = tail call double @llvm.floor.f64(double %i.dg), !dbg !38405 ; 2 uses
    #dbg_value(double %i.if, !37879, !DIExpression(), !36532)
  %i.ig = fsub double %i.if, %i.ie, !dbg !38406
    #dbg_value(double %i.ig, !37887, !DIExpression(), !36534)
    #dbg_value(double %i.ig, !37889, !DIExpression(), !36536)
  %i.ih = tail call double @llvm.floor.f64(double %i.ig), !dbg !38407
  %i.ii = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ih), !dbg !38406 ; 2 uses
  %i.ij = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.if), !dbg !38408 ; 2 uses
    #dbg_value(i32 %i.ii, !37880, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36537)
    #dbg_value(i32 %i.ij, !37880, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36537)
    #dbg_value(i8 poison, !37880, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36537)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36524)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36523)
  %.not.i19.i.i.i = icmp sgt i32 %i.ii, %i.ij
  br i1 %.not.i19.i.i.i, label %.loopexit284.i.i, label %.lr.ph.i101.i.i, !dbg !38409

.lr.ph.i101.i.i:                                  ; preds = %bb.ai
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  %.sroa.5.0..sroa_idx.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i16.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.5.0..sroa_idx.i17.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.5.0..sroa_idx.i21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  br label %bb.aj, !dbg !38409

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i, %.lr.ph.i101.i.i
  %.sroa.0.020.i.i.i = phi i32 [ %i.ii, %.lr.ph.i101.i.i ], [ %i.ip, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i ] ; 11 uses
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37880, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36537)
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37623, !DIExpression(), !36539)
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37629, !DIExpression(), !36541)
    #dbg_value(i64 1, !37626, !DIExpression(), !36539)
    #dbg_value(i32 1, !37627, !DIExpression(), !36542)
    #dbg_value(i32 1, !37630, !DIExpression(), !36541)
  %i.io = call noundef { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.0.020.i.i.i, i32 1), !dbg !38410 ; 2 uses
  %i.ip = extractvalue { i32, i1 } %i.io, 0, !dbg !38411 ; 2 uses
  %i.iq = extractvalue { i32, i1 } %i.io, 1, !dbg !38411
    #dbg_value(i32 %i.ip, !37880, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36537)
    #dbg_value(i1 %i.iq, !37880, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !36537)
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37881, !DIExpression(), !36544)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i), !dbg !38412
    #dbg_value(ptr poison, !37893, !DIExpression(DW_OP_deref, DW_OP_deref), !36554)
    #dbg_value(ptr poison, !37898, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36554)
    #dbg_value(ptr poison, !37899, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36554)
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37897, !DIExpression(), !36554)
    #dbg_value(double poison, !37912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36554)
    #dbg_value(double poison, !37912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36554)
    #dbg_declare(ptr %i.k, !37905, !DIExpression(), !36555)
    #dbg_declare(ptr %i.i, !37907, !DIExpression(), !36556)
    #dbg_declare(ptr %i.g, !37909, !DIExpression(), !36557)
    #dbg_declare(ptr %i.e, !37911, !DIExpression(), !36558)
    #dbg_value(double poison, !37900, !DIExpression(), !36559)
    #dbg_value(double poison, !37901, !DIExpression(), !36559)
    #dbg_value(!DIArgList(i32 0, i32 %.sroa.0.020.i.i.i), !37902, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !36560)
    #dbg_value(i32 %.sroa.0.020.i.i.i, !37903, !DIExpression(), !36561)
end_hunk_1
begin_hunk_2_@_RINvYNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtCshnIEpH9fIfn_16plotters_backend14DrawingBackend11draw_circleNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer:bb.a
bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i, !dbg !38490, !noalias !37691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i: ; preds = %bb.av
    #dbg_value(i8 %i.lg, !37883, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36581)
  %.sroa.10.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !38491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.0..sroa_idx28.i.i.i, i64 63, i1 false), !dbg !38491, !noalias !37924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !38487, !noalias !37914
    #dbg_value(ptr %i.g, !10477, !DIExpression(), !36640)
  %.pre.i.i.i.i = load i8, ptr %i.i, align 8, !dbg !38469, !range !10475, !alias.scope !37950, !noalias !37914
  %i.lk = icmp eq i8 %.pre.i.i.i.i, -2, !dbg !38469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38468, !noalias !37914
    #dbg_value(ptr %i.i, !10477, !DIExpression(), !36613)
  br i1 %i.lk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i, label %bb.ay, !dbg !38469

bb.ay:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i unwind label %.loopexit.split-lp.i.i.i, !dbg !38469, !noalias !37927

bb.az:                                            ; preds = %bb.ap, %bb.al
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38492, !noalias !37927
  unreachable, !dbg !38492

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i: ; preds = %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.thread.i.i.i.i, %bb.ao
  %.sroa.0.0.i.i.i = phi i8 [ %i.lg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.i.i.i.i ], [ %i.lg, %bb.ay ], [ %i.kq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit27.thread.i.i.i.i ], [ %i.jw, %bb.ao ], !dbg !38448 ; 2 uses
    #dbg_value(i8 %.sroa.0.0.i.i.i, !37883, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36581)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !38489, !noalias !37914
    #dbg_value(ptr %i.k, !10477, !DIExpression(), !36644)
  %i.lm = load i8, ptr %i.k, align 8, !dbg !38493, !range !10475, !alias.scope !37951, !noalias !37914, !noundef !3744
  %i.ln = icmp eq i8 %i.lm, -2, !dbg !38493
  br i1 %i.ln, label %bb.bc, label %bb.ba, !dbg !38493

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.bc unwind label %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38493, !noalias !37691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit.i102.i.i: ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit31.i.i.i.i
    #dbg_value(i8 -2, !37883, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36581)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38494, !noalias !37914
    #dbg_value(ptr undef, !10477, !DIExpression(), !36519)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i), !dbg !38495
    #dbg_value(i32 %i.ip, !37880, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36537)
    #dbg_value(i8 poison, !37880, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !36537)
    #dbg_value(ptr undef, !37534, !DIExpression(), !36524)
    #dbg_value(ptr undef, !37525, !DIExpression(), !36523)
  %.not.i.i103.i.i = icmp sgt i32 %i.ip, %i.ij
  %or.cond.i104.i.i = or i1 %i.iq, %.not.i.i103.i.i, !dbg !38409
  br i1 %or.cond.i104.i.i, label %.loopexit284.i.i, label %bb.aj, !dbg !38409

.body.i.i:                                        ; preds = %bb.bv, %.body138.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp276.loopexit.i.i, %.loopexit275.i.i, %bb.al, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit19.i.i.i.i, %bb.z, %bb.y
  %.pn54.i.i = phi { ptr, i32 } [ %.pn12.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit19.i.i.i.i ], [ %i.ho, %bb.y ], [ %i.ho, %bb.z ], [ %.pn52.i.i, %.body138.i.i ], [ %.pn12.i.i.i.i, %bb.al ], [ %.pn52.i.i, %bb.bv ], [ %lpad.loopexit277.i.i, %.loopexit275.i.i ], [ %lpad.loopexit279.i.i, %.loopexit.split-lp276.loopexit.i.i ], [ %lpad.loopexit282.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp276.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
    #dbg_value(ptr %i.ao, !10477, !DIExpression(), !36648)
  %i.lo = load i8, ptr %i.ao, align 8, !dbg !38496, !range !10475, !alias.scope !37952, !noalias !37568, !noundef !3744
  %i.lp = icmp eq i8 %i.lo, -2, !dbg !38496
  br i1 %i.lp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i, label %bb.bb, !dbg !38496

bb.bb:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ao)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit112.i.i unwind label %bb.en, !dbg !38496, !noalias !37691

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
  %.sroa.0.1.ph.i.i.i = phi i8 [ %i.jf, %bb.ak ], [ %.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit34.i.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.ba ]
    #dbg_value(i8 %.sroa.0.1.ph.i.i.i, !37883, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36581)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38494, !noalias !37914
    #dbg_value(i8 %.sroa.0.1.ph.i.i.i, !37386, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36651)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !38497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.10.i.i.i, i64 63, i1 false), !dbg !38498, !noalias !37699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i), !dbg !38495
    #dbg_value(ptr undef, !37513, !DIExpression(), !35959)
    #dbg_value(ptr undef, !37510, !DIExpression(), !35958)
  store i8 %.sroa.0.1.ph.i.i.i, ptr %0, align 8, !dbg !38497, !alias.scope !37691, !noalias !37699
  br label %bb.ex, !dbg !38338

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i.i.i
  %.pr268.i.i = load i8, ptr %i.an, align 8, !dbg !38499, !noalias !37568
    #dbg_value(ptr %i.an, !37513, !DIExpression(), !36447)
    #dbg_value(ptr %i.an, !37510, !DIExpression(), !36449)
  %.not23.i.i = icmp eq i8 %.pr268.i.i, -2, !dbg !38499
  br i1 %.not23.i.i, label %bb.bd, label %bb.bu, !dbg !38358

bb.bd:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !38500, !noalias !37568
    #dbg_value(ptr %i.au, !37344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36652)
    #dbg_value(ptr %i.as, !37344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36652)
    #dbg_value(ptr %i.at, !37344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36652)
  call void @llvm.experimental.noalias.scope.decl(metadata !37953), !dbg !38501
    #dbg_value(ptr poison, !37324, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36658)
    #dbg_value(ptr poison, !37324, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36658)
    #dbg_value(ptr poison, !37328, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36659)
    #dbg_value(ptr poison, !37328, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36659)
    #dbg_value(ptr poison, !37333, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36660)
    #dbg_value(ptr poison, !37333, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36660)
    #dbg_value(i32 %i.cy, !37342, !DIExpression(), !36661)
    #dbg_value(i32 %i.cx, !37343, !DIExpression(), !36661)
    #dbg_declare(ptr %i.c, !37355, !DIExpression(), !36662)
    #dbg_declare(ptr %i.b, !37363, !DIExpression(), !36663)
    #dbg_declare(ptr %i.a, !37365, !DIExpression(), !36664)
    #dbg_value(double 2.000000e+00, !37955, !DIExpression(), !36667)
    #dbg_value(double 2.000000e+00, !37958, !DIExpression(), !36670)
    #dbg_value(i64 1, !37961, !DIExpression(), !36673)
    #dbg_value(i32 1, !37964, !DIExpression(), !36678)
    #dbg_value(i32 1, !37971, !DIExpression(), !36681)
    #dbg_value(i64 1, !37961, !DIExpression(), !36683)
    #dbg_value(i32 1, !37964, !DIExpression(), !36685)
    #dbg_value(i32 1, !37971, !DIExpression(), !36687)
    #dbg_value(double %i.fx, !37345, !DIExpression(), !36688)
    #dbg_value(double %i.fy, !37977, !DIExpression(), !36691)
    #dbg_value(double %i.fy, !37979, !DIExpression(), !36694)
    #dbg_value(i32 %i.ga, !37346, !DIExpression(), !36695)
    #dbg_value(i32 %i.gc, !37347, !DIExpression(), !36695)
    #dbg_value(i32 %i.ga, !37348, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36696)
    #dbg_value(i32 %i.gc, !37348, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !36696)
    #dbg_value(ptr undef, !37333, !DIExpression(), !36660)
    #dbg_value(ptr undef, !37328, !DIExpression(), !36659)
    #dbg_value(ptr undef, !37324, !DIExpression(), !36658)
    #dbg_value(ptr undef, !37325, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36697)
  br i1 %i.gd, label %.lr.ph.i128.i.i, label %.preheader.i115.i.i, !dbg !38502

.lr.ph.i128.i.i:                                  ; preds = %bb.bd
  %i.lq = sitofp i32 %i.cx to double
  %i.lr = fadd double %i.fw, -1.000000e+00
  %i.ls = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.fw, i64 1 ; 2 uses
  %i.lu = fmul nnan <2 x double> %i.lt, %i.lt
  br label %bb.be, !dbg !38502

.preheader.i115.i.i:                              ; preds = %.backedge.i133.i.i, %bb.bd
  %.sroa.010.073.i116.i.i = add i32 %i.gc, 1, !dbg !38503 ; 2 uses
  %i.lv = icmp slt i32 %.sroa.010.073.i116.i.i, %i.cy, !dbg !38504
  br i1 %i.lv, label %.lr.ph76.i118.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, !dbg !38505

.lr.ph76.i118.i.i:                                ; preds = %.preheader.i115.i.i
  %i.lw = sitofp i32 %i.cx to double              ; 2 uses
  %i.lx = fmul double %i.lw, %i.lw
  %i.ly = fadd double %i.fw, -1.000000e+00
  br label %bb.bf, !dbg !38505

bb.be:                                            ; preds = %.backedge.i133.i.i, %.lr.ph.i128.i.i
  %.sroa.0.072.i129.i.i = phi i32 [ %i.ga, %.lr.ph.i128.i.i ], [ %i.lz, %.backedge.i133.i.i ] ; 3 uses
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37329, !DIExpression(), !36698)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37962, !DIExpression(), !36673)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37965, !DIExpression(), !36678)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37972, !DIExpression(), !36681)
  %i.lz = add i32 %.sroa.0.072.i129.i.i, 1, !dbg !38506 ; 2 uses
    #dbg_value(i32 %i.lz, !37348, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36696)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37349, !DIExpression(), !36701)
  %i.ma = sitofp i32 %.sroa.0.072.i129.i.i to double, !dbg !38507 ; 2 uses
  %i.mb = fmul nnan double %i.ma, %i.ma, !dbg !38507
    #dbg_value(double poison, !37956, !DIExpression(), !36703)
    #dbg_value(double poison, !37959, !DIExpression(), !36705)
    #dbg_value(double poison, !37350, !DIExpression(), !36706)
    #dbg_value(double poison, !37982, !DIExpression(), !36709)
    #dbg_value(double %i.lr, !37351, !DIExpression(), !36710)
    #dbg_value(double %i.lr, !37983, !DIExpression(), !36709)
    #dbg_value(double %i.mh, !37352, !DIExpression(), !36711)
  %i.mc = insertelement <2 x double> poison, double %i.mb, i64 0, !dbg !38508
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !38508
  %i.me = fsub <2 x double> %i.lu, %i.md, !dbg !38508
    #dbg_value(double poison, !37956, !DIExpression(), !36713)
    #dbg_value(double poison, !37959, !DIExpression(), !36715)
  %i.mf = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.me), !dbg !38509 ; 2 uses
  %i.mg = extractelement <2 x double> %i.mf, i64 0, !dbg !38510
  %i.mh = call nsz double @llvm.minimumnum.f64(double %i.mg, double %i.lr), !dbg !38510 ; 2 uses
    #dbg_value(double poison, !37353, !DIExpression(), !36716)
    #dbg_value(double poison, !37977, !DIExpression(), !36718)
    #dbg_value(double poison, !37979, !DIExpression(), !36720)
  %i.mi = extractelement <2 x double> %i.mf, i64 1, !dbg !38511 ; 3 uses
  %i.mj = fcmp ogt double %i.mi, %i.mh, !dbg !38511
  br i1 %i.mj, label %bb.br, label %bb.bs, !dbg !38511

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i: ; preds = %bb.bg, %.preheader.i115.i.i
  store i8 -2, ptr %i.am, align 8, !dbg !38512, !alias.scope !37953, !noalias !37987
    #dbg_value(ptr %i.am, !37513, !DIExpression(), !36723)
    #dbg_value(ptr %i.am, !37510, !DIExpression(), !36725)
  br label %bb.bw, !dbg !38513

bb.bf:                                            ; preds = %bb.bg, %.lr.ph76.i118.i.i
  %.sroa.010.0.in74.i120.i.i = phi i32 [ %.sroa.010.073.i116.i.i, %.lr.ph76.i118.i.i ], [ %.sroa.010.0.i121.i.i, %bb.bg ] ; 4 uses
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37962, !DIExpression(), !36683)
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37965, !DIExpression(), !36685)
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37972, !DIExpression(), !36687)
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37356, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !36726)
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37357, !DIExpression(), !36727)
  %i.mk = sitofp i32 %.sroa.010.0.in74.i120.i.i to double, !dbg !38514 ; 4 uses
    #dbg_value(double %i.mk, !37361, !DIExpression(), !36728)
  %i.ml = fmul nnan double %i.mk, %i.mk, !dbg !38514
  %i.mm = fsub double %i.lx, %i.ml, !dbg !38515
    #dbg_value(double %i.mm, !37956, !DIExpression(), !36730)
    #dbg_value(double %i.mm, !37959, !DIExpression(), !36732)
  %i.mn = call double @llvm.sqrt.f64(double %i.mm), !dbg !38516
    #dbg_value(double %i.mn, !37358, !DIExpression(), !36733)
    #dbg_value(double %i.mn, !37982, !DIExpression(), !36735)
    #dbg_value(double %i.ly, !37359, !DIExpression(), !36736)
    #dbg_value(double %i.ly, !37983, !DIExpression(), !36735)
  %i.mo = call nsz double @llvm.minimumnum.f64(double %i.mn, double %i.ly), !dbg !38517 ; 3 uses
    #dbg_value(double %i.mo, !37360, !DIExpression(), !36737)
  %i.mp = fcmp ogt double %i.mo, %i.mk, !dbg !38518
  br i1 %i.mp, label %bb.bh, label %bb.bg, !dbg !38518

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i, %bb.bf
  %.sroa.010.0.i121.i.i = add nsw i32 %.sroa.010.0.in74.i120.i.i, 1, !dbg !38503 ; 2 uses
    #dbg_value(i32 %.sroa.010.0.i121.i.i, !37356, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36726)
    #dbg_value(ptr undef, !37333, !DIExpression(), !35919)
    #dbg_value(ptr undef, !37328, !DIExpression(), !35918)
    #dbg_value(ptr undef, !37324, !DIExpression(), !35917)
    #dbg_value(ptr undef, !37325, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36738)
  %exitcond77.not.i122.i.i = icmp eq i32 %.sroa.010.0.i121.i.i, %i.cy, !dbg !38504
  br i1 %exitcond77.not.i122.i.i, label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i, label %bb.bf, !dbg !38505

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38519, !noalias !37991
  %i.mq = fadd double %i.mk, 1.000000e+00, !dbg !38520 ; 2 uses
    #dbg_value(ptr poison, !37993, !DIExpression(DW_OP_deref, DW_OP_deref), !36741)
    #dbg_value(ptr poison, !37999, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36741)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36741)
    #dbg_value(i32 %.sroa.010.0.in74.i120.i.i, !37997, !DIExpression(), !36741)
    #dbg_value(double %i.mo, !37998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36741)
    #dbg_value(double %i.mq, !37998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36741)
  %i.mr = load ptr, ptr %i.au, align 8, !dbg !38521, !noalias !38002, !nonnull !3744, !align !4908, !noundef !3744
  %i.ms = load ptr, ptr %i.as, align 8, !dbg !38522, !noalias !38002, !nonnull !3744, !align !4908, !noundef !3744
  %i.mt = load i32, ptr %i.at, align 4, !dbg !38523, !noalias !38002, !noundef !3744
  %i.mu = load i32, ptr %i.cz, align 4, !dbg !38523, !noalias !38002, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef align 8 dereferenceable(64) %i.mr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ms, i32 noundef %i.mt, i32 noundef %i.mu, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.010.0.in74.i120.i.i, double noundef %i.mo, double noundef %i.mq)
          to label %.noexc135.i.i unwind label %.loopexit.i.i, !dbg !38524, !noalias !37691

.noexc135.i.i:                                    ; preds = %bb.bh
    #dbg_value(ptr %i.b, !38003, !DIExpression(), !36747)
    #dbg_value(ptr %i.b, !38006, !DIExpression(), !36750)
  %i.mv = load i8, ptr %i.b, align 8, !dbg !38525, !range !10475, !noalias !37991, !noundef !3744
  %.not.i123.i.i = icmp eq i8 %i.mv, -2, !dbg !38525
  br i1 %.not.i123.i.i, label %bb.bi, label %bb.bj, !dbg !38526

bb.bi:                                            ; preds = %.noexc135.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38527, !noalias !37991
  %8 = sub i32 0, %.sroa.010.0.in74.i120.i.i, !dbg !38528
    #dbg_value(ptr poison, !37993, !DIExpression(DW_OP_deref, DW_OP_deref), !36752)
    #dbg_value(ptr poison, !37999, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36752)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36752)
    #dbg_value(i32 %8, !37997, !DIExpression(), !36752)
    #dbg_value(double %i.mo, !37998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36752)
    #dbg_value(double %i.mq, !37998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36752)
  %i.mw = load ptr, ptr %i.au, align 8, !dbg !38529, !noalias !38009, !nonnull !3744, !align !4908, !noundef !3744
  %i.mx = load ptr, ptr %i.as, align 8, !dbg !38530, !noalias !38009, !nonnull !3744, !align !4908, !noundef !3744
  %i.my = load i32, ptr %i.at, align 4, !dbg !38531, !noalias !38009, !noundef !3744
  %i.mz = load i32, ptr %i.cz, align 4, !dbg !38531, !noalias !38009, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef align 8 dereferenceable(64) %i.mw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mx, i32 noundef %i.my, i32 noundef %i.mz, i32 noundef 0, i32 noundef -1, i32 noundef %8, double noundef %i.mo, double noundef %i.mq)
          to label %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i unwind label %bb.bk, !dbg !38532, !noalias !38010

bb.bj:                                            ; preds = %.noexc135.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !38533, !noalias !37987
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i, !dbg !38534

bb.bk:                                            ; preds = %bb.bi
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36757)
  %i.nb = load i8, ptr %i.b, align 8, !dbg !38535, !range !10475, !alias.scope !38012, !noalias !37991, !noundef !3744
  %i.nc = icmp eq i8 %i.nb, -2, !dbg !38535
  br i1 %i.nc, label %.body138.i.i, label %bb.bl, !dbg !38535

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.body138.i.i unwind label %bb.bq, !dbg !38535, !noalias !38010

_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i: ; preds = %bb.bi
    #dbg_value(ptr %i.a, !38003, !DIExpression(), !36761)
    #dbg_value(ptr %i.a, !38006, !DIExpression(), !36763)
  %i.nd = load i8, ptr %i.a, align 8, !dbg !38536, !range !10475, !noalias !37991, !noundef !3744
  %.not65.i126.i.i = icmp eq i8 %i.nd, -2, !dbg !38536
  br i1 %.not65.i126.i.i, label %bb.bo, label %bb.bm, !dbg !38537

bb.bm:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !dbg !38538, !noalias !37987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38539, !noalias !37991
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36765)
  %i.ne = load i8, ptr %i.b, align 8, !dbg !38540, !range !10475, !alias.scope !38015, !noalias !37991, !noundef !3744
  %i.nf = icmp eq i8 %i.ne, -2, !dbg !38540
  br i1 %i.nf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i, label %bb.bn, !dbg !38540

bb.bn:                                            ; preds = %bb.bm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !38540, !noalias !37691

bb.bo:                                            ; preds = %_RNCINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle12draw_annulusNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i
    #dbg_value(ptr %i.a, !10477, !DIExpression(), !36769)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38539, !noalias !37991
    #dbg_value(ptr %i.b, !10477, !DIExpression(), !36771)
  %i.ng = load i8, ptr %i.b, align 8, !dbg !38541, !range !10475, !alias.scope !38016, !noalias !37991, !noundef !3744
  %i.nh = icmp eq i8 %i.ng, -2, !dbg !38541
  br i1 %i.nh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i, label %bb.bp, !dbg !38541

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i unwind label %.loopexit.i.i, !dbg !38541, !noalias !37691

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit70.i127.i.i: ; preds = %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38542, !noalias !37991
  br label %bb.bg, !dbg !38543

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i: ; preds = %bb.bn, %bb.bm, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38542, !noalias !37991
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38544

bb.bq:                                            ; preds = %bb.bl
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !dbg !38545, !noalias !38010
  unreachable, !dbg !38545

bb.br:                                            ; preds = %bb.be
  %i.nj = call double @llvm.ceil.f64(double %i.mi), !dbg !38546 ; 2 uses
    #dbg_value(double %i.nj, !37352, !DIExpression(), !36711)
  %i.nk = fcmp ult double %i.nj, %i.fw, !dbg !38547
  br i1 %i.nk, label %bb.bs, label %.backedge.i133.i.i, !dbg !38547

bb.bs:                                            ; preds = %bb.br, %bb.be
  %.sroa.03.0.i130.i.i = phi double [ %i.nj, %bb.br ], [ %i.mh, %bb.be ], !dbg !38548
    #dbg_value(double %.sroa.03.0.i130.i.i, !37352, !DIExpression(), !36711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !38549, !noalias !37991
    #dbg_value(ptr poison, !37993, !DIExpression(DW_OP_deref, DW_OP_deref), !36775)
    #dbg_value(ptr poison, !37999, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8, DW_OP_deref), !36775)
    #dbg_value(ptr poison, !38000, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_deref), !36775)
    #dbg_value(i32 %.sroa.0.072.i129.i.i, !37997, !DIExpression(), !36775)
    #dbg_value(double poison, !37998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36775)
    #dbg_value(double %.sroa.03.0.i130.i.i, !37998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36775)
  %i.nl = load ptr, ptr %i.au, align 8, !dbg !38550, !noalias !38019, !nonnull !3744, !align !4908, !noundef !3744
  %i.nm = load ptr, ptr %i.as, align 8, !dbg !38551, !noalias !38019, !nonnull !3744, !align !4908, !noundef !3744
  %i.nn = load i32, ptr %i.at, align 4, !dbg !38552, !noalias !38019, !noundef !3744
  %i.no = load i32, ptr %i.cz, align 4, !dbg !38552, !noalias !38019, !noundef !3744
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle15draw_sweep_lineNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.nl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nm, i32 noundef %i.nn, i32 noundef %i.no, i32 noundef 0, i32 noundef -1, i32 noundef %.sroa.0.072.i129.i.i, double noundef %i.mi, double noundef %.sroa.03.0.i130.i.i)
          to label %.noexc140.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !38553, !noalias !37691

.noexc140.i.i:                                    ; preds = %bb.bs
    #dbg_value(ptr %i.c, !38003, !DIExpression(), !36780)
    #dbg_value(ptr %i.c, !38006, !DIExpression(), !36782)
  %i.np = load i8, ptr %i.c, align 8, !dbg !38554, !range !10475, !noalias !37991, !noundef !3744
  %.not66.i131.i.i = icmp eq i8 %i.np, -2, !dbg !38554
  br i1 %.not66.i131.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i, label %bb.bt, !dbg !38555

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i: ; preds = %.noexc140.i.i
    #dbg_value(ptr %i.c, !10477, !DIExpression(), !36784)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38556, !noalias !37991
  br label %.backedge.i133.i.i, !dbg !38557

.backedge.i133.i.i:                               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit71.i132.i.i, %bb.br
    #dbg_value(i32 %i.lz, !37348, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !36696)
    #dbg_value(ptr undef, !37333, !DIExpression(), !36660)
    #dbg_value(ptr undef, !37328, !DIExpression(), !36659)
    #dbg_value(ptr undef, !37324, !DIExpression(), !36658)
    #dbg_value(ptr undef, !37325, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !36697)
  %exitcond.not.i134.i.i = icmp eq i32 %i.lz, %i.gc, !dbg !38558
  br i1 %exitcond.not.i134.i.i, label %.preheader.i115.i.i, label %bb.be, !dbg !38502

bb.bt:                                            ; preds = %.noexc140.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !38559, !noalias !37987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38556, !noalias !37991
  br label %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !38544

bb.bu:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs3_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false), !dbg !38560, !noalias !37699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit230.i.i, !dbg !38561

.body138.i.i:                                     ; preds = %bb.by, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.bl, %bb.bk
  %.pn52.i.i = phi { ptr, i32 } [ %i.na, %bb.bk ], [ %.pn50.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i ], [ %i.na, %bb.bl ], [ %.pn50.i.i, %bb.by ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit272.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp273.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
    #dbg_value(ptr %i.an, !10477, !DIExpression(), !36786)
  %i.nq = load i8, ptr %i.an, align 8, !dbg !38562, !range !10475, !alias.scope !38021, !noalias !37568, !noundef !3744
  %i.nr = icmp eq i8 %i.nq, -2, !dbg !38562
  br i1 %i.nr, label %.body.i.i, label %bb.bv, !dbg !38562

bb.bv:                                            ; preds = %.body138.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.an)
          to label %.body.i.i unwind label %bb.en, !dbg !38562, !noalias !37691

.loopexit.i.i:                                    ; preds = %bb.bp, %bb.bh
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body138.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.bs
  %lpad.loopexit272.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body138.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %bb.ev, %bb.eg, %bb.bn
  %lpad.loopexit.split-lp273.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body138.i.i

_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.bt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit69.i124.i.i
  %.pr270.i.i = load i8, ptr %i.am, align 8, !dbg !38563, !noalias !37568
    #dbg_value(ptr %i.am, !37513, !DIExpression(), !36723)
    #dbg_value(ptr %i.am, !37510, !DIExpression(), !36725)
  %.not24.i.i = icmp eq i8 %.pr270.i.i, -2, !dbg !38563
  br i1 %.not24.i.i, label %bb.bw, label %bb.bx, !dbg !38513

bb.bw:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !38564, !noalias !37568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !38565, !noalias !37568
  store ptr %i.au, ptr %i.ak, align 8, !dbg !38565, !noalias !37568
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !38565
  store ptr %i.as, ptr %i.ns, align 8, !dbg !38565, !noalias !37568
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !38565
  store ptr %i.at, ptr %i.nt, align 8, !dbg !38565, !noalias !37568
  invoke fastcc void @_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs5_0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.al, i32 noundef range(i32 1, 0) %i.cy, i32 noundef %i.cx, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.ca unwind label %bb.bz, !dbg !38566, !noalias !37691

bb.bx:                                            ; preds = %_RINvNtNtCshnIEpH9fIfn_16plotters_backend10rasterizer6circle11draw_part_cNtNtCs29sfksKwgjx_15plotters_bitmap6bitmap13BitMapBackendNCINvB2_12draw_annulusB18_NtNtNtCs4bweDUTR8gt_8plotters5style5shape10ShapeStyleEs4_0ECsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i64 64, i1 false), !dbg !38567, !noalias !37699
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit228.i.i, !dbg !38568

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i: ; preds = %bb.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit148.i.i, %bb.bz
  %.pn50.i.i = phi { ptr, i32 } [ %i.nw, %bb.bz ], [ %.pn48.i.i, %bb.cd ], [ %.pn48.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit148.i.i ] ; 2 uses
    #dbg_value(ptr %i.am, !10477, !DIExpression(), !36790)
  %i.nu = load i8, ptr %i.am, align 8, !dbg !38569, !range !10475, !alias.scope !38023, !noalias !37568, !noundef !3744
  %i.nv = icmp eq i8 %i.nu, -2, !dbg !38569
  br i1 %i.nv, label %.body138.i.i, label %bb.by, !dbg !38569

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.am)
          to label %.body138.i.i unwind label %bb.en, !dbg !38569, !noalias !37691

bb.bz:                                            ; preds = %bb.eu, %bb.ef, %bb.bw
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtCshnIEpH9fIfn_16plotters_backend16DrawingErrorKindNtNtCs29sfksKwgjx_15plotters_bitmap5error18BitMapBackendErrorEEECsaTqK2fWTXJW_11qlog_dancer.exit146.i.i

bb.ca:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !38570, !noalias !37568
    #dbg_value(ptr %i.al, !37513, !DIExpression(), !36794)
    #dbg_value(ptr %i.al, !37510, !DIExpression(), !36796)
  %i.nx = load i8, ptr %i.al, align 8, !dbg !38571, !range !10475, !noalias !37568, !noundef !3744
  %.not25.i.i = icmp eq i8 %i.nx, -2, !dbg !38571
  br i1 %.not25.i.i, label %bb.cb, label %bb.cc, !dbg !38572

bb.cb:                                            ; preds = %bb.ca
end_hunk_2
