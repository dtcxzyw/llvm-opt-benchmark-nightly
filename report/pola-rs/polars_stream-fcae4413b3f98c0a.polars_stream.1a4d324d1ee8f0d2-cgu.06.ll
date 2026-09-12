Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.06?download=true
inline.NumInlined: 10066
inline.NumDeleted: 5164
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream:bb.a
  unreachable, !dbg !105030

bb.n:                                             ; preds = %bb.k
  %i.fm = atomicrmw add ptr %i.fj, i64 1 monotonic, align 8, !dbg !105031, !noalias !104587
  %i.fn = icmp slt i64 %i.fm, 0, !dbg !105032
  br i1 %i.fn, label %bb.r, label %bb.q, !dbg !105032

bb.o:                                             ; preds = %bb.k
  store ptr null, ptr %i.bl, align 8, !dbg !105033, !noalias !104586
  br label %bb.p, !dbg !105033

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.fo = phi ptr [ %i.ft, %bb.q ], [ null, %bb.o ] ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 202, !dbg !105034
  %i.fq = load i8, ptr %i.fp, align 2, !dbg !105034, !range !3080, !noalias !104586, !noundef !2876
  %i.fr = load i64, ptr %i.eu, align 16, !dbg !105035, !range !2959, !noalias !104586, !noundef !2876
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !105036
  br i1 %i.fs, label %bb.s, label %bb.t, !dbg !105036

bb.q:                                             ; preds = %bb.n
  %i.ft = load ptr, ptr %i.fi, align 16, !dbg !105037, !noalias !104586, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.fu = load i64, ptr %i.fk, align 8, !dbg !105037, !noalias !104586, !noundef !2876
  store ptr %i.ft, ptr %i.bl, align 8, !dbg !105038, !noalias !104586
  store i64 %i.fu, ptr %i.ek, align 8, !dbg !105038, !noalias !104586
  br label %bb.p, !dbg !105039

bb.r:                                             ; preds = %bb.n
  call void @llvm.trap(), !dbg !105040
  unreachable, !dbg !105040

bb.s:                                             ; preds = %bb.p
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105035
  %i.fw = load i64, ptr %i.fv, align 8, !dbg !105041, !noalias !104586, !noundef !2876
  br label %bb.t, !dbg !105042

bb.t:                                             ; preds = %bb.s, %bb.p
  %.sroa.5.0.i.i.i = phi i64 [ %i.fw, %bb.s ], [ undef, %bb.p ], !dbg !105043 ; 3 uses
  %.sroa.0.0.i.i.i = phi i16 [ 1, %bb.s ], [ 0, %bb.p ], !dbg !105043
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105044 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 16, !dbg !105044, !range !3088, !noalias !104586, !noundef !2876
  %i.fz = call i64 @llvm.usub.sat.i64(i64 %i.fy, i64 4), !dbg !105044
  switch i64 %i.fz, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.x
    i64 2, label %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  ], !dbg !105044

default.unreachable:                              ; preds = %_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.gr, %_RNvXsk_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTargetNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.aj, %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !105045, !noalias !104601
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.bj, ptr noundef nonnull align 16 %i.fx) #40
          to label %.noexc.i.i.i unwind label %bb.y, !dbg !105045, !noalias !104587

.noexc.i.i.i:                                     ; preds = %bb.u
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 144, !dbg !105046
  %i.gb = invoke noundef nonnull ptr @_RNvXs1_NtCs2mZqlW55729_12polars_utils15python_functionNtB5_12PythonObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ga)
          to label %bb.ab unwind label %bb.v, !dbg !105046, !noalias !104605

bb.v:                                             ; preds = %.noexc.i.i.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.bj) #32
          to label %.body.i.i.i unwind label %bb.w, !dbg !105047, !noalias !104605

bb.w:                                             ; preds = %bb.v
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105048, !noalias !104605
  unreachable, !dbg !105048

bb.x:                                             ; preds = %bb.t
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !105049, !noalias !104586
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.bk, ptr noundef nonnull align 16 %i.ge)
          to label %bb.ac unwind label %bb.y, !dbg !105049, !noalias !104587

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i, !dbg !105050

.body.i.i.i:                                      ; preds = %bb.y, %bb.v
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gf, %bb.y ], [ %i.gc, %bb.v ]
  %i.gg = icmp eq ptr %i.fo, null, !dbg !105051
  br i1 %i.gg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %bb.z, !dbg !105051

bb.z:                                             ; preds = %.body.i.i.i
  %i.gh = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !dbg !105052, !noalias !104606
  %i.gi = icmp eq i64 %i.gh, 1, !dbg !105053
  br i1 %i.gi, label %bb.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105053

bb.aa:                                            ; preds = %bb.z
  fence acquire, !dbg !105054
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bl) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.ad, !dbg !105055, !noalias !104587

bb.ab:                                            ; preds = %.noexc.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 152, !dbg !105056
  %i.gk = load i8, ptr %i.gj, align 8, !dbg !105056, !range !3183, !noalias !104601, !noundef !2876
  %.sroa.015.0.copyload.i.i.i = load i64, ptr %i.bj, align 16, !dbg !105048, !noalias !104586
  %.sroa.6.sroa.0.i.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.4.0.copyload.i = load i24, ptr %.sroa.6.sroa.0.i.i.sroa.4.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.sroa.0.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 1, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.7.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 1, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.9.0.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.11.0.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.6.sroa.0.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.13.0.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !dbg !105048, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.14.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.i.i.sroa.14.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 8, !dbg !105048, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0.i.i.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0.i.i.sroa.15.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, i64 23, i1 false), !dbg !105048, !noalias !104580
  %i.gl = load <2 x i64>, ptr %.sroa.6.sroa.0.i.i.sroa.16.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i, align 16, !dbg !105048, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !105047, !noalias !104601
  br label %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105044

bb.ac:                                            ; preds = %bb.x
  %.sroa.6.sroa.0.i.i.sroa.4.8.copyload.i = load i24, ptr %i.bk, align 16, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.6.8.copyload.i = load i32, ptr %.sroa.6.sroa.0.i.i.sroa.6.8..sroa_idx.i, align 1, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.7.8.copyload.i = load i8, ptr %.sroa.6.sroa.0.i.i.sroa.7.8..sroa_idx.i, align 1, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.8.8.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.8.8..sroa_idx.i, align 8, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.9.8.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.9.8..sroa_idx.i, align 16, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.10.8.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.10.8..sroa_idx.i, align 8, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.11.8.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.11.8..sroa_idx.i, align 16, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.12.8.copyload.i = load ptr, ptr %.sroa.6.sroa.0.i.i.sroa.12.8..sroa_idx.i, align 8, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.13.8.copyload.i = load i64, ptr %.sroa.6.sroa.0.i.i.sroa.13.8..sroa_idx.i, align 16, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.0.i.i.sroa.14.8.copyload.i = load i8, ptr %.sroa.6.sroa.0.i.i.sroa.14.8..sroa_idx.i, align 8, !dbg !105049, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0.i.i.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0.i.i.sroa.15.8..sroa_idx.i, i64 23, i1 false), !dbg !105049, !noalias !104580
  %i.gm = load <2 x i64>, ptr %.sroa.6.sroa.0.i.i.sroa.16.8..sroa_idx.i, align 16, !dbg !105049, !noalias !104580
  %.sroa.6.sroa.5.8.copyload.i.i.i = load ptr, ptr %.sroa.6.sroa.5.8..sroa_idx.i.i.i, align 16, !dbg !105049, !noalias !104586
  %.sroa.6.sroa.6.8.copyload.i.i.i = load i8, ptr %.sroa.6.sroa.6.8..sroa_idx.i.i.i, align 8, !dbg !105049, !noalias !104586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.7.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.7.8..sroa_idx.i.i.i, i64 7, i1 false), !dbg !105049, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !105049, !noalias !104586
  br label %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105044

bb.ad:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %bb.ag, %bb.af, %bb.aa
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105057, !noalias !104587
  unreachable, !dbg !105057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.aa, %bb.z, %.body.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104607), !dbg !105050
  %i.go = load ptr, ptr %i.bm, align 8, !dbg !105058, !alias.scope !104607, !noalias !104586, !noundef !2876 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null, !dbg !105058
  br i1 %i.gp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %bb.ae, !dbg !105058

bb.ae:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  %i.gq = atomicrmw sub ptr %i.go, i64 1 release, align 8, !dbg !105059, !noalias !104608
  %i.gr = icmp eq i64 %i.gq, 1, !dbg !105060
  br i1 %i.gr, label %bb.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105060

bb.af:                                            ; preds = %bb.ae
  fence acquire, !dbg !105061
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.ad, !dbg !105062, !noalias !104587

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.af, %bb.ae, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104609), !dbg !105050
  call void @llvm.experimental.noalias.scope.decl(metadata !104610), !dbg !105063
  %i.gs = load ptr, ptr %i.bn, align 8, !dbg !105064, !alias.scope !104611, !noalias !104586, !nonnull !2876, !noundef !2876
  %i.gt = atomicrmw sub ptr %i.gs, i64 1 release, align 8, !dbg !105065, !noalias !104612
  %i.gu = icmp eq i64 %i.gt, 1, !dbg !105066
  br i1 %i.gu, label %bb.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105066

bb.ag:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  fence acquire, !dbg !105067
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bn) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.ad, !dbg !105068, !noalias !104587

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectEECs2g09Ig8GZd6_13polars_stream(ptr %storemerge.i.i.i) #32
          to label %bb.ok unwind label %bb.ad, !dbg !105050, !noalias !104587

_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.t
  %.sroa.6.sroa.0.i.i.sroa.0.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.0.0.copyload.i, %bb.ab ], [ undef, %bb.ac ], [ undef, %bb.t ], !dbg !104840 ; 2 uses
  %.sroa.6.sroa.0.i.i.sroa.4.0.i = phi i24 [ %.sroa.6.sroa.0.i.i.sroa.4.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.4.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.6.0.i = phi i32 [ %.sroa.6.sroa.0.i.i.sroa.6.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.6.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.7.0.i = phi i8 [ %.sroa.6.sroa.0.i.i.sroa.7.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.7.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.8.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.8.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.8.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.9.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.9.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.9.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.10.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.10.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.10.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840 ; 4 uses
  %.sroa.6.sroa.0.i.i.sroa.11.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.11.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.11.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.12.0.i = phi ptr [ %.sroa.6.sroa.0.i.i.sroa.12.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.12.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.13.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.13.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.13.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.0.i.i.sroa.14.0.i = phi i8 [ %.sroa.6.sroa.0.i.i.sroa.14.0.copyload.i, %bb.ab ], [ %.sroa.6.sroa.0.i.i.sroa.14.8.copyload.i, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %.sroa.6.sroa.6.0.i.i.i = phi i8 [ %i.gk, %bb.ab ], [ %.sroa.6.sroa.6.8.copyload.i.i.i, %bb.ac ], [ undef, %bb.t ], !dbg !105069
  %.sroa.6.sroa.5.0.i.i.i = phi ptr [ %i.gb, %bb.ab ], [ %.sroa.6.sroa.5.8.copyload.i.i.i, %bb.ac ], [ undef, %bb.t ], !dbg !105069
  %.sroa.01.0.i.i.i = phi i64 [ %.sroa.015.0.copyload.i.i.i, %bb.ab ], [ 5, %bb.ac ], [ 6, %bb.t ], !dbg !105044 ; 2 uses
  %i.gv = phi <2 x i64> [ %i.gl, %bb.ab ], [ %i.gm, %bb.ac ], [ undef, %bb.t ], !dbg !104840
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 200, !dbg !105070
  %i.gx = load i8, ptr %i.gw, align 8, !dbg !105070, !range !3183, !noalias !104586, !noundef !2876
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 201, !dbg !105071
  %i.gz = load i8, ptr %i.gy, align 1, !dbg !105071, !range !3183, !noalias !104586, !noundef !2876
  %i.ha = load i64, ptr %i.ek, align 8, !dbg !105057, !noalias !104586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !105050, !noalias !104586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !105050, !noalias !104586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !105050, !noalias !104586
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc323.i = trunc i64 %.sroa.5.0.i.i.i to i8, !dbg !105072
  %2 = lshr i64 %.sroa.5.0.i.i.i, 8, !dbg !105072
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc361.i = trunc i64 %2 to i32, !dbg !105072
  %.sroa.61.sroa.24.0.extract.shift303.i = and i64 %.sroa.5.0.i.i.i, -4294967296, !dbg !105073
  %.sroa.75.sroa.0.0.extract.trunc220.i = trunc i64 %.sroa.01.0.i.i.i to i8, !dbg !105072
  %.sroa.75.sroa.19.0.extract.shift245.i = lshr i64 %.sroa.01.0.i.i.i, 8, !dbg !105072
  %.sroa.88.sroa.0.0.extract.trunc178.i = trunc i64 %.sroa.6.sroa.0.i.i.sroa.0.0.i to i24, !dbg !105072
  %.sroa.88.sroa.19.0.extract.shift202.i = and i64 %.sroa.6.sroa.0.i.i.sroa.0.0.i, -16777216, !dbg !105073
  %.sroa.116.sroa.0.0.extract.trunc103.i = trunc i64 %.sroa.6.sroa.0.i.i.sroa.10.0.i to i8, !dbg !105072
  %.sroa.116.sroa.13.0.extract.shift112.i = lshr i64 %.sroa.6.sroa.0.i.i.sroa.10.0.i, 8, !dbg !105072
  %.sroa.116.sroa.13.0.extract.trunc113.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift112.i to i8, !dbg !105072
  %.sroa.116.sroa.14.0.extract.shift128.i = lshr i64 %.sroa.6.sroa.0.i.i.sroa.10.0.i, 16, !dbg !105072
  %.sroa.116.sroa.14.0.extract.trunc129.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift128.i to i8, !dbg !105072
  %.sroa.116.sroa.15.0.extract.shift144.i = lshr i64 %.sroa.6.sroa.0.i.i.sroa.10.0.i, 24, !dbg !105072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.sroa.0.i.i.sroa.15.i, i64 23, i1 false), !dbg !105072, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.7.i.i.i, i64 7, i1 false), !dbg !105072, !noalias !104575
  %i.hb = insertelement <2 x ptr> poison, ptr %i.fc, i64 0, !dbg !105074
  %i.hc = insertelement <2 x ptr> %i.hb, ptr %storemerge.i.i.i, i64 1, !dbg !105074
  br label %bb.oi, !dbg !105075

bb.ah:                                            ; preds = %bb.d
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105076
  %i.he = load i64, ptr %i.hd, align 8, !dbg !105076, !noalias !104580, !noundef !2876
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105077
  %i.hg = load i64, ptr %i.hf, align 16, !dbg !105077, !noalias !104580, !noundef !2876 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105078
  %i.hi = load i32, ptr %i.hh, align 8, !dbg !105078, !noalias !104580, !noundef !2876 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc378.i = trunc i64 %i.hg to i16, !dbg !105079
  %.sroa.44.sroa.25.0.extract.shift414.i = lshr i64 %i.hg, 16, !dbg !105079
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %i.hi to i8, !dbg !105079
  %.sroa.61.sroa.0.sroa.24.0.extract.shift.i = lshr i32 %i.hi, 8, !dbg !105079
  br label %bb.oi, !dbg !105075

bb.ai:                                            ; preds = %bb.d
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105080
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 128, !dbg !105081
  %i.hl = load i64, ptr %i.hk, align 16, !dbg !105081, !noalias !104580, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !105082, !noalias !104580
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_irNtB5_6ExprIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.cg, ptr noundef nonnull align 16 %i.hj) #40
          to label %.noexc13.i unwind label %.loopexit.i, !dbg !105082, !noalias !104575

.noexc13.i:                                       ; preds = %bb.ai
  %.sroa.44.16.copyload.i = load i64, ptr %i.cg, align 16, !dbg !105083, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc380.i = trunc i64 %.sroa.44.16.copyload.i to i16, !dbg !105083
  %.sroa.44.sroa.25.0.extract.shift418.i = lshr i64 %.sroa.44.16.copyload.i, 16, !dbg !105083
  %.sroa.61.16.copyload.i = load i64, ptr %.sroa.61.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc310.i = trunc i64 %.sroa.61.16.copyload.i to i8, !dbg !105083
  %3 = lshr i64 %.sroa.61.16.copyload.i, 8, !dbg !105083
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc335.i = trunc i64 %3 to i32, !dbg !105083
  %.sroa.61.sroa.24.0.extract.shift277.i = and i64 %.sroa.61.16.copyload.i, -4294967296, !dbg !105073
  %.sroa.75.16.copyload.i = load i64, ptr %.sroa.75.16..sroa_idx.i, align 16, !dbg !105083, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc210.i = trunc i64 %.sroa.75.16.copyload.i to i8, !dbg !105083
  %.sroa.75.sroa.19.0.extract.shift225.i = lshr i64 %.sroa.75.16.copyload.i, 8, !dbg !105083
  %.sroa.88.16.copyload.i = load i64, ptr %.sroa.88.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc167.i = trunc i64 %.sroa.88.16.copyload.i to i24, !dbg !105083
  %.sroa.88.sroa.19.0.extract.shift180.i = and i64 %.sroa.88.16.copyload.i, -16777216, !dbg !105073
  %.sroa.98.16.copyload.i = load i24, ptr %.sroa.98.16..sroa_idx.i, align 16, !dbg !105083, !noalias !104575
  %.sroa.106.16.copyload.i = load i32, ptr %.sroa.106.16..sroa_idx.i, align 1, !dbg !105083, !noalias !104575
  %.sroa.10679.16.copyload.i = load i8, ptr %.sroa.10679.16..sroa_idx.i, align 1, !dbg !105083, !noalias !104575
  %.sroa.107.16.copyload.i = load i64, ptr %.sroa.107.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575
  %.sroa.111.16.copyload.i = load i64, ptr %.sroa.111.16..sroa_idx.i, align 16, !dbg !105083, !noalias !104575
  %.sroa.116.16.copyload.i = load i64, ptr %.sroa.116.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575 ; 4 uses
  %.sroa.116.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.116.16.copyload.i to i8, !dbg !105083
  %.sroa.116.sroa.13.0.extract.shift.i = lshr i64 %.sroa.116.16.copyload.i, 8, !dbg !105083
  %.sroa.116.sroa.13.0.extract.trunc.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift.i to i8, !dbg !105083
  %.sroa.116.sroa.14.0.extract.shift.i = lshr i64 %.sroa.116.16.copyload.i, 16, !dbg !105083
  %.sroa.116.sroa.14.0.extract.trunc.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift.i to i8, !dbg !105083
  %.sroa.116.sroa.15.0.extract.shift.i = lshr i64 %.sroa.116.16.copyload.i, 24, !dbg !105083
  %.sroa.122.16.copyload.i = load i64, ptr %.sroa.122.16..sroa_idx.i, align 16, !dbg !105083, !noalias !104575
  %.sroa.125.16.copyload.i = load ptr, ptr %.sroa.125.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575
  %.sroa.126.16.copyload.i = load i64, ptr %.sroa.126.16..sroa_idx.i, align 16, !dbg !105083, !noalias !104575
  %.sroa.128.16.copyload.i = load i8, ptr %.sroa.128.16..sroa_idx.i, align 8, !dbg !105083, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.16..sroa_idx.i, i64 23, i1 false), !dbg !105083, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !105084, !noalias !104580
  %i.hm = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.hl, i64 0, !dbg !105074
  br label %bb.oi, !dbg !105075

bb.aj:                                            ; preds = %bb.d
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 64, !dbg !105085
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105086
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 272, !dbg !105087
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 280, !dbg !105088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !105089, !noalias !104580
  call void @llvm.experimental.noalias.scope.decl(metadata !104614), !dbg !105089
  call void @llvm.experimental.noalias.scope.decl(metadata !104615), !dbg !105089
  %i.hr = load i64, ptr %i.hn, align 16, !dbg !105090, !range !2986, !alias.scope !104615, !noalias !104616, !noundef !2876 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 72, !dbg !105091
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !105091, !alias.scope !104615, !noalias !104616, !nonnull !2876, !noundef !2876 ; 7 uses
  switch i64 %i.hr, label %default.unreachable [
    i64 0, label %bb.ak
    i64 1, label %bb.al
    i64 2, label %bb.am
  ], !dbg !105090

bb.ak:                                            ; preds = %bb.aj
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !105092, !range !2977, !noalias !104620, !noundef !2876
  %i.hv = icmp eq i64 %i.hu, 3, !dbg !105093
  br i1 %i.hv, label %bb.an, label %bb.ao, !dbg !105093

bb.al:                                            ; preds = %bb.aj
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105094
  %i.hx = load i64, ptr %i.hw, align 16, !dbg !105094, !alias.scope !104615, !noalias !104616, !noundef !2876
  %i.hy = atomicrmw add ptr %i.ht, i64 1 monotonic, align 8, !dbg !105095, !noalias !104620
  %i.hz = icmp slt i64 %i.hy, 0, !dbg !105096
  br i1 %i.hz, label %bb.ap, label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105096

bb.am:                                            ; preds = %bb.aj
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105097
  %i.ib = load i64, ptr %i.ia, align 16, !dbg !105097, !alias.scope !104615, !noalias !104616, !noundef !2876
  %i.ic = atomicrmw add ptr %i.ht, i64 1 monotonic, align 8, !dbg !105098, !noalias !104620
  %i.id = icmp slt i64 %i.ic, 0, !dbg !105099
  br i1 %i.id, label %bb.aq, label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105099

bb.an:                                            ; preds = %bb.ao, %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105100
  %i.if = load ptr, ptr %i.ie, align 16, !dbg !105100, !alias.scope !104615, !noalias !104616, !noundef !2876
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 88, !dbg !105101
  %i.ih = load i64, ptr %i.ig, align 8, !dbg !105101, !alias.scope !104615, !noalias !104616, !noundef !2876
  store ptr %i.ht, ptr %.sink10.i.sroa.gep.i.i, align 8, !dbg !105102, !alias.scope !104614, !noalias !104627
  br label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105103

bb.ao:                                            ; preds = %bb.ak
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 24, !dbg !105104
  %i.ij = atomicrmw add ptr %i.ii, i64 1 monotonic, align 8, !dbg !105105, !noalias !104620 ; 0 uses
  br label %bb.an, !dbg !105106

bb.ap:                                            ; preds = %bb.al
  call void @llvm.trap(), !dbg !105107
  unreachable, !dbg !105107

bb.aq:                                            ; preds = %bb.am
  call void @llvm.trap(), !dbg !105108
  unreachable, !dbg !105108

_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al
  %.sink10.i.sroa.phi.i.i = phi ptr [ %.sink10.i.sroa.gep.i.i, %bb.al ], [ %.sink10.i.sroa.gep133.i.i, %bb.an ], [ %.sink10.i.sroa.gep.i.i, %bb.am ]
  %.sink8.i.i.i = phi ptr [ %i.ht, %bb.al ], [ %i.if, %bb.an ], [ %i.ht, %bb.am ]
  %.sink7.i.sroa.phi.i.i = phi ptr [ %.sink10.i.sroa.gep133.i.i, %bb.al ], [ %.sink7.i.sroa.gep135.i.i, %bb.an ], [ %.sink10.i.sroa.gep133.i.i, %bb.am ]
  %.sink5.i.i.i = phi i64 [ %i.hx, %bb.al ], [ %i.ih, %bb.an ], [ %i.ib, %bb.am ]
  store ptr %.sink8.i.i.i, ptr %.sink10.i.sroa.phi.i.i, align 8, !dbg !105090, !alias.scope !104614, !noalias !104627
  store i64 %.sink5.i.i.i, ptr %.sink7.i.sroa.phi.i.i, align 8, !dbg !105090, !alias.scope !104614, !noalias !104627
  store i64 %i.hr, ptr %i.cf, align 8, !dbg !105090, !alias.scope !104614, !noalias !104627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !105109, !noalias !104580
  call void @llvm.experimental.noalias.scope.decl(metadata !104630), !dbg !105109
  call void @llvm.experimental.noalias.scope.decl(metadata !104631), !dbg !105109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !105110, !noalias !104632
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 56, !dbg !105111
  %i.il = load ptr, ptr %i.ik, align 8, !dbg !105111, !alias.scope !104631, !noalias !104636, !nonnull !2876, !noundef !2876 ; 4 uses
  %i.im = atomicrmw add ptr %i.il, i64 1 monotonic, align 8, !dbg !105112, !noalias !104637
  %i.in = icmp slt i64 %i.im, 0, !dbg !105113
  br i1 %i.in, label %bb.as, label %bb.ar, !dbg !105113

bb.ar:                                            ; preds = %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  store ptr %i.il, ptr %i.bi, align 8, !dbg !105114, !noalias !104632
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105115 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !dbg !105115, !range !2986, !alias.scope !104631, !noalias !104636, !noundef !2876
  %.not.i54.i.i = icmp eq i64 %i.ip, 2, !dbg !105115
  br i1 %.not.i54.i.i, label %bb.hk, label %bb.at, !dbg !105116

bb.as:                                            ; preds = %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.trap(), !dbg !105117
  unreachable, !dbg !105117

bb.at:                                            ; preds = %bb.ar
  %i.iq = invoke { i64, ptr } @_RNvXCs76NdGGEXHxZ_6eitherINtB2_6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtBF_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB3w_EEEIBB_IB19_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.io)
          to label %bb.aw unwind label %bb.au, !dbg !105118, !noalias !104638 ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = atomicrmw sub ptr %i.il, i64 1 release, align 8, !dbg !105119, !noalias !104639
  %i.it = icmp eq i64 %i.is, 1, !dbg !105120
  br i1 %i.it, label %bb.av, label %.body.i.i, !dbg !105120

bb.av:                                            ; preds = %bb.au
  fence acquire, !dbg !105121
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #35
          to label %.body.i.i unwind label %bb.ax, !dbg !105122, !noalias !104638

bb.aw:                                            ; preds = %bb.at
  %i.iu = extractvalue { i64, ptr } %i.iq, 0, !dbg !105123
  %i.iv = extractvalue { i64, ptr } %i.iq, 1, !dbg !105123
  br label %bb.hk, !dbg !105124

bb.ax:                                            ; preds = %bb.av
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105125, !noalias !104638
  unreachable, !dbg !105125

bb.ay:                                            ; preds = %bb.d
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105126 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !dbg !105126, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.iz = atomicrmw add ptr %i.iy, i64 1 monotonic, align 8, !dbg !105127, !noalias !104575
  %i.ja = icmp slt i64 %i.iz, 0, !dbg !105128
  br i1 %i.ja, label %bb.ln, label %bb.lm, !dbg !105128

bb.az:                                            ; preds = %bb.d
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105129
  %i.jc = load i64, ptr %i.jb, align 16, !dbg !105129, !noalias !104580, !noundef !2876 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105130 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !dbg !105130, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.jf = atomicrmw add ptr %i.je, i64 1 monotonic, align 8, !dbg !105131, !noalias !104575
  %i.jg = icmp slt i64 %i.jf, 0, !dbg !105132
  br i1 %i.jg, label %bb.lv, label %bb.lu, !dbg !105132

bb.ba:                                            ; preds = %bb.d
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105133
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105134
  %i.jj = load i64, ptr %i.ji, align 8, !dbg !105134, !noalias !104580, !noundef !2876 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !dbg !105135, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jh)
          to label %.noexc14.i unwind label %.loopexit.i, !dbg !105135, !noalias !104575

.noexc14.i:                                       ; preds = %bb.ba
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105136 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 16, !dbg !105136, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.jm = atomicrmw add ptr %i.jl, i64 1 monotonic, align 8, !dbg !105137, !noalias !104575
  %i.jn = icmp slt i64 %i.jm, 0, !dbg !105138
  br i1 %i.jn, label %bb.lw, label %bb.lx, !dbg !105138

bb.bb:                                            ; preds = %bb.d
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105139
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 64, !dbg !105140
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 128, !dbg !105141
  %i.jr = load i64, ptr %i.jq, align 16, !dbg !105141, !noalias !104580, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !105142, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jo)
          to label %.noexc15.i unwind label %.loopexit.i, !dbg !105142, !noalias !104575

.noexc15.i:                                       ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !105143, !noalias !104580
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105144
  %i.jt = load i64, ptr %i.js, align 8, !dbg !105144, !range !2959, !noalias !104580, !noundef !2876
  %i.ju = trunc nuw i64 %i.jt to i1, !dbg !105145
  br i1 %i.ju, label %bb.ly, label %bb.mb, !dbg !105145

bb.bc:                                            ; preds = %bb.d
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105146
  %i.jw = load i64, ptr %i.jv, align 8, !dbg !105146, !noalias !104580, !noundef !2876 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105147
  %.sroa.26.8.copyload36.i = load i64, ptr %i.jx, align 8, !dbg !105147, !noalias !104575
  %.sroa.44.8..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105147
  %.sroa.44.8.copyload46.i = load i64, ptr %.sroa.44.8..sroa_idx45.i, align 16, !dbg !105147, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc366.i = trunc i64 %.sroa.44.8.copyload46.i to i16, !dbg !105147
  %.sroa.44.sroa.25.0.extract.shift390.i = lshr i64 %.sroa.44.8.copyload46.i, 16, !dbg !105147
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc322.i = trunc i64 %i.jw to i8, !dbg !105148
  %4 = lshr i64 %i.jw, 8, !dbg !105148
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc359.i = trunc i64 %4 to i32, !dbg !105148
  %.sroa.61.sroa.24.0.extract.shift301.i = and i64 %i.jw, -4294967296, !dbg !105073
  br label %bb.oi, !dbg !105075

bb.bd:                                            ; preds = %bb.d
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105149
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 96, !dbg !105150
  %i.ka = load i64, ptr %i.jz, align 16, !dbg !105150, !noalias !104580, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !105151, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jy)
          to label %.noexc16.i unwind label %.loopexit.i, !dbg !105151, !noalias !104575

.noexc16.i:                                       ; preds = %bb.bd
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 56, !dbg !105152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !105153, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb)
          to label %bb.mg unwind label %bb.mf, !dbg !105153, !noalias !104575

bb.be:                                            ; preds = %bb.d
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105154
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 72, !dbg !105155
  %i.ke = load i64, ptr %i.kd, align 8, !dbg !105155, !noalias !104580, !noundef !2876 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105156
  %i.kg = load i64, ptr %i.kf, align 16, !dbg !105156, !noalias !104580, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !dbg !105157, !noalias !104580
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 56, !dbg !105158 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !dbg !105158, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.kj = atomicrmw add ptr %i.ki, i64 1 monotonic, align 8, !dbg !105159, !noalias !104575
  %i.kk = icmp slt i64 %i.kj, 0, !dbg !105160
  br i1 %i.kk, label %bb.mr, label %bb.mq, !dbg !105160

bb.bf:                                            ; preds = %bb.d
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105161
  %i.km = load i64, ptr %i.kl, align 8, !dbg !105161, !noalias !104580, !noundef !2876
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105162
  %i.ko = load i64, ptr %i.kn, align 16, !dbg !105162, !noalias !104580, !noundef !2876 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105163
  %i.kq = load i8, ptr %i.kp, align 8, !dbg !105163, !range !3183, !noalias !104580, !noundef !2876
  %.sroa.44.sroa.0.0.extract.trunc376.i = trunc i64 %i.ko to i16, !dbg !105164
  %.sroa.44.sroa.25.0.extract.shift410.i = lshr i64 %i.ko, 16, !dbg !105164
  br label %bb.oi, !dbg !105075

bb.bg:                                            ; preds = %bb.d
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105165
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105166
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !105166, !noalias !104580, !noundef !2876 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !105167, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr)
          to label %.noexc17.i unwind label %.loopexit.i, !dbg !105167, !noalias !104575

.noexc17.i:                                       ; preds = %bb.bg
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105168 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 16, !dbg !105168, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.kw = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !dbg !105169, !noalias !104575
  %i.kx = icmp slt i64 %i.kw, 0, !dbg !105170
  br i1 %i.kx, label %bb.na, label %bb.nb, !dbg !105170

bb.bh:                                            ; preds = %bb.d
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105171
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 56, !dbg !105172
  %i.la = load i64, ptr %i.kz, align 8, !dbg !105172, !noalias !104580, !noundef !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !104655), !dbg !105173
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105174
  %i.lc = load ptr, ptr %i.lb, align 16, !dbg !105174, !alias.scope !104655, !noalias !104657, !noundef !2876 ; 3 uses
  %.not.i59.i.i = icmp eq ptr %i.lc, null, !dbg !105174
  br i1 %.not.i59.i.i, label %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, label %bb.bi, !dbg !105175

bb.bi:                                            ; preds = %bb.bh
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105174
  %i.le = load i64, ptr %i.ld, align 8, !dbg !105176, !alias.scope !104655, !noalias !104657, !noundef !2876
  %i.lf = atomicrmw add ptr %i.lc, i64 1 monotonic, align 8, !dbg !105177, !noalias !104658
  %i.lg = icmp slt i64 %i.lf, 0, !dbg !105178
  br i1 %i.lg, label %bb.bj, label %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105178

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap(), !dbg !105179
  unreachable, !dbg !105179

_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bi, %bb.bh
  %.sroa.5.0.i60.i.i = phi i64 [ undef, %bb.bh ], [ %i.le, %bb.bi ], !dbg !105180 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105181
  %i.li = load i16, ptr %i.lh, align 16, !dbg !105181, !alias.scope !104655, !noalias !104657
  %i.lj = zext i16 %i.li to i24, !dbg !105181
  %i.lk = load i64, ptr %i.ky, align 8, !dbg !105182, !range !2959, !alias.scope !104655, !noalias !104657, !noundef !2876 ; 2 uses
  %i.ll = trunc nuw i64 %i.lk to i1, !dbg !105183 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105183
  %i.ln = load i64, ptr %i.lm, align 16, !dbg !105183, !alias.scope !104655, !noalias !104657
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105183
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !105183, !alias.scope !104655, !noalias !104657
  %.sroa.6.0.i.i.i = select i1 %i.ll, i64 %i.lp, i64 undef, !dbg !105183 ; 3 uses
  %.sroa.52.0.i.i.i = select i1 %i.ll, i64 %i.ln, i64 undef, !dbg !105183 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc375.i = trunc i64 %.sroa.52.0.i.i.i to i16, !dbg !105184
  %.sroa.44.sroa.25.0.extract.shift408.i = lshr i64 %.sroa.52.0.i.i.i, 16, !dbg !105184
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc321.i = trunc i64 %.sroa.6.0.i.i.i to i8, !dbg !105184
  %5 = lshr i64 %.sroa.6.0.i.i.i, 8, !dbg !105184
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc357.i = trunc i64 %5 to i32, !dbg !105184
  %.sroa.61.sroa.24.0.extract.shift299.i = and i64 %.sroa.6.0.i.i.i, -4294967296, !dbg !105073
  %i.lq = ptrtoint ptr %i.lc to i64, !dbg !105184 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc216.i = trunc i64 %i.lq to i8, !dbg !105184
  %.sroa.75.sroa.19.0.extract.shift237.i = lshr i64 %i.lq, 8, !dbg !105184
  %.sroa.88.sroa.0.0.extract.trunc175.i = trunc i64 %.sroa.5.0.i60.i.i to i24, !dbg !105184
  %.sroa.88.sroa.19.0.extract.shift196.i = and i64 %.sroa.5.0.i60.i.i, -16777216, !dbg !105073
  br label %bb.oi, !dbg !105075

bb.bk:                                            ; preds = %bb.d
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105185
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 216, !dbg !105186
  %i.lt = load i64, ptr %i.ls, align 8, !dbg !105186, !noalias !104580, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.sroa.8.i), !dbg !105187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.sroa.13.i), !dbg !105187
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.sroa.23.i), !dbg !105187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !105188, !noalias !104580
  %i.lu = load i64, ptr %i.lr, align 8, !dbg !105188, !range !3100, !noalias !104662, !noundef !2876 ; 6 uses
  %i.lv = icmp ne i64 %i.lu, 5, !dbg !105188
  call void @llvm.assume(i1 %i.lv), !dbg !105188
  %i.lw = add nsw i64 %i.lu, -3, !dbg !105188
  %i.lx = icmp samesign ugt i64 %i.lu, 2, !dbg !105188
  %i.ly = select i1 %i.lx, i64 %i.lw, i64 2, !dbg !105188
  switch i64 %i.ly, label %bb.bl [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
    i64 2, label %bb.bq
    i64 3, label %bb.by
    i64 4, label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
    i64 5, label %bb.bz
    i64 6, label %bb.ca
    i64 7, label %bb.cb
    i64 8, label %bb.cc
  ], !dbg !105188

bb.bl:                                            ; preds = %bb.bk
  unreachable, !dbg !105189

bb.bm:                                            ; preds = %bb.bk
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !105191, !noalias !104662
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105192 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 47, !dbg !105193
  %i.mc = load i8, ptr %i.mb, align 1, !dbg !105193, !range !2976, !noalias !104662, !noundef !2876
  %i.md = icmp eq i8 %i.mc, -40, !dbg !105194
  br i1 %i.md, label %bb.cd, label %bb.ce, !dbg !105194

bb.bn:                                            ; preds = %bb.bk
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105195
  %i.mf = invoke noundef nonnull ptr @_RNvXs1_NtCs2mZqlW55729_12polars_utils15python_functionNtB5_12PythonObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.me)
          to label %.noexc18.i unwind label %.loopexit.i, !dbg !105195, !noalias !104575

.noexc18.i:                                       ; preds = %bb.bn
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105196
  %i.mh = load ptr, ptr %i.mg, align 16, !dbg !105197, !alias.scope !104667, !noalias !104668, !noundef !2876 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.mh, null, !dbg !105197
  br i1 %.not.i.i.i.i, label %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, label %bb.bo, !dbg !105198

bb.bo:                                            ; preds = %.noexc18.i
  %i.mi = atomicrmw add ptr %i.mh, i64 1 monotonic, align 8, !dbg !105199, !noalias !104669
  %i.mj = icmp slt i64 %i.mi, 0, !dbg !105200
  br i1 %i.mj, label %bb.bp, label %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !105200

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.trap(), !dbg !105201
  unreachable, !dbg !105201

_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.bo, %.noexc18.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105202
  %i.ml = load i32, ptr %i.mk, align 16, !dbg !105202, !alias.scope !104667, !noalias !104668
  %i.mm = zext i32 %i.ml to i64, !dbg !105202
  %i.mn = ptrtoint ptr %i.mf to i64, !dbg !105203
  %i.mo = inttoptr i64 %i.mm to ptr, !dbg !105203
  br label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105204

bb.bq:                                            ; preds = %bb.bk
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 208, !dbg !105205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !105206, !noalias !104662
  call void @llvm.experimental.noalias.scope.decl(metadata !104670), !dbg !105206
  call void @llvm.experimental.noalias.scope.decl(metadata !104671), !dbg !105206
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105207
  %i.mr = load ptr, ptr %i.mq, align 16, !dbg !105207, !alias.scope !104671, !noalias !104672, !nonnull !2876, !noundef !2876 ; 7 uses
  switch i64 %i.lu, label %default.unreachable4.i.i.i.i [
    i64 0, label %bb.br
    i64 1, label %bb.bs
    i64 2, label %bb.bt
  ], !dbg !105208

default.unreachable4.i.i.i.i:                     ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !105209, !range !2977, !noalias !104673, !noundef !2876
  %i.mt = icmp eq i64 %i.ms, 3, !dbg !105210
  br i1 %i.mt, label %bb.bu, label %bb.bv, !dbg !105210

bb.bs:                                            ; preds = %bb.bq
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105211
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !105211, !alias.scope !104671, !noalias !104672, !noundef !2876
  %i.mw = atomicrmw add ptr %i.mr, i64 1 monotonic, align 8, !dbg !105212, !noalias !104673
  %i.mx = icmp slt i64 %i.mw, 0, !dbg !105213
  br i1 %i.mx, label %bb.bw, label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !105213

bb.bt:                                            ; preds = %bb.bq
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105214
  %i.mz = load i64, ptr %i.my, align 8, !dbg !105214, !alias.scope !104671, !noalias !104672, !noundef !2876
  %i.na = atomicrmw add ptr %i.mr, i64 1 monotonic, align 8, !dbg !105215, !noalias !104673
  %i.nb = icmp slt i64 %i.na, 0, !dbg !105216
  br i1 %i.nb, label %bb.bx, label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !105216

bb.bu:                                            ; preds = %bb.bv, %bb.br
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105217
  %i.nd = load ptr, ptr %i.nc, align 8, !dbg !105217, !alias.scope !104671, !noalias !104672, !noundef !2876
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105218
  %i.nf = load i64, ptr %i.ne, align 16, !dbg !105218, !alias.scope !104671, !noalias !104672, !noundef !2876
  store ptr %i.mr, ptr %.sink10.i.sroa.gep.i.i.i, align 8, !dbg !105219, !alias.scope !104670, !noalias !104674
  br label %_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !105220

bb.bv:                                            ; preds = %bb.br
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mr, i64 24, !dbg !105221
  %i.nh = atomicrmw add ptr %i.ng, i64 1 monotonic, align 8, !dbg !105222, !noalias !104673 ; 0 uses
  br label %bb.bu, !dbg !105223

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.trap(), !dbg !105224
  unreachable, !dbg !105224

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.trap(), !dbg !105225
  unreachable, !dbg !105225

_RNvXs8_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_11ScanSourcesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sink10.i.sroa.phi.i.i.i = phi ptr [ %.sink10.i.sroa.gep.i.i.i, %bb.bs ], [ %.sink10.i.sroa.gep35.i.i.i, %bb.bu ], [ %.sink10.i.sroa.gep.i.i.i, %bb.bt ]
  %.sink8.i.i.i.i = phi ptr [ %i.mr, %bb.bs ], [ %i.nd, %bb.bu ], [ %i.mr, %bb.bt ]
  %.sink7.i.sroa.phi.i.i.i = phi ptr [ %.sink10.i.sroa.gep35.i.i.i, %bb.bs ], [ %.sink7.i.sroa.gep37.i.i.i, %bb.bu ], [ %.sink10.i.sroa.gep35.i.i.i, %bb.bt ]
  %.sink5.i.i.i.i = phi i64 [ %i.mv, %bb.bs ], [ %i.nf, %bb.bu ], [ %i.mz, %bb.bt ]
  store ptr %.sink8.i.i.i.i, ptr %.sink10.i.sroa.phi.i.i.i, align 8, !dbg !105208, !alias.scope !104670, !noalias !104674
  store i64 %.sink5.i.i.i.i, ptr %.sink7.i.sroa.phi.i.i.i, align 8, !dbg !105208, !alias.scope !104670, !noalias !104674
  store i64 %i.lu, ptr %i.bf, align 8, !dbg !105208, !alias.scope !104670, !noalias !104674
  %.val.i.i.i = load ptr, ptr %i.mp, align 16, !dbg !105226, !noalias !104662
  %i.ni = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr %.val.i.i.i)
          to label %bb.cn unwind label %bb.cm, !dbg !105226, !noalias !104675 ; 2 uses

bb.by:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !105227, !noalias !104662
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105228 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 16, !dbg !105228, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.nl = atomicrmw add ptr %i.nk, i64 1 monotonic, align 8, !dbg !105229, !noalias !104675
  %i.nm = icmp slt i64 %i.nl, 0, !dbg !105230
  br i1 %i.nm, label %bb.db, label %bb.da, !dbg !105230

bb.bz:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !105231, !noalias !104662
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105232 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 16, !dbg !105232, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.np = atomicrmw add ptr %i.no, i64 1 monotonic, align 8, !dbg !105233, !noalias !104675
  %i.nq = icmp slt i64 %i.np, 0, !dbg !105234
  br i1 %i.nq, label %bb.dk, label %bb.dj, !dbg !105234

bb.ca:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !105235, !noalias !104662
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105236 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 16, !dbg !105236, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.nt = atomicrmw add ptr %i.ns, i64 1 monotonic, align 8, !dbg !105237, !noalias !104675
  %i.nu = icmp slt i64 %i.nt, 0, !dbg !105238
  br i1 %i.nu, label %bb.dp, label %bb.do, !dbg !105238

bb.cb:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !105239, !noalias !104662
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105240 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 16, !dbg !105240, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.nx = atomicrmw add ptr %i.nw, i64 1 monotonic, align 8, !dbg !105241, !noalias !104675
  %i.ny = icmp slt i64 %i.nx, 0, !dbg !105242
  br i1 %i.ny, label %bb.du, label %bb.dt, !dbg !105242

bb.cc:                                            ; preds = %bb.bk
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105243 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 16, !dbg !105243, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.ob = atomicrmw add ptr %i.oa, i64 1 monotonic, align 8, !dbg !105244, !noalias !104675
  %i.oc = icmp slt i64 %i.ob, 0, !dbg !105245
  br i1 %i.oc, label %bb.ei, label %bb.eh, !dbg !105245

bb.cd:                                            ; preds = %bb.bm
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ma) #35
          to label %.noexc19.i unwind label %.loopexit.i, !dbg !105246, !noalias !104575

bb.ce:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ma, i64 24, i1 false), !dbg !105247, !noalias !104662
  br label %.noexc19.i, !dbg !105248

.noexc19.i:                                       ; preds = %bb.ce, %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !dbg !105249, !noalias !104662
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105250
  %i.oe = load i32, ptr %i.od, align 16, !dbg !105250, !range !3630, !noalias !104662, !noundef !2876
  %i.of = trunc nuw i32 %i.oe to i1, !dbg !105251
  br i1 %i.of, label %bb.cf, label %bb.cg, !dbg !105251

bb.cf:                                            ; preds = %.noexc19.i
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 20, !dbg !105250
  %i.oh = load i32, ptr %i.og, align 4, !dbg !105252, !noalias !104662, !noundef !2876
  %i.oi = zext i32 %i.oh to i64, !dbg !105253
end_hunk_0
begin_hunk_1_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream:bb.a

bb.dl:                                            ; preds = %bb.dj
  %i.pz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qa = atomicrmw sub ptr %i.pt, i64 1 release, align 8, !dbg !105312, !noalias !104705
  %i.qb = icmp eq i64 %i.qa, 1, !dbg !105313
  br i1 %i.qb, label %bb.dm, label %bb.ok, !dbg !105313

bb.dm:                                            ; preds = %bb.dl
  fence acquire, !dbg !105314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bc) #35
          to label %bb.ok unwind label %bb.ck, !dbg !105315, !noalias !104675

bb.dn:                                            ; preds = %bb.dj
  %.sroa.27.24.copyload158.i.i = load ptr, ptr %i.bb, align 8, !dbg !105316, !noalias !104580
  %.sroa.34.24.copyload159.i.i = load i64, ptr %.sroa.34.24..sroa_idx.i.i, align 8, !dbg !105316, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !105317, !noalias !104662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !105317, !noalias !104662
  br label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105204

bb.do:                                            ; preds = %bb.ca
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105318
  %i.qd = load ptr, ptr %i.nr, align 16, !dbg !105319, !noalias !104662, !nonnull !2876, !noundef !2876 ; 3 uses
  store ptr %i.qd, ptr %i.ba, align 8, !dbg !105320, !noalias !104662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !105321, !noalias !104662
  invoke void @_RNvXs3_NtNtCsfcROwRM8ZtH_11polars_plan5plans6schemaNtB5_12CachedSchemaNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.az, ptr noundef nonnull align 8 %i.qc)
          to label %bb.ds unwind label %bb.dq, !dbg !105321, !noalias !104675

bb.dp:                                            ; preds = %bb.ca
  call void @llvm.trap(), !dbg !105322
  unreachable, !dbg !105322

bb.dq:                                            ; preds = %bb.do
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = atomicrmw sub ptr %i.qd, i64 1 release, align 8, !dbg !105323, !noalias !104707
  %i.qg = icmp eq i64 %i.qf, 1, !dbg !105324
  br i1 %i.qg, label %bb.dr, label %bb.ok, !dbg !105324

bb.dr:                                            ; preds = %bb.dq
  fence acquire, !dbg !105325
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core5frame7explode13UnpivotArgsIRE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba) #35
          to label %bb.ok unwind label %bb.ck, !dbg !105326, !noalias !104675

bb.ds:                                            ; preds = %bb.do
  %.sroa.20.16.copyload153.i.i = load i64, ptr %i.az, align 8, !dbg !105327, !noalias !104580
  %.sroa.27.16.copyload157.i.i = load ptr, ptr %.sroa.27.16..sroa_idx156.i.i, align 8, !dbg !105327, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !105328, !noalias !104662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !105328, !noalias !104662
  br label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105204

bb.dt:                                            ; preds = %bb.cb
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105240
  %i.qi = load ptr, ptr %i.nv, align 16, !dbg !105329, !noalias !104662, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.qj = load ptr, ptr %i.qh, align 8, !dbg !105329, !noalias !104662, !nonnull !2876, !align !2919, !noundef !2876 ; 2 uses
  store ptr %i.qi, ptr %i.ay, align 8, !dbg !105239, !noalias !104662
  store ptr %i.qj, ptr %i.dt, align 8, !dbg !105239, !noalias !104662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !105330, !noalias !104662
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105331 ; 3 uses
  %i.ql = load ptr, ptr %i.qk, align 16, !dbg !105331, !noalias !104662, !noundef !2876 ; 2 uses
  %.not.i62.i.i = icmp eq ptr %i.ql, null, !dbg !105331
  br i1 %.not.i62.i.i, label %bb.dw, label %bb.dv, !dbg !105332

bb.du:                                            ; preds = %bb.cb
  call void @llvm.trap(), !dbg !105333
  unreachable, !dbg !105333

bb.dv:                                            ; preds = %bb.dt
  %i.qm = atomicrmw add ptr %i.ql, i64 1 monotonic, align 8, !dbg !105334, !noalias !104675
  %i.qn = icmp slt i64 %i.qm, 0, !dbg !105335
  br i1 %i.qn, label %bb.dz, label %bb.dy, !dbg !105335

bb.dw:                                            ; preds = %bb.dt
  store ptr null, ptr %i.ax, align 16, !dbg !105336, !noalias !104662
  br label %bb.dx, !dbg !105336

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %i.qo = phi ptr [ %i.ra, %bb.dy ], [ null, %bb.dw ] ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 72, !dbg !105337
  %i.qq = load i8, ptr %i.qp, align 8, !dbg !105337, !range !3183, !noalias !104662, !noundef !2876
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 73, !dbg !105338
  %i.qs = load i8, ptr %i.qr, align 1, !dbg !105338, !range !3183, !noalias !104662, !noundef !2876
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 74, !dbg !105339
  %i.qu = load i8, ptr %i.qt, align 2, !dbg !105339, !range !3183, !noalias !104662, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !105340, !noalias !104662
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105340 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 71, !dbg !105341
  %i.qx = load i8, ptr %i.qw, align 1, !dbg !105341, !range !2976, !noalias !104662, !noundef !2876
  %i.qy = icmp eq i8 %i.qx, -40, !dbg !105342
  br i1 %i.qy, label %bb.ea, label %bb.eb, !dbg !105342

bb.dy:                                            ; preds = %bb.dv
  %i.qz = load <2 x ptr>, ptr %i.qk, align 16, !dbg !105343, !noalias !104662
  %i.ra = load ptr, ptr %i.qk, align 16, !dbg !105343, !noalias !104662, !nonnull !2876, !noundef !2876
  store <2 x ptr> %i.qz, ptr %i.ax, align 16, !dbg !105344, !noalias !104662
  br label %bb.dx, !dbg !105345

bb.dz:                                            ; preds = %bb.dv
  call void @llvm.trap(), !dbg !105346
  unreachable, !dbg !105346

bb.ea:                                            ; preds = %bb.dx
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qv)
          to label %bb.ef unwind label %bb.ec, !dbg !105347, !noalias !104675

bb.eb:                                            ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 16 dereferenceable(24) %i.qv, i64 24, i1 false), !dbg !105348, !noalias !104662
  br label %bb.ef, !dbg !105349

bb.ec:                                            ; preds = %bb.ea
  %i.rb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rc = icmp eq ptr %i.qo, null, !dbg !105350
  br i1 %i.rc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, label %bb.ed, !dbg !105350

bb.ed:                                            ; preds = %bb.ec
  %i.rd = atomicrmw sub ptr %i.qo, i64 1 release, align 8, !dbg !105351, !noalias !104715
  %i.re = icmp eq i64 %i.rd, 1, !dbg !105352
  br i1 %i.re, label %bb.ee, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105352

bb.ee:                                            ; preds = %bb.ed
  fence acquire, !dbg !105353
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i unwind label %bb.ck, !dbg !105354, !noalias !104675

bb.ef:                                            ; preds = %bb.eb, %bb.ea
  %.sroa.36.40.copyload160.i.i = load i8, ptr %i.as, align 8, !dbg !105355, !noalias !104580
  %.sroa.40.40.copyload162.i.i = load i8, ptr %.sroa.40.40..sroa_idx.i.i, align 1, !dbg !105355, !noalias !104580
  %.sroa.05.i.sroa.7.i.sroa.0.0.copyload.i = load i8, ptr %.sroa.41.40..sroa_idx.i.i, align 2, !dbg !105355, !noalias !104580
  %.sroa.05.i.sroa.7.i.sroa.7.0.copyload.i = load i32, ptr %.sroa.05.i.sroa.7.i.sroa.7.0..sroa.41.40..sroa_idx.i.sroa_idx.i, align 1, !dbg !105355, !noalias !104580
  %.sroa.41166.40.copyload167.i.i = load i8, ptr %.sroa.41166.40..sroa_idx.i.i, align 1, !dbg !105355, !noalias !104580
  %.sroa.42.sroa.0.0.copyload218.i.i = load i64, ptr %.sroa.42.40..sroa_idx.i.i, align 8, !dbg !105355, !noalias !104580
  %.sroa.42.sroa.6.0.copyload220.i.i = load i64, ptr %.sroa.42.sroa.6.0..sroa.42.40..sroa_idx.sroa_idx.i.i, align 8, !dbg !105355, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !105356, !noalias !104662
  %i.rf = ptrtoint ptr %i.qj to i64, !dbg !105357
  %i.rg = load ptr, ptr %i.du, align 8, !dbg !105357, !noalias !104662
  %i.rh = ptrtoint ptr %i.rg to i64, !dbg !105357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !105358, !noalias !104662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !105358, !noalias !104662
  br label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105204

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !104716), !dbg !105358
  call void @llvm.experimental.noalias.scope.decl(metadata !104717), !dbg !105359
  %i.ri = load ptr, ptr %i.ay, align 8, !dbg !105360, !alias.scope !104718, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.rj = atomicrmw sub ptr %i.ri, i64 1 release, align 8, !dbg !105361, !noalias !104719
  %i.rk = icmp eq i64 %i.rj, 1, !dbg !105362
  br i1 %i.rk, label %bb.eg, label %bb.ok, !dbg !105362

bb.eg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i
  fence acquire, !dbg !105363
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply12DataFrameUdfEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #35
          to label %bb.ok unwind label %bb.ck, !dbg !105364, !noalias !104675

bb.eh:                                            ; preds = %bb.cc
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105243
  %i.rm = load ptr, ptr %i.nz, align 16, !dbg !105365, !noalias !104662, !nonnull !2876, !noundef !2876
  %i.rn = load i64, ptr %i.rl, align 8, !dbg !105365, !noalias !104662, !noundef !2876
  br label %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105204

bb.ei:                                            ; preds = %bb.cc
  call void @llvm.trap(), !dbg !105366
  unreachable, !dbg !105366

_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.eh, %bb.ef, %bb.ds, %bb.dn, %bb.dd, %bb.cw, %bb.cj, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, %bb.bk
  %.sroa.45.i.sroa.0.0.i = phi i64 [ 0, %bb.cj ], [ 0, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.0.0.i, %bb.cw ], [ 0, %bb.dd ], [ 0, %bb.bk ], [ 0, %bb.dn ], [ 0, %bb.ds ], [ 0, %bb.ef ], [ 0, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.4.0.i = phi i64 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.4.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.5.0.i = phi ptr [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.5.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.6.0.i = phi i64 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.6.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.7.0.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.7.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.11.0.i = phi ptr [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.11.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.12.0.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.12.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.14.0.i = phi ptr [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.14.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.15.0.i = phi i64 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.11.i.sroa.15.0.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.19.0.i = phi ptr [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.45.i.sroa.19.109.copyload.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.20.0.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.45.i.sroa.20.109.copyload.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.21.0.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.45.i.sroa.21.109.copyload.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.45.i.sroa.22.0.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.45.i.sroa.22.109.copyload.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.05.i.sroa.7.i.sroa.0.0.i = phi i8 [ %.sroa.05.i.sroa.7.i.sroa.0.0.copyload530.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i.sroa.7.i.sroa.0.2.i, %bb.cw ], [ %.sroa.05.i.sroa.7.i.sroa.0.1.i, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.05.i.sroa.7.i.sroa.0.0.copyload.i, %bb.ef ], [ undef, %bb.eh ], !dbg !104840
  %.sroa.05.i.sroa.7.i.sroa.7.0.i = phi i32 [ %.sroa.05.i.sroa.7.i.sroa.7.0.copyload533.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.05.i.sroa.7.i.sroa.7.2.i, %bb.cw ], [ %.sroa.05.i.sroa.7.i.sroa.7.1.i, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.05.i.sroa.7.i.sroa.7.0.copyload.i, %bb.ef ], [ undef, %bb.eh ], !dbg !104840
  %.sroa.42.sroa.6.0.i.i = phi i64 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.7.sroa.4.0.i.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.42.sroa.6.0.copyload220.i.i, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.42.sroa.0.0.i.i = phi i64 [ %i.oq, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.7.sroa.0.0.i.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.42.sroa.0.0.copyload218.i.i, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.12148.0.i.i = phi ptr [ %.sroa.0.0.i67.i.i, %bb.cj ], [ %i.mh, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.12148.0.copyload150.i.i, %bb.cw ], [ %i.pi, %bb.dd ], [ undef, %bb.bk ], [ %i.pt, %bb.dn ], [ %i.qd, %bb.ds ], [ %i.qo, %bb.ef ], [ %i.rm, %bb.eh ], !dbg !105187
  %.sroa.27.0.i.i = phi ptr [ %.sroa.27.16.copyload.i.i, %bb.cj ], [ %i.mo, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.27.0.copyload155.i.i, %bb.cw ], [ %.sroa.05.i.sroa.0.0.i.i, %bb.dd ], [ undef, %bb.bk ], [ %.sroa.27.24.copyload158.i.i, %bb.dn ], [ %.sroa.27.16.copyload157.i.i, %bb.ds ], [ %i.qi, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.46.0.i.i = phi ptr [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ni, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.44.0.i.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.10.0.i.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %i.qu, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.43.0.i.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.9.0.i.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %i.qs, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.42171.0.i.i = phi i8 [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.8.0.i.i, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %i.qq, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.41166.0.i.i = phi i8 [ %.sroa.41166.40.copyload169.i.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.6.0.i.i, %bb.cw ], [ %.sroa.4.0.i.i.i, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.41166.40.copyload167.i.i, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.40.0.i.i = phi i8 [ %.sroa.40.40.copyload164.i.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.4.0.i.i, %bb.cw ], [ %.sroa.05.i.sroa.6.0.i.i, %bb.dd ], [ undef, %bb.bk ], [ %i.py, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.40.40.copyload162.i.i, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.36.0.i.i = phi i8 [ %.sroa.36.40.copyload161.i.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.53.i.sroa.0.0.i.i, %bb.cw ], [ %.sroa.05.i.sroa.5.0.i.i, %bb.dd ], [ undef, %bb.bk ], [ %i.pw, %bb.dn ], [ undef, %bb.ds ], [ %.sroa.36.40.copyload160.i.i, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %.sroa.34.0.i.i = phi i64 [ %.sroa.34.16.copyload.i.i, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.01.0.i64.i.i, %bb.cw ], [ %.sroa.05.i.sroa.4.0.i.i, %bb.dd ], [ undef, %bb.bk ], [ %.sroa.34.24.copyload159.i.i, %bb.dn ], [ undef, %bb.ds ], [ %i.rf, %bb.ef ], [ undef, %bb.eh ], !dbg !105187 ; 2 uses
  %.sroa.20.0.i.i = phi i64 [ %.sroa.20.16.copyload.i.i, %bb.cj ], [ %i.mn, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.20.0.copyload152.i.i, %bb.cw ], [ %i.pj, %bb.dd ], [ undef, %bb.bk ], [ %i.pu, %bb.dn ], [ %.sroa.20.16.copyload153.i.i, %bb.ds ], [ %i.rh, %bb.ef ], [ %i.rn, %bb.eh ], !dbg !105187 ; 3 uses
  %.sroa.0146.0.i.i = phi i64 [ 3, %bb.cj ], [ 4, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.lu, %bb.cw ], [ 6, %bb.dd ], [ 7, %bb.bk ], [ 8, %bb.dn ], [ 9, %bb.ds ], [ 10, %bb.ef ], [ 11, %bb.eh ], !dbg !105188
  %i.ro = phi <2 x i64> [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pa, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  %i.rp = phi <2 x ptr> [ undef, %bb.cj ], [ undef, %_RNvXs2_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions3dslNtB5_15OpaquePythonUdfNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.pc, %bb.cw ], [ undef, %bb.dd ], [ undef, %bb.bk ], [ undef, %bb.dn ], [ undef, %bb.ds ], [ undef, %bb.ef ], [ undef, %bb.eh ], !dbg !105187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !105367, !noalias !104580
  %i.rq = ptrtoint ptr %.sroa.12148.0.i.i to i64, !dbg !105368 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc371.i = trunc i64 %i.rq to i16, !dbg !105368
  %.sroa.44.sroa.25.0.extract.shift400.i = lshr i64 %i.rq, 16, !dbg !105368
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc320.i = trunc i64 %.sroa.20.0.i.i to i8, !dbg !105368
  %6 = lshr i64 %.sroa.20.0.i.i, 8, !dbg !105368
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc355.i = trunc i64 %6 to i32, !dbg !105368
  %.sroa.61.sroa.24.0.extract.shift297.i = and i64 %.sroa.20.0.i.i, -4294967296, !dbg !105073
  %i.rr = ptrtoint ptr %.sroa.27.0.i.i to i64, !dbg !105368 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc215.i = trunc i64 %i.rr to i8, !dbg !105368
  %.sroa.75.sroa.19.0.extract.shift235.i = lshr i64 %i.rr, 8, !dbg !105368
  %.sroa.88.sroa.0.0.extract.trunc174.i = trunc i64 %.sroa.34.0.i.i to i24, !dbg !105368
  %.sroa.88.sroa.19.0.extract.shift194.i = and i64 %.sroa.34.0.i.i, -16777216, !dbg !105073
  %.sroa.98.0.insert.ext.i = zext i8 %.sroa.36.0.i.i to i24, !dbg !105368
  %.sroa.98.1.insert.ext.i = zext i8 %.sroa.40.0.i.i to i24, !dbg !105368
  %.sroa.98.1.insert.shift.i = shl nuw nsw i24 %.sroa.98.1.insert.ext.i, 8, !dbg !105368
  %.sroa.98.1.insert.insert.i = or disjoint i24 %.sroa.98.1.insert.shift.i, %.sroa.98.0.insert.ext.i, !dbg !105368
  %.sroa.98.2.insert.ext.i = zext i8 %.sroa.05.i.sroa.7.i.sroa.0.0.i to i24, !dbg !105368
  %.sroa.98.2.insert.shift.i = shl nuw i24 %.sroa.98.2.insert.ext.i, 16, !dbg !105368
  %.sroa.98.2.insert.insert.i = or disjoint i24 %.sroa.98.1.insert.insert.i, %.sroa.98.2.insert.shift.i, !dbg !105368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.45.i.sroa.8.i, i64 23, i1 false), !dbg !105368, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.45.i.sroa.13.i, i64 7, i1 false), !dbg !105368, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.45.i.sroa.23.i, i64 5, i1 false), !dbg !105368, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.sroa.8.i), !dbg !105369
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.sroa.13.i), !dbg !105369
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.sroa.23.i), !dbg !105369
  br label %bb.oi, !dbg !105075

bb.ej:                                            ; preds = %bb.d
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105370
  call void @llvm.experimental.noalias.scope.decl(metadata !104720), !dbg !105371
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105372
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 72, !dbg !105373
  %i.rv = load ptr, ptr %i.ru, align 8, !dbg !105373, !alias.scope !104720, !noalias !104721, !nonnull !2876, !noundef !2876
  %i.rw = load i64, ptr %i.rt, align 16, !dbg !105374, !alias.scope !104720, !noalias !104721, !noundef !2876 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !105375, !noalias !104722
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, i64 noundef range(i64 0, 1152921504606846976) %i.rw, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc20.i unwind label %.loopexit.i, !dbg !105375, !noalias !104575

.noexc20.i:                                       ; preds = %bb.ej
  %i.rx = load i64, ptr %i.ar, align 8, !dbg !105375, !range !2959, !noalias !104722, !noundef !2876
  %i.ry = trunc nuw i64 %i.rx to i1, !dbg !105376
  %i.rz = load i64, ptr %i.dr, align 8, !dbg !105377, !range !3013, !noalias !104722, !noundef !2876 ; 3 uses
  br i1 %i.ry, label %bb.ek, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i, !dbg !105376, !prof !2900

bb.ek:                                            ; preds = %.noexc20.i
  %i.sa = load i64, ptr %i.ds, align 8, !dbg !105378, !noalias !104722
  br label %.invoke, !dbg !105379

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i: ; preds = %.noexc20.i
  %i.sb = load ptr, ptr %i.ds, align 8, !dbg !105380, !noalias !104722, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.sc = icmp ule i64 %i.rw, %i.rz, !dbg !105381
  call void @llvm.assume(i1 %i.sc), !dbg !105382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !105383, !noalias !104722
  %.not.i.i68.i.i = icmp eq i64 %i.rw, 0, !dbg !105384
  br i1 %.not.i.i68.i.i, label %bb.nc, label %bb.el, !dbg !105384

bb.el:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %i.sd = shl nuw nsw i64 %i.rw, 3, !dbg !105385
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sb, ptr nonnull readonly align 8 %i.rv, i64 %i.sd, i1 false), !dbg !105385, !noalias !104723
  br label %bb.nc, !dbg !105386

bb.em:                                            ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !104724), !dbg !105387
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105388
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105389
  %i.sg = load ptr, ptr %i.sf, align 16, !dbg !105389, !alias.scope !104724, !noalias !104725, !nonnull !2876, !noundef !2876
  %i.sh = load i64, ptr %i.se, align 8, !dbg !105390, !alias.scope !104724, !noalias !104725, !noundef !2876 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !105391, !noalias !104726
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef range(i64 0, 1152921504606846976) %i.sh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc22.i unwind label %.loopexit.i, !dbg !105391, !noalias !104575

.noexc22.i:                                       ; preds = %bb.em
  %i.si = load i64, ptr %i.aq, align 8, !dbg !105391, !range !2959, !noalias !104726, !noundef !2876
  %i.sj = trunc nuw i64 %i.si to i1, !dbg !105392
  %i.sk = load i64, ptr %i.dp, align 8, !dbg !105393, !range !3013, !noalias !104726, !noundef !2876 ; 3 uses
  br i1 %i.sj, label %bb.en, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i69.i.i, !dbg !105392, !prof !2900

bb.en:                                            ; preds = %.noexc22.i
  %i.sl = load i64, ptr %i.dq, align 8, !dbg !105394, !noalias !104726
  br label %.invoke, !dbg !105395

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i69.i.i: ; preds = %.noexc22.i
  %i.sm = load ptr, ptr %i.dq, align 8, !dbg !105396, !noalias !104726, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.sn = icmp ule i64 %i.sh, %i.sk, !dbg !105397
  call void @llvm.assume(i1 %i.sn), !dbg !105398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !105399, !noalias !104726
  %.not.i.i70.i.i = icmp eq i64 %i.sh, 0, !dbg !105400
  br i1 %.not.i.i70.i.i, label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit71.i.i, label %bb.eo, !dbg !105400

bb.eo:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i69.i.i
  %i.so = shl nuw nsw i64 %i.sh, 3, !dbg !105401
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sm, ptr nonnull readonly align 8 %i.sg, i64 %i.so, i1 false), !dbg !105401, !noalias !104727
  br label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit71.i.i, !dbg !105402

_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit71.i.i: ; preds = %bb.eo, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i69.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105403 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 16, !dbg !105403, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.sr = atomicrmw add ptr %i.sq, i64 1 monotonic, align 8, !dbg !105404, !noalias !104575
  %i.ss = icmp slt i64 %i.sr, 0, !dbg !105405
  br i1 %i.ss, label %bb.nd, label %bb.ne, !dbg !105405

bb.ep:                                            ; preds = %bb.d
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105406
  %i.su = load i64, ptr %i.st, align 8, !dbg !105406, !noalias !104580, !noundef !2876 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104731), !dbg !105407
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105408
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105409
  %i.sx = load ptr, ptr %i.sw, align 16, !dbg !105409, !alias.scope !104731, !noalias !104732, !nonnull !2876, !noundef !2876
  %i.sy = load i64, ptr %i.sv, align 8, !dbg !105410, !alias.scope !104731, !noalias !104732, !noundef !2876 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !105411, !noalias !104733
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, i64 noundef range(i64 0, 1152921504606846976) %i.sy, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc24.i unwind label %.loopexit.i, !dbg !105411, !noalias !104575

.noexc24.i:                                       ; preds = %bb.ep
  %i.sz = load i64, ptr %i.ap, align 8, !dbg !105411, !range !2959, !noalias !104733, !noundef !2876
  %i.ta = trunc nuw i64 %i.sz to i1, !dbg !105412
  %i.tb = load i64, ptr %i.dn, align 8, !dbg !105413, !range !3013, !noalias !104733, !noundef !2876 ; 3 uses
  br i1 %i.ta, label %bb.eq, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i72.i.i, !dbg !105412, !prof !2900

bb.eq:                                            ; preds = %.noexc24.i
  %i.tc = load i64, ptr %i.do, align 8, !dbg !105414, !noalias !104733
  br label %.invoke, !dbg !105415

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i72.i.i: ; preds = %.noexc24.i
  %i.td = load ptr, ptr %i.do, align 8, !dbg !105416, !noalias !104733, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.te = icmp ule i64 %i.sy, %i.tb, !dbg !105417
  call void @llvm.assume(i1 %i.te), !dbg !105418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !105419, !noalias !104733
  %.not.i.i73.i.i = icmp eq i64 %i.sy, 0, !dbg !105420
  br i1 %.not.i.i73.i.i, label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit74.i.i, label %bb.er, !dbg !105420

bb.er:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i72.i.i
  %i.tf = shl nuw nsw i64 %i.sy, 3, !dbg !105421
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.td, ptr nonnull readonly align 8 %i.sx, i64 %i.tf, i1 false), !dbg !105421, !noalias !104734
  br label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit74.i.i, !dbg !105422

_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit74.i.i: ; preds = %bb.er, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i72.i.i
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105423 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 16, !dbg !105423, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.ti = atomicrmw add ptr %i.th, i64 1 monotonic, align 8, !dbg !105424, !noalias !104575
  %i.tj = icmp slt i64 %i.ti, 0, !dbg !105425
  br i1 %i.tj, label %bb.ng, label %bb.nf, !dbg !105425

bb.es:                                            ; preds = %bb.d
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 360, !dbg !105426
  %i.tl = load i64, ptr %i.tk, align 8, !dbg !105426, !noalias !104580, !noundef !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !104738), !dbg !105427
  %i.tm = add nsw i64 %i.ep, 9223372036854775807, !dbg !105428
  %i.tn = icmp ugt i64 %i.ep, -9223372036854775808, !dbg !105428
  %i.to = select i1 %i.tn, i64 %i.tm, i64 3, !dbg !105428
  switch i64 %i.to, label %bb.et [
    i64 0, label %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
    i64 1, label %bb.eu
    i64 2, label %bb.ez
    i64 3, label %bb.fr
  ], !dbg !105428

bb.et:                                            ; preds = %bb.es
  unreachable, !dbg !105428

bb.eu:                                            ; preds = %bb.es
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105429
  %.val.i78.i.i = load ptr, ptr %i.tp, align 8, !dbg !105429, !alias.scope !104738, !noalias !104741, !noundef !2876 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105429
  %.val1.i.i.i = load ptr, ptr %i.tq, align 16, !dbg !105429, !alias.scope !104738, !noalias !104741, !nonnull !2876, !noundef !2876 ; 2 uses
  %.not.i.i79.i.i = icmp eq ptr %.val.i78.i.i, null, !dbg !105430
  br i1 %.not.i.i79.i.i, label %bb.ew, label %bb.ev, !dbg !105431

bb.ev:                                            ; preds = %bb.eu
  %i.tr = atomicrmw add ptr %.val.i78.i.i, i64 1 monotonic, align 8, !dbg !105432, !noalias !104742
  %i.ts = icmp slt i64 %i.tr, 0, !dbg !105433
  br i1 %i.ts, label %bb.ey, label %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105433

bb.ew:                                            ; preds = %bb.eu
  %i.tt = atomicrmw add ptr %.val1.i.i.i, i64 1 monotonic, align 8, !dbg !105434, !noalias !104742
  %i.tu = icmp slt i64 %i.tt, 0, !dbg !105435
  br i1 %i.tu, label %bb.ex, label %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, !dbg !105435

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.trap(), !dbg !105436
  unreachable, !dbg !105436

bb.ey:                                            ; preds = %bb.ev
  call void @llvm.trap(), !dbg !105437
  unreachable, !dbg !105437

_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i: ; preds = %bb.ew, %bb.ev
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105429
  %i.tw = load i8, ptr %i.tv, align 16, !dbg !105429, !range !3183, !alias.scope !104738, !noalias !104741, !noundef !2876
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105438
  %i.ty = load i64, ptr %i.tx, align 8, !dbg !105438, !alias.scope !104738, !noalias !104741, !noundef !2876
  br label %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105439

bb.ez:                                            ; preds = %bb.es
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105440
  call void @llvm.experimental.noalias.scope.decl(metadata !104746), !dbg !105441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !105442, !noalias !104747
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 256, !dbg !105442
  call void @llvm.experimental.noalias.scope.decl(metadata !104749), !dbg !105442
  call void @llvm.experimental.noalias.scope.decl(metadata !104750), !dbg !105442
  %i.ub = load ptr, ptr %i.ua, align 16, !dbg !105443, !alias.scope !104751, !noalias !104752, !noundef !2876 ; 4 uses
  %i.uc = icmp eq ptr %i.ub, null, !dbg !105443
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 264, !dbg !105444 ; 2 uses
  br i1 %i.uc, label %bb.fa, label %bb.fb, !dbg !105443

bb.fa:                                            ; preds = %bb.ez
end_hunk_1
begin_hunk_2_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream:bb.a
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gq:                                            ; preds = %bb.gn
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105530
  %i.wu = load i8, ptr %i.wt, align 8, !dbg !105530, !range !3183, !alias.scope !104792, !noalias !104793, !noundef !2876
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 25, !dbg !105530
  %i.ww = load i8, ptr %i.wv, align 1, !dbg !105530, !range !3183, !alias.scope !104792, !noalias !104793, !noundef !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !105530, !noalias !104790
  store i8 %i.wu, ptr %i.di, align 8, !dbg !105530, !noalias !104790
  store i8 %i.ww, ptr %i.dj, align 1, !dbg !105530, !noalias !104790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !105530, !noalias !104790
  br label %bb.gr, !dbg !105529

bb.gr:                                            ; preds = %bb.gq, %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !105532, !noalias !104790
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 288, !dbg !105532 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104820), !dbg !105532
  call void @llvm.experimental.noalias.scope.decl(metadata !104821), !dbg !105532
  %i.wy = load i32, ptr %i.wx, align 16, !dbg !105533, !range !3098, !alias.scope !104822, !noalias !104823, !noundef !2876
  switch i32 %i.wy, label %default.unreachable [
    i32 0, label %bb.gs
    i32 1, label %bb.gt
    i32 2, label %bb.gu
    i32 3, label %bb.gv
  ], !dbg !105533

bb.gs:                                            ; preds = %bb.gr
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 296, !dbg !105534
  %i.xa = load ptr, ptr %i.wz, align 8, !dbg !105534, !alias.scope !104822, !noalias !104823, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.xb = atomicrmw add ptr %i.xa, i64 1 monotonic, align 8, !dbg !105535, !noalias !104824
  %i.xc = icmp slt i64 %i.xb, 0, !dbg !105536
  br i1 %i.xc, label %bb.gx, label %bb.gw, !dbg !105536

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull readonly align 16 dereferenceable(40) %i.wx, i64 40, i1 false), !dbg !105537, !alias.scope !104825, !noalias !104793
  br label %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i, !dbg !105538

bb.gu:                                            ; preds = %bb.gr
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 296, !dbg !105539
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 324, !dbg !105539
  %i.xf = load i8, ptr %i.xe, align 4, !dbg !105539, !range !3183, !alias.scope !104822, !noalias !104823, !noundef !2876
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 325, !dbg !105539
  %i.xh = load i8, ptr %i.xg, align 1, !dbg !105539, !range !3183, !alias.scope !104822, !noalias !104823, !noundef !2876
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 326, !dbg !105539
  %i.xj = load i8, ptr %i.xi, align 2, !dbg !105539, !range !3183, !alias.scope !104822, !noalias !104823, !noundef !2876
  %i.xk = load i64, ptr %i.xd, align 8, !dbg !105540, !range !3635, !alias.scope !104822, !noalias !104823, !noundef !2876
  %i.xl = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 304, !dbg !105541
  %i.xm = load ptr, ptr %i.xl, align 16, !dbg !105541, !alias.scope !104822, !noalias !104823, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.xn = atomicrmw add ptr %i.xm, i64 1 monotonic, align 8, !dbg !105542, !noalias !104824
  %i.xo = icmp slt i64 %i.xn, 0, !dbg !105543
  br i1 %i.xo, label %bb.gz, label %bb.gy, !dbg !105543

bb.gv:                                            ; preds = %bb.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull readonly align 16 dereferenceable(40) %i.wx, i64 40, i1 false), !dbg !105544, !alias.scope !104825, !noalias !104793
  br label %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i, !dbg !105538

bb.gw:                                            ; preds = %bb.gs
  store ptr %i.xa, ptr %i.dk, align 8, !dbg !105545, !alias.scope !104820, !noalias !104826
  store i32 0, ptr %i.ai, align 8, !dbg !105545, !alias.scope !104820, !noalias !104826
  br label %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i, !dbg !105538

bb.gx:                                            ; preds = %bb.gs
  call void @llvm.trap(), !dbg !105546
  unreachable, !dbg !105546

bb.gy:                                            ; preds = %bb.gu
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 312, !dbg !105547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx.i7.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.xp, i64 12, i1 false), !dbg !105539, !alias.scope !104825, !noalias !104793
  store i64 %i.xk, ptr %i.dk, align 8, !dbg !105548, !alias.scope !104820, !noalias !104826
  store ptr %i.xm, ptr %.sroa.4.0..sroa_idx.i.i4.i.i.i, align 8, !dbg !105548, !alias.scope !104820, !noalias !104826
  store i8 %i.xf, ptr %.sroa.6.0..sroa_idx.i.i5.i.i.i, align 4, !dbg !105548, !alias.scope !104820, !noalias !104826
  store i8 %i.xh, ptr %.sroa.7.0..sroa_idx.i.i6.i.i.i, align 1, !dbg !105548, !alias.scope !104820, !noalias !104826
  store i8 %i.xj, ptr %.sroa.8.0..sroa_idx.i.i7.i.i.i, align 2, !dbg !105548, !alias.scope !104820, !noalias !104826
  store i32 2, ptr %i.ai, align 8, !dbg !105548, !alias.scope !104820, !noalias !104826
  br label %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i, !dbg !105538

bb.gz:                                            ; preds = %bb.gu
  call void @llvm.trap(), !dbg !105549
  unreachable, !dbg !105549

bb.ha:                                            ; preds = %bb.hb
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sink19PartitionStrategyIRECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.aj) #32
          to label %bb.go unwind label %bb.hc, !dbg !105531, !noalias !104809

_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i: ; preds = %bb.gy, %bb.gw, %bb.gv, %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !105550, !noalias !104790
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105550
  invoke fastcc void @_RNvXsb_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15UnifiedSinkArgsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(208) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.xq)
          to label %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.hb, !dbg !105550, !noalias !104809

bb.hb:                                            ; preds = %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i
  %i.xr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options15FileWriteFormatECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(40) %i.ai) #32
          to label %bb.ha unwind label %bb.hc, !dbg !105531, !noalias !104809

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.go, %bb.gj
  %i.xs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105551, !noalias !104809
  unreachable, !dbg !105551

_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs1E_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_15FileWriteFormatNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i3.i.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 352, !dbg !105552
  %i.xu = load i32, ptr %i.xt, align 16, !dbg !105552, !alias.scope !104792, !noalias !104793, !noundef !2876
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 344, !dbg !105553
  %i.xw = load i64, ptr %i.xv, align 8, !dbg !105553, !alias.scope !104792, !noalias !104793, !noundef !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.09.i.sroa.9.i.sroa.33.207..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.35.207.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i2.i.i.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.36.207.copyload.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.36.207..sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.37.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.37.207..sroa_idx.i, i64 7, i1 false), !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.38.207.copyload.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.38.207..sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.39.207.copyload.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.39.207..sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8, !dbg !105551, !noalias !104827
  %.sroa.09.i.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.09.i.sroa.4.0..sroa_idx.i.i, align 8, !dbg !105551, !noalias !104827
  %.sroa.09.i.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.09.i.sroa.5.0..sroa_idx.i.i, align 8, !dbg !105551, !noalias !104827
  %.sroa.09.i.sroa.6.0.copyload.i.i = load i64, ptr %i.di, align 8, !dbg !105551, !noalias !104827
  %.sroa.09.i.sroa.9.i.sroa.40.255.copyload.i = load ptr, ptr %i.ai, align 8, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.09.i.sroa.9.i.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i64 32, i1 false), !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.7.32.copyload.i.i = load i8, ptr %i.ah, align 8, !dbg !105551, !noalias !104827
  %.sroa.09.i.sroa.9.i.sroa.0.0.copyload534.i = load i56, ptr %.sroa.09.i.sroa.9.32..sroa_idx.i.i, align 1, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.5.0.copyload535.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.5.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.6.0.copyload536.i = load i24, ptr %.sroa.09.i.sroa.9.i.sroa.6.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.7.0.copyload537.i = load i32, ptr %.sroa.09.i.sroa.9.i.sroa.7.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 1, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.8.0.copyload538.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.8.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 1, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.9.0.copyload539.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.9.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.10.0.copyload540.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.10.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.11.0.copyload541.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.11.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.12.0.copyload542.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.12.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.13.0.copyload543.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.13.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.14.0.copyload544.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.14.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.15.0.copyload545.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.15.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.09.i.sroa.9.i.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.09.i.sroa.9.i.sroa.16.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, i64 23, i1 false), !dbg !105551, !noalias !104580
  %i.xx = load <2 x i64>, ptr %.sroa.09.i.sroa.9.i.sroa.17.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.19.0.copyload548.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.19.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.20.0.copyload549.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.20.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.21.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.21.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, i64 7, i1 false), !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.22.0.copyload550.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.22.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.23.0.copyload551.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.23.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %i.xy = load <2 x ptr>, ptr %.sroa.09.i.sroa.9.i.sroa.24.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.26.0.copyload554.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.26.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.27.0.copyload555.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.27.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.28.0.copyload556.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.28.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 1, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.29.0.copyload557.i = load i8, ptr %.sroa.09.i.sroa.9.i.sroa.29.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 2, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.09.i.sroa.9.i.sroa.30.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.09.i.sroa.9.i.sroa.30.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, i64 5, i1 false), !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.31.0.copyload558.i = load ptr, ptr %.sroa.09.i.sroa.9.i.sroa.31.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  %.sroa.09.i.sroa.9.i.sroa.32.0.copyload559.i = load i64, ptr %.sroa.09.i.sroa.9.i.sroa.32.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, align 8, !dbg !105551, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.09.i.sroa.9.i.sroa.33.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.i.sroa.9.i.sroa.33.0..sroa.09.i.sroa.9.32..sroa_idx.i.sroa_idx.i, i64 16, i1 false), !dbg !105551, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !105531, !noalias !104790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !105531, !noalias !104790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !105531, !noalias !104790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !105531, !noalias !104790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !105531, !noalias !104790
  br label %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !105439

_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %bb.es
  %.sroa.09.i.sroa.9.i.sroa.0.0.i = phi i56 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.0.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.0.0.copyload534.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.5.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.4.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.5.0.copyload535.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840 ; 2 uses
  %.sroa.09.i.sroa.9.i.sroa.6.0.i = phi i24 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.5.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.6.0.copyload536.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.7.0.i = phi i32 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.6.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.7.0.copyload537.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.8.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.7.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.8.0.copyload538.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.9.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.8.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.9.0.copyload539.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.10.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.9.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.10.0.copyload540.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.11.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.10.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.11.0.copyload541.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840 ; 4 uses
  %.sroa.09.i.sroa.9.i.sroa.12.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.11.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.12.0.copyload542.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.13.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.12.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.13.0.copyload543.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.14.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.13.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.14.0.copyload544.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.15.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.14.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.15.0.copyload545.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.19.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.18.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.19.0.copyload548.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.20.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.19.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.20.0.copyload549.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.22.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.21.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.22.0.copyload550.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.23.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.22.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.23.0.copyload551.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.26.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.25.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.26.0.copyload554.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.27.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.26.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.27.0.copyload555.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.28.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.27.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.28.0.copyload556.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.29.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.28.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.29.0.copyload557.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.31.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.30.0.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.31.0.copyload558.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.32.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.31.183.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.32.0.copyload559.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.35.0.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.34.223.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.35.207.copyload.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.36.0.i = phi i8 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.7215.i.sroa.36.223.copyload.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.36.207.copyload.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.38.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.38.207.copyload.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.39.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.39.207.copyload.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.09.i.sroa.9.i.sroa.40.0.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.9.i.sroa.40.255.copyload.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %.sroa.15189.0.i.i = phi i32 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xu, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.14188.0.i.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xw, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.13187.0.i.i = phi i64 [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vm, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.12186.0.i.i = phi ptr [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ undef, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.vk, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.11183.0.i.i = phi i8 [ undef, %bb.es ], [ %i.tw, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.6214.0.copyload.i.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.7.32.copyload.i.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.10181.0.i.i = phi i64 [ undef, %bb.es ], [ %i.ty, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.5213.0.copyload.i.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.6.0.copyload.i.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427 ; 3 uses
  %.sroa.9179.0.i.i = phi ptr [ undef, %bb.es ], [ %.val1.i.i.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.4212.0.copyload.i.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.5.0.copyload.i.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.7177.0.i.i = phi ptr [ undef, %bb.es ], [ %.val.i78.i.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %.sroa.0211.0.copyload.i.i, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.4.0.copyload.i.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105427
  %.sroa.0175.0.i.i = phi i64 [ -9223372036854775807, %bb.es ], [ -9223372036854775806, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ -9223372036854775805, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %.sroa.09.i.sroa.0.0.copyload.i.i, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !105428
  %i.xz = phi <2 x i64> [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %i.vh, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xx, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %i.ya = phi <2 x ptr> [ undef, %bb.es ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFramebENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %i.vi, %_RNvXsT_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15FileSinkOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.xy, %_RNvXsP_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_24PartitionedSinkOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !104840
  %i.yb = ptrtoint ptr %.sroa.7177.0.i.i to i64, !dbg !105554
  %i.yc = ptrtoint ptr %.sroa.9179.0.i.i to i64, !dbg !105554 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc368.i = trunc i64 %i.yc to i16, !dbg !105554
  %.sroa.44.sroa.25.0.extract.shift394.i = lshr i64 %i.yc, 16, !dbg !105554
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc317.i = trunc i64 %.sroa.10181.0.i.i to i8, !dbg !105554
  %7 = lshr i64 %.sroa.10181.0.i.i, 8, !dbg !105554
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc349.i = trunc i64 %7 to i32, !dbg !105554
  %.sroa.61.sroa.24.0.extract.shift291.i = and i64 %.sroa.10181.0.i.i, -4294967296, !dbg !105073
  %.sroa.88.sroa.0.0.extract.trunc171.i = trunc i64 %.sroa.09.i.sroa.9.i.sroa.5.0.i to i24, !dbg !105554
  %.sroa.88.sroa.19.0.extract.shift188.i = and i64 %.sroa.09.i.sroa.9.i.sroa.5.0.i, -16777216, !dbg !105073
  %.sroa.116.sroa.0.0.extract.trunc102.i = trunc i64 %.sroa.09.i.sroa.9.i.sroa.11.0.i to i8, !dbg !105554
  %.sroa.116.sroa.13.0.extract.shift110.i = lshr i64 %.sroa.09.i.sroa.9.i.sroa.11.0.i, 8, !dbg !105554
  %.sroa.116.sroa.13.0.extract.trunc111.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift110.i to i8, !dbg !105554
  %.sroa.116.sroa.14.0.extract.shift126.i = lshr i64 %.sroa.09.i.sroa.9.i.sroa.11.0.i, 16, !dbg !105554
  %.sroa.116.sroa.14.0.extract.trunc127.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift126.i to i8, !dbg !105554
  %.sroa.116.sroa.15.0.extract.shift142.i = lshr i64 %.sroa.09.i.sroa.9.i.sroa.11.0.i, 24, !dbg !105554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.09.i.sroa.9.i.sroa.16.i, i64 23, i1 false), !dbg !105554, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.21.i, i64 7, i1 false), !dbg !105554, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.09.i.sroa.9.i.sroa.30.i, i64 5, i1 false), !dbg !105554, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.147.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.09.i.sroa.9.i.sroa.33.i, i64 32, i1 false), !dbg !105554, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.149.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.09.i.sroa.9.i.sroa.37.i, i64 7, i1 false), !dbg !105554, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.152.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.09.i.sroa.9.i.sroa.42.i, i64 32, i1 false), !dbg !105554, !noalias !104575
  %i.yd = zext i56 %.sroa.09.i.sroa.9.i.sroa.0.0.i to i64, !dbg !105073
  br label %bb.oi, !dbg !105075

bb.hd:                                            ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !104828), !dbg !105555
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105556
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105557
  %i.yg = load ptr, ptr %i.yf, align 16, !dbg !105557, !alias.scope !104828, !noalias !104829, !nonnull !2876, !noundef !2876
  %i.yh = load i64, ptr %i.ye, align 8, !dbg !105558, !alias.scope !104828, !noalias !104829, !noundef !2876 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !105559, !noalias !104830
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef range(i64 0, 1152921504606846976) %i.yh, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc26.i unwind label %.loopexit.i, !dbg !105559, !noalias !104575

.noexc26.i:                                       ; preds = %bb.hd
  %i.yi = load i64, ptr %i.aa, align 8, !dbg !105559, !range !2959, !noalias !104830, !noundef !2876
  %i.yj = trunc nuw i64 %i.yi to i1, !dbg !105560
  %i.yk = load i64, ptr %i.dd, align 8, !dbg !105561, !range !3013, !noalias !104830, !noundef !2876 ; 3 uses
  br i1 %i.yj, label %bb.he, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i82.i.i, !dbg !105560, !prof !2900

bb.he:                                            ; preds = %.noexc26.i
  %i.yl = load i64, ptr %i.de, align 8, !dbg !105562, !noalias !104830
  br label %.invoke, !dbg !105563

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i82.i.i: ; preds = %.noexc26.i
  %i.ym = load ptr, ptr %i.de, align 8, !dbg !105564, !noalias !104830, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.yn = icmp ule i64 %i.yh, %i.yk, !dbg !105565
  call void @llvm.assume(i1 %i.yn), !dbg !105566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !105567, !noalias !104830
  %.not.i.i83.i.i = icmp eq i64 %i.yh, 0, !dbg !105568
  br i1 %.not.i.i83.i.i, label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i, label %bb.hf, !dbg !105568

bb.hf:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i82.i.i
  %i.yo = shl nuw nsw i64 %i.yh, 3, !dbg !105569
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ym, ptr nonnull readonly align 8 %i.yg, i64 %i.yo, i1 false), !dbg !105569, !noalias !104831
  br label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i, !dbg !105570

_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i: ; preds = %bb.hf, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i82.i.i
  %i.yp = ptrtoint ptr %i.ym to i64, !dbg !105571 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc367.i = trunc i64 %i.yp to i16, !dbg !105571
  %.sroa.44.sroa.25.0.extract.shift392.i = lshr i64 %i.yp, 16, !dbg !105571
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc316.i = trunc i64 %i.yh to i8, !dbg !105571
  %8 = lshr i64 %i.yh, 8, !dbg !105571
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc347.i = trunc i64 %8 to i32, !dbg !105571
  %.sroa.61.sroa.24.0.extract.shift289.i = and i64 %i.yh, -4294967296, !dbg !105073
  br label %bb.oi, !dbg !105075

bb.hg:                                            ; preds = %bb.d
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105572
  %i.yr = load i64, ptr %i.yq, align 8, !dbg !105572, !noalias !104580, !noundef !2876 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105573
  %i.yt = load i64, ptr %i.ys, align 16, !dbg !105573, !noalias !104580, !noundef !2876 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105574 ; 2 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !dbg !105574, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.yw = atomicrmw add ptr %i.yv, i64 1 monotonic, align 8, !dbg !105575, !noalias !104575
  %i.yx = icmp slt i64 %i.yw, 0, !dbg !105576
  br i1 %i.yx, label %bb.ni, label %bb.nh, !dbg !105576

bb.hh:                                            ; preds = %bb.d
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 184, !dbg !105577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !105578, !noalias !104580
  call void @llvm.experimental.noalias.scope.decl(metadata !104835), !dbg !105578
  call void @llvm.experimental.noalias.scope.decl(metadata !104836), !dbg !105578
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 176, !dbg !105579
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 168, !dbg !105580
  %i.zb = load ptr, ptr %i.za, align 8, !dbg !105580, !alias.scope !104836, !noalias !104837, !nonnull !2876, !noundef !2876
  %i.zc = load i64, ptr %i.yz, align 16, !dbg !105581, !alias.scope !104836, !noalias !104837, !noundef !2876 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104838), !dbg !105582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !105583, !noalias !104839
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef range(i64 0, 1152921504606846976) %i.zc, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc28.i unwind label %.loopexit.i, !dbg !105583, !noalias !104575

.noexc28.i:                                       ; preds = %bb.hh
  %i.zd = load i64, ptr %i.z, align 8, !dbg !105583, !range !2959, !noalias !104839, !noundef !2876
  %i.ze = trunc nuw i64 %i.zd to i1, !dbg !105584
  %i.zf = load i64, ptr %i.cz, align 8, !dbg !105585, !range !3013, !noalias !104839, !noundef !2876 ; 4 uses
  br i1 %i.ze, label %bb.hi, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i85.i.i, !dbg !105584, !prof !2900

bb.hi:                                            ; preds = %.noexc28.i
  %i.zg = load i64, ptr %i.da, align 8, !dbg !105586, !noalias !104839
  br label %.invoke, !dbg !105587

.invoke:                                          ; preds = %bb.ek, %bb.en, %bb.eq, %bb.he, %bb.hi
  %i.zh = phi i64 [ %i.zf, %bb.hi ], [ %i.yk, %bb.he ], [ %i.tb, %bb.eq ], [ %i.sk, %bb.en ], [ %i.rz, %bb.ek ]
  %i.zi = phi i64 [ %i.zg, %bb.hi ], [ %i.yl, %bb.he ], [ %i.tc, %bb.eq ], [ %i.sl, %bb.en ], [ %i.sa, %bb.ek ]
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.zh, i64 %i.zi) #34
          to label %.cont unwind label %.loopexit.split-lp.i, !dbg !105588, !noalias !104575

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i85.i.i: ; preds = %.noexc28.i
  %i.zj = load ptr, ptr %i.da, align 8, !dbg !105589, !noalias !104839, !nonnull !2876, !noundef !2876 ; 3 uses
  %i.zk = icmp ule i64 %i.zc, %i.zf, !dbg !105590
  call void @llvm.assume(i1 %i.zk), !dbg !105591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !105592, !noalias !104839
  store i64 %i.zf, ptr %i.bq, align 8, !dbg !105593, !alias.scope !104846, !noalias !104847
  store ptr %i.zj, ptr %i.db, align 8, !dbg !105593, !alias.scope !104846, !noalias !104847
  store i64 0, ptr %i.dc, align 8, !dbg !105593, !alias.scope !104846, !noalias !104847
  %.not.i.i86.i.i = icmp eq i64 %i.zc, 0, !dbg !105594
  %i.zl = inttoptr i64 %i.zf to ptr, !dbg !105594
  %i.zm = ptrtoint ptr %i.zj to i64, !dbg !105594
  br i1 %.not.i.i86.i.i, label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit87.i.i, label %bb.hj, !dbg !105594

bb.hj:                                            ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i85.i.i
  %i.zn = shl nuw nsw i64 %i.zc, 3, !dbg !105595
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.zj, ptr nonnull readonly align 8 %i.zb, i64 %i.zn, i1 false), !dbg !105595, !noalias !104848
  store i64 %i.zc, ptr %i.dc, align 8, !dbg !105596, !alias.scope !104846, !noalias !104847
  %i.zo = inttoptr i64 %i.zc to ptr, !dbg !105597
  br label %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit87.i.i, !dbg !105597

_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit87.i.i: ; preds = %bb.hj, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i85.i.i
  %.sroa.137.160.copyload.i = phi ptr [ %i.zo, %bb.hj ], [ null, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i85.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !105598, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTjjNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yy)
          to label %_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i unwind label %bb.nj, !dbg !105599, !noalias !104575

.body.i.i:                                        ; preds = %.body93.i.i, %bb.av, %bb.au
  %.pn38.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn38.pn.pn.pn.i.i, %.body93.i.i ], [ %i.ir, %bb.au ], [ %i.ir, %bb.av ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources11ScanSourcesECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.cf) #32
          to label %bb.ok unwind label %bb.ll, !dbg !105600, !noalias !104575

bb.hk:                                            ; preds = %bb.aw, %bb.ar
  %.sroa.5.0.i56.i.i = phi ptr [ %i.iv, %bb.aw ], [ undef, %bb.ar ], !dbg !105601
  %.sroa.0.0.i57.i.i = phi i64 [ %i.iu, %bb.aw ], [ 2, %bb.ar ], !dbg !105601
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105602
  %i.zq = load i64, ptr %i.zp, align 16, !dbg !105602, !alias.scope !104631, !noalias !104636, !noundef !2876
  store ptr %i.il, ptr %i.dz, align 8, !dbg !105125, !alias.scope !104630, !noalias !104852
  store i64 %.sroa.0.0.i57.i.i, ptr %i.ea, align 8, !dbg !105125, !alias.scope !104630, !noalias !104852
  store ptr %.sroa.5.0.i56.i.i, ptr %i.eb, align 16, !dbg !105125, !alias.scope !104630, !noalias !104852
  %i.zr = load <2 x i64>, ptr %i.ho, align 16, !dbg !105603, !alias.scope !104631, !noalias !104636
  store <2 x i64> %i.zr, ptr %i.ce, align 16, !dbg !105125, !alias.scope !104630, !noalias !104852
  store i64 %i.zq, ptr %.sroa.52.0..sroa_idx.i.i.i, align 16, !dbg !105125, !alias.scope !104630, !noalias !104852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !105604, !noalias !104632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !105605, !noalias !104580
  %i.zs = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 208, !dbg !105606 ; 2 uses
  %i.zt = load i64, ptr %i.zs, align 16, !dbg !105606, !range !3013, !noalias !104580, !noundef !2876
  %.not34.i.i = icmp eq i64 %i.zt, -9223372036854775808, !dbg !105606
  br i1 %.not34.i.i, label %bb.ib, label %bb.hl, !dbg !105607

bb.hl:                                            ; preds = %bb.hk
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 232, !dbg !105608
  %i.zv = load i64, ptr %i.zu, align 8, !dbg !105608, !noalias !104857, !noundef !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !105609, !noalias !104857
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zs)
          to label %.noexc.i.i unwind label %bb.id, !dbg !105609, !noalias !104575

.noexc.i.i:                                       ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !105610, !noalias !104858
  store i32 3, ptr %i.ec, align 8, !dbg !105611, !noalias !104858
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 248, !dbg !105612
  %i.zx = load atomic i32, ptr %i.zw acquire, align 8, !dbg !105613, !noalias !104858
  %i.zy = icmp eq i32 %i.zx, 0, !dbg !105614
  br i1 %i.zy, label %bb.hm, label %bb.ie, !dbg !105614

.body.i.i.i.i.i:                                  ; preds = %bb.hx, %bb.hw, %bb.hr, %bb.hq, %bb.hp
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.aae, %bb.hp ], [ %i.aal, %bb.hw ], [ %i.aae, %bb.hr ], [ %i.aae, %bb.hq ], [ %i.aal, %bb.hx ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.x) #32
          to label %.body.i.i91.i.i unwind label %bb.hz, !dbg !105615, !noalias !104859

bb.hm:                                            ; preds = %.noexc.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 240, !dbg !105616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !105617, !noalias !104858
  %.val.i.i.i90.i.i = load ptr, ptr %i.zz, align 16, !dbg !105618, !noalias !104858, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.aaa = atomicrmw add ptr %.val.i.i.i90.i.i, i64 1 monotonic, align 8, !dbg !105619, !noalias !104859
  %i.aab = icmp slt i64 %i.aaa, 0, !dbg !105620
  br i1 %i.aab, label %bb.hn, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !105620

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.trap(), !dbg !105621
  unreachable, !dbg !105621

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !105622, !noalias !104860
  store ptr %.val.i.i.i90.i.i, ptr %i.v, align 8, !dbg !105623, !noalias !104860
  %i.aac = load atomic i32, ptr %i.ec acquire, align 8, !dbg !105624, !noalias !104861
  %i.aad = icmp eq i32 %i.aac, 0, !dbg !105625
  br i1 %i.aad, label %bb.ht, label %bb.ho, !dbg !105625, !prof !2960

bb.ho:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.ht unwind label %bb.hp, !dbg !105626, !noalias !104862

bb.hp:                                            ; preds = %bb.ho
  %i.aae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104863), !dbg !105627
  %i.aaf = load ptr, ptr %i.v, align 8, !dbg !105628, !alias.scope !104863, !noalias !104860, !noundef !2876 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, null, !dbg !105628
  br i1 %i.aag, label %.body.i.i.i.i.i, label %bb.hq, !dbg !105628

bb.hq:                                            ; preds = %bb.hp
  %i.aah = atomicrmw sub ptr %i.aaf, i64 1 release, align 8, !dbg !105629, !noalias !104864
  %i.aai = icmp eq i64 %i.aah, 1, !dbg !105630
  br i1 %i.aai, label %bb.hr, label %.body.i.i.i.i.i, !dbg !105630

bb.hr:                                            ; preds = %bb.hq
  fence acquire, !dbg !105631
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #35
          to label %.body.i.i.i.i.i unwind label %bb.hs, !dbg !105632, !noalias !104862

bb.hs:                                            ; preds = %bb.hr
  %i.aaj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105633, !noalias !104862
  unreachable, !dbg !105633

bb.ht:                                            ; preds = %bb.ho, %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %i.aak = load ptr, ptr %i.v, align 8, !dbg !105634, !noalias !104860, !noundef !2876 ; 3 uses
  %.not.i.i.i.i92.i.i = icmp eq ptr %i.aak, null, !dbg !105634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !105627, !noalias !104860
  store ptr %i.aak, ptr %i.w, align 8, !dbg !105635, !noalias !104858
  br i1 %.not.i.i.i.i92.i.i, label %bb.hv, label %bb.hu, !dbg !105636, !prof !2960

bb.hu:                                            ; preds = %bb.ht
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #34
          to label %bb.hy unwind label %bb.hw, !dbg !105637, !noalias !104859

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !105638, !noalias !104858
  br label %bb.ie, !dbg !105639

bb.hw:                                            ; preds = %bb.hu
  %i.aal = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aam = atomicrmw sub ptr %i.aak, i64 1 release, align 8, !dbg !105640, !noalias !104865
  %i.aan = icmp eq i64 %i.aam, 1, !dbg !105641
  br i1 %i.aan, label %bb.hx, label %.body.i.i.i.i.i, !dbg !105641

bb.hx:                                            ; preds = %bb.hw
  fence acquire, !dbg !105642
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #35
          to label %.body.i.i.i.i.i unwind label %bb.hz, !dbg !105643, !noalias !104859

bb.hy:                                            ; preds = %bb.hu
  unreachable

bb.hz:                                            ; preds = %bb.hx, %.body.i.i.i.i.i
  %i.aao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105644, !noalias !104859
  unreachable, !dbg !105644

.body.i.i91.i.i:                                  ; preds = %.body.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream:bb.a
          cleanup                                 ; 2 uses
  %i.aem = load i8, ptr %i.ej, align 1, !dbg !105802, !range !3062, !alias.scope !104925, !noalias !104874, !noundef !2876
  %cond.i37.i.i.i.i.i = icmp eq i8 %i.aem, -40, !dbg !105802
  br i1 %cond.i37.i.i.i.i.i, label %bb.kw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !105802, !prof !3076

bb.kw:                                            ; preds = %bb.kv
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.kz, !dbg !105803, !noalias !104877

bb.kx:                                            ; preds = %bb.kr
  %i.aen = atomicrmw add ptr %i.aeg, i64 1 monotonic, align 8, !dbg !105804, !noalias !104877
  %i.aeo = icmp slt i64 %i.aen, 0, !dbg !105805
  br i1 %i.aeo, label %bb.ky, label %bb.lk, !dbg !105805

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.trap(), !dbg !105806
  unreachable, !dbg !105806

bb.kz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, %bb.lh, %bb.lf, %bb.ld, %bb.lb, %bb.kw, %bb.ko, %bb.kg, %bb.je
  %i.aep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105807, !noalias !104877
  unreachable, !dbg !105807

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.kg, %bb.kf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCslpwjCj2YNBy_9polars_io7options8RowIndexEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104930), !dbg !105705
  %i.aeq = load ptr, ptr %i.p, align 8, !dbg !105808, !alias.scope !104930, !noalias !104874, !noundef !2876 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null, !dbg !105808
  br i1 %i.aer, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, label %bb.la, !dbg !105808

bb.la:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %i.aes = atomicrmw sub ptr %i.aeq, i64 1 release, align 8, !dbg !105809, !noalias !104931
  %i.aet = icmp eq i64 %i.aes, 1, !dbg !105810
  br i1 %i.aet, label %bb.lb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !105810

bb.lb:                                            ; preds = %bb.la
  fence acquire, !dbg !105811
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergSchemaE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.kz, !dbg !105812, !noalias !104877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.lb, %bb.la, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan14default_values18DefaultFieldValuesEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104932), !dbg !105705
  %i.aeu = load ptr, ptr %i.q, align 8, !dbg !105813, !alias.scope !104932, !noalias !104874, !noundef !2876 ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, null, !dbg !105813
  br i1 %i.aev, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, label %bb.lc, !dbg !105813

bb.lc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %i.aew = atomicrmw sub ptr %i.aeu, i64 1 release, align 8, !dbg !105814, !noalias !104933
  %i.aex = icmp eq i64 %i.aew, 1, !dbg !105815
  br i1 %i.aex, label %bb.ld, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !105815

bb.ld:                                            ; preds = %bb.lc
  fence acquire, !dbg !105816
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.kz, !dbg !105817, !noalias !104877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.ld, %bb.lc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan13ColumnMappingEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104934), !dbg !105705
  %i.aey = load ptr, ptr %i.r, align 8, !dbg !105818, !alias.scope !104934, !noalias !104874, !noundef !2876 ; 2 uses
  %i.aez = icmp eq ptr %i.aey, null, !dbg !105818
  br i1 %i.aez, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i, label %bb.le, !dbg !105818

bb.le:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %i.afa = atomicrmw sub ptr %i.aey, i64 1 release, align 8, !dbg !105819, !noalias !104935
  %i.afb = icmp eq i64 %i.afa, 1, !dbg !105820
  br i1 %i.afb, label %bb.lf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i, !dbg !105820

bb.lf:                                            ; preds = %bb.le
  fence acquire, !dbg !105821
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i unwind label %bb.kz, !dbg !105822, !noalias !104877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i: ; preds = %bb.lf, %bb.le, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !104936), !dbg !105705
  call void @llvm.experimental.noalias.scope.decl(metadata !104937), !dbg !105823
  %i.afc = load ptr, ptr %i.ee, align 8, !dbg !105824, !alias.scope !104938, !noalias !104874, !noundef !2876 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, null, !dbg !105824
  br i1 %i.afd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, label %bb.lg, !dbg !105824

bb.lg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i
  %i.afe = atomicrmw sub ptr %i.afc, i64 1 release, align 8, !dbg !105825, !noalias !104939
  %i.aff = icmp eq i64 %i.afe, 1, !dbg !105826
  br i1 %i.aff, label %bb.lh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i, !dbg !105826

bb.lh:                                            ; preds = %bb.lg
  fence acquire, !dbg !105827
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee) #35
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i unwind label %bb.kz, !dbg !105828, !noalias !104877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i: ; preds = %bb.lh, %bb.lg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream.exit42.i.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(144) %i.t) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit._crit_edge.i.i.i.i.i unwind label %bb.kz, !dbg !105705, !noalias !104877

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit._crit_edge.i.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCslpwjCj2YNBy_9polars_io7options11HiveOptionsECs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.u, align 8, !dbg !105704, !alias.scope !104880, !noalias !104874
  br label %bb.jc, !dbg !105705

bb.li:                                            ; preds = %bb.je, %bb.jd, %bb.jc
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abl, i64 noundef 376, i64 noundef 8) #36, !dbg !105829, !noalias !104575
  br label %.body101.i.i, !dbg !105830

bb.lj:                                            ; preds = %bb.iv
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %.body101.i.i, !dbg !105600

.body101.i.i:                                     ; preds = %bb.lj, %bb.li
  %eh.lpad-body102.i.i = phi { ptr, i32 } [ %i.afg, %bb.lj ], [ %.pn.pn.pn.i.i.i.i.i, %bb.li ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIREECs2g09Ig8GZd6_13polars_stream(ptr nonnull %i.abe) #32
          to label %.body101._crit_edge.i.i unwind label %bb.ll, !dbg !105600, !noalias !104575

.body101._crit_edge.i.i:                          ; preds = %.body101.i.i
  %.pre.i.i = load ptr, ptr %i.cb, align 8, !dbg !105676, !alias.scope !104870, !noalias !104580
  br label %bb.ir, !dbg !105600

bb.lk:                                            ; preds = %bb.kx, %bb.kr
  %i.afh = load i64, ptr %.val48.i.i, align 8, !dbg !105831, !range !2959, !alias.scope !104876, !noalias !104877, !noundef !2876 ; 2 uses
  %i.afi = trunc nuw i64 %i.afh to i1, !dbg !105832 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 8, !dbg !105832
  %i.afk = load i64, ptr %i.afj, align 8, !dbg !105832, !alias.scope !104876, !noalias !104877
  %i.afl = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16, !dbg !105832
  %i.afm = load i64, ptr %i.afl, align 8, !dbg !105832, !alias.scope !104876, !noalias !104877
  %.sroa.6.0.i.i.i.i.i = select i1 %i.afi, i64 %i.afm, i64 undef, !dbg !105832
  %.sroa.53.0.i.i.i.i.i = select i1 %i.afi, i64 %i.afk, i64 undef, !dbg !105832
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 24, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.t, i64 144, i1 false), !dbg !105807, !noalias !104940
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 208, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !105807, !noalias !104940
  %i.afn = load i64, ptr %i.eg, align 8, !dbg !105807, !noalias !104874
  %i.afo = load i64, ptr %i.eh, align 8, !dbg !105807, !noalias !104874
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 232, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !105807, !noalias !104940
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 168, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !105807, !noalias !104940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.24.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(13) %i.l, i64 13, i1 false), !dbg !105807, !noalias !104941
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 264, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !105807, !noalias !104940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !105705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !105705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !105705, !noalias !104874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !105705, !noalias !104874
  store i64 %i.afh, ptr %i.abl, align 8, !dbg !105833, !noalias !104940
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 8, !dbg !105833
  store i64 %.sroa.53.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 16, !dbg !105833
  store i64 %.sroa.6.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 192, !dbg !105833
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 200, !dbg !105833
  store ptr %.sroa.5.0.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 288, !dbg !105833
  store ptr %i.abn, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 296, !dbg !105833
  store ptr %i.aco, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 304, !dbg !105833
  store i64 %i.afn, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 312, !dbg !105833
  store ptr %i.acu, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 320, !dbg !105833
  store i64 %i.afo, ptr %.sroa.17.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.18.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 328, !dbg !105833
  store ptr %i.ada, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 336, !dbg !105833
  store ptr %i.ade, ptr %.sroa.19.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.20.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 344, !dbg !105833
  store ptr %i.aeg, ptr %.sroa.20.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 352, !dbg !105833
  store i8 %i.aci, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 353, !dbg !105833
  store i8 %i.ack, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 1, !dbg !105833, !noalias !104940
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 354, !dbg !105833
  store i8 %i.acm, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 2, !dbg !105833, !noalias !104940
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 355, !dbg !105833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.24.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.24.i.i.i.i, i64 13, i1 false), !dbg !105833, !noalias !104940
  %.sroa.25.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 368, !dbg !105833
  store i8 %i.ado, ptr %.sroa.25.0..sroa_idx.i.i.i.i, align 8, !dbg !105833, !noalias !104940
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 369, !dbg !105833
  store i8 %i.adq, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 1, !dbg !105833, !noalias !104940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i), !dbg !105834
  %.sroa.111.64.copyload88.i = load i64, ptr %i.cf, align 8, !dbg !105835, !noalias !104575
  %.sroa.116.64.copyload90.i = load i64, ptr %.sink10.i.sroa.gep.i.i, align 8, !dbg !105835, !noalias !104575 ; 4 uses
  %.sroa.116.sroa.0.0.extract.trunc107.i = trunc i64 %.sroa.116.64.copyload90.i to i8, !dbg !105835
  %.sroa.116.sroa.13.0.extract.shift120.i = lshr i64 %.sroa.116.64.copyload90.i, 8, !dbg !105835
  %.sroa.116.sroa.13.0.extract.trunc121.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift120.i to i8, !dbg !105835
  %.sroa.116.sroa.14.0.extract.shift136.i = lshr i64 %.sroa.116.64.copyload90.i, 16, !dbg !105835
  %.sroa.116.sroa.14.0.extract.trunc137.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift136.i to i8, !dbg !105835
  %.sroa.116.sroa.15.0.extract.shift152.i = lshr i64 %.sroa.116.64.copyload90.i, 24, !dbg !105835
  %.sroa.122.64.copyload92.i = load i64, ptr %.sink10.i.sroa.gep133.i.i, align 8, !dbg !105835, !noalias !104575
  %.sroa.125.64.copyload94.i = load ptr, ptr %.sink7.i.sroa.gep135.i.i, align 8, !dbg !105835, !noalias !104575
  %.sroa.44.16.copyload47.i = load i64, ptr %i.ce, align 16, !dbg !105835, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc381.i = trunc i64 %.sroa.44.16.copyload47.i to i16, !dbg !105835
  %.sroa.44.sroa.25.0.extract.shift420.i = lshr i64 %.sroa.44.16.copyload47.i, 16, !dbg !105835
  %.sroa.61.16.copyload57.i = load i64, ptr %.sroa.4.0..sroa_idx.i58.i.i, align 8, !dbg !105835, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc311.i = trunc i64 %.sroa.61.16.copyload57.i to i8, !dbg !105835
  %9 = lshr i64 %.sroa.61.16.copyload57.i, 8, !dbg !105835
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc337.i = trunc i64 %9 to i32, !dbg !105835
  %.sroa.61.sroa.24.0.extract.shift279.i = and i64 %.sroa.61.16.copyload57.i, -4294967296, !dbg !105073
  %.sroa.75.16.copyload61.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i.i, align 16, !dbg !105835, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc211.i = trunc i64 %.sroa.75.16.copyload61.i to i8, !dbg !105835
  %.sroa.75.sroa.19.0.extract.shift227.i = lshr i64 %.sroa.75.16.copyload61.i, 8, !dbg !105835
  %.sroa.88.16.copyload64.i = load i64, ptr %i.ea, align 8, !dbg !105835, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc168.i = trunc i64 %.sroa.88.16.copyload64.i to i24, !dbg !105835
  %.sroa.88.sroa.19.0.extract.shift182.i = and i64 %.sroa.88.16.copyload64.i, -16777216, !dbg !105073
  %.sroa.98.16.copyload69.i = load i24, ptr %i.eb, align 16, !dbg !105835, !noalias !104575
  %.sroa.106.16.copyload75.i = load i32, ptr %.sroa.106.16..sroa_idx74.i, align 1, !dbg !105835, !noalias !104575
  %.sroa.10679.16.copyload81.i = load i8, ptr %.sroa.10679.16..sroa_idx80.i, align 1, !dbg !105835, !noalias !104575
  %.sroa.107.16.copyload86.i = load i64, ptr %i.dz, align 8, !dbg !105835, !noalias !104575
  %.sroa.14497.208.copyload.i = load ptr, ptr %i.cd, align 8, !dbg !105835, !noalias !104575
  %.sroa.146.208.copyload.i = load i64, ptr %.sroa.146.208..sroa_idx.i, align 8, !dbg !105835, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.147.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.147.208..sroa_idx.i, i64 32, i1 false), !dbg !105835, !noalias !104575
  %.sroa.126.96.copyload.i = load i64, ptr %i.cc, align 16, !dbg !105835, !noalias !104575
  %.sroa.128.96.copyload.i = load i8, ptr %.sroa.128.96..sroa_idx.i, align 8, !dbg !105835, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.96..sroa_idx.i, i64 23, i1 false), !dbg !105835, !noalias !104575
  %i.afp = load <2 x i64>, ptr %.sroa.12995.96..sroa_idx.i, align 16, !dbg !105835, !noalias !104575
  %.sroa.13196.96.copyload.i = load ptr, ptr %.sroa.13196.96..sroa_idx.i, align 16, !dbg !105835, !noalias !104575
  %.sroa.132.96.copyload.i = load i8, ptr %.sroa.132.96..sroa_idx.i, align 8, !dbg !105835, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.96..sroa_idx.i, i64 7, i1 false), !dbg !105835, !noalias !104575
  %.sroa.134.96.copyload.i = load ptr, ptr %.sroa.134.96..sroa_idx.i, align 16, !dbg !105835, !noalias !104575
  %.sroa.136.96.copyload.i = load i64, ptr %.sroa.136.96..sroa_idx.i, align 8, !dbg !105835, !noalias !104575
  %i.afq = load <2 x ptr>, ptr %.sroa.137.96..sroa_idx.i, align 16, !dbg !105835, !noalias !104575
  %.sroa.140.96.copyload.i = load ptr, ptr %.sroa.140.96..sroa_idx.i, align 16, !dbg !105835, !noalias !104575
  %.sroa.141.96.copyload.i = load i8, ptr %.sroa.141.96..sroa_idx.i, align 8, !dbg !105835, !noalias !104575
  %.sroa.142.96.copyload.i = load i8, ptr %.sroa.142.96..sroa_idx.i, align 1, !dbg !105835, !noalias !104575
  %.sroa.143.96.copyload.i = load i8, ptr %.sroa.143.96..sroa_idx.i, align 2, !dbg !105835, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.96..sroa_idx.i, i64 5, i1 false), !dbg !105835, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !105600, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !105600, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !105600, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !105600, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !105600, !noalias !104580
  br label %bb.oi, !dbg !105075

bb.ll:                                            ; preds = %.body129.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.mw, %bb.mt, %bb.mf, %bb.md, %bb.mc, %.body101.i.i, %bb.it, %bb.il, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream.exit.i.i, %.body93.i.i, %.body.i.i
  %i.afr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105005, !noalias !104575
  unreachable, !dbg !105005

bb.lm:                                            ; preds = %bb.ay
  %i.afs = load ptr, ptr %i.ix, align 8, !dbg !105836, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105837 ; 2 uses
  %i.afu = load ptr, ptr %i.aft, align 16, !dbg !105837, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.afv = atomicrmw add ptr %i.afu, i64 1 monotonic, align 8, !dbg !105838, !noalias !104575
  %i.afw = icmp slt i64 %i.afv, 0, !dbg !105839
  br i1 %i.afw, label %bb.lp, label %bb.lo, !dbg !105839

bb.ln:                                            ; preds = %bb.ay
  call void @llvm.trap(), !dbg !105840
  unreachable, !dbg !105840

bb.lo:                                            ; preds = %bb.lm
  %i.afx = load ptr, ptr %i.aft, align 16, !dbg !105841, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105842 ; 2 uses
  %i.afz = load ptr, ptr %i.afy, align 8, !dbg !105842, !noalias !104580, !noundef !2876 ; 2 uses
  %.not.i.i = icmp eq ptr %i.afz, null, !dbg !105842
  br i1 %.not.i.i, label %bb.lr, label %bb.lq, !dbg !105843

bb.lp:                                            ; preds = %bb.lm
  call void @llvm.trap(), !dbg !105844
  unreachable, !dbg !105844

bb.lq:                                            ; preds = %bb.lo
  %i.aga = atomicrmw add ptr %i.afz, i64 1 monotonic, align 8, !dbg !105845, !noalias !104575
  %i.agb = icmp slt i64 %i.aga, 0, !dbg !105846
  br i1 %i.agb, label %bb.lt, label %bb.ls, !dbg !105846

bb.lr:                                            ; preds = %bb.ls, %bb.lo
  %.sroa.01.0.i.i = phi i64 [ %i.agf, %bb.ls ], [ 0, %bb.lo ], !dbg !105847 ; 3 uses
  %i.agc = ptrtoint ptr %i.afs to i64, !dbg !105848
  %i.agd = ptrtoint ptr %i.afx to i64, !dbg !105848 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc373.i = trunc i64 %i.agd to i16, !dbg !105848
  %.sroa.44.sroa.25.0.extract.shift404.i = lshr i64 %i.agd, 16, !dbg !105848
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc314.i = trunc i64 %.sroa.01.0.i.i to i8, !dbg !105848
  %10 = lshr i64 %.sroa.01.0.i.i, 8, !dbg !105848
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc343.i = trunc i64 %10 to i32, !dbg !105848
  %.sroa.61.sroa.24.0.extract.shift285.i = and i64 %.sroa.01.0.i.i, -4294967296, !dbg !105073
  br label %bb.oi, !dbg !105075

bb.ls:                                            ; preds = %bb.lq
  %i.age = load ptr, ptr %i.afy, align 8, !dbg !105849, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.agf = ptrtoint ptr %i.age to i64, !dbg !105848
  br label %bb.lr, !dbg !105850

bb.lt:                                            ; preds = %bb.lq
  call void @llvm.trap(), !dbg !105851
  unreachable, !dbg !105851

bb.lu:                                            ; preds = %bb.az
  %i.agg = load ptr, ptr %i.jd, align 8, !dbg !105852, !noalias !104580, !nonnull !2876, !noundef !2876
  %.sroa.44.sroa.0.0.extract.trunc377.i = trunc i64 %i.jc to i16, !dbg !105853
  %.sroa.44.sroa.25.0.extract.shift412.i = lshr i64 %i.jc, 16, !dbg !105853
  %i.agh = ptrtoint ptr %i.agg to i64, !dbg !105853
  br label %bb.oi, !dbg !105075

bb.lv:                                            ; preds = %bb.az
  call void @llvm.trap(), !dbg !105854
  unreachable, !dbg !105854

bb.lw:                                            ; preds = %.noexc14.i
  call void @llvm.trap(), !dbg !105855
  unreachable, !dbg !105855

bb.lx:                                            ; preds = %.noexc14.i
  %i.agi = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105856
  %i.agj = load ptr, ptr %i.jk, align 16, !dbg !105857, !noalias !104580, !nonnull !2876, !noundef !2876
  %.val50.i.i = load i24, ptr %i.agi, align 16, !dbg !105858, !noalias !104580
  %.sroa.88.sroa.0.0.extract.trunc177.i = trunc i64 %i.jj to i24, !dbg !105859
  %.sroa.88.sroa.19.0.extract.shift200.i = and i64 %i.jj, -16777216, !dbg !105073
  %.sroa.26.8.copyload35.i = load i64, ptr %i.ca, align 8, !dbg !105859, !noalias !104575
  %.sroa.44.8.copyload44.i = load i64, ptr %.sroa.44.8..sroa_idx43.i, align 8, !dbg !105859, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc365.i = trunc i64 %.sroa.44.8.copyload44.i to i16, !dbg !105859
  %.sroa.44.sroa.25.0.extract.shift388.i = lshr i64 %.sroa.44.8.copyload44.i, 16, !dbg !105859
  %.sroa.61.8.copyload55.i = load i64, ptr %.sroa.61.8..sroa_idx54.i, align 8, !dbg !105859, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc309.i = trunc i64 %.sroa.61.8.copyload55.i to i8, !dbg !105859
  %11 = lshr i64 %.sroa.61.8.copyload55.i, 8, !dbg !105859
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc333.i = trunc i64 %11 to i32, !dbg !105859
  %.sroa.61.sroa.24.0.extract.shift275.i = and i64 %.sroa.61.8.copyload55.i, -4294967296, !dbg !105073
  %i.agk = ptrtoint ptr %i.agj to i64, !dbg !105859 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc218.i = trunc i64 %i.agk to i8, !dbg !105859
  %.sroa.75.sroa.19.0.extract.shift241.i = lshr i64 %i.agk, 8, !dbg !105859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !105860, !noalias !104580
  br label %bb.oi, !dbg !105075

bb.ly:                                            ; preds = %.noexc15.i
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105861
  call void @llvm.experimental.noalias.scope.decl(metadata !104948), !dbg !105862
  %i.agm = load <2 x i64>, ptr %i.agl, align 16, !dbg !105863, !alias.scope !104948, !noalias !104949
  %i.agn = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105863
  %.val.i104.i.i = load ptr, ptr %i.agn, align 16, !dbg !105863, !alias.scope !104948, !noalias !104949, !noundef !2876 ; 3 uses
  %.not.i.i105.i.i = icmp eq ptr %.val.i104.i.i, null, !dbg !105864
  br i1 %.not.i.i105.i.i, label %_RNvYTxjINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEENtNtBa_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.lz, !dbg !105865

bb.lz:                                            ; preds = %bb.ly
  %i.ago = atomicrmw add ptr %.val.i104.i.i, i64 1 monotonic, align 8, !dbg !105866, !noalias !104950
  %i.agp = icmp slt i64 %i.ago, 0, !dbg !105867
  br i1 %i.agp, label %bb.ma, label %_RNvYTxjINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEENtNtBa_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !105867

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.trap(), !dbg !105868
  unreachable, !dbg !105868

bb.mb:                                            ; preds = %_RNvYTxjINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEENtNtBa_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, %.noexc15.i
  %.sroa.26.8.copyload32.i = phi i64 [ 1, %_RNvYTxjINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEENtNtBa_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ 0, %.noexc15.i ], !dbg !105869 ; 2 uses
  store i64 %.sroa.26.8.copyload32.i, ptr %i.by, align 8, !dbg !105869, !noalias !104580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !105870, !noalias !104580
  invoke fastcc void @_RNvXsc_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7optionsNtB5_19SortMultipleOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.jp)
          to label %bb.me unwind label %bb.md, !dbg !105870, !noalias !104575

bb.mc:                                            ; preds = %bb.md
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bz) #32
          to label %bb.ok unwind label %bb.ll, !dbg !105871, !noalias !104575

_RNvYTxjINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEENtNtBa_5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.lz, %bb.ly
  store <2 x i64> %i.agm, ptr %i.dy, align 8, !dbg !105872, !noalias !104580
  store ptr %.val.i104.i.i, ptr %.sroa.5208.0..sroa_idx.i.i, align 8, !dbg !105872, !noalias !104580
  br label %bb.mb, !dbg !105873

bb.md:                                            ; preds = %bb.mb
  %i.agq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionTxjIBH_NtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer18predicate_pushdown7dynamic11DynamicPredEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(32) %i.by) #32
          to label %bb.mc unwind label %bb.ll, !dbg !105871, !noalias !104575

bb.me:                                            ; preds = %bb.mb
  %.sroa.88.40.copyload67.i = load i64, ptr %i.bz, align 8, !dbg !105874, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc179.i = trunc i64 %.sroa.88.40.copyload67.i to i24, !dbg !105874
  %.sroa.88.sroa.19.0.extract.shift204.i = and i64 %.sroa.88.40.copyload67.i, -16777216, !dbg !105073
  %.sroa.98.40.copyload72.i = load i24, ptr %.sroa.98.40..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  %.sroa.106.40.copyload78.i = load i32, ptr %.sroa.106.40..sroa_idx.i, align 1, !dbg !105874, !noalias !104575
  %.sroa.10679.40.copyload84.i = load i8, ptr %.sroa.10679.40..sroa_idx.i, align 1, !dbg !105874, !noalias !104575
  %.sroa.107.40.copyload87.i = load i64, ptr %.sroa.107.40..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  %.sroa.44.8.copyload38.i = load i64, ptr %i.dy, align 8, !dbg !105874, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc362.i = trunc i64 %.sroa.44.8.copyload38.i to i16, !dbg !105874
  %.sroa.44.sroa.25.0.extract.shift382.i = lshr i64 %.sroa.44.8.copyload38.i, 16, !dbg !105874
  %.sroa.61.8.copyload49.i = load i64, ptr %.sroa.4207.0..sroa_idx.i.i, align 8, !dbg !105874, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc306.i = trunc i64 %.sroa.61.8.copyload49.i to i8, !dbg !105874
  %12 = lshr i64 %.sroa.61.8.copyload49.i, 8, !dbg !105874
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc327.i = trunc i64 %12 to i32, !dbg !105874
  %.sroa.61.sroa.24.0.extract.shift269.i = and i64 %.sroa.61.8.copyload49.i, -4294967296, !dbg !105073
  %.sroa.75.8.copyload59.i = load i64, ptr %.sroa.5208.0..sroa_idx.i.i, align 8, !dbg !105874, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc209.i = trunc i64 %.sroa.75.8.copyload59.i to i8, !dbg !105874
  %.sroa.75.sroa.19.0.extract.shift223.i = lshr i64 %.sroa.75.8.copyload59.i, 8, !dbg !105874
  %.sroa.111.64.copyload.i = load i64, ptr %i.bx, align 8, !dbg !105874, !noalias !104575
  %.sroa.116.64.copyload.i = load i64, ptr %.sroa.116.64..sroa_idx.i, align 8, !dbg !105874, !noalias !104575 ; 4 uses
  %.sroa.116.sroa.0.0.extract.trunc106.i = trunc i64 %.sroa.116.64.copyload.i to i8, !dbg !105874
  %.sroa.116.sroa.13.0.extract.shift118.i = lshr i64 %.sroa.116.64.copyload.i, 8, !dbg !105874
  %.sroa.116.sroa.13.0.extract.trunc119.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift118.i to i8, !dbg !105874
  %.sroa.116.sroa.14.0.extract.shift134.i = lshr i64 %.sroa.116.64.copyload.i, 16, !dbg !105874
  %.sroa.116.sroa.14.0.extract.trunc135.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift134.i to i8, !dbg !105874
  %.sroa.116.sroa.15.0.extract.shift150.i = lshr i64 %.sroa.116.64.copyload.i, 24, !dbg !105874
  %.sroa.122.64.copyload.i = load i64, ptr %.sroa.122.64..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  %.sroa.125.64.copyload.i = load ptr, ptr %.sroa.125.64..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  %.sroa.126.64.copyload.i = load i64, ptr %.sroa.126.64..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  %.sroa.128.64.copyload.i = load i8, ptr %.sroa.128.64..sroa_idx.i, align 8, !dbg !105874, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.64..sroa_idx.i, i64 23, i1 false), !dbg !105874, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !105871, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !105871, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !105871, !noalias !104580
  %i.agr = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.jr, i64 0, !dbg !105074
  br label %bb.oi, !dbg !105075

bb.mf:                                            ; preds = %.noexc16.i
  %i.ags = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bw) #32
          to label %bb.ok unwind label %bb.ll, !dbg !105875, !noalias !104575

bb.mg:                                            ; preds = %.noexc16.i
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 80, !dbg !105876 ; 2 uses
  %i.agu = load ptr, ptr %i.agt, align 16, !dbg !105876, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.agv = atomicrmw add ptr %i.agu, i64 1 monotonic, align 8, !dbg !105877, !noalias !104575
  %i.agw = icmp slt i64 %i.agv, 0, !dbg !105878
  br i1 %i.agw, label %bb.mi, label %bb.mh, !dbg !105878

bb.mh:                                            ; preds = %bb.mg
  %i.agx = load ptr, ptr %i.agt, align 16, !dbg !105879, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 104, !dbg !105880
  %i.agz = load i8, ptr %i.agy, align 8, !dbg !105880, !range !3183, !noalias !104580, !noundef !2876
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 88, !dbg !105881 ; 2 uses
  %i.ahb = load ptr, ptr %i.aha, align 8, !dbg !105881, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.ahc = atomicrmw add ptr %i.ahb, i64 1 monotonic, align 8, !dbg !105882, !noalias !104575
  %i.ahd = icmp slt i64 %i.ahc, 0, !dbg !105883
  br i1 %i.ahd, label %bb.mk, label %bb.mj, !dbg !105883

bb.mi:                                            ; preds = %bb.mg
  call void @llvm.trap(), !dbg !105884
  unreachable, !dbg !105884

bb.mj:                                            ; preds = %bb.mh
  %i.ahe = load ptr, ptr %i.aha, align 8, !dbg !105885, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105886
  %i.ahg = load i64, ptr %i.ahf, align 8, !dbg !105886, !range !2959, !noalias !104580, !noundef !2876
  %i.ahh = trunc nuw i64 %i.ahg to i1, !dbg !105887
  br i1 %i.ahh, label %bb.ml, label %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !105887

bb.mk:                                            ; preds = %bb.mh
  call void @llvm.trap(), !dbg !105888
  unreachable, !dbg !105888

bb.ml:                                            ; preds = %bb.mj
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105889
  %.val51.i.i = load ptr, ptr %i.ahi, align 16, !dbg !105890, !noalias !104580, !noundef !2876 ; 3 uses
  %i.ahj = getelementptr i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105890
  %.val52.i.i = load ptr, ptr %i.ahj, align 8, !dbg !105890, !noalias !104580, !nonnull !2876, !noundef !2876 ; 3 uses
  %.not.i106.i.i = icmp eq ptr %.val51.i.i, null, !dbg !105891
  br i1 %.not.i106.i.i, label %bb.mn, label %bb.mm, !dbg !105892

bb.mm:                                            ; preds = %bb.ml
  %i.ahk = atomicrmw add ptr %.val51.i.i, i64 1 monotonic, align 8, !dbg !105893, !noalias !104958
  %i.ahl = icmp slt i64 %i.ahk, 0, !dbg !105894
  br i1 %i.ahl, label %bb.mp, label %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !105894

bb.mn:                                            ; preds = %bb.ml
  %i.ahm = atomicrmw add ptr %.val52.i.i, i64 1 monotonic, align 8, !dbg !105895, !noalias !104958
  %i.ahn = icmp slt i64 %i.ahm, 0, !dbg !105896
  br i1 %i.ahn, label %bb.mo, label %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !105896

bb.mo:                                            ; preds = %bb.mn
  call void @llvm.trap(), !dbg !105897
  unreachable, !dbg !105897

bb.mp:                                            ; preds = %bb.mm
  call void @llvm.trap(), !dbg !105898
  unreachable, !dbg !105898

_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.mn, %bb.mm, %bb.mj
  %.sroa.53.sroa.4.0.i.i = phi ptr [ undef, %bb.mj ], [ %.val52.i.i, %bb.mn ], [ %.val52.i.i, %bb.mm ], !dbg !105899
  %.sroa.53.sroa.0.0.i.i = phi ptr [ undef, %bb.mj ], [ null, %bb.mn ], [ %.val51.i.i, %bb.mm ], !dbg !105899
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.mj ], [ 1, %bb.mn ], [ 1, %bb.mm ], !dbg !105900
  %.sroa.75.32.copyload62.i = load i64, ptr %i.bw, align 8, !dbg !105901, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc222.i = trunc i64 %.sroa.75.32.copyload62.i to i8, !dbg !105901
  %.sroa.75.sroa.19.0.extract.shift249.i = lshr i64 %.sroa.75.32.copyload62.i, 8, !dbg !105901
  %.sroa.88.32.copyload66.i = load i64, ptr %.sroa.88.32..sroa_idx65.i, align 8, !dbg !105901, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc170.i = trunc i64 %.sroa.88.32.copyload66.i to i24, !dbg !105901
  %.sroa.88.sroa.19.0.extract.shift186.i = and i64 %.sroa.88.32.copyload66.i, -16777216, !dbg !105073
  %.sroa.98.32.copyload71.i = load i24, ptr %.sroa.98.32..sroa_idx70.i, align 8, !dbg !105901, !noalias !104575
  %.sroa.106.32.copyload77.i = load i32, ptr %.sroa.106.32..sroa_idx76.i, align 1, !dbg !105901, !noalias !104575
  %.sroa.10679.32.copyload83.i = load i8, ptr %.sroa.10679.32..sroa_idx82.i, align 1, !dbg !105901, !noalias !104575
  %.sroa.107.56.copyload.i = load i64, ptr %i.bv, align 8, !dbg !105901, !noalias !104575
  %.sroa.111.56.copyload.i = load i64, ptr %.sroa.111.56..sroa_idx.i, align 8, !dbg !105901, !noalias !104575
  %.sroa.116.56.copyload.i = load i64, ptr %.sroa.116.56..sroa_idx.i, align 8, !dbg !105901, !noalias !104575 ; 4 uses
  %.sroa.116.sroa.0.0.extract.trunc105.i = trunc i64 %.sroa.116.56.copyload.i to i8, !dbg !105901
  %.sroa.116.sroa.13.0.extract.shift116.i = lshr i64 %.sroa.116.56.copyload.i, 8, !dbg !105901
  %.sroa.116.sroa.13.0.extract.trunc117.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift116.i to i8, !dbg !105901
  %.sroa.116.sroa.14.0.extract.shift132.i = lshr i64 %.sroa.116.56.copyload.i, 16, !dbg !105901
  %.sroa.116.sroa.14.0.extract.trunc133.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift132.i to i8, !dbg !105901
  %.sroa.116.sroa.15.0.extract.shift148.i = lshr i64 %.sroa.116.56.copyload.i, 24, !dbg !105901
  %i.aho = ptrtoint ptr %i.agx to i64, !dbg !105901
  %i.ahp = ptrtoint ptr %.sroa.53.sroa.0.0.i.i to i64, !dbg !105901 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc372.i = trunc i64 %i.ahp to i16, !dbg !105901
  %.sroa.44.sroa.25.0.extract.shift402.i = lshr i64 %i.ahp, 16, !dbg !105901
  %i.ahq = ptrtoint ptr %.sroa.53.sroa.4.0.i.i to i64, !dbg !105901 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc313.i = trunc i64 %i.ahq to i8, !dbg !105901
  %13 = lshr i64 %i.ahq, 8, !dbg !105901
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc341.i = trunc i64 %13 to i32, !dbg !105901
  %.sroa.61.sroa.24.0.extract.shift283.i = and i64 %i.ahq, -4294967296, !dbg !105073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !105875, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !105875, !noalias !104580
  br label %bb.oi, !dbg !105075

bb.mq:                                            ; preds = %bb.be
  %i.ahr = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 8, !dbg !105902
  %i.ahs = load ptr, ptr %i.kh, align 8, !dbg !105903, !noalias !104580, !nonnull !2876, !noundef !2876 ; 3 uses
  store ptr %i.ahs, ptr %i.bu, align 8, !dbg !105904, !noalias !104580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !105905, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahr)
          to label %bb.mv unwind label %bb.mu, !dbg !105905, !noalias !104575

bb.mr:                                            ; preds = %bb.be
  call void @llvm.trap(), !dbg !105906
  unreachable, !dbg !105906

bb.ms:                                            ; preds = %bb.mw, %bb.mu
  %.pn28.i.i = phi { ptr, i32 } [ %i.ahw, %bb.mw ], [ %i.ahv, %bb.mu ] ; 2 uses
  %i.aht = atomicrmw sub ptr %i.ahs, i64 1 release, align 8, !dbg !105907, !noalias !104963
  %i.ahu = icmp eq i64 %i.aht, 1, !dbg !105908
  br i1 %i.ahu, label %bb.mt, label %bb.ok, !dbg !105908

bb.mt:                                            ; preds = %bb.ms
  fence acquire, !dbg !105909
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bu) #35
          to label %bb.ok unwind label %bb.ll, !dbg !105910, !noalias !104575

bb.mu:                                            ; preds = %bb.mq
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ms

bb.mv:                                            ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !105911, !noalias !104580
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kc)
          to label %bb.mx unwind label %bb.mw, !dbg !105911, !noalias !104575

bb.mw:                                            ; preds = %bb.mv
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.bt) #32
          to label %bb.ms unwind label %bb.ll, !dbg !105912, !noalias !104575

bb.mx:                                            ; preds = %bb.mv
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 64, !dbg !105913 ; 2 uses
  %i.ahy = load ptr, ptr %i.ahx, align 16, !dbg !105913, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.ahz = atomicrmw add ptr %i.ahy, i64 1 monotonic, align 8, !dbg !105914, !noalias !104575
  %i.aia = icmp slt i64 %i.ahz, 0, !dbg !105915
  br i1 %i.aia, label %bb.mz, label %bb.my, !dbg !105915

bb.my:                                            ; preds = %bb.mx
  %i.aib = load ptr, ptr %i.ahx, align 16, !dbg !105916, !noalias !104580, !nonnull !2876, !noundef !2876
  %.sroa.116.sroa.0.0.extract.trunc109.i = trunc i64 %i.ke to i8, !dbg !105917
  %.sroa.116.sroa.13.0.extract.shift124.i = lshr i64 %i.ke, 8, !dbg !105917
  %.sroa.116.sroa.13.0.extract.trunc125.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift124.i to i8, !dbg !105917
  %.sroa.116.sroa.14.0.extract.shift140.i = lshr i64 %i.ke, 16, !dbg !105917
  %.sroa.116.sroa.14.0.extract.trunc141.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift140.i to i8, !dbg !105917
  %.sroa.116.sroa.15.0.extract.shift156.i = lshr i64 %i.ke, 24, !dbg !105917
  %i.aic = ptrtoint ptr %i.ahs to i64, !dbg !105917
  %.sroa.26.8.copyload34.i = load i64, ptr %i.bt, align 8, !dbg !105917, !noalias !104575
  %.sroa.44.8.copyload42.i = load i64, ptr %.sroa.44.8..sroa_idx41.i, align 8, !dbg !105917, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc364.i = trunc i64 %.sroa.44.8.copyload42.i to i16, !dbg !105917
  %.sroa.44.sroa.25.0.extract.shift386.i = lshr i64 %.sroa.44.8.copyload42.i, 16, !dbg !105917
  %.sroa.61.8.copyload53.i = load i64, ptr %.sroa.61.8..sroa_idx52.i, align 8, !dbg !105917, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc308.i = trunc i64 %.sroa.61.8.copyload53.i to i8, !dbg !105917
  %14 = lshr i64 %.sroa.61.8.copyload53.i, 8, !dbg !105917
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc331.i = trunc i64 %14 to i32, !dbg !105917
  %.sroa.61.sroa.24.0.extract.shift273.i = and i64 %.sroa.61.8.copyload53.i, -4294967296, !dbg !105073
  %.sroa.75.32.copyload.i = load i64, ptr %i.bs, align 8, !dbg !105917, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc221.i = trunc i64 %.sroa.75.32.copyload.i to i8, !dbg !105917
  %.sroa.75.sroa.19.0.extract.shift247.i = lshr i64 %.sroa.75.32.copyload.i, 8, !dbg !105917
  %.sroa.88.32.copyload.i = load i64, ptr %.sroa.88.32..sroa_idx.i, align 8, !dbg !105917, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc169.i = trunc i64 %.sroa.88.32.copyload.i to i24, !dbg !105917
  %.sroa.88.sroa.19.0.extract.shift184.i = and i64 %.sroa.88.32.copyload.i, -16777216, !dbg !105073
  %.sroa.98.32.copyload.i = load i24, ptr %.sroa.98.32..sroa_idx.i, align 8, !dbg !105917, !noalias !104575
  %.sroa.106.32.copyload.i = load i32, ptr %.sroa.106.32..sroa_idx.i, align 1, !dbg !105917, !noalias !104575
  %.sroa.10679.32.copyload.i = load i8, ptr %.sroa.10679.32..sroa_idx.i, align 1, !dbg !105917, !noalias !104575
  %i.aid = ptrtoint ptr %i.aib to i64, !dbg !105917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !105912, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !105912, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !105912, !noalias !104580
  br label %bb.oi, !dbg !105075

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.trap(), !dbg !105918
  unreachable, !dbg !105918

bb.na:                                            ; preds = %.noexc17.i
  call void @llvm.trap(), !dbg !105919
  unreachable, !dbg !105919

bb.nb:                                            ; preds = %.noexc17.i
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105920
  %i.aif = load ptr, ptr %i.ku, align 16, !dbg !105921, !noalias !104580, !nonnull !2876, !noundef !2876
  %.val49.i.i = load i24, ptr %i.aie, align 16, !dbg !105922, !noalias !104580
  %.sroa.88.sroa.0.0.extract.trunc176.i = trunc i64 %i.kt to i24, !dbg !105923
  %.sroa.88.sroa.19.0.extract.shift198.i = and i64 %i.kt, -16777216, !dbg !105073
  %.sroa.26.8.copyload33.i = load i64, ptr %i.br, align 8, !dbg !105923, !noalias !104575
  %.sroa.44.8.copyload40.i = load i64, ptr %.sroa.44.8..sroa_idx39.i, align 8, !dbg !105923, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc363.i = trunc i64 %.sroa.44.8.copyload40.i to i16, !dbg !105923
  %.sroa.44.sroa.25.0.extract.shift384.i = lshr i64 %.sroa.44.8.copyload40.i, 16, !dbg !105923
  %.sroa.61.8.copyload51.i = load i64, ptr %.sroa.61.8..sroa_idx50.i, align 8, !dbg !105923, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc307.i = trunc i64 %.sroa.61.8.copyload51.i to i8, !dbg !105923
  %15 = lshr i64 %.sroa.61.8.copyload51.i, 8, !dbg !105923
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc329.i = trunc i64 %15 to i32, !dbg !105923
  %.sroa.61.sroa.24.0.extract.shift271.i = and i64 %.sroa.61.8.copyload51.i, -4294967296, !dbg !105073
  %i.aig = ptrtoint ptr %i.aif to i64, !dbg !105923 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc217.i = trunc i64 %i.aig to i8, !dbg !105923
  %.sroa.75.sroa.19.0.extract.shift239.i = lshr i64 %i.aig, 8, !dbg !105923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !105924, !noalias !104580
  br label %bb.oi, !dbg !105075

bb.nc:                                            ; preds = %bb.el, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i.i.i.i
  %.sroa.26.8.copyload.i = load i64, ptr %i.rs, align 8, !dbg !105925, !noalias !104575
  %.sroa.44.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105925
  %.sroa.44.8.copyload.i = load i64, ptr %.sroa.44.8..sroa_idx.i, align 16, !dbg !105925, !noalias !104575 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.44.8.copyload.i to i16, !dbg !105925
  %.sroa.44.sroa.25.0.extract.shift.i = lshr i64 %.sroa.44.8.copyload.i, 16, !dbg !105925
  %.sroa.61.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105925
  %.sroa.61.8.copyload.i = load i64, ptr %.sroa.61.8..sroa_idx.i, align 8, !dbg !105925, !noalias !104575 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc305.i = trunc i64 %.sroa.61.8.copyload.i to i8, !dbg !105925
  %16 = lshr i64 %.sroa.61.8.copyload.i, 8, !dbg !105925
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc325.i = trunc i64 %16 to i32, !dbg !105925
  %.sroa.61.sroa.24.0.extract.shift.i = and i64 %.sroa.61.8.copyload.i, -4294967296, !dbg !105073
  %.sroa.75.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105925
  %.sroa.75.8.copyload.i = load i64, ptr %.sroa.75.8..sroa_idx.i, align 16, !dbg !105925, !noalias !104575 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.75.8.copyload.i to i8, !dbg !105925
  %.sroa.75.sroa.19.0.extract.shift.i = lshr i64 %.sroa.75.8.copyload.i, 8, !dbg !105925
  %.sroa.88.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105925
  %.sroa.88.8.copyload.i = load i64, ptr %.sroa.88.8..sroa_idx.i, align 8, !dbg !105925, !noalias !104575 ; 2 uses
  %.sroa.88.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.88.8.copyload.i to i24, !dbg !105925
  %.sroa.88.sroa.19.0.extract.shift.i = and i64 %.sroa.88.8.copyload.i, -16777216, !dbg !105073
  %.sroa.98.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105925
  %.sroa.98.8.copyload.i = load i24, ptr %.sroa.98.8..sroa_idx.i, align 16, !dbg !105925, !noalias !104575
  %.sroa.106.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 51, !dbg !105925
  %.sroa.106.8.copyload.i = load i32, ptr %.sroa.106.8..sroa_idx.i, align 1, !dbg !105925, !noalias !104575
  %.sroa.10679.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 55, !dbg !105925
  %.sroa.10679.8.copyload.i = load i8, ptr %.sroa.10679.8..sroa_idx.i, align 1, !dbg !105925, !noalias !104575
  %.sroa.107.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 56, !dbg !105925
  %.sroa.107.8.copyload.i = load i64, ptr %.sroa.107.8..sroa_idx.i, align 8, !dbg !105925, !noalias !104575
  %i.aih = ptrtoint ptr %i.sb to i64, !dbg !105926 ; 4 uses
  %.sroa.116.sroa.0.0.extract.trunc108.i = trunc i64 %i.aih to i8, !dbg !105926
  %.sroa.116.sroa.13.0.extract.shift122.i = lshr i64 %i.aih, 8, !dbg !105926
  %.sroa.116.sroa.13.0.extract.trunc123.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift122.i to i8, !dbg !105926
  %.sroa.116.sroa.14.0.extract.shift138.i = lshr i64 %i.aih, 16, !dbg !105926
  %.sroa.116.sroa.14.0.extract.trunc139.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift138.i to i8, !dbg !105926
  %.sroa.116.sroa.15.0.extract.shift154.i = lshr i64 %i.aih, 24, !dbg !105926
  br label %bb.oi, !dbg !105075

bb.nd:                                            ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit71.i.i
  call void @llvm.trap(), !dbg !105927
  unreachable, !dbg !105927

bb.ne:                                            ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit71.i.i
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105928
  %i.aij = load ptr, ptr %i.sp, align 16, !dbg !105929, !noalias !104580, !nonnull !2876, !noundef !2876
  %.val53.i.i = load i24, ptr %i.aii, align 8, !dbg !105930, !noalias !104580
  %i.aik = ptrtoint ptr %i.sm to i64, !dbg !105931 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc370.i = trunc i64 %i.aik to i16, !dbg !105931
  %.sroa.44.sroa.25.0.extract.shift398.i = lshr i64 %i.aik, 16, !dbg !105931
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc319.i = trunc i64 %i.sh to i8, !dbg !105931
  %17 = lshr i64 %i.sh, 8, !dbg !105931
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc353.i = trunc i64 %17 to i32, !dbg !105931
  %.sroa.61.sroa.24.0.extract.shift295.i = and i64 %i.sh, -4294967296, !dbg !105073
  %i.ail = ptrtoint ptr %i.aij to i64, !dbg !105931 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc214.i = trunc i64 %i.ail to i8, !dbg !105931
  %.sroa.75.sroa.19.0.extract.shift233.i = lshr i64 %i.ail, 8, !dbg !105931
  br label %bb.oi, !dbg !105075

bb.nf:                                            ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit74.i.i
  %i.aim = load ptr, ptr %i.tg, align 16, !dbg !105932, !noalias !104580, !nonnull !2876, !noundef !2876
  %.sroa.88.sroa.0.0.extract.trunc173.i = trunc i64 %i.su to i24, !dbg !105933
  %.sroa.88.sroa.19.0.extract.shift192.i = and i64 %i.su, -16777216, !dbg !105073
  %i.ain = ptrtoint ptr %i.td to i64, !dbg !105933 ; 2 uses
  %.sroa.44.sroa.0.0.extract.trunc369.i = trunc i64 %i.ain to i16, !dbg !105933
  %.sroa.44.sroa.25.0.extract.shift396.i = lshr i64 %i.ain, 16, !dbg !105933
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc318.i = trunc i64 %i.sy to i8, !dbg !105933
  %18 = lshr i64 %i.sy, 8, !dbg !105933
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc351.i = trunc i64 %18 to i32, !dbg !105933
  %.sroa.61.sroa.24.0.extract.shift293.i = and i64 %i.sy, -4294967296, !dbg !105073
  %i.aio = ptrtoint ptr %i.aim to i64, !dbg !105933 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc213.i = trunc i64 %i.aio to i8, !dbg !105933
  %.sroa.75.sroa.19.0.extract.shift231.i = lshr i64 %i.aio, 8, !dbg !105933
  br label %bb.oi, !dbg !105075

bb.ng:                                            ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit74.i.i
  call void @llvm.trap(), !dbg !105934
  unreachable, !dbg !105934

bb.nh:                                            ; preds = %bb.hg
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105574
  %i.aiq = load ptr, ptr %i.yu, align 8, !dbg !105935, !noalias !104580, !nonnull !2876, !noundef !2876
  %i.air = load i64, ptr %i.aip, align 16, !dbg !105935, !noalias !104580, !noundef !2876 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105936
  %i.ait = load i8, ptr %i.ais, align 8, !dbg !105936, !range !3183, !noalias !104580, !noundef !2876
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc315.i = trunc i64 %i.yr to i8, !dbg !105937
  %19 = lshr i64 %i.yr, 8, !dbg !105937
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc345.i = trunc i64 %19 to i32, !dbg !105937
  %.sroa.61.sroa.24.0.extract.shift287.i = and i64 %i.yr, -4294967296, !dbg !105073
  %.sroa.75.sroa.0.0.extract.trunc219.i = trunc i64 %i.yt to i8, !dbg !105937
  %.sroa.75.sroa.19.0.extract.shift243.i = lshr i64 %i.yt, 8, !dbg !105937
  %i.aiu = ptrtoint ptr %i.aiq to i64, !dbg !105937
  %.sroa.44.sroa.0.0.extract.trunc374.i = trunc i64 %i.air to i16, !dbg !105937
  %.sroa.44.sroa.25.0.extract.shift406.i = lshr i64 %i.air, 16, !dbg !105937
  %.sroa.88.sroa.0.0.insert.ext206.i = zext nneg i8 %i.ait to i24, !dbg !105937
  br label %bb.oi, !dbg !105075

bb.ni:                                            ; preds = %bb.hg
  call void @llvm.trap(), !dbg !105938
  unreachable, !dbg !105938

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %.body129.i.i, %bb.nj
  %.pn.i.i = phi { ptr, i32 } [ %i.aiv, %bb.nj ], [ %eh.lpad-body130.i.i, %.body129.i.i ]
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.ok unwind label %bb.ll, !dbg !105939, !noalias !104575

bb.nj:                                            ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit87.i.i
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i

_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit87.i.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 16, !dbg !105940
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12201.sroa.6.i.sroa.15.i), !dbg !105941
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12201.sroa.6.i.sroa.20.i), !dbg !105941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !105942, !noalias !104580
  %i.aix = load i16, ptr %i.aiw, align 16, !dbg !105942, !range !3107, !noalias !104969, !noundef !2876 ; 2 uses
  switch i16 %i.aix, label %default.unreachable [
    i16 0, label %bb.nk
    i16 1, label %bb.nl
    i16 2, label %bb.nm
  ], !dbg !105942

bb.nk:                                            ; preds = %_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  %i.aiy = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 48, !dbg !105943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !105944, !noalias !104969
  invoke fastcc void @_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_exprNtB5_14IRFunctionExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.aiy) #40
          to label %.noexc127.i.i unwind label %bb.og, !dbg !105944, !noalias !104575

.noexc127.i.i:                                    ; preds = %bb.nk
  %i.aiz = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 18, !dbg !105945
  %.sroa.0560.0.copyload.i = load i48, ptr %i.aiz, align 2, !dbg !105945, !noalias !104969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !105946, !noalias !104969
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105946 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 47, !dbg !105947
  %i.ajc = load i8, ptr %i.ajb, align 1, !dbg !105947, !range !2976, !noalias !104969, !noundef !2876
  %i.ajd = icmp eq i8 %i.ajc, -40, !dbg !105948
  br i1 %i.ajd, label %bb.nn, label %bb.no, !dbg !105948

bb.nl:                                            ; preds = %_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  %i.aje = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 64, !dbg !105949
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !105951, !noalias !104969
  invoke fastcc void @_RNvXsf_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprINtB5_9LazySerdeINtNtNtB5_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB12_19AnonymousColumnsUdfEL_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull align 8 %i.aje) #40
          to label %.noexc128.i.i unwind label %bb.og, !dbg !105951, !noalias !104575

.noexc128.i.i:                                    ; preds = %bb.nl
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 18, !dbg !105952
  %.sroa.0561.0.copyload.i = load i48, ptr %i.ajg, align 2, !dbg !105952, !noalias !104969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !105953, !noalias !104969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !105954, !noalias !104969
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 40, !dbg !105954 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 63, !dbg !105955
  %i.ajj = load i8, ptr %i.aji, align 1, !dbg !105955, !range !2976, !noalias !104969, !noundef !2876
  %i.ajk = icmp eq i8 %i.ajj, -40, !dbg !105956
  br i1 %i.ajk, label %bb.ns, label %bb.nt, !dbg !105956

bb.nm:                                            ; preds = %_RNvXs3_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimizedNtB5_14FunctionArgMapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 24, !dbg !105957 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 47, !dbg !105958
  %i.ajn = load i8, ptr %i.ajm, align 1, !dbg !105958, !range !2976, !noalias !104969, !noundef !2876
  %i.ajo = icmp eq i8 %i.ajn, -40, !dbg !105959
  br i1 %i.ajo, label %bb.oe, label %bb.of, !dbg !105959

bb.nn:                                            ; preds = %.noexc127.i.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aja)
          to label %bb.nq unwind label %bb.np, !dbg !105960, !noalias !104978

bb.no:                                            ; preds = %.noexc127.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.aja, i64 24, i1 false), !dbg !105961, !noalias !104969
  br label %bb.nq, !dbg !105962

bb.np:                                            ; preds = %bb.nn
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(112) %i.g) #32
          to label %.body129.i.i unwind label %bb.nr, !dbg !105963, !noalias !104978

bb.nq:                                            ; preds = %bb.no, %bb.nn
  %.sroa.8196.8.copyload197.i.i = load ptr, ptr %i.c, align 8, !dbg !105964, !noalias !104580
  %.sroa.11198.8.copyload200.i.i = load ptr, ptr %.sroa.11198.8..sroa_idx199.i.i, align 8, !dbg !105964, !noalias !104580
  %i.ajq = load i64, ptr %.sroa.12201.8..sroa_idx202.i.i, align 8, !dbg !105964, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !105965, !noalias !104969
  %.sroa.12201.sroa.6.i.sroa.0.0.copyload.i = load i24, ptr %i.g, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.5.0.copyload.i = load i32, ptr %.sroa.12201.sroa.6.i.sroa.5.0..sroa_idx.i, align 1, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.6.0.copyload.i = load i8, ptr %.sroa.12201.sroa.6.i.sroa.6.0..sroa_idx.i, align 1, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.7.0..sroa_idx.i, align 8, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.8.0..sroa_idx.i, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.10.0..sroa_idx.i, align 8, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.11.0.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.11.0..sroa_idx.i, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12201.sroa.6.i.sroa.12.0..sroa_idx.i, align 8, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.13.0.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.13.0..sroa_idx.i, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.14.0.copyload.i = load i8, ptr %.sroa.12201.sroa.6.i.sroa.14.0..sroa_idx.i, align 8, !dbg !105966, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12201.sroa.6.i.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12201.sroa.6.i.sroa.15.0..sroa_idx.i, i64 23, i1 false), !dbg !105966, !noalias !104580
  %i.ajr = load <2 x i64>, ptr %.sroa.12201.sroa.6.i.sroa.16.0..sroa_idx.i, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.18.0.copyload.i = load ptr, ptr %.sroa.12201.sroa.6.i.sroa.18.0..sroa_idx.i, align 16, !dbg !105966, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.19.0.copyload.i = load i8, ptr %.sroa.12201.sroa.6.i.sroa.19.0..sroa_idx.i, align 8, !dbg !105966, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12201.sroa.6.i.sroa.20.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12201.sroa.6.i.sroa.20.0..sroa_idx.i, i64 7, i1 false), !dbg !105966, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !105963, !noalias !104969
  br label %bb.oh, !dbg !105967

bb.nr:                                            ; preds = %bb.oa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i, %bb.np
  %i.ajs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !105942, !noalias !104978
  unreachable, !dbg !105942

bb.ns:                                            ; preds = %.noexc128.i.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajh)
          to label %bb.nv unwind label %bb.nu, !dbg !105968, !noalias !104978

bb.nt:                                            ; preds = %.noexc128.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ajh, i64 24, i1 false), !dbg !105969, !noalias !104969
  br label %bb.nv, !dbg !105970

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i: ; preds = %bb.oa, %.body.i122.i.i, %bb.nu
  %.pn.i125.i.i = phi { ptr, i32 } [ %i.ajt, %bb.nu ], [ %eh.lpad-body.i123.i.i, %bb.oa ], [ %eh.lpad-body.i123.i.i, %.body.i122.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9LazySerdeINtNtNtBJ_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB1A_19AnonymousColumnsUdfEL_EEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(72) %i.f) #32
          to label %.body129.i.i unwind label %bb.nr, !dbg !105971, !noalias !104978

bb.nu:                                            ; preds = %bb.ns
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i

bb.nv:                                            ; preds = %bb.nt, %bb.ns
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !105972, !noalias !104969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !105973, !noalias !104969
  %.val.i121.i.i = load ptr, ptr %i.ajf, align 8, !dbg !105974, !noalias !104969 ; 4 uses
  %i.aju = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCs2g09Ig8GZd6_13polars_stream()
          to label %.noexc.i126.i.i unwind label %bb.nz, !dbg !105975, !noalias !104978 ; 3 uses

.noexc.i126.i.i:                                  ; preds = %bb.nv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i121.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !104979), !dbg !105976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !105977, !noalias !104969
  %i.ajv = getelementptr inbounds nuw i8, ptr %.val.i121.i.i, i64 23, !dbg !105977
  %i.ajw = load i8, ptr %i.ajv, align 1, !dbg !105977, !range !2976, !alias.scope !104980, !noalias !104981, !noundef !2876
  %i.ajx = icmp eq i8 %i.ajw, -40, !dbg !105978
  br i1 %i.ajx, label %bb.nw, label %bb.nx, !dbg !105978

bb.nw:                                            ; preds = %.noexc.i126.i.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val.i121.i.i) #35
          to label %bb.ob unwind label %bb.ny, !dbg !105979, !noalias !104978

bb.nx:                                            ; preds = %.noexc.i126.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val.i121.i.i, i64 24, i1 false), !dbg !105980, !noalias !104978
  br label %bb.ob, !dbg !105981

bb.ny:                                            ; preds = %bb.nw
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aju, i64 noundef 24, i64 noundef 8) #36, !dbg !105982, !noalias !104978
  br label %.body.i122.i.i, !dbg !105983

bb.nz:                                            ; preds = %bb.nv
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i122.i.i, !dbg !105971

.body.i122.i.i:                                   ; preds = %bb.nz, %bb.ny
  %eh.lpad-body.i123.i.i = phi { ptr, i32 } [ %i.ajz, %bb.nz ], [ %i.ajy, %bb.ny ] ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !105984
  %i.akb = load i8, ptr %i.aka, align 1, !dbg !105984, !range !2976, !alias.scope !104982, !noalias !104969, !noundef !2876
  %i.akc = icmp eq i8 %i.akb, -40, !dbg !105985
  br i1 %i.akc, label %bb.oa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i, !dbg !105985, !prof !2900

bb.oa:                                            ; preds = %.body.i122.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i unwind label %bb.nr, !dbg !105986, !noalias !104978

bb.ob:                                            ; preds = %bb.nx, %bb.nw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aju, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !105987, !noalias !104983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !105988, !noalias !104969
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.030.0854.i, i64 32, !dbg !105989 ; 2 uses
  %i.ake = load ptr, ptr %i.akd, align 16, !dbg !105989, !noalias !104969, !nonnull !2876, !noundef !2876
  %i.akf = atomicrmw add ptr %i.ake, i64 1 monotonic, align 8, !dbg !105990, !noalias !104978
  %i.akg = icmp slt i64 %i.akf, 0, !dbg !105991
  br i1 %i.akg, label %bb.od, label %bb.oc, !dbg !105991

bb.oc:                                            ; preds = %bb.ob
  %i.akh = load ptr, ptr %i.akd, align 16, !dbg !105992, !noalias !104969, !nonnull !2876, !noundef !2876
  %.sroa.12201.sroa.6.i.sroa.8.16.copyload.i = load i64, ptr %i.f, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.10.16.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.10.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.11.16.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.11.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.12.16.copyload.i = load ptr, ptr %.sroa.12201.sroa.6.i.sroa.12.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.13.16.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.13.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.14.16.copyload.i = load i8, ptr %.sroa.12201.sroa.6.i.sroa.14.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12201.sroa.6.i.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12201.sroa.6.i.sroa.15.16..sroa_idx.i, i64 23, i1 false), !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.16.16.copyload.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.16.16..sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.0.0.copyload228.i.i = load i64, ptr %i.e, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.0.0.copyload523.i = load i24, ptr %.sroa.12201.sroa.6.0..sroa_idx.i.i, align 8, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.5.0.copyload524.i = load i32, ptr %.sroa.12201.sroa.6.i.sroa.5.0..sroa.12201.sroa.6.0..sroa_idx.i.sroa_idx.i, align 1, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.6.0.copyload525.i = load i8, ptr %.sroa.12201.sroa.6.i.sroa.6.0..sroa.12201.sroa.6.0..sroa_idx.i.sroa_idx.i, align 1, !dbg !105993, !noalias !104580
  %.sroa.12201.sroa.6.i.sroa.7.0.copyload526.i = load i64, ptr %.sroa.12201.sroa.6.i.sroa.7.0..sroa.12201.sroa.6.0..sroa_idx.i.sroa_idx.i, align 8, !dbg !105993, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !105971, !noalias !104969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !105971, !noalias !104969
  %i.aki = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.12201.sroa.6.i.sroa.16.16.copyload.i, i64 0, !dbg !105941
  br label %bb.oh, !dbg !105967

bb.od:                                            ; preds = %bb.ob
  call void @llvm.trap(), !dbg !105994
  unreachable, !dbg !105994

bb.oe:                                            ; preds = %bb.nm
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajl) #35
          to label %.noexc131.i.i unwind label %bb.og, !dbg !105995, !noalias !104575

bb.of:                                            ; preds = %bb.nm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ajl, i64 24, i1 false), !dbg !105996, !noalias !104969
  br label %.noexc131.i.i, !dbg !105997

.noexc131.i.i:                                    ; preds = %bb.of, %bb.oe
  %.sroa.8196.8.copyload.i.i = load ptr, ptr %i.d, align 8, !dbg !105998, !noalias !104580
  %.sroa.11198.8.copyload.i.i = load ptr, ptr %.sroa.11198.8..sroa_idx.i.i, align 8, !dbg !105998, !noalias !104580
  %i.akj = load i64, ptr %.sroa.12201.8..sroa_idx.i.i, align 8, !dbg !105998, !noalias !104580
  br label %bb.oh, !dbg !105967

bb.og:                                            ; preds = %bb.oe, %bb.nl, %bb.nk
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i.i, !dbg !105999

.body129.i.i:                                     ; preds = %bb.og, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i, %bb.np
  %eh.lpad-body130.i.i = phi { ptr, i32 } [ %i.akk, %bb.og ], [ %i.ajp, %bb.np ], [ %.pn.i125.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit.i124.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTjjNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i unwind label %bb.ll, !dbg !106000, !noalias !104575

bb.oh:                                            ; preds = %.noexc131.i.i, %bb.oc, %bb.nq
  %.sroa.12201.sroa.6.i.sroa.0.0.i = phi i24 [ %.sroa.12201.sroa.6.i.sroa.0.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.0.0.copyload523.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.5.0.i = phi i32 [ %.sroa.12201.sroa.6.i.sroa.5.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.5.0.copyload524.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.6.0.i = phi i8 [ %.sroa.12201.sroa.6.i.sroa.6.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.6.0.copyload525.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.7.0.i = phi i64 [ %.sroa.12201.sroa.6.i.sroa.7.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.7.0.copyload526.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.8.0.i = phi i64 [ %.sroa.12201.sroa.6.i.sroa.8.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.8.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.10.0.i = phi i64 [ %.sroa.12201.sroa.6.i.sroa.10.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.10.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941 ; 4 uses
  %.sroa.12201.sroa.6.i.sroa.11.0.i = phi i64 [ %.sroa.12201.sroa.6.i.sroa.11.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.11.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.12.0.i = phi ptr [ %.sroa.12201.sroa.6.i.sroa.12.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.12.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.13.0.i = phi i64 [ %.sroa.12201.sroa.6.i.sroa.13.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.13.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.14.0.i = phi i8 [ %.sroa.12201.sroa.6.i.sroa.14.0.copyload.i, %bb.nq ], [ %.sroa.12201.sroa.6.i.sroa.14.16.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.18.0.i = phi ptr [ %.sroa.12201.sroa.6.i.sroa.18.0.copyload.i, %bb.nq ], [ undef, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.6.i.sroa.19.0.i = phi i8 [ %.sroa.12201.sroa.6.i.sroa.19.0.copyload.i, %bb.nq ], [ undef, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.6195.i.sroa.0.0.i = phi i48 [ %.sroa.0560.0.copyload.i, %bb.nq ], [ %.sroa.0561.0.copyload.i, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  %.sroa.12201.sroa.0.0.i.i = phi i64 [ %i.ajq, %bb.nq ], [ %.sroa.12201.sroa.0.0.copyload228.i.i, %bb.oc ], [ %i.akj, %.noexc131.i.i ], !dbg !106001 ; 2 uses
  %.sroa.11198.0.i.i = phi ptr [ %.sroa.11198.8.copyload200.i.i, %bb.nq ], [ %i.akh, %bb.oc ], [ %.sroa.11198.8.copyload.i.i, %.noexc131.i.i ], !dbg !106001
  %.sroa.8196.0.i.i = phi ptr [ %.sroa.8196.8.copyload197.i.i, %bb.nq ], [ %i.aju, %bb.oc ], [ %.sroa.8196.8.copyload.i.i, %.noexc131.i.i ], !dbg !106001
  %i.akl = phi <2 x i64> [ %i.ajr, %bb.nq ], [ %i.aki, %bb.oc ], [ undef, %.noexc131.i.i ], !dbg !105941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !106002, !noalias !104580
  %.sroa.138.184.copyload.i = load ptr, ptr %i.bp, align 8, !dbg !106003, !noalias !104575
  %.sroa.140.184.copyload.i = load ptr, ptr %.sroa.140.184..sroa_idx.i, align 8, !dbg !106003, !noalias !104575
  %.sroa.141.184.copyload.i = load i8, ptr %.sroa.141.184..sroa_idx.i, align 8, !dbg !106003, !noalias !104575
  %.sroa.142.184.copyload.i = load i8, ptr %.sroa.142.184..sroa_idx.i, align 1, !dbg !106003, !noalias !104575
  %.sroa.143.184.copyload.i = load i8, ptr %.sroa.143.184..sroa_idx.i, align 2, !dbg !106003, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.184..sroa_idx.i, i64 5, i1 false), !dbg !106003, !noalias !104575
  %i.akm = ptrtoint ptr %.sroa.8196.0.i.i to i64, !dbg !106003 ; 3 uses
  %.sroa.61.sroa.0.sroa.0.0.extract.trunc312.i = trunc i64 %i.akm to i8, !dbg !106003
  %20 = lshr i64 %i.akm, 8, !dbg !106003
  %.sroa.61.sroa.0.sroa.24.0.extract.trunc339.i = trunc i64 %20 to i32, !dbg !106003
  %.sroa.61.sroa.24.0.extract.shift281.i = and i64 %i.akm, -4294967296, !dbg !105073
  %i.akn = ptrtoint ptr %.sroa.11198.0.i.i to i64, !dbg !106003 ; 2 uses
  %.sroa.75.sroa.0.0.extract.trunc212.i = trunc i64 %i.akn to i8, !dbg !106003
  %.sroa.75.sroa.19.0.extract.shift229.i = lshr i64 %i.akn, 8, !dbg !106003
  %.sroa.88.sroa.0.0.extract.trunc172.i = trunc i64 %.sroa.12201.sroa.0.0.i.i to i24, !dbg !106003
  %.sroa.88.sroa.19.0.extract.shift190.i = and i64 %.sroa.12201.sroa.0.0.i.i, -16777216, !dbg !105073
  %.sroa.116.sroa.0.0.extract.trunc104.i = trunc i64 %.sroa.12201.sroa.6.i.sroa.10.0.i to i8, !dbg !106003
  %.sroa.116.sroa.13.0.extract.shift114.i = lshr i64 %.sroa.12201.sroa.6.i.sroa.10.0.i, 8, !dbg !106003
  %.sroa.116.sroa.13.0.extract.trunc115.i = trunc i64 %.sroa.116.sroa.13.0.extract.shift114.i to i8, !dbg !106003
  %.sroa.116.sroa.14.0.extract.shift130.i = lshr i64 %.sroa.12201.sroa.6.i.sroa.10.0.i, 16, !dbg !106003
  %.sroa.116.sroa.14.0.extract.trunc131.i = trunc i64 %.sroa.116.sroa.14.0.extract.shift130.i to i8, !dbg !106003
  %.sroa.116.sroa.15.0.extract.shift146.i = lshr i64 %.sroa.12201.sroa.6.i.sroa.10.0.i, 24, !dbg !106003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.12201.sroa.6.i.sroa.15.i, i64 23, i1 false), !dbg !106003, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12201.sroa.6.i.sroa.20.i, i64 7, i1 false), !dbg !106003, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12201.sroa.6.i.sroa.15.i), !dbg !105999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12201.sroa.6.i.sroa.20.i), !dbg !105999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !105999, !noalias !104580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !105999, !noalias !104580
  %i.ako = zext i48 %.sroa.6195.i.sroa.0.0.i to i64, !dbg !105073
  %i.akp = insertelement <2 x ptr> poison, ptr %.sroa.137.160.copyload.i, i64 0, !dbg !105074
  %i.akq = insertelement <2 x ptr> %i.akp, ptr %.sroa.138.184.copyload.i, i64 1, !dbg !105074
  br label %bb.oi, !dbg !105075

bb.oi:                                            ; preds = %bb.oh, %bb.nh, %bb.nf, %bb.ne, %bb.nc, %bb.nb, %bb.my, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.me, %bb.lx, %bb.lu, %bb.lr, %bb.lk, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.bf, %bb.bc, %.noexc13.i, %bb.ah, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.d
  %.sroa.44.sroa.25.sroa.0.0.i = phi i64 [ 0, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.25.0.extract.shift414.i, %bb.ah ], [ %.sroa.44.sroa.25.0.extract.shift418.i, %.noexc13.i ], [ %.sroa.44.sroa.25.0.extract.shift420.i, %bb.lk ], [ %.sroa.44.sroa.25.0.extract.shift404.i, %bb.lr ], [ %.sroa.44.sroa.25.0.extract.shift412.i, %bb.lu ], [ %.sroa.44.sroa.25.0.extract.shift388.i, %bb.lx ], [ %.sroa.44.sroa.25.0.extract.shift382.i, %bb.me ], [ %.sroa.44.sroa.25.0.extract.shift390.i, %bb.bc ], [ %.sroa.44.sroa.25.0.extract.shift402.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.44.sroa.25.0.extract.shift386.i, %bb.my ], [ %.sroa.44.sroa.25.0.extract.shift410.i, %bb.bf ], [ %.sroa.44.sroa.25.0.extract.shift384.i, %bb.nb ], [ %.sroa.44.sroa.25.0.extract.shift408.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.25.0.extract.shift400.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.25.0.extract.shift.i, %bb.nc ], [ %.sroa.44.sroa.25.0.extract.shift398.i, %bb.ne ], [ %.sroa.44.sroa.25.0.extract.shift396.i, %bb.nf ], [ %.sroa.44.sroa.25.0.extract.shift394.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.25.0.extract.shift392.i, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.44.sroa.25.0.extract.shift406.i, %bb.nh ], [ %i.ako, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.44.sroa.0.0.i = phi i16 [ %.sroa.0.0.i.i.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc378.i, %bb.ah ], [ %.sroa.44.sroa.0.0.extract.trunc380.i, %.noexc13.i ], [ %.sroa.44.sroa.0.0.extract.trunc381.i, %bb.lk ], [ %.sroa.44.sroa.0.0.extract.trunc373.i, %bb.lr ], [ %.sroa.44.sroa.0.0.extract.trunc377.i, %bb.lu ], [ %.sroa.44.sroa.0.0.extract.trunc365.i, %bb.lx ], [ %.sroa.44.sroa.0.0.extract.trunc362.i, %bb.me ], [ %.sroa.44.sroa.0.0.extract.trunc366.i, %bb.bc ], [ %.sroa.44.sroa.0.0.extract.trunc372.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc364.i, %bb.my ], [ %.sroa.44.sroa.0.0.extract.trunc376.i, %bb.bf ], [ %.sroa.44.sroa.0.0.extract.trunc363.i, %bb.nb ], [ %.sroa.44.sroa.0.0.extract.trunc375.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc371.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc.i, %bb.nc ], [ %.sroa.44.sroa.0.0.extract.trunc370.i, %bb.ne ], [ %.sroa.44.sroa.0.0.extract.trunc369.i, %bb.nf ], [ %.sroa.44.sroa.0.0.extract.trunc368.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc367.i, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.44.sroa.0.0.extract.trunc374.i, %bb.nh ], [ %i.aix, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.61.sroa.0.sroa.24.sroa.0.0.i = phi i32 [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc361.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.shift.i, %bb.ah ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc335.i, %.noexc13.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc337.i, %bb.lk ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc343.i, %bb.lr ], [ 0, %bb.lu ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc333.i, %bb.lx ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc327.i, %bb.me ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc359.i, %bb.bc ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc341.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc331.i, %bb.my ], [ 0, %bb.bf ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc329.i, %bb.nb ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc357.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc355.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc325.i, %bb.nc ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc353.i, %bb.ne ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc351.i, %bb.nf ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc349.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc347.i, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc345.i, %bb.nh ], [ %.sroa.61.sroa.0.sroa.24.0.extract.trunc339.i, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.61.sroa.0.sroa.0.0.i = phi i8 [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc323.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc.i, %bb.ah ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc310.i, %.noexc13.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc311.i, %bb.lk ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc314.i, %bb.lr ], [ undef, %bb.lu ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc309.i, %bb.lx ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc306.i, %bb.me ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc322.i, %bb.bc ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc313.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc308.i, %bb.my ], [ %i.kq, %bb.bf ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc307.i, %bb.nb ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc321.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc320.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc305.i, %bb.nc ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc319.i, %bb.ne ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc318.i, %bb.nf ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc317.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc316.i, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc315.i, %bb.nh ], [ %.sroa.61.sroa.0.sroa.0.0.extract.trunc312.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.61.sroa.24.0.i = phi i64 [ %.sroa.61.sroa.24.0.extract.shift303.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.ah ], [ %.sroa.61.sroa.24.0.extract.shift277.i, %.noexc13.i ], [ %.sroa.61.sroa.24.0.extract.shift279.i, %bb.lk ], [ %.sroa.61.sroa.24.0.extract.shift285.i, %bb.lr ], [ 0, %bb.lu ], [ %.sroa.61.sroa.24.0.extract.shift275.i, %bb.lx ], [ %.sroa.61.sroa.24.0.extract.shift269.i, %bb.me ], [ %.sroa.61.sroa.24.0.extract.shift301.i, %bb.bc ], [ %.sroa.61.sroa.24.0.extract.shift283.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.61.sroa.24.0.extract.shift273.i, %bb.my ], [ 0, %bb.bf ], [ %.sroa.61.sroa.24.0.extract.shift271.i, %bb.nb ], [ %.sroa.61.sroa.24.0.extract.shift299.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.24.0.extract.shift297.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.24.0.extract.shift.i, %bb.nc ], [ %.sroa.61.sroa.24.0.extract.shift295.i, %bb.ne ], [ %.sroa.61.sroa.24.0.extract.shift293.i, %bb.nf ], [ %.sroa.61.sroa.24.0.extract.shift291.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.61.sroa.24.0.extract.shift289.i, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.61.sroa.24.0.extract.shift287.i, %bb.nh ], [ %.sroa.61.sroa.24.0.extract.shift281.i, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.75.sroa.19.sroa.0.0.i = phi i64 [ %.sroa.75.sroa.19.0.extract.shift245.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.ah ], [ %.sroa.75.sroa.19.0.extract.shift225.i, %.noexc13.i ], [ %.sroa.75.sroa.19.0.extract.shift227.i, %bb.lk ], [ 0, %bb.lr ], [ 0, %bb.lu ], [ %.sroa.75.sroa.19.0.extract.shift241.i, %bb.lx ], [ %.sroa.75.sroa.19.0.extract.shift223.i, %bb.me ], [ 0, %bb.bc ], [ %.sroa.75.sroa.19.0.extract.shift249.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.75.sroa.19.0.extract.shift247.i, %bb.my ], [ 0, %bb.bf ], [ %.sroa.75.sroa.19.0.extract.shift239.i, %bb.nb ], [ %.sroa.75.sroa.19.0.extract.shift237.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.75.sroa.19.0.extract.shift235.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.75.sroa.19.0.extract.shift.i, %bb.nc ], [ %.sroa.75.sroa.19.0.extract.shift233.i, %bb.ne ], [ %.sroa.75.sroa.19.0.extract.shift231.i, %bb.nf ], [ %i.yd, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.75.sroa.19.0.extract.shift243.i, %bb.nh ], [ %.sroa.75.sroa.19.0.extract.shift229.i, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.75.sroa.0.0.i = phi i8 [ %.sroa.75.sroa.0.0.extract.trunc220.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.75.sroa.0.0.extract.trunc210.i, %.noexc13.i ], [ %.sroa.75.sroa.0.0.extract.trunc211.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ %.sroa.75.sroa.0.0.extract.trunc218.i, %bb.lx ], [ %.sroa.75.sroa.0.0.extract.trunc209.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.75.sroa.0.0.extract.trunc222.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.75.sroa.0.0.extract.trunc221.i, %bb.my ], [ undef, %bb.bf ], [ %.sroa.75.sroa.0.0.extract.trunc217.i, %bb.nb ], [ %.sroa.75.sroa.0.0.extract.trunc216.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.75.sroa.0.0.extract.trunc215.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.75.sroa.0.0.extract.trunc.i, %bb.nc ], [ %.sroa.75.sroa.0.0.extract.trunc214.i, %bb.ne ], [ %.sroa.75.sroa.0.0.extract.trunc213.i, %bb.nf ], [ %.sroa.11183.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.75.sroa.0.0.extract.trunc219.i, %bb.nh ], [ %.sroa.75.sroa.0.0.extract.trunc212.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.88.sroa.0.0.i = phi i24 [ %.sroa.88.sroa.0.0.extract.trunc178.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.88.sroa.0.0.extract.trunc167.i, %.noexc13.i ], [ %.sroa.88.sroa.0.0.extract.trunc168.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ %.sroa.88.sroa.0.0.extract.trunc177.i, %bb.lx ], [ %.sroa.88.sroa.0.0.extract.trunc179.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.88.sroa.0.0.extract.trunc170.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.88.sroa.0.0.extract.trunc169.i, %bb.my ], [ undef, %bb.bf ], [ %.sroa.88.sroa.0.0.extract.trunc176.i, %bb.nb ], [ %.sroa.88.sroa.0.0.extract.trunc175.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.88.sroa.0.0.extract.trunc174.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.88.sroa.0.0.extract.trunc.i, %bb.nc ], [ %.val53.i.i, %bb.ne ], [ %.sroa.88.sroa.0.0.extract.trunc173.i, %bb.nf ], [ %.sroa.88.sroa.0.0.extract.trunc171.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %.sroa.88.sroa.0.0.insert.ext206.i, %bb.nh ], [ %.sroa.88.sroa.0.0.extract.trunc172.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.88.sroa.19.sroa.0.0.i = phi i64 [ %.sroa.88.sroa.19.0.extract.shift202.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.ah ], [ %.sroa.88.sroa.19.0.extract.shift180.i, %.noexc13.i ], [ %.sroa.88.sroa.19.0.extract.shift182.i, %bb.lk ], [ 0, %bb.lr ], [ 0, %bb.lu ], [ %.sroa.88.sroa.19.0.extract.shift200.i, %bb.lx ], [ %.sroa.88.sroa.19.0.extract.shift204.i, %bb.me ], [ 0, %bb.bc ], [ %.sroa.88.sroa.19.0.extract.shift186.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.88.sroa.19.0.extract.shift184.i, %bb.my ], [ 0, %bb.bf ], [ %.sroa.88.sroa.19.0.extract.shift198.i, %bb.nb ], [ %.sroa.88.sroa.19.0.extract.shift196.i, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.88.sroa.19.0.extract.shift194.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.88.sroa.19.0.extract.shift.i, %bb.nc ], [ 0, %bb.ne ], [ %.sroa.88.sroa.19.0.extract.shift192.i, %bb.nf ], [ %.sroa.88.sroa.19.0.extract.shift188.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ 0, %bb.nh ], [ %.sroa.88.sroa.19.0.extract.shift190.i, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.98.0.i = phi i24 [ %.sroa.6.sroa.0.i.i.sroa.4.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.98.16.copyload.i, %.noexc13.i ], [ %.sroa.98.16.copyload69.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ %.val50.i.i, %bb.lx ], [ %.sroa.98.40.copyload72.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.98.32.copyload71.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.98.32.copyload.i, %bb.my ], [ undef, %bb.bf ], [ %.val49.i.i, %bb.nb ], [ %i.lj, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.98.2.insert.insert.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.98.8.copyload.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.6.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.0.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.116.sroa.15.sroa.0.0.i = phi i64 [ %.sroa.116.sroa.15.0.extract.shift144.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.ah ], [ %.sroa.116.sroa.15.0.extract.shift.i, %.noexc13.i ], [ %.sroa.116.sroa.15.0.extract.shift152.i, %bb.lk ], [ 0, %bb.lr ], [ 0, %bb.lu ], [ 0, %bb.lx ], [ %.sroa.116.sroa.15.0.extract.shift150.i, %bb.me ], [ 0, %bb.bc ], [ %.sroa.116.sroa.15.0.extract.shift148.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.116.sroa.15.0.extract.shift156.i, %bb.my ], [ 0, %bb.bf ], [ 0, %bb.nb ], [ 0, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.0.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.116.sroa.15.0.extract.shift154.i, %bb.nc ], [ 0, %bb.ne ], [ 0, %bb.nf ], [ %.sroa.116.sroa.15.0.extract.shift142.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ 0, %bb.nh ], [ %.sroa.116.sroa.15.0.extract.shift146.i, %bb.oh ], [ 0, %bb.d ], !dbg !105074
  %.sroa.116.sroa.14.0.i = phi i8 [ %.sroa.116.sroa.14.0.extract.trunc129.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.116.sroa.14.0.extract.trunc.i, %.noexc13.i ], [ %.sroa.116.sroa.14.0.extract.trunc137.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.116.sroa.14.0.extract.trunc135.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.116.sroa.14.0.extract.trunc133.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.116.sroa.14.0.extract.trunc141.i, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.44.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.116.sroa.14.0.extract.trunc139.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.116.sroa.14.0.extract.trunc127.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.116.sroa.14.0.extract.trunc131.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.116.sroa.13.0.i = phi i8 [ %.sroa.116.sroa.13.0.extract.trunc113.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.116.sroa.13.0.extract.trunc.i, %.noexc13.i ], [ %.sroa.116.sroa.13.0.extract.trunc121.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.116.sroa.13.0.extract.trunc119.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.116.sroa.13.0.extract.trunc117.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.116.sroa.13.0.extract.trunc125.i, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.43.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.116.sroa.13.0.extract.trunc123.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.116.sroa.13.0.extract.trunc111.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.116.sroa.13.0.extract.trunc115.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.116.sroa.0.0.i = phi i8 [ %.sroa.116.sroa.0.0.extract.trunc103.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.116.sroa.0.0.extract.trunc.i, %.noexc13.i ], [ %.sroa.116.sroa.0.0.extract.trunc107.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.116.sroa.0.0.extract.trunc106.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.116.sroa.0.0.extract.trunc105.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.116.sroa.0.0.extract.trunc109.i, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.42171.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.116.sroa.0.0.extract.trunc108.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.116.sroa.0.0.extract.trunc102.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.116.sroa.0.0.extract.trunc104.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.156101.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %i.tl, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.155.0.i = phi i32 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.15189.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.154.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.14188.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.153.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.13187.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.152100.0.i = phi ptr [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.12186.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.151.0.i = phi ptr [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %i.abd, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.40.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.150.0.i = phi ptr [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %i.abl, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.39.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.14999.0.i = phi ptr [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %i.abe, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.38.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.148.0.i = phi i8 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %i.aau, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.36.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.14798.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.0.0.i12.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.35.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.146.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.146.208.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.lt, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.32.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.14497.0.i = phi ptr [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.14497.208.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.46.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.31.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.143.0.i = phi i8 [ %i.fq, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.143.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.22.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.29.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.143.184.copyload.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.142.0.i = phi i8 [ %i.gz, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.142.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.21.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.28.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.142.184.copyload.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.141.0.i = phi i8 [ %i.gx, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.141.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.20.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.27.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.141.184.copyload.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.140.0.i = phi ptr [ %i.fh, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.140.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.19.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.26.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.140.184.copyload.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.136.0.i = phi i64 [ %i.ha, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.136.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.15.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.23.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %i.zm, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.134.0.i = phi ptr [ %i.fo, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.134.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.14.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.22.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %i.zl, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.132.0.i = phi i8 [ %.sroa.6.sroa.6.0.i.i.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.132.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.12.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.20.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.19.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.13196.0.i = phi ptr [ %.sroa.6.sroa.5.0.i.i.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %.sroa.13196.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.11.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.19.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.18.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.128.0.i = phi i8 [ %.sroa.6.sroa.0.i.i.sroa.14.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.128.16.copyload.i, %.noexc13.i ], [ %.sroa.128.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.128.64.copyload.i, %bb.me ], [ undef, %bb.bc ], [ %i.agz, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.7.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.15.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.14.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.126.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.13.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.126.16.copyload.i, %.noexc13.i ], [ %.sroa.126.96.copyload.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.126.64.copyload.i, %bb.me ], [ undef, %bb.bc ], [ %i.ka, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.6.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.14.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.13.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.125.0.i = phi ptr [ %.sroa.6.sroa.0.i.i.sroa.12.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.125.16.copyload.i, %.noexc13.i ], [ %.sroa.125.64.copyload94.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.125.64.copyload.i, %bb.me ], [ undef, %bb.bc ], [ %i.ahe, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.5.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.13.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.12.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.122.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.11.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.122.16.copyload.i, %.noexc13.i ], [ %.sroa.122.64.copyload92.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.122.64.copyload.i, %bb.me ], [ undef, %bb.bc ], [ %i.aho, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %i.kg, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.45.i.sroa.4.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.rw, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.12.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.11.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.111.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.9.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.111.16.copyload.i, %.noexc13.i ], [ %.sroa.111.64.copyload88.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.111.64.copyload.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.111.56.copyload.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %i.aid, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.42.sroa.6.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.rz, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.10.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.8.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.107.0.i = phi i64 [ %.sroa.6.sroa.0.i.i.sroa.8.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.107.16.copyload.i, %.noexc13.i ], [ %.sroa.107.16.copyload86.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.107.40.copyload87.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.107.56.copyload.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %i.aic, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ %i.la, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.42.sroa.0.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.107.8.copyload.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.9.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.7.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.10679.0.i = phi i8 [ %.sroa.6.sroa.0.i.i.sroa.7.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.10679.16.copyload.i, %.noexc13.i ], [ %.sroa.10679.16.copyload81.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.10679.40.copyload84.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.10679.32.copyload83.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.10679.32.copyload.i, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.41166.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.10679.8.copyload.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.8.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.6.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.106.0.i = phi i32 [ %.sroa.6.sroa.0.i.i.sroa.6.0.i, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %.sroa.106.16.copyload.i, %.noexc13.i ], [ %.sroa.106.16.copyload75.i, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %.sroa.106.40.copyload78.i, %bb.me ], [ undef, %bb.bc ], [ %.sroa.106.32.copyload77.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.106.32.copyload.i, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.05.i.sroa.7.i.sroa.7.0.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.106.8.copyload.i, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %.sroa.09.i.sroa.9.i.sroa.7.0.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %.sroa.12201.sroa.6.i.sroa.5.0.i, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.26.0.i = phi i64 [ undef, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.he, %bb.ah ], [ undef, %.noexc13.i ], [ undef, %bb.lk ], [ %i.agc, %bb.lr ], [ %i.agh, %bb.lu ], [ %.sroa.26.8.copyload35.i, %bb.lx ], [ %.sroa.26.8.copyload32.i, %bb.me ], [ %.sroa.26.8.copyload36.i, %bb.bc ], [ %.sroa.02.0.i.i, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %.sroa.26.8.copyload34.i, %bb.my ], [ %i.km, %bb.bf ], [ %.sroa.26.8.copyload33.i, %bb.nb ], [ %i.lk, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0146.0.i.i, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.26.8.copyload.i, %bb.nc ], [ %i.sk, %bb.ne ], [ %i.tb, %bb.nf ], [ %i.yb, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.yk, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ %i.aiu, %bb.nh ], [ undef, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %.sroa.031.0.i = phi i64 [ -9223372036854775804, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ -9223372036854775803, %bb.ah ], [ -9223372036854775802, %.noexc13.i ], [ -9223372036854775801, %bb.lk ], [ -9223372036854775800, %bb.lr ], [ -9223372036854775799, %bb.lu ], [ -9223372036854775798, %bb.lx ], [ -9223372036854775797, %bb.me ], [ -9223372036854775796, %bb.bc ], [ -9223372036854775795, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ -9223372036854775794, %bb.my ], [ -9223372036854775793, %bb.bf ], [ -9223372036854775792, %bb.nb ], [ -9223372036854775791, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ -9223372036854775790, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ -9223372036854775789, %bb.nc ], [ -9223372036854775788, %bb.ne ], [ -9223372036854775787, %bb.nf ], [ %.sroa.0175.0.i.i, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ -9223372036854775785, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ -9223372036854775784, %bb.nh ], [ -9223372036854775783, %bb.oh ], [ -9223372036854775782, %bb.d ], !dbg !105005
  %i.akr = phi <2 x i64> [ %i.gv, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ %i.hm, %.noexc13.i ], [ %i.afp, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ %i.agr, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.ro, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %i.xz, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %i.akl, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  %i.aks = phi <2 x ptr> [ %i.hc, %_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans6python6sourceNtB2_13PythonOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.ah ], [ undef, %.noexc13.i ], [ %i.afq, %bb.lk ], [ undef, %bb.lr ], [ undef, %bb.lu ], [ undef, %bb.lx ], [ undef, %bb.me ], [ undef, %bb.bc ], [ undef, %_RNvXs4_NtCsfcROwRM8ZtH_11polars_plan8callbackINtB5_12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB11_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ undef, %bb.my ], [ undef, %bb.bf ], [ undef, %bb.nb ], [ undef, %_RNvXs4_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_17DistinctOptionsIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ %i.rp, %_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.nc ], [ undef, %bb.ne ], [ undef, %bb.nf ], [ %i.ya, %_RNvXsx_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_10SinkTypeIRNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit84.i.i ], [ undef, %bb.nh ], [ %i.akq, %bb.oh ], [ undef, %bb.d ], !dbg !105074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.16.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.21.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.30.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.33.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.37.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09.i.sroa.9.i.sroa.42.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i.i.sroa.15.i), !dbg !106004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i.i), !dbg !106004
  %i.akt = getelementptr inbounds nuw [368 x i8], ptr %i.ct, i64 %.sroa.7.0849.i, !dbg !106005 ; 44 uses
  %.sroa.44.sroa.25.0.insert.shift.i = shl nuw i64 %.sroa.44.sroa.25.sroa.0.0.i, 16, !dbg !105073
  %.sroa.44.sroa.0.0.insert.ext.i = zext i16 %.sroa.44.sroa.0.0.i to i64, !dbg !105073
  %.sroa.44.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.44.sroa.25.0.insert.shift.i, %.sroa.44.sroa.0.0.insert.ext.i, !dbg !105073
  %.sroa.61.sroa.0.sroa.24.0.insert.ext.i = shl i32 %.sroa.61.sroa.0.sroa.24.sroa.0.0.i, 8, !dbg !105073
  %.sroa.61.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.sroa.61.sroa.0.sroa.0.0.i to i32, !dbg !105073
  %.sroa.61.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.61.sroa.0.sroa.24.0.insert.ext.i, %.sroa.61.sroa.0.sroa.0.0.insert.ext.i, !dbg !105073
  %.sroa.61.sroa.0.0.insert.ext.i = zext i32 %.sroa.61.sroa.0.sroa.0.0.insert.insert.i to i64, !dbg !105073
  %.sroa.61.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.61.sroa.24.0.i, %.sroa.61.sroa.0.0.insert.ext.i, !dbg !105073
  %.sroa.75.sroa.19.0.insert.shift.i = shl nuw i64 %.sroa.75.sroa.19.sroa.0.0.i, 8, !dbg !105073
  %.sroa.75.sroa.0.0.insert.ext.i = zext i8 %.sroa.75.sroa.0.0.i to i64, !dbg !105073
  %.sroa.75.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.75.sroa.19.0.insert.shift.i, %.sroa.75.sroa.0.0.insert.ext.i, !dbg !105073
  %.sroa.88.sroa.0.0.insert.ext.i = zext i24 %.sroa.88.sroa.0.0.i to i64, !dbg !105073
  %.sroa.88.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.88.sroa.19.sroa.0.0.i, %.sroa.88.sroa.0.0.insert.ext.i, !dbg !105073
  %.sroa.116.sroa.15.0.insert.shift.i = shl nuw i64 %.sroa.116.sroa.15.sroa.0.0.i, 24, !dbg !105073
  %.sroa.116.sroa.14.0.insert.ext.i = zext i8 %.sroa.116.sroa.14.0.i to i64, !dbg !105073
  %.sroa.116.sroa.14.0.insert.shift.i = shl nuw nsw i64 %.sroa.116.sroa.14.0.insert.ext.i, 16, !dbg !105073
  %.sroa.116.sroa.14.0.insert.insert.i = or disjoint i64 %.sroa.116.sroa.14.0.insert.shift.i, %.sroa.116.sroa.15.0.insert.shift.i, !dbg !105073
  %.sroa.116.sroa.13.0.insert.ext.i = zext i8 %.sroa.116.sroa.13.0.i to i64, !dbg !105073
  %.sroa.116.sroa.13.0.insert.shift.i = shl nuw nsw i64 %.sroa.116.sroa.13.0.insert.ext.i, 8, !dbg !105073
  %.sroa.116.sroa.13.0.insert.insert.i = or disjoint i64 %.sroa.116.sroa.14.0.insert.insert.i, %.sroa.116.sroa.13.0.insert.shift.i, !dbg !105073
  %.sroa.116.sroa.0.0.insert.ext.i = zext i8 %.sroa.116.sroa.0.0.i to i64, !dbg !105073
  %.sroa.116.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.116.sroa.13.0.insert.insert.i, %.sroa.116.sroa.0.0.insert.ext.i, !dbg !105073
  store i64 %.sroa.031.0.i, ptr %i.akt, align 16, !dbg !106006, !noalias !104575
  %.sroa.4477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 8, !dbg !106006
  store i64 %.sroa.26.0.i, ptr %.sroa.4477.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.5478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 16, !dbg !106006
  store i64 %.sroa.44.sroa.0.0.insert.insert.i, ptr %.sroa.5478.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.6479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 24, !dbg !106006
  store i64 %.sroa.61.sroa.0.0.insert.insert.i, ptr %.sroa.6479.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.7480.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 32, !dbg !106006
  store i64 %.sroa.75.sroa.0.0.insert.insert.i, ptr %.sroa.7480.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.8481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 40, !dbg !106006
  store i64 %.sroa.88.sroa.0.0.insert.insert.i, ptr %.sroa.8481.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.9482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 48, !dbg !106006
  store i24 %.sroa.98.0.i, ptr %.sroa.9482.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.10483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 51, !dbg !106006
  store i32 %.sroa.106.0.i, ptr %.sroa.10483.0..sroa_idx.i, align 1, !dbg !106006, !noalias !104575
  %.sroa.11484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 55, !dbg !106006
  store i8 %.sroa.10679.0.i, ptr %.sroa.11484.0..sroa_idx.i, align 1, !dbg !106006, !noalias !104575
  %.sroa.12485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 56, !dbg !106006
  store i64 %.sroa.107.0.i, ptr %.sroa.12485.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.13486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 64, !dbg !106006
  store i64 %.sroa.111.0.i, ptr %.sroa.13486.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.14487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 72, !dbg !106006
  store i64 %.sroa.116.sroa.0.0.insert.insert.i, ptr %.sroa.14487.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.15488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 80, !dbg !106006
  store i64 %.sroa.122.0.i, ptr %.sroa.15488.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.16489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 88, !dbg !106006
  store ptr %.sroa.125.0.i, ptr %.sroa.16489.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.17490.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 96, !dbg !106006
  store i64 %.sroa.126.0.i, ptr %.sroa.17490.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.18491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 104, !dbg !106006
  store i8 %.sroa.128.0.i, ptr %.sroa.18491.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.19492.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 105, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.19492.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.129.i, i64 23, i1 false), !dbg !106006, !noalias !104575
  %.sroa.20493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 128, !dbg !106006
  store <2 x i64> %i.akr, ptr %.sroa.20493.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.22495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 144, !dbg !106006
  store ptr %.sroa.13196.0.i, ptr %.sroa.22495.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.23496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 152, !dbg !106006
  store i8 %.sroa.132.0.i, ptr %.sroa.23496.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.24497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 153, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.24497.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.133.i, i64 7, i1 false), !dbg !106006, !noalias !104575
  %.sroa.25498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 160, !dbg !106006
  store ptr %.sroa.134.0.i, ptr %.sroa.25498.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.26499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 168, !dbg !106006
  store i64 %.sroa.136.0.i, ptr %.sroa.26499.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.27500.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 176, !dbg !106006
  store <2 x ptr> %i.aks, ptr %.sroa.27500.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.29502.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 192, !dbg !106006
  store ptr %.sroa.140.0.i, ptr %.sroa.29502.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.30503.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 200, !dbg !106006
  store i8 %.sroa.141.0.i, ptr %.sroa.30503.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.31504.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 201, !dbg !106006
  store i8 %.sroa.142.0.i, ptr %.sroa.31504.0..sroa_idx.i, align 1, !dbg !106006, !noalias !104575
  %.sroa.32505.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 202, !dbg !106006
  store i8 %.sroa.143.0.i, ptr %.sroa.32505.0..sroa_idx.i, align 2, !dbg !106006, !noalias !104575
  %.sroa.33506.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 203, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.33506.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.144.i, i64 5, i1 false), !dbg !106006, !noalias !104575
  %.sroa.34507.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 208, !dbg !106006
  store ptr %.sroa.14497.0.i, ptr %.sroa.34507.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.35508.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 216, !dbg !106006
  store i64 %.sroa.146.0.i, ptr %.sroa.35508.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.36509.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 224, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.36509.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.147.i, i64 32, i1 false), !dbg !106006, !noalias !104575
  %.sroa.37510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 256, !dbg !106006
  store i64 %.sroa.14798.0.i, ptr %.sroa.37510.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.38511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 264, !dbg !106006
  store i8 %.sroa.148.0.i, ptr %.sroa.38511.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.39512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 265, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.39512.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.149.i, i64 7, i1 false), !dbg !106006, !noalias !104575
  %.sroa.40513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 272, !dbg !106006
  store ptr %.sroa.14999.0.i, ptr %.sroa.40513.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.41514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 280, !dbg !106006
  store ptr %.sroa.150.0.i, ptr %.sroa.41514.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.42515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 288, !dbg !106006
  store ptr %.sroa.151.0.i, ptr %.sroa.42515.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.43516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 296, !dbg !106006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.43516.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.152.i, i64 32, i1 false), !dbg !106006, !noalias !104575
  %.sroa.44517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 328, !dbg !106006
  store ptr %.sroa.152100.0.i, ptr %.sroa.44517.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.45518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 336, !dbg !106006
  store i64 %.sroa.153.0.i, ptr %.sroa.45518.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.46519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 344, !dbg !106006
  store i64 %.sroa.154.0.i, ptr %.sroa.46519.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %.sroa.47520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 352, !dbg !106006
  store i32 %.sroa.155.0.i, ptr %.sroa.47520.0..sroa_idx.i, align 16, !dbg !106006, !noalias !104575
  %.sroa.49522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akt, i64 360, !dbg !106006
  store i64 %.sroa.156101.0.i, ptr %.sroa.49522.0..sroa_idx.i, align 8, !dbg !106006, !noalias !104575
  %i.aku = icmp eq i64 %i.el, 0, !dbg !104999
  br i1 %i.aku, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit, label %bb.c, !dbg !104999

bb.oj:                                            ; preds = %bb.ok
  %i.akv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !106007, !noalias !104575
  unreachable, !dbg !106007

bb.ok:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i, %bb.mt, %bb.ms, %bb.mf, %bb.mc, %.body.i.i, %bb.gj, %.body.i.i.i.i, %bb.fo, %bb.eg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %bb.dr, %bb.dq, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.cl, %bb.ci, %bb.ch, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn28.i.i, %bb.mt ], [ %.pn.pn.pn.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %i.rb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5apply9UdfSchemaEL_EEECs2g09Ig8GZd6_13polars_stream.exit.i.i.i ], [ %i.qe, %bb.dq ], [ %.pn.pn.i.i.i, %bb.cl ], [ %i.om, %bb.ch ], [ %i.po, %bb.dg ], [ %i.pz, %bb.dl ], [ %i.om, %bb.ci ], [ %i.po, %bb.dh ], [ %i.pz, %bb.dm ], [ %i.qe, %bb.dr ], [ %i.rb, %bb.eg ], [ %i.vf, %bb.fo ], [ %.pn.pn.pn.i.i.i.i, %bb.gj ], [ %.pn38.pn.pn.pn.pn.i.i, %.body.i.i ], [ %.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11unoptimized14FunctionArgMapECs2g09Ig8GZd6_13polars_stream.exit.i.i ], [ %i.agq, %bb.mc ], [ %i.ags, %bb.mf ], [ %.pn28.i.i, %bb.ms ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.0849.i, ptr %i.cw, align 8, !dbg !106008, !noalias !104575
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IREECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.ci) #32
          to label %bb.ol unwind label %bb.oj, !dbg !106009, !noalias !104575

bb.ol:                                            ; preds = %bb.ok
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !106007

_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir2IRNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.oi, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i
  store i64 %i.cm, ptr %i.cw, align 8, !dbg !106010, !noalias !104575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !dbg !106011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !106009, !noalias !104575
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.129.i), !dbg !106012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.133.i), !dbg !106012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.144.i), !dbg !106012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.147.i), !dbg !106012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.149.i), !dbg !106012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.152.i), !dbg !106012
  ret void, !dbg !106013
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !106014 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 4 uses
  %i.h = alloca [48 x i8], align 16               ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [96 x i8], align 16               ; 20 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [112 x i8], align 16              ; 17 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [6 x i8], align 2                 ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 13 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 16               ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.81.i = alloca [22 x i8], align 8         ; 5 uses
  %.sroa.54.i = alloca [31 x i8], align 1         ; 9 uses
  %.sroa.58.i = alloca [6 x i8], align 8          ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !106494
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !106495
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !106495, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !dbg !106496, !noundef !2876 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81.i), !dbg !106497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !106497, !noalias !106417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !106498, !noalias !106417
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef range(i64 0, 64051194700380388) %i.ac, i1 noundef zeroext false, i64 noundef 16, i64 noundef 144), !dbg !106498, !noalias !106417
  %i.ad = load i64, ptr %i.x, align 8, !dbg !106498, !range !2959, !noalias !106417, !noundef !2876
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !106499
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !106500
  %i.ag = load i64, ptr %i.af, align 8, !dbg !106500, !range !3013, !noalias !106417, !noundef !2876 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !106500 ; 2 uses
  br i1 %i.ae, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !106499, !prof !2900

bb.b:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !106501, !noalias !106417
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #34, !dbg !106502, !noalias !106417
  unreachable, !dbg !106502

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.a
  %i.aj = load ptr, ptr %i.ah, align 8, !dbg !106503, !noalias !106417, !nonnull !2876, !noundef !2876 ; 2 uses
  %i.ak = icmp ule i64 %i.ac, %i.ag, !dbg !106504
  tail call void @llvm.assume(i1 %i.ak), !dbg !106505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !106506, !noalias !106417
  store i64 %i.ag, ptr %i.y, align 8, !dbg !106507, !noalias !106417
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !106507
  store ptr %i.aj, ptr %i.al, align 8, !dbg !106507, !noalias !106417
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !106507 ; 3 uses
  store i64 0, ptr %i.am, align 8, !dbg !106507, !noalias !106417
  %i.an = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %i.ac, !dbg !106508
  %i.ao = icmp eq i64 %i.ag, 0, !dbg !106509
  br i1 %i.ao, label %_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i, !dbg !106509

end_hunk_3
