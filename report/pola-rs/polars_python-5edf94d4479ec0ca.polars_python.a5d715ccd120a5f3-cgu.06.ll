Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.06?download=true
inline.NumInlined: 16129
inline.NumDeleted: 4865
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 67
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow:bb.a
  unreachable, !dbg !96776

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE3newCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false), !dbg !96777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !96748
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96779
  store i8 37, ptr %i.dk, align 8, !dbg !96779
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !96779
  store ptr %i.dh, ptr %.sroa.573.0..sroa_idx, align 8, !dbg !96779
  store i64 18, ptr %0, align 8, !dbg !96779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.677), !dbg !96749
  br label %bb.an, !dbg !96749

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.082, ptr noundef nonnull align 8 dereferenceable(23) %i.b, i64 23, i1 false), !dbg !96780
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !96780
  %.sroa.4102.0.copyload = load i8, ptr %.sroa.4102.0..sroa_idx, align 1, !dbg !96780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !96781
  br label %bb.bg, !dbg !96782

bb.bk:                                            ; preds = %bb.bm, %bb.ay, %bb.bz, %bb.bw, %bb.bd
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !96783
  unreachable, !dbg !96783

bb.bl:                                            ; preds = %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !96784
  %i.dn = load i8, ptr %i.dm, align 1, !dbg !96784, !range !1170, !alias.scope !96791, !noundef !11
  %i.do = icmp eq i8 %i.dn, -40, !dbg !96800
  br i1 %i.do, label %bb.bm, label %common.resume, !dbg !96800, !prof !54

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.bk, !dbg !96801

bb.bn:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !96651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !96802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !96802
  %i.dq = load i128, ptr %i.dp, align 16, !dbg !96804, !noundef !11 ; 7 uses
  %i.dr = add i128 %i.dq, -2147483648, !dbg !96805
  %or.cond.i = icmp ult i128 %i.dr, -4294967296, !dbg !96805
  br i1 %or.cond.i, label %bb.bo, label %bb.bp, !dbg !96805

bb.bo:                                            ; preds = %bb.bn
  %i.ds = add i128 %i.dq, -9223372036854775808, !dbg !96817
  %or.cond1.i = icmp ult i128 %i.ds, -18446744073709551616, !dbg !96817
  br i1 %or.cond1.i, label %bb.bq, label %bb.br, !dbg !96817

bb.bp:                                            ; preds = %bb.bn
  %i.dt = trunc nsw i128 %i.dq to i32, !dbg !96824
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 4, !dbg !96825
  store i32 %i.dt, ptr %i.du, align 4, !dbg !96825, !alias.scope !96826
  br label %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit, !dbg !96829

bb.bq:                                            ; preds = %bb.bo
  %or.cond2.i = icmp ugt i128 %i.dq, 18446744073709551615, !dbg !96831
  br i1 %or.cond2.i, label %bb.bs, label %bb.bt, !dbg !96831

bb.br:                                            ; preds = %bb.bo
  %i.dv = trunc nsw i128 %i.dq to i64, !dbg !96838
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !96839
  store i64 %i.dv, ptr %i.dw, align 8, !dbg !96839, !alias.scope !96826
  br label %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit, !dbg !96829

bb.bs:                                            ; preds = %bb.bq
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !96840
  store i128 %i.dq, ptr %i.dx, align 16, !dbg !96840, !alias.scope !96826
  br label %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit, !dbg !96841

bb.bt:                                            ; preds = %bb.bq
  %i.dy = trunc nuw i128 %i.dq to i64, !dbg !96842
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !96843
  store i64 %i.dy, ptr %i.dz, align 8, !dbg !96843, !alias.scope !96826
  br label %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit, !dbg !96829

_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit: ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt
  %.sink.i = phi i8 [ 6, %bb.bt ], [ 12, %bb.bs ], [ 11, %bb.br ], [ 10, %bb.bp ]
  store i8 %.sink.i, ptr %i.e, align 16, !dbg !96844, !alias.scope !96826
  invoke void @_RNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue5dtype(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.by unwind label %bb.bx, !dbg !96845

bb.bu:                                            ; preds = %bb.am
  br label %bb.cc, !dbg !96846

bb.bv:                                            ; preds = %bb.am
  br label %bb.cc, !dbg !96847

bb.bw:                                            ; preds = %bb.bz, %bb.bx
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.bx ], [ %i.eb, %bb.bz ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(48) %i.e) #55
          to label %common.resume unwind label %bb.bk, !dbg !96848

bb.bx:                                            ; preds = %bb.ca, %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils9supertype19materialize_dyn_int.exit
  invoke fastcc void @_RNvMs4_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataType12try_to_arrow(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f, i16 noundef %2)
          to label %bb.ca unwind label %bb.bz, !dbg !96849

bb.bz:                                            ; preds = %bb.by
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.f) #55
          to label %bb.bw unwind label %bb.bk, !dbg !96848

bb.ca:                                            ; preds = %bb.by
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.f)
          to label %bb.cb unwind label %bb.bx, !dbg !96848

bb.cb:                                            ; preds = %bb.ca
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(48) %i.e), !dbg !96848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !96848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !96848
  br label %bb.an, !dbg !96750

bb.cc:                                            ; preds = %bb.am, %bb.bv, %bb.bu
  %.sroa.086.0 = phi i8 [ 40, %bb.bv ], [ 39, %bb.bu ], [ 14, %bb.am ], !dbg !96850
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !96851
  store i8 %.sroa.086.0, ptr %i.ec, align 8, !dbg !96851
  store i64 18, ptr %0, align 8, !dbg !96851
  br label %bb.an, !dbg !96853
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !96854 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !96855 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8, !dbg !96866 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1, !dbg !96869
  br i1 %i.f, label %bb.b, label %bb.n, !dbg !96869

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !96871
  %i.h = load ptr, ptr %i.g, align 8, !dbg !96871, !nonnull !11, !noundef !11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !96878
  %i.j = load i64, ptr %i.i, align 8, !dbg !96878, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j, !dbg !96879 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !96888 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !96888, !noundef !11
  %.not = icmp eq ptr %i.m, null, !dbg !96888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !96891
  br i1 %.not, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, label %bb.c, !dbg !96891

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.l), !dbg !96897, !noalias !96903
  %.not4.i = icmp eq i64 %i.n, 0, !dbg !96906
  br i1 %.not4.i, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, label %bb.d, !dbg !96907

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.l), !dbg !96910, !noalias !96903
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !96914
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !96914, !noalias !96903 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !96914
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !96914, !noalias !96903 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !96915, !noalias !96903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !96915, !noalias !96903
  store i64 %i.j, ptr %i.b, align 8, !dbg !96933, !alias.scope !96935, !noalias !96940
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !96933
  store i64 1, ptr %i.o, align 8, !dbg !96933, !alias.scope !96935, !noalias !96940
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !96933
  store i64 %i.j, ptr %i.p, align 8, !dbg !96933, !alias.scope !96935, !noalias !96940
  %i.q = add i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i, !dbg !96944 ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !dbg !96950, !alias.scope !96952, !noalias !96940
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !96950
  store i64 1, ptr %i.r, align 8, !dbg !96950, !alias.scope !96952, !noalias !96940
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !96950
  store i64 %i.q, ptr %i.s, align 8, !dbg !96950, !alias.scope !96952, !noalias !96940
  %i.t = icmp eq i64 %i.j, %i.q, !dbg !96955
  br i1 %i.t, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i, label %bb.e, !dbg !96963, !prof !1459

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #56, !dbg !96964, !noalias !96940
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  %.sroa.6.16.copyload = load ptr, ptr %i.c, align 8, !dbg !96967
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !96967
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8, !dbg !96967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !96968, !noalias !96903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !96968, !noalias !96903
  br label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, !dbg !96969

_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b, %bb.c, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i
  %.sroa.13.0 = phi i64 [ %.sroa.5.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.4.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.16.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.16.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], !dbg !96970
  %.sroa.3.0 = phi ptr [ %i.k, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ %i.h, %bb.c ], [ %i.h, %bb.b ], !dbg !96970 ; 2 uses
  %.sroa.0.03 = phi ptr [ %i.h, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericShE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ null, %bb.c ], [ null, %bb.b ], !dbg !96970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !96971
  br label %bb.f, !dbg !96972

bb.f:                                             ; preds = %bb.m, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit
  %i.u = phi ptr [ %.sroa.6.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %1, %bb.m ] ; 6 uses
  %i.v = phi i64 [ %.sroa.13.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %2, %bb.m ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.sroa.10.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %.pre.i.i.i21.i, %bb.m ] ; 3 uses
  %i.w = phi i64 [ %.sroa.11.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %3, %bb.m ] ; 3 uses
  %i.x = phi ptr [ %.sroa.3.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %4, %bb.m ] ; 3 uses
  %i.y = phi ptr [ %.sroa.3.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %5, %bb.m ] ; 5 uses
  %i.z = phi ptr [ %.sroa.0.03, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %6, %bb.m ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %i.ax, %bb.m ], !dbg !96983 ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null, !dbg !96984
  br i1 %.not.i.i, label %bb.k, label %bb.g, !dbg !96988

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %i.z, %i.x, !dbg !96989
  br i1 %i.aa, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.h, !dbg !97001

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !97002
  %.val.i.i.i.i = load i32, ptr %i.z, align 4, !dbg !97005, !noalias !97011, !noundef !11
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !97020

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], !dbg !97021
  %i.ad = icmp eq i64 %i.w, 0, !dbg !97022
  br i1 %i.ad, label %bb.i, label %._crit_edge.i.i.i.i, !dbg !97022

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ae = icmp eq i64 %i.v, 0, !dbg !97025
  br i1 %i.ae, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !97025

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.v, i64 64), !dbg !97026 ; 2 uses
  %i.af = sub nuw i64 %i.v, %.sroa.0.0.i.i.i.i.i, !dbg !97028
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.u, align 1, !dbg !97029, !noalias !97033
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !97036
  br label %._crit_edge.i.i.i.i, !dbg !97041

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ah = phi ptr [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.u, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ]
  %i.ai = phi i64 [ %i.af, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.v, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ]
  %i.aj = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.w, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !97042
  %i.ak = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !97043 ; 2 uses
  %i.al = trunc i64 %i.ak to i8, !dbg !97043
  %i.am = lshr i64 %i.ak, 1, !dbg !97044
  %i.an = add i64 %i.aj, -1, !dbg !97042
  %i.ao = and i8 %i.al, 1, !dbg !97045
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !97046

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.ap = phi ptr [ %i.ah, %._crit_edge.i.i.i.i ], [ %i.u, %bb.i ] ; 2 uses
  %i.aq = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.am, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.i ] ; 2 uses
  %i.ar = phi i64 [ %i.an, %._crit_edge.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.ao, %._crit_edge.i.i.i.i ], [ 2, %bb.i ], !dbg !97047
  %i.as = call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECseeLknQCOKOd_13polars_python(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !97048, !noalias !97050 ; 2 uses
  %i.at = extractvalue { i8, i32 } %i.as, 0, !dbg !97051
  switch i8 %i.at, label %bb.j [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECseeLknQCOKOd_13polars_python.exit
    i8 0, label %bb.m
  ], !dbg !97052

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.au = extractvalue { i8, i32 } %i.as, 1, !dbg !97051
  br label %bb.m, !dbg !97055

bb.k:                                             ; preds = %bb.f
  %i.av = icmp eq ptr %i.y, %i.u, !dbg !97062
  br i1 %i.av, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %bb.l, !dbg !97067

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !97068 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.y, align 4, !dbg !97070, !noalias !97073, !noundef !11
  br label %bb.m, !dbg !97076

bb.m:                                             ; preds = %bb.l, %bb.j, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %1 = phi ptr [ %i.u, %bb.l ], [ %i.ap, %bb.j ], [ %i.ap, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %2 = phi i64 [ %i.v, %bb.l ], [ %i.aq, %bb.j ], [ %i.aq, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i21.i = phi i64 [ %.pre.i.i.i23.i, %bb.l ], [ %.pre.i.i.i22.i, %bb.j ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %3 = phi i64 [ %i.w, %bb.l ], [ %i.ar, %bb.j ], [ %i.ar, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %i.aw, %bb.l ], [ %i.x, %bb.j ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %i.aw, %bb.l ], [ %i.y, %bb.j ], [ %i.y, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi ptr [ null, %bb.l ], [ %i.ac, %bb.j ], [ %i.ac, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.0.0.i.pn.i.ph.i = phi i32 [ %.val.i.i.i, %bb.l ], [ %i.au, %bb.j ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.02.0.i.i.i = zext i32 %.sroa.0.0.i.pn.i.ph.i to i64, !dbg !97079
  %i.ax = add i64 %.sroa.0.0.i, %.sroa.02.0.i.i.i, !dbg !97088
  br label %bb.f, !dbg !96972

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.k
  store atomic i64 %.sroa.0.0.i, ptr %i.d monotonic, align 8, !dbg !97092
  br label %bb.n, !dbg !97101

bb.n:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECseeLknQCOKOd_13polars_python.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECseeLknQCOKOd_13polars_python.exit ], [ %i.e, %bb.a ], !dbg !97102
  ret i64 %.sroa.0.0, !dbg !97103
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE24new_unchecked_unknown_mdCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !97104 {
bb.a:
  %i.a = trunc nuw i64 %5 to i1, !dbg !97105
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !97105

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !97109
  %i.c = load ptr, ptr %i.b, align 8, !dbg !97109, !nonnull !11, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !97117
  %i.e = load i64, ptr %i.d, align 8, !dbg !97117, !noundef !11 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !97118
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.preheader, !dbg !97131

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3, !dbg !97132        ; 3 uses
  %i.g = icmp ult i64 %i.e, 4, !dbg !97132
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !97132

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4, !dbg !97132
  br label %.preheader, !dbg !97132

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !97136 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ], !dbg !97137
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97138
  %i.i = getelementptr i8, ptr %i.h, i64 16, !dbg !97141
  %.val.i = load i64, ptr %i.i, align 8, !dbg !97141, !noundef !11
  %i.j = add i64 %.val.i, %.sroa.02.0.i, !dbg !97142
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97138
  %i.l = getelementptr i8, ptr %i.k, i64 40, !dbg !97141
  %.val.i.1 = load i64, ptr %i.l, align 8, !dbg !97141, !noundef !11
  %i.m = add i64 %.val.i.1, %i.j, !dbg !97142
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97138
  %i.o = getelementptr i8, ptr %i.n, i64 64, !dbg !97141
  %.val.i.2 = load i64, ptr %i.o, align 8, !dbg !97141, !noundef !11
  %i.p = add i64 %.val.i.2, %i.m, !dbg !97142
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97138
  %i.r = getelementptr i8, ptr %i.q, i64 88, !dbg !97141
  %.val.i.3 = load i64, ptr %i.r, align 8, !dbg !97141, !noundef !11
  %i.s = add i64 %.val.i.3, %i.p, !dbg !97142     ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 4, !dbg !97147 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !97132 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !97132
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, label %.preheader, !dbg !97132

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !97132
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.epil.preheader, !dbg !97132

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0, !dbg !97132
  tail call void @llvm.assume(i1 %lcmp.mod10), !dbg !97132
  br label %.preheader.epil, !dbg !97132

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !97136 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.w, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !97137
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil, !dbg !97138
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !97141
  %.val.i.epil = load i64, ptr %i.v, align 8, !dbg !97141, !noundef !11
  %i.w = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !97142 ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !97147
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !97132 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !97132
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.epil, !dbg !97132, !llvm.loop !97150

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %6, %bb.a ], [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ], [ %i.w, %.preheader.epil ], !dbg !97151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !97152
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !97154
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !97157
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !97154
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !97158
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !97154
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !97159
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !97154
  store i64 -1, ptr %i.ab, align 8, !dbg !97154
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !97154
  store i64 %.sroa.02.0, ptr %i.ac, align 8, !dbg !97154
  ret void, !dbg !97160
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE5boxedCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97161 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !dbg !97163, !noalias !97171
  %i.a = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !dbg !97174, !noalias !97171 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !97175
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEE3newCseeLknQCOKOd_13polars_python.exit, !dbg !97176, !prof !54

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #56
          to label %.noexc unwind label %bb.c, !dbg !97177

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !97177

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #55
          to label %bb.e unwind label %bb.d, !dbg !97178

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !97179
  unreachable, !dbg !97179

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !97179

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEE3newCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !dbg !97180
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !97182
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @580, 1, !dbg !97182
  ret { ptr, ptr } %i.f, !dbg !97182
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE7try_newCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97183 {
bb.a:
  %.sroa.0.sroa.0 = alloca [56 x i8], align 8     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97184
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !97185
  %i.c = load ptr, ptr %i.b, align 8, !dbg !97185, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !97191
  %i.e = load i64, ptr %i.d, align 8, !dbg !97191, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !97192
  %i.g = load ptr, ptr %i.f, align 8, !dbg !97192, !noundef !11 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !97198
  %i.i = load i64, ptr %i.h, align 8, !dbg !97198, !noundef !11 ; 6 uses
  invoke void @_RINvNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view14validate_viewsINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENCINvB2_21validate_binary_viewsB19_E0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.b unwind label %bb.l, !dbg !97199

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !dbg !97201, !range !560, !noundef !11
  %.not = icmp eq i64 %i.j, 18, !dbg !97201
  br i1 %.not, label %bb.c, label %bb.f, !dbg !97205

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97206
  %i.k = load ptr, ptr %4, align 8, !dbg !97207, !noundef !11
  %.not5 = icmp eq ptr %i.k, null, !dbg !97207
  br i1 %.not5, label %bb.e, label %bb.d, !dbg !97209

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !97210
  %i.m = load i64, ptr %i.l, align 8, !dbg !97210, !noundef !11
  %i.n = icmp eq i64 %i.m, %i.e, !dbg !97213
  br i1 %i.n, label %bb.e, label %.thread, !dbg !97213

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0), !dbg !97214
  %.sroa.019.0.copyload = load i64, ptr %3, align 8, !dbg !97215
  %i.o = icmp eq i64 %i.i, 0, !dbg !97216
  br i1 %i.o, label %.loopexit, label %.preheader.i.preheader, !dbg !97225

.preheader.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.i, 3, !dbg !97226        ; 3 uses
  %i.p = icmp ult i64 %i.i, 4, !dbg !97226
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new, !dbg !97226

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.i, -4, !dbg !97226
  br label %.preheader.i, !dbg !97226

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ac, %.preheader.i ], !dbg !97227 ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ab, %.preheader.i ], !dbg !97228
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97229
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !97231
  %.val.i.i = load i64, ptr %i.r, align 8, !dbg !97231, !noalias !97232, !noundef !11
  %i.s = add i64 %.val.i.i, %.sroa.02.0.i.i, !dbg !97239
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97229
  %i.u = getelementptr i8, ptr %i.t, i64 40, !dbg !97231
  %.val.i.i.1 = load i64, ptr %i.u, align 8, !dbg !97231, !noalias !97232, !noundef !11
  %i.v = add i64 %.val.i.i.1, %i.s, !dbg !97239
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97229
  %i.x = getelementptr i8, ptr %i.w, i64 64, !dbg !97231
  %.val.i.i.2 = load i64, ptr %i.x, align 8, !dbg !97231, !noalias !97232, !noundef !11
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE7try_newCseeLknQCOKOd_13polars_python:bb.a
  store i8 42, ptr %0, align 8, !dbg !97244
  br label %bb.g, !dbg !97245

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !97247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !97254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97206
  store i8 42, ptr %0, align 8, !dbg !97247
  %.pre = load ptr, ptr %4, align 8, !dbg !97245, !alias.scope !97255
  %i.af = icmp eq ptr %.pre, null, !dbg !97245
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.g, !dbg !97245

bb.g:                                             ; preds = %.thread, %bb.f
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %4)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %bb.i, !dbg !97258

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !97226
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader, !dbg !97226

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0, !dbg !97226
  tail call void @llvm.assume(i1 %lcmp.mod25), !dbg !97226
  br label %.preheader.i.epil, !dbg !97226

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.aj, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ], !dbg !97227 ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.ai, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ], !dbg !97228
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i.epil, !dbg !97229
  %i.ah = getelementptr i8, ptr %i.ag, i64 16, !dbg !97231
  %.val.i.i.epil = load i64, ptr %i.ah, align 8, !dbg !97231, !noalias !97232, !noundef !11
  %i.ai = add i64 %.val.i.i.epil, %.sroa.02.0.i.i.epil, !dbg !97239 ; 2 uses
  %i.aj = add nuw i64 %.sroa.04.0.i.i.epil, 1, !dbg !97242
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !97226 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !97226
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.i.epil, !dbg !97226, !llvm.loop !97261

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.epil, %bb.e
  %.sroa.02.0.i = phi i64 [ 0, %bb.e ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ], [ %i.ai, %.preheader.i.epil ], !dbg !97262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !97263
  %.sroa.0.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 32, !dbg !97264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !97264
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !97265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !97266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.sroa.0, i64 56, i1 false), !dbg !97265
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !97265
  store i64 %.sroa.019.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !dbg !97265
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !97265
  store ptr %i.g, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !dbg !97265
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !97265
  store i64 %i.i, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !dbg !97265
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !97265
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !97265
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !97265
  store i64 %.sroa.02.0.i, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !97265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0), !dbg !97267
  br label %bb.h, !dbg !97268

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit, %.loopexit
  ret void, !dbg !97269

bb.i:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.f, %bb.g
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit unwind label %bb.j, !dbg !97270

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit unwind label %bb.k, !dbg !97273

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit18

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %1), !dbg !97268
  br label %bb.h, !dbg !97268

bb.l:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %4, align 8, !dbg !97276, !alias.scope !97278, !noundef !11
  %i.ap = icmp eq ptr %i.ao, null, !dbg !97276
  br i1 %i.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14, label %bb.m, !dbg !97276

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %4)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14 unwind label %bb.n, !dbg !97281

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14, %bb.m, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit18
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !97284
  unreachable, !dbg !97284

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14: ; preds = %bb.l, %bb.m, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.l ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16 unwind label %bb.n, !dbg !97285

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.al, %bb.j ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit14 ]
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit18 unwind label %bb.n, !dbg !97288

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit18
  resume { ptr, i32 } %.pn9, !dbg !97284

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECseeLknQCOKOd_13polars_python.exit18: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16, %bb.k
  %.pn9 = phi { ptr, i32 } [ %i.am, %bb.k ], [ %.pn7, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECseeLknQCOKOd_13polars_python.exit16 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %1) #55
          to label %bb.o unwind label %bb.n, !dbg !97268
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE15total_bytes_lenCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97291 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !97292 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8, !dbg !97303 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1, !dbg !97305
  br i1 %i.f, label %bb.b, label %bb.n, !dbg !97305

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !97307
  %i.h = load ptr, ptr %i.g, align 8, !dbg !97307, !nonnull !11, !noundef !11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !97314
  %i.j = load i64, ptr %i.i, align 8, !dbg !97314, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.j, !dbg !97315 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !97324 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !dbg !97324, !noundef !11
  %.not = icmp eq ptr %i.m, null, !dbg !97324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !97327
  br i1 %.not, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, label %bb.c, !dbg !97327

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.l), !dbg !97332, !noalias !97336
  %.not4.i = icmp eq i64 %i.n, 0, !dbg !97339
  br i1 %.not4.i, label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, label %bb.d, !dbg !97340

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.l), !dbg !97343, !noalias !97336
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !97346
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !97346, !noalias !97336 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !97346
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !97346, !noalias !97336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97347, !noalias !97336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !97347, !noalias !97336
  store i64 %i.j, ptr %i.b, align 8, !dbg !97357, !alias.scope !97358, !noalias !97363
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !97357
  store i64 1, ptr %i.o, align 8, !dbg !97357, !alias.scope !97358, !noalias !97363
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !97357
  store i64 %i.j, ptr %i.p, align 8, !dbg !97357, !alias.scope !97358, !noalias !97363
  %i.q = add i64 %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i, !dbg !97367 ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !dbg !97370, !alias.scope !97371, !noalias !97363
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !97370
  store i64 1, ptr %i.r, align 8, !dbg !97370, !alias.scope !97371, !noalias !97363
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !97370
  store i64 %i.q, ptr %i.s, align 8, !dbg !97370, !alias.scope !97371, !noalias !97363
  %i.t = icmp eq i64 %i.j, %i.q, !dbg !97374
  br i1 %i.t, label %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i, label %bb.e, !dbg !97381, !prof !1459

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedTjINtNtB4_6option6OptionjEEBM_ECs8774dFTUdNv_12polars_arrow(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @354) #56, !dbg !97382, !noalias !97363
  unreachable

_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.d
  %.sroa.6.16.copyload = load ptr, ptr %i.c, align 8, !dbg !97385
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !97385
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa_idx, align 8, !dbg !97385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97386, !noalias !97336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !97386, !noalias !97336
  br label %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit, !dbg !97387

_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b, %bb.c, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i
  %.sroa.13.0 = phi i64 [ %.sroa.5.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.4.0.copyload.i, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.10.0 = phi i64 [ %.sroa.10.16.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.16.copyload, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ], !dbg !97388
  %.sroa.3.0 = phi ptr [ %i.k, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ %i.h, %bb.c ], [ %i.h, %bb.b ], !dbg !97388 ; 2 uses
  %.sroa.0.03 = phi ptr [ %i.h, %_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB2_15ZipValidityItermINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1y_5slice4iter4IterNtNtNtNtB8_5array7binview4view4ViewENCNvMs4_B2I_INtB2I_22BinaryViewArrayGenericeE8len_iter0ENtNtB4_8iterator10BitmapIterE3newCseeLknQCOKOd_13polars_python.exit.i ], [ null, %bb.c ], [ null, %bb.b ], !dbg !97388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !97389
  br label %bb.f, !dbg !97390

bb.f:                                             ; preds = %bb.m, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit
  %i.u = phi ptr [ %.sroa.6.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %1, %bb.m ] ; 6 uses
  %i.v = phi i64 [ %.sroa.13.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %2, %bb.m ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.sroa.10.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %.pre.i.i.i21.i, %bb.m ] ; 3 uses
  %i.w = phi i64 [ %.sroa.11.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %3, %bb.m ] ; 3 uses
  %i.x = phi ptr [ %.sroa.3.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %4, %bb.m ] ; 3 uses
  %i.y = phi ptr [ %.sroa.3.0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %5, %bb.m ] ; 5 uses
  %i.z = phi ptr [ %.sroa.0.03, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %6, %bb.m ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCseeLknQCOKOd_13polars_python.exit ], [ %i.ax, %bb.m ], !dbg !97400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null, !dbg !97401
  br i1 %.not.i.i, label %bb.k, label %bb.g, !dbg !97405

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %i.z, %i.x, !dbg !97406
  br i1 %i.aa, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.h, !dbg !97414

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !97415
  %.val.i.i.i.i = load i32, ptr %i.z, align 4, !dbg !97417, !noalias !97423, !noundef !11
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !97432

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ac = phi ptr [ %i.ab, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], !dbg !97433
  %i.ad = icmp eq i64 %i.w, 0, !dbg !97434
  br i1 %i.ad, label %bb.i, label %._crit_edge.i.i.i.i, !dbg !97434

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ae = icmp eq i64 %i.v, 0, !dbg !97437
  br i1 %i.ae, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i, !dbg !97437

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i: ; preds = %bb.i
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.v, i64 64), !dbg !97438 ; 2 uses
  %i.af = sub nuw i64 %i.v, %.sroa.0.0.i.i.i.i.i, !dbg !97440
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.u, align 1, !dbg !97441, !noalias !97445
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !97448
  br label %._crit_edge.i.i.i.i, !dbg !97453

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ah = phi ptr [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.u, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ]
  %i.ai = phi i64 [ %i.af, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.v, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ]
  %i.aj = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %i.w, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !97454
  %i.ak = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCseeLknQCOKOd_13polars_python.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python.exit.i.i.i ], !dbg !97455 ; 2 uses
  %i.al = trunc i64 %i.ak to i8, !dbg !97455
  %i.am = lshr i64 %i.ak, 1, !dbg !97456
  %i.an = add i64 %i.aj, -1, !dbg !97454
  %i.ao = and i8 %i.al, 1, !dbg !97457
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !97458

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.i
  %i.ap = phi ptr [ %i.ah, %._crit_edge.i.i.i.i ], [ %i.u, %bb.i ] ; 2 uses
  %i.aq = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.am, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.i ] ; 2 uses
  %i.ar = phi i64 [ %i.an, %._crit_edge.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.ao, %._crit_edge.i.i.i.i ], [ 2, %bb.i ], !dbg !97459
  %i.as = call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECseeLknQCOKOd_13polars_python(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !97460, !noalias !97462 ; 2 uses
  %i.at = extractvalue { i8, i32 } %i.as, 0, !dbg !97463
  switch i8 %i.at, label %bb.j [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECseeLknQCOKOd_13polars_python.exit
    i8 0, label %bb.m
  ], !dbg !97464

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.au = extractvalue { i8, i32 } %i.as, 1, !dbg !97463
  br label %bb.m, !dbg !97467

bb.k:                                             ; preds = %bb.f
  %i.av = icmp eq ptr %i.y, %i.u, !dbg !97474
  br i1 %i.av, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %bb.l, !dbg !97479

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !97480 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.y, align 4, !dbg !97482, !noalias !97485, !noundef !11
  br label %bb.m, !dbg !97488

bb.m:                                             ; preds = %bb.l, %bb.j, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %1 = phi ptr [ %i.u, %bb.l ], [ %i.ap, %bb.j ], [ %i.ap, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %2 = phi i64 [ %i.v, %bb.l ], [ %i.aq, %bb.j ], [ %i.aq, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i21.i = phi i64 [ %.pre.i.i.i23.i, %bb.l ], [ %.pre.i.i.i22.i, %bb.j ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %3 = phi i64 [ %i.w, %bb.l ], [ %i.ar, %bb.j ], [ %i.ar, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %i.aw, %bb.l ], [ %i.x, %bb.j ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %i.aw, %bb.l ], [ %i.y, %bb.j ], [ %i.y, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi ptr [ null, %bb.l ], [ %i.ac, %bb.j ], [ %i.ac, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.0.0.i.pn.i.ph.i = phi i32 [ %.val.i.i.i, %bb.l ], [ %i.au, %bb.j ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.02.0.i.i.i = zext i32 %.sroa.0.0.i.pn.i.ph.i to i64, !dbg !97491
  %i.ax = add i64 %.sroa.0.0.i, %.sroa.02.0.i.i.i, !dbg !97498
  br label %bb.f, !dbg !97390

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.k
  store atomic i64 %.sroa.0.0.i, ptr %i.d monotonic, align 8, !dbg !97501
  br label %bb.n, !dbg !97510

bb.n:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECseeLknQCOKOd_13polars_python.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECseeLknQCOKOd_13polars_python.exit ], [ %i.e, %bb.a ], !dbg !97511
  ret i64 %.sroa.0.0, !dbg !97512
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE24new_unchecked_unknown_mdCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !97513 {
bb.a:
  %i.a = trunc nuw i64 %5 to i1, !dbg !97514
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %bb.b, !dbg !97514

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !97518
  %i.c = load ptr, ptr %i.b, align 8, !dbg !97518, !nonnull !11, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !97525
  %i.e = load i64, ptr %i.d, align 8, !dbg !97525, !noundef !11 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !97526
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.preheader, !dbg !97539

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3, !dbg !97540        ; 3 uses
  %i.g = icmp ult i64 %i.e, 4, !dbg !97540
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !97540

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4, !dbg !97540
  br label %.preheader, !dbg !97540

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !97544 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ], !dbg !97545
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97546
  %i.i = getelementptr i8, ptr %i.h, i64 16, !dbg !97549
  %.val.i = load i64, ptr %i.i, align 8, !dbg !97549, !noundef !11
  %i.j = add i64 %.val.i, %.sroa.02.0.i, !dbg !97550
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97546
  %i.l = getelementptr i8, ptr %i.k, i64 40, !dbg !97549
  %.val.i.1 = load i64, ptr %i.l, align 8, !dbg !97549, !noundef !11
  %i.m = add i64 %.val.i.1, %i.j, !dbg !97550
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97546
  %i.o = getelementptr i8, ptr %i.n, i64 64, !dbg !97549
  %.val.i.2 = load i64, ptr %i.o, align 8, !dbg !97549, !noundef !11
  %i.p = add i64 %.val.i.2, %i.m, !dbg !97550
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !97546
  %i.r = getelementptr i8, ptr %i.q, i64 88, !dbg !97549
  %.val.i.3 = load i64, ptr %i.r, align 8, !dbg !97549, !noundef !11
  %i.s = add i64 %.val.i.3, %i.p, !dbg !97550     ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 4, !dbg !97555 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !97540 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !97540
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, label %.preheader, !dbg !97540

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !97540
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.epil.preheader, !dbg !97540

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0, !dbg !97540
  tail call void @llvm.assume(i1 %lcmp.mod10), !dbg !97540
  br label %.preheader.epil, !dbg !97540

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !97544 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.w, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !97545
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil, !dbg !97546
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !97549
  %.val.i.epil = load i64, ptr %i.v, align 8, !dbg !97549, !noundef !11
  %i.w = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !97550 ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !97555
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !97540 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !97540
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit, label %.preheader.epil, !dbg !97540, !llvm.loop !97558

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %6, %bb.a ], [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericeE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB57_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECseeLknQCOKOd_13polars_python.exit.loopexit.unr-lcssa ], [ %i.w, %.preheader.epil ], !dbg !97559
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !97560
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !97562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !97565
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !97562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !97566
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !97562
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !97567
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !97562
  store i64 -1, ptr %i.ab, align 8, !dbg !97562
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !97562
  store i64 %.sroa.02.0, ptr %i.ac, align 8, !dbg !97562
  ret void, !dbg !97568
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE5boxedCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97569 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !dbg !97570, !noalias !97578
  %i.a = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !dbg !97581, !noalias !97578 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !97582
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCseeLknQCOKOd_13polars_python.exit, !dbg !97583, !prof !54

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #56
          to label %.noexc unwind label %bb.c, !dbg !97584

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !97584

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #55
          to label %bb.e unwind label %bb.d, !dbg !97585

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !97586
  unreachable, !dbg !97586

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !97586

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !dbg !97587
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.a, 0, !dbg !97589
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @583, 1, !dbg !97589
  ret { ptr, ptr } %i.f, !dbg !97589
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE7try_newCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !97590 {
bb.a:
  %.sroa.0.sroa.0 = alloca [56 x i8], align 8     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97591
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !97592
  %i.c = load ptr, ptr %i.b, align 8, !dbg !97592, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !97597
  %i.e = load i64, ptr %i.d, align 8, !dbg !97597, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !97598
  %i.g = load ptr, ptr %i.f, align 8, !dbg !97598, !noundef !11 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !97604
  %i.i = load i64, ptr %i.h, align 8, !dbg !97604, !noundef !11 ; 6 uses
  invoke void @_RINvNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view14validate_viewsINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENvB2_13validate_utf8ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.b unwind label %bb.l, !dbg !97605

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !dbg !97607, !range !560, !noundef !11
  %.not = icmp eq i64 %i.j, 18, !dbg !97607
  br i1 %.not, label %bb.c, label %bb.f, !dbg !97611

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97612
  %i.k = load ptr, ptr %4, align 8, !dbg !97613, !noundef !11
  %.not5 = icmp eq ptr %i.k, null, !dbg !97613
  br i1 %.not5, label %bb.e, label %bb.d, !dbg !97615

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !97616
  %i.m = load i64, ptr %i.l, align 8, !dbg !97616, !noundef !11
  %i.n = icmp eq i64 %i.m, %i.e, !dbg !97619
  br i1 %i.n, label %bb.e, label %.thread, !dbg !97619

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0), !dbg !97620
  %.sroa.019.0.copyload = load i64, ptr %3, align 8, !dbg !97621
  %i.o = icmp eq i64 %i.i, 0, !dbg !97622
  br i1 %i.o, label %.loopexit, label %.preheader.i.preheader, !dbg !97631

.preheader.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.i, 3, !dbg !97632        ; 3 uses
  %i.p = icmp ult i64 %i.i, 4, !dbg !97632
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new, !dbg !97632

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.i, -4, !dbg !97632
  br label %.preheader.i, !dbg !97632

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ac, %.preheader.i ], !dbg !97633 ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ab, %.preheader.i ], !dbg !97634
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97635
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !97637
  %.val.i.i = load i64, ptr %i.r, align 8, !dbg !97637, !noalias !97638, !noundef !11
  %i.s = add i64 %.val.i.i, %.sroa.02.0.i.i, !dbg !97645
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97635
  %i.u = getelementptr i8, ptr %i.t, i64 40, !dbg !97637
  %.val.i.i.1 = load i64, ptr %i.u, align 8, !dbg !97637, !noalias !97638, !noundef !11
  %i.v = add i64 %.val.i.i.1, %i.s, !dbg !97645
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !97635
  %i.x = getelementptr i8, ptr %i.w, i64 64, !dbg !97637
  %.val.i.i.2 = load i64, ptr %i.x, align 8, !dbg !97637, !noalias !97638, !noundef !11
end_hunk_1
