Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellINtNtNtCsdaEETE4DqmE_13typst_library6layout7corners7CornersINtNtBT_3rel3RelNtNtBT_3abs3AbsEENCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs0_0E11really_initB2q_:bb.a
  %i.bf = trunc nuw i64 %.sroa.1524.0.copyload.i.i to i1
  %or.cond.i.i23.i.i.i.i = select i1 %i.ag, i1 %i.bf, i1 false
  br i1 %or.cond.i.i23.i.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i = select i1 %i.ag, i64 1, i64 %.sroa.1524.0.copyload.i.i
  %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i = select i1 %i.ag, double %.val.i.i14.i.i.i, double %.sroa.1625.0.copyload.i.i
  %i.bg = insertelement <2 x i1> poison, i1 %i.ag, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.an, <2 x double> %i.ao
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.f, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i
  %.sroa.168.0.copyload.i = phi double [ %.sroa.168.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5106.0.copyload107.sroa.speculated.i.i.i.i, %bb.f ], [ %.val.i.i14.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.15.0.copyload.i = phi i64 [ %.sroa.15.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i, %bb.f ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.126.0.copyload.i = phi double [ %.sroa.126.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.580.0.i.i.i.i, %bb.f ], [ %.sroa.580.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.11.0.copyload.i = phi i64 [ %.sroa.11.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.078.0.i.i.i.i, %bb.f ], [ %.sroa.078.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.84.0.copyload.i = phi double [ %.sroa.84.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.554.0.i.i.i.i, %bb.f ], [ %.sroa.554.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.7.0.copyload.i = phi i64 [ %.sroa.7.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.052.0.i.i.i.i, %bb.f ], [ %.sroa.052.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.42.0.copyload.i = phi double [ %.sroa.42.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.5.0.i.i.i.i, %bb.f ], [ %.sroa.5.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %.sroa.01.0.copyload.i = phi i64 [ %.sroa.01.0.copyload.pre.i, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %.sroa.0.0.i.i.i.i, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ]
  %i.bj = phi <2 x double> [ %i.p, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.bi, %bb.f ], [ %i.an, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bk = phi <2 x double> [ %i.o, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.be, %bb.f ], [ %i.be, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bl = phi <2 x double> [ %i.n, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.az, %bb.f ], [ %i.az, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  %i.bm = phi <2 x double> [ %i.m, %._RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit_crit_edge.i ], [ %i.au, %bb.f ], [ %i.au, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20987
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !20995
  %i.bn = trunc nuw i64 %.sroa.01.0.copyload.i to i1
  br i1 %i.bn, label %bb.g, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.g:                                             ; preds = %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.bo = extractelement <2 x double> %i.bm, i64 0
  %i.bp = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.42.0.copyload.i, double noundef %i.bo, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !20996
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.g, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i.i.i1.i = phi double [ %i.bq, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.3.0.i.i.i.i = phi double [ %i.bp, %bb.g ], [ 0.000000e+00, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !21006
  %i.br = trunc nuw i64 %.sroa.7.0.copyload.i to i1
  br i1 %i.br, label %bb.h, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

bb.h:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.bs = extractelement <2 x double> %i.bl, i64 0
  %i.bt = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.84.0.copyload.i, double noundef %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !21007
  %i.bu = extractelement <2 x double> %i.bl, i64 1
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.h, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi double [ %i.bu, %bb.h ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.3.0.i.i8.i.i = phi double [ %i.bt, %bb.h ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !21017
  %i.bv = trunc nuw i64 %.sroa.11.0.copyload.i to i1
  br i1 %i.bv, label %bb.i, label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

bb.i:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.bw = extractelement <2 x double> %i.bk, i64 0
  %i.bx = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.126.0.copyload.i, double noundef %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !21018
  %i.by = extractelement <2 x double> %i.bk, i64 1
  br label %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i

_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i: ; preds = %bb.i, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.0.0.i.i16.i.i = phi double [ %i.by, %bb.i ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.3.0.i.i15.i.i = phi double [ %i.bx, %bb.i ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.6.0.copyload, i64 24, i1 false), !noalias !21028
  %i.bz = trunc nuw i64 %.sroa.15.0.copyload.i to i1
  br i1 %i.bz, label %bb.j, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs0_0B7_.exit

bb.j:                                             ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i
  %i.ca = extractelement <2 x double> %i.bj, i64 0
  %i.cb = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.168.0.copyload.i, double noundef %i.ca, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !21029
  %i.cc = extractelement <2 x double> %i.bj, i64 1
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs0_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_boxs0_0B7_.exit: ; preds = %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i, %bb.j
  %.sroa.0.0.i.i23.i.i = phi double [ %i.cc, %bb.j ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  %.sroa.3.0.i.i22.i.i = phi double [ %i.cb, %bb.j ], [ 0.000000e+00, %_RNCNvXs5_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21024
  store i64 1, ptr %0, align 8
  store double %.sroa.0.0.i.i.i1.i, ptr %.sroa.5.0..sroa_idx, align 8
  store double %.sroa.3.0.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.0.0.i.i9.i.i, ptr %.sroa.43.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sroa.3.0.i.i8.i.i, ptr %.sroa.43.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.0.0.i.i16.i.i, ptr %.sroa.43.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.3.0.i.i15.i.i, ptr %.sroa.43.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.0.0.i.i23.i.i, ptr %.sroa.43.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sroa.3.0.i.i22.i.i, ptr %.sroa.43.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs3oUPovFnLWP_4core4cell4lazyINtB2_8LazyCellNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB1H_9Collector5block0E11really_initB1L_(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  store i64 2, ptr %0, align 8
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.c, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.5.0.copyload, i64 24, i1 false)
  %i.d = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3par1__NtB9_7ParElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_9Collector5block0B8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21038)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !21038, !noalias !21041, !nonnull !10, !noundef !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !21038, !noalias !21041, !nonnull !10, !align !151, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !10, !noalias !21047, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21048
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !10, !noalias !21047, !nonnull !10
  call void %i.k(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.e) #59, !noalias !21047, !inline_history !21050
  %i.l = load i128, ptr %i.a, align 16, !noalias !21048, !noundef !10
  %i.m = icmp eq i128 %i.l, 115293908323587237106046857001272415579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21048
  br i1 %i.m, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout6length6LengthECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3par1__NtB9_7ParElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 12) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #57, !noalias !21051
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout6length6LengthECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c
  %.val.i.i = load double, ptr %i.e, align 8, !noalias !21052, !noundef !10
  %i.n = getelementptr i8, ptr %i.e, i64 8
  %.val6.i.i = load double, ptr %i.n, align 8, !noalias !21052, !noundef !10
  br label %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_9Collector5block0B8_.exit

_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_9Collector5block0B8_.exit: ; preds = %bb.b, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout6length6LengthECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.4.1.i.i = phi double [ %.val6.i.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout6length6LengthECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 1.200000e+00, %bb.b ]
  %.sroa.0.1.i.i = phi double [ %.val.i.i, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain12get_unfoldedNtNtNtBa_6layout6length6LengthECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0.000000e+00, %bb.b ]
  %i.o = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.0.1.i.i, double noundef %.sroa.4.1.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !21035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21035
  store i64 1, ptr %0, align 8
  store double %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  ret ptr %.sroa.5.0..sroa_idx

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2_9Collector5lines(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, double noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 16 uses
  %i.c = alloca [48 x i8], align 8                ; 15 uses
  %.sroa.9 = alloca [40 x i8], align 8            ; 14 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = invoke fastcc i16 @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedNtNtNtBa_6layout5align9AlignmentECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout5align1__NtB9_9AlignElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 0, i16 0)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.am

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = invoke { i8, i8 } @_RNvXs3_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles7Resolve7resolve(i16 %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.am      ; 2 uses

bb.b:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = extractvalue { i8, i8 } %i.k, 0          ; 3 uses
  %i.m = extractvalue { i8, i8 } %i.k, 1          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh14_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %3)
          to label %bb.c unwind label %bb.am

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !10 ; 17 uses
  %i.p = icmp ult i64 %i.o, 192153584101141163
  call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = load i64, ptr %i.q, align 8, !range !285, !noundef !10
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.u = load double, ptr %i.t, align 8
  %storemerge = select i1 %i.s, double %i.u, double 1.000000e+00
  store double %storemerge, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store double 0.000000e+00, ptr %i.g, align 8
  %i.v = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.am

bb.d:                                             ; preds = %bb.c
  %i.w = icmp sgt i8 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.x = icmp samesign ugt i64 %i.o, 1
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0 = phi i1 [ %i.al, %bb.f ], [ false, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.z = load i64, ptr %i.y, align 8, !range !285, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ac = load double, ptr %i.ab, align 8
  %storemerge74 = select i1 %i.aa, double %i.ac, double 1.000000e+00
  store double %storemerge74, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double 0.000000e+00, ptr %i.e, align 8
  %i.ad = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.g unwind label %bb.am

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !10, !noundef !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 16, !noundef !10 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 48038396025285291
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ne i64 %i.aj, 0
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.am = icmp sgt i8 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.an = icmp samesign ugt i64 %i.o, 1
  %or.cond210 = select i1 %i.am, i1 %i.an, i1 false
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %or.cond210, label %.thread135, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i64 %i.o, 0
  %.pre.pre.pre = load ptr, ptr %i.ao, align 8    ; 4 uses
  br i1 %.not, label %.thread128, label %bb.i

.thread135:                                       ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.aq = getelementptr [48 x i8], ptr %i.ap, i64 %i.o
  %i.ar = getelementptr i8, ptr %i.aq, i64 -80
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load i64, ptr %i.at, align 16, !noundef !10 ; 2 uses
  %i.av = icmp ult i64 %i.au, 48038396025285291
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp ne i64 %i.au, 0                    ; 2 uses
  %i.ax = icmp eq i64 %i.o, 3
  %or.cond121 = and i1 %i.ax, %.sroa.0.0
  %.sroa.015.0.122 = and i1 %or.cond121, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.az = load double, ptr %i.ay, align 8, !noundef !10
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 32
  %i.bb = load double, ptr %i.ba, align 8, !noundef !10 ; 2 uses
  %.not153 = icmp eq i64 %i.o, 1
  br i1 %.not153, label %.thread128, label %bb.j

bb.j:                                             ; preds = %.thread135, %bb.i
  %i.bc = phi ptr [ %i.ap, %.thread135 ], [ %.pre.pre.pre, %bb.i ] ; 2 uses
  %i.bd = phi double [ %i.az, %.thread135 ], [ %i.bb, %bb.i ]
  %.sroa.015.0124139 = phi i1 [ %i.aw, %.thread135 ], [ false, %bb.i ]
  %.sroa.015.0.126138 = phi i1 [ %.sroa.015.0.122, %.thread135 ], [ false, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.bf = load double, ptr %i.be, align 8, !noundef !10
  br label %.thread128

.thread128:                                       ; preds = %bb.h, %bb.i, %bb.j
  %.pre.pre = phi ptr [ %i.bc, %bb.j ], [ %.pre.pre.pre, %bb.i ], [ %.pre.pre.pre, %bb.h ] ; 11 uses
  %.sroa.059.0134 = phi double [ %i.bd, %bb.j ], [ %i.bb, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.015.0125133 = phi i1 [ %.sroa.015.0124139, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  %.sroa.015.0.127132 = phi i1 [ %.sroa.015.0.126138, %bb.j ], [ false, %bb.i ], [ false, %bb.h ]
  %.sroa.061.0 = phi double [ %i.bf, %bb.j ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.bg = call i64 @llvm.usub.sat.i64(i64 %i.o, i64 2) ; 2 uses
  %4 = icmp samesign ult i64 %i.bg, %i.o
  br i1 %4, label %5, label %9

5:                                                ; preds = %.thread128
  %6 = getelementptr inbounds nuw [48 x i8], ptr %.pre.pre, i64 %i.bg
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %8 = load double, ptr %7, align 8, !noundef !10
  br label %9

9:                                                ; preds = %.thread128, %5
  %.sroa.063.0 = phi double [ %8, %5 ], [ 0.000000e+00, %.thread128 ]
  %10 = call i64 @llvm.usub.sat.i64(i64 %i.o, i64 1) ; 2 uses
  %11 = icmp samesign ult i64 %10, %i.o
  br i1 %11, label %12, label %bb.k

12:                                               ; preds = %9
  %13 = getelementptr inbounds nuw [48 x i8], ptr %.pre.pre, i64 %10
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 32
  %15 = load double, ptr %14, align 8, !noundef !10
  br label %bb.k

bb.k:                                             ; preds = %9, %12
  %.sroa.064.0 = phi double [ %15, %12 ], [ 0.000000e+00, %9 ] ; 2 uses
  %i.bh = load i64, ptr %1, align 8, !range !69, !noundef !10
  %.idx = mul nuw nsw i64 %i.o, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.idx ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre.pre, ptr %i.d, align 8
  %.sroa.018.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr %.pre.pre, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  %.sroa.018.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bh, ptr %.sroa.018.sroa.3.0..sroa_idx, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bi, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %16 = icmp eq i64 %i.o, 0
  br i1 %16, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph: ; preds = %bb.k
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.bm = fadd double %2, %.sroa.063.0            ; 2 uses
  %.inv = fcmp ord double %i.bm, 0.000000e+00
  %spec.store.select10 = select i1 %.inv, double %i.bm, double 0.000000e+00
  %i.bn = fadd double %spec.store.select10, %.sroa.064.0 ; 2 uses
  %.inv77 = fcmp ord double %i.bn, 0.000000e+00
  %spec.store.select11 = select i1 %.inv77, double %i.bn, double 0.000000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 57 ; 3 uses
  %i.bq = add nuw nsw i64 %i.o, 1152921504606846975
  %i.br = and i64 %i.bq, 1152921504606846975
  %i.bs = add nuw nsw i64 %i.br, 1                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 48 ; 5 uses
  %.sroa.0.0.copyload1.i.peel = load i64, ptr %.pre.pre, align 8, !noalias !21053 ; 2 uses
  %.not.i91.peel = icmp eq i64 %.sroa.0.0.copyload1.i.peel, 2
  br i1 %.not.i91.peel, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph
  %i.bu = fadd double %2, %.sroa.059.0134         ; 2 uses
  %.inv78 = fcmp ord double %i.bu, 0.000000e+00
  %spec.store.select7 = select i1 %.inv78, double %i.bu, double 0.000000e+00
  %i.bv = fadd double %spec.store.select7, %.sroa.061.0 ; 2 uses
  %.inv79 = fcmp ord double %i.bv, 0.000000e+00
  %spec.store.select8 = select i1 %.inv79, double %i.bv, double 0.000000e+00 ; 2 uses
  %i.bw = fadd double %2, %spec.store.select8     ; 2 uses
  %.inv82 = fcmp ord double %i.bw, 0.000000e+00
  %spec.store.select4 = select i1 %.inv82, double %i.bw, double 0.000000e+00
  %i.bx = fadd double %spec.store.select4, %.sroa.064.0 ; 2 uses
  %.inv83 = fcmp ord double %i.bx, 0.000000e+00
  %spec.store.select5 = select i1 %.inv83, double %i.bx, double 0.000000e+00
  %.sroa.7.0..sroa_idx2.i.peel = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx2.i.peel, i64 40, i1 false), !noalias !21059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.copyload1.i.peel, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  %spec.store.select5.mux.peel = select i1 %.sroa.015.0.127132, double %spec.store.select5, double %spec.store.select8
  %i.by = load double, ptr %i.bo, align 8
  %.sroa.020.0.peel = select i1 %.sroa.0.0, double %spec.store.select5.mux.peel, double %i.by
  %i.bz = load ptr, ptr %i.bp, align 8, !nonnull !10, !align !151, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  store double %.sroa.020.0.peel, ptr %.sroa.422.0..sroa_idx, align 8
  store i8 %i.l, ptr %.sroa.523.0..sroa_idx, align 8
  store i8 %i.m, ptr %.sroa.624.0..sroa_idx, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = and i64 %i.cf, 7
  %i.ch = sub nsw i64 0, %i.cg
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.ch  ; 3 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ce to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp ult ptr %i.ci, %i.ce
  %i.cn = icmp ult i64 %i.cl, 64
  %or.cond.i.peel = or i1 %i.cm, %i.cn
  br i1 %or.cond.i.peel, label %bb.m, label %.noexc.peel

.noexc.peel:                                      ; preds = %bb.l
  %i.co = getelementptr i8, ptr %i.ci, i64 -64    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  store ptr %i.co, ptr %i.cc, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cp = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.bz, i64 noundef 8, i64 noundef 64) #58
          to label %.noexc87.peel unwind label %.loopexit.loopexit.split-lp ; 2 uses

.noexc87.peel:                                    ; preds = %bb.m
  %.not5.i.peel = icmp eq ptr %i.cp, null
  br i1 %.not5.i.peel, label %.loopexit182, label %bb.n, !prof !33

bb.n:                                             ; preds = %.noexc87.peel, %.noexc.peel
  %.sroa.0.0.i86.peel = phi ptr [ %i.co, %.noexc.peel ], [ %i.cp, %.noexc87.peel ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i86.peel, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !21060)
  %i.cq = load i64, ptr %i.bk, align 16, !alias.scope !21060, !noalias !21063, !noundef !10 ; 5 uses
  %i.cr = load i64, ptr %i.bj, align 16, !range !69, !alias.scope !21060, !noalias !21063, !noundef !10
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.p unwind label %.loopexit.split-lp184, !noalias !21063

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ct = load ptr, ptr %i.bl, align 8, !alias.scope !21060, !noalias !21063, !nonnull !10, !noundef !10 ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cq ; 2 uses
  store i8 3, ptr %i.cu, align 8, !noalias !21060
  %.sroa.5110.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %.sroa.0.0.i86.peel, ptr %.sroa.5110.0..sroa_idx.peel, align 8, !noalias !21060
  %i.cv = add i64 %i.cq, 1                        ; 3 uses
  store i64 %i.cv, ptr %i.bk, align 16, !alias.scope !21060, !noalias !21063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.cw = icmp eq i64 %i.o, 1
  br i1 %i.cw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel: ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 96 ; 6 uses
  %.sroa.0.0.copyload1.i.peel229 = load i64, ptr %i.bt, align 8, !noalias !21053 ; 2 uses
  %.not.i91.peel230 = icmp eq i64 %.sroa.0.0.copyload1.i.peel229, 2
  br i1 %.not.i91.peel230, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %bb.q

bb.q:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel
  %.sroa.7.0..sroa_idx2.i.peel231 = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx2.i.peel231, i64 40, i1 false), !noalias !21059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.copyload1.i.peel229, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21065)
  %i.cy = load i64, ptr %i.bj, align 16, !range !69, !alias.scope !21065, !noalias !21068, !noundef !10
  %i.cz = icmp eq i64 %i.cv, %i.cy
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %._crit_edge188.peel unwind label %.loopexit.split-lp241, !noalias !21068

._crit_edge188.peel:                              ; preds = %bb.r
  %.pre189.peel = load ptr, ptr %i.bl, align 8, !alias.scope !21065, !noalias !21068
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge188.peel, %bb.q
  %i.da = phi ptr [ %.pre189.peel, %._crit_edge188.peel ], [ %i.ct, %bb.q ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %i.cv ; 4 uses
  store i8 1, ptr %i.db, align 8, !noalias !21065
  %.sroa.5106.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 5, ptr %.sroa.5106.0..sroa_idx.peel, align 1, !noalias !21065
  %.sroa.6107.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 0, ptr %.sroa.6107.0..sroa_idx.peel, align 8, !noalias !21065
  %.sroa.8.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store double %2, ptr %.sroa.8.0..sroa_idx.peel, align 8, !noalias !21065
  %i.dc = add i64 %i.cq, 2                        ; 3 uses
  store i64 %i.dc, ptr %i.bk, align 16, !alias.scope !21065, !noalias !21068
  %i.dd = load double, ptr %i.bo, align 8
  %i.de = load ptr, ptr %i.bp, align 8, !nonnull !10, !align !151, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  store double %i.dd, ptr %.sroa.422.0..sroa_idx, align 8
  store i8 %i.l, ptr %.sroa.523.0..sroa_idx, align 8
  store i8 %i.m, ptr %.sroa.624.0..sroa_idx, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = and i64 %i.dk, 7
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr i8, ptr %i.di, i64 %i.dm  ; 3 uses
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dj to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ult ptr %i.dn, %i.dj
  %i.ds = icmp ult i64 %i.dq, 64
  %or.cond.i.peel233 = or i1 %i.dr, %i.ds
  br i1 %or.cond.i.peel233, label %bb.t, label %.noexc.peel234

.noexc.peel234:                                   ; preds = %bb.s
  %i.dt = getelementptr i8, ptr %i.dn, i64 -64    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dt) ]
  store ptr %i.dt, ptr %i.dh, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.du = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.de, i64 noundef 8, i64 noundef 64) #58
          to label %.noexc87.peel235 unwind label %.loopexit.loopexit.loopexit.split-lp ; 2 uses

.noexc87.peel235:                                 ; preds = %bb.t
  %.not5.i.peel236 = icmp eq ptr %i.du, null
  br i1 %.not5.i.peel236, label %.loopexit182, label %bb.u, !prof !33

bb.u:                                             ; preds = %.noexc87.peel235, %.noexc.peel234
  %.sroa.0.0.i86.peel237 = phi ptr [ %i.dt, %.noexc.peel234 ], [ %i.du, %.noexc87.peel235 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i86.peel237, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !21070)
  %i.dv = load i64, ptr %i.bj, align 16, !range !69, !alias.scope !21070, !noalias !21063, !noundef !10
  %i.dw = icmp eq i64 %i.dc, %i.dv
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.w unwind label %.loopexit183.loopexit.split-lp, !noalias !21063

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dx = load ptr, ptr %i.bl, align 8, !alias.scope !21070, !noalias !21063, !nonnull !10, !noundef !10 ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dc ; 2 uses
  store i8 3, ptr %i.dy, align 8, !noalias !21070
  %.sroa.5110.0..sroa_idx.peel238 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.0.0.i86.peel237, ptr %.sroa.5110.0..sroa_idx.peel238, align 8, !noalias !21070
  %i.dz = add i64 %i.cq, 3                        ; 2 uses
  store i64 %i.dz, ptr %i.bk, align 16, !alias.scope !21070, !noalias !21063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ea = icmp eq i64 %i.o, 2
  br i1 %i.ea, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.w, %bb.aj
  %i.eb = phi ptr [ %i.fq, %bb.aj ], [ %i.dx, %bb.w ]
  %i.ec = phi i64 [ %i.fs, %bb.aj ], [ %i.dz, %bb.w ] ; 4 uses
  %i.ed = phi ptr [ %i.ef, %bb.aj ], [ %i.cx, %bb.w ] ; 3 uses
  %i.ee = phi i64 [ %i.eh, %bb.aj ], [ 2, %bb.w ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 48 ; 7 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ed, align 8, !noalias !21053 ; 2 uses
  %.not.i91 = icmp eq i64 %.sroa.0.0.copyload1.i, 2
  br i1 %.not.i91, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.loopexit183, %bb.ad, %bb.ac, %.body, %bb.ak
  %.pn = phi { ptr, i32 } [ %lpad.phi186, %.loopexit183 ], [ %lpad.phi244, %.body ], [ %lpad.phi244, %bb.ak ], [ %lpad.phi, %bb.ad ], [ %lpad.phi, %bb.ac ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d)
          to label %.thread unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel, %bb.w, %bb.aj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph, %bb.p, %bb.k
  %.lcssa157 = phi i64 [ 0, %bb.k ], [ 0, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph ], [ %i.bs, %bb.p ], [ 1, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel ], [ %i.bs, %bb.w ], [ %i.bs, %bb.aj ], [ %i.ee, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.eg = phi ptr [ %.pre.pre, %bb.k ], [ %i.bt, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.lr.ph ], [ %i.bi, %bb.p ], [ %i.cx, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.peel ], [ %i.bi, %bb.w ], [ %i.bi, %bb.aj ], [ %i.ef, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  store ptr %i.eg, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  store i64 %.lcssa157, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.x:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx2.i, i64 40, i1 false), !noalias !21059
  %i.eh = add nuw nsw i64 %i.ee, 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.copyload1.i, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !21072)
  %i.ei = load i64, ptr %i.bj, align 16, !range !69, !alias.scope !21072, !noalias !21068, !noundef !10
  %i.ej = icmp eq i64 %i.ec, %i.ei
  br i1 %i.ej, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %._crit_edge188 unwind label %.loopexit240, !noalias !21068

._crit_edge188:                                   ; preds = %bb.y
  %.pre189 = load ptr, ptr %i.bl, align 8, !alias.scope !21072, !noalias !21068
  br label %bb.af

.loopexit240:                                     ; preds = %bb.y
  %lpad.loopexit242 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp241:                            ; preds = %bb.r
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp241, %.loopexit240
  %.lcssa225 = phi ptr [ %i.ef, %.loopexit240 ], [ %i.cx, %.loopexit.split-lp241 ]
  %.lcssa = phi i64 [ %i.eh, %.loopexit240 ], [ 2, %.loopexit.split-lp241 ]
  %lpad.phi244 = phi { ptr, i32 } [ %lpad.loopexit242, %.loopexit240 ], [ %lpad.loopexit.split-lp243, %.loopexit.split-lp241 ] ; 2 uses
  store ptr %.lcssa225, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  store i64 %.lcssa, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildEBH_(i8 1, ptr null) #54
          to label %.body unwind label %bb.aa, !noalias !21074

bb.aa:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21074
  unreachable

.noexc:                                           ; preds = %bb.af
  %i.el = getelementptr i8, ptr %i.fh, i64 -64    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  store ptr %i.el, ptr %i.fb, align 8
  br label %bb.ag

bb.ab:                                            ; preds = %bb.af
  %i.em = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.ey, i64 noundef 8, i64 noundef 64) #58
          to label %.noexc87 unwind label %.loopexit.loopexit.loopexit ; 2 uses

.noexc87:                                         ; preds = %bb.ab
  %.not5.i = icmp eq ptr %i.em, null
  br i1 %.not5.i, label %.loopexit182, label %bb.ag, !prof !33

.loopexit182:                                     ; preds = %.noexc87.peel235, %.noexc87, %.noexc87.peel
  %.lcssa171 = phi ptr [ %i.bt, %.noexc87.peel ], [ %i.cx, %.noexc87.peel235 ], [ %i.ef, %.noexc87 ]
  %.lcssa166 = phi i64 [ 1, %.noexc87.peel ], [ 2, %.noexc87.peel235 ], [ %i.eh, %.noexc87 ]
  store ptr %.lcssa171, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  store i64 %.lcssa166, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvCsaPYV88GQHqL_7bumpalo3oom() #53
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %.loopexit182
  unreachable

.loopexit.loopexit.loopexit:                      ; preds = %bb.ab
  %lpad.loopexit245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.loopexit.split-lp:             ; preds = %bb.t
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.m
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.loopexit, %.loopexit.loopexit.loopexit.split-lp, %.loopexit.loopexit.split-lp
  %.lcssa170 = phi ptr [ %i.bt, %.loopexit.loopexit.split-lp ], [ %i.ef, %.loopexit.loopexit.loopexit ], [ %i.cx, %.loopexit.loopexit.loopexit.split-lp ]
  %.lcssa165 = phi i64 [ 1, %.loopexit.loopexit.split-lp ], [ %i.eh, %.loopexit.loopexit.loopexit ], [ 2, %.loopexit.loopexit.loopexit.split-lp ]
  %lpad.phi181 = phi { ptr, i32 } [ %lpad.loopexit.split-lp180, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit245, %.loopexit.loopexit.loopexit ], [ %lpad.loopexit.split-lp246, %.loopexit.loopexit.loopexit.split-lp ]
  store ptr %.lcssa170, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  store i64 %.lcssa165, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %.loopexit182
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.phi181, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21075)
  call void @llvm.experimental.noalias.scope.decl(metadata !21078)
  call void @llvm.experimental.noalias.scope.decl(metadata !21081)
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21084)
  call void @llvm.experimental.noalias.scope.decl(metadata !21087)
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !21090, !nonnull !10, !noundef !10
  %i.ep = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !21090
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.en) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.af:                                            ; preds = %._crit_edge188, %bb.x
  %i.es = phi ptr [ %.pre189, %._crit_edge188 ], [ %i.eb, %bb.x ]
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ec ; 4 uses
  store i8 1, ptr %i.et, align 8, !noalias !21072
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store i8 5, ptr %.sroa.5106.0..sroa_idx, align 1, !noalias !21072
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 0, ptr %.sroa.6107.0..sroa_idx, align 8, !noalias !21072
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store double %2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !21072
  %i.eu = add i64 %i.ec, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.bk, align 16, !alias.scope !21072, !noalias !21068
  %i.ev = add nuw nsw i64 %i.ee, 2
  %i.ew = icmp eq i64 %i.ev, %i.o
  %or.cond13 = and i1 %.sroa.015.0125133, %i.ew
  %i.ex = load double, ptr %i.bo, align 8
  %.sroa.020.0 = select i1 %or.cond13, double %spec.store.select11, double %i.ex
  %i.ey = load ptr, ptr %i.bp, align 8, !nonnull !10, !align !151, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  store double %.sroa.020.0, ptr %.sroa.422.0..sroa_idx, align 8
  store i8 %i.l, ptr %.sroa.523.0..sroa_idx, align 8
  store i8 %i.m, ptr %.sroa.624.0..sroa_idx, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = and i64 %i.fe, 7
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr i8, ptr %i.fc, i64 %i.fg  ; 3 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fd to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = icmp ult ptr %i.fh, %i.fd
  %i.fm = icmp ult i64 %i.fk, 64
  %or.cond.i = or i1 %i.fl, %i.fm
  br i1 %or.cond.i, label %bb.ab, label %.noexc

bb.ag:                                            ; preds = %.noexc87, %.noexc
  %.sroa.0.0.i86 = phi ptr [ %i.el, %.noexc ], [ %i.em, %.noexc87 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i86, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !21091)
  %i.fn = load i64, ptr %i.bj, align 16, !range !69, !alias.scope !21091, !noalias !21063, !noundef !10
  %i.fo = icmp eq i64 %i.eu, %i.fn
  br i1 %i.fo, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.aj unwind label %.loopexit183.loopexit, !noalias !21063

.loopexit183.loopexit:                            ; preds = %bb.ah
  %lpad.loopexit248 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit183

.loopexit183.loopexit.split-lp:                   ; preds = %bb.v
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit183

.loopexit.split-lp184:                            ; preds = %bb.o
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit183

.loopexit183:                                     ; preds = %.loopexit183.loopexit, %.loopexit183.loopexit.split-lp, %.loopexit.split-lp184
  %.lcssa172 = phi ptr [ %i.bt, %.loopexit.split-lp184 ], [ %i.ef, %.loopexit183.loopexit ], [ %i.cx, %.loopexit183.loopexit.split-lp ]
  %.sroa.0.0.i86.lcssa = phi ptr [ %.sroa.0.0.i86.peel, %.loopexit.split-lp184 ], [ %.sroa.0.0.i86, %.loopexit183.loopexit ], [ %.sroa.0.0.i86.peel237, %.loopexit183.loopexit.split-lp ]
  %.lcssa167 = phi i64 [ 1, %.loopexit.split-lp184 ], [ %i.eh, %.loopexit183.loopexit ], [ 2, %.loopexit183.loopexit.split-lp ]
  %lpad.phi186 = phi { ptr, i32 } [ %lpad.loopexit.split-lp185, %.loopexit.split-lp184 ], [ %lpad.loopexit248, %.loopexit183.loopexit ], [ %lpad.loopexit.split-lp249, %.loopexit183.loopexit.split-lp ]
  store ptr %.lcssa172, ptr %.sroa.018.sroa.2.0..sroa_idx, align 8
  store i64 %.lcssa167, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect5ChildEBH_(i8 3, ptr nonnull %.sroa.0.0.i86.lcssa) #54
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ai, !noalias !21093

bb.ai:                                            ; preds = %.loopexit183
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21093
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.fq = load ptr, ptr %i.bl, align 8, !alias.scope !21091, !noalias !21063, !nonnull !10, !noundef !10 ; 2 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.eu ; 2 uses
  store i8 3, ptr %i.fr, align 8, !noalias !21091
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %.sroa.0.0.i86, ptr %.sroa.5110.0..sroa_idx, align 8, !noalias !21091
  %i.fs = add i64 %i.ec, 2                        ; 2 uses
  store i64 %i.fs, ptr %i.bk, align 16, !alias.scope !21091, !noalias !21063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ft = icmp eq ptr %i.ef, %i.bi
  br i1 %i.ft, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit94, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i, !llvm.loop !21094

.body:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !21095)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21098)
  call void @llvm.experimental.noalias.scope.decl(metadata !21101)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !21104, !nonnull !10, !noundef !10
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !21104
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.ak:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.am
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.thread:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.am
  %.pn.pn114 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %lpad.thr_comm, %bb.am ]
  resume { ptr, i32 } %.pn.pn114

bb.am:                                            ; preds = %bb.e, %bb.c, %bb.b, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout5align9AlignElemKh0_ECs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #54
          to label %.thread unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer5float(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %1, ptr noundef nonnull align 16 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 176
  %.val = load ptr, ptr %i.l, align 16, !nonnull !10, !align !151, !noundef !10
  %i.m = load ptr, ptr %.val, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.n = load i128, ptr %i.m, align 16, !range !11, !noundef !10
  %i.o = trunc nuw i128 %i.n to i1
  br i1 %i.o, label %_RNvMs2_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_11PlacedChild8location.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @387) #53
  unreachable

_RNvMs2_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_11PlacedChild8location.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i128, ptr %i.p, align 16            ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21105)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !21105, !nonnull !10, !align !151, !noundef !10 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !noalias !21105, !nonnull !10, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21108)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !21108, !noalias !21105, !noundef !10
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs2_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_11PlacedChild8location.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = trunc i128 %i.q to i64
  %i.aa = mul i64 %i.z, -1065810590584100411
  %i.ab = lshr i128 %i.q, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = add i64 %i.aa, %i.ac
  %i.ae = mul i64 %i.ad, -1065810590584100411     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21114)
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !21117, !noalias !21118, !noundef !10 ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !alias.scope !21117, !noalias !21118, !nonnull !10, !noundef !10 ; 2 uses
  %i.al = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.bd, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.be, %bb.f ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.aj ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.an, align 1, !noalias !21121 ; 2 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.am
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.bc, %bb.e ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.01.0.i.i.i.i, %i.ar
  %i.at = and i64 %i.as, %i.aj
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -16
  %.val2.i.i.i.i = load i128, ptr %i.aw, align 16, !noalias !21124, !noundef !10
  %i.ax = icmp eq i128 %i.q, %.val2.i.i.i.i
  br i1 %i.ax, label %.loopexit75, label %bb.e, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.e, %bb.d
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
end_hunk_0
