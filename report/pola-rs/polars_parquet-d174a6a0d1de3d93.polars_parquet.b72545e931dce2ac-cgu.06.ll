Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.06?download=true
inline.NumInlined: 2903
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_dtype:bb.a
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f, %bb.g, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %bb.d, %bb.y
  %.sroa.08.089 = phi ptr [ %i.ac, %bb.y ], [ %i.i, %bb.d ] ; 2 uses
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field(ptr noalias noundef align 8 dereferenceable(72) %.sroa.08.089)
          to label %bb.y unwind label %.loopexit88, !dbg !33052

bb.y:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.089, i64 72, !dbg !33053 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l, !dbg !33028
  br i1 %i.ad, label %.loopexit, label %.lr.ph, !dbg !33009

bb.z:                                             ; preds = %bb.ab
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store i8 29, ptr %1, align 8, !dbg !33054
  store ptr %i.o, ptr %i.n, align 8, !dbg !33054
  br label %.thread, !dbg !33055

bb.aa:                                            ; preds = %bb.e
  %i.af = load i8, ptr %1, align 8, !dbg !33054, !range !1835, !noundef !1738
  switch i8 %i.af, label %bb.ab [
    i8 27, label %bb.ac
    i8 31, label %bb.ac
  ], !dbg !33054

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.ac unwind label %bb.z, !dbg !33054

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.aa
  store i8 29, ptr %1, align 8, !dbg !33054
  store ptr %i.o, ptr %i.n, align 8, !dbg !33054
  br label %.loopexit, !dbg !33055

bb.ad:                                            ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECsfISxE4fmY1Y_14polars_parquet(ptr %i.o) #33
          to label %bb.k unwind label %bb.w, !dbg !33055

bb.ae:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33056
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.q)
          to label %bb.ag unwind label %bb.af, !dbg !33057

bb.af:                                            ; preds = %bb.ae
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !33057
  br label %bb.k, !dbg !33056

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !33057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33056
  br label %.loopexit, !dbg !33058

bb.ah:                                            ; preds = %bb.a, %bb.a
  %.sroa.010.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33059 ; 3 uses
  %i.ai = load <2 x i64>, ptr %.sroa.010.0.in, align 8, !dbg !33059 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %1)
          to label %bb.ai unwind label %bb.aj, !dbg !33060

bb.ai:                                            ; preds = %bb.ah
  store i8 33, ptr %1, align 8, !dbg !33060
  store <2 x i64> %i.ai, ptr %.sroa.010.0.in, align 8, !dbg !33060
  br label %.loopexit, !dbg !33061

bb.aj:                                            ; preds = %bb.ah
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %.sroa.011.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !33059
  store i8 33, ptr %1, align 8, !dbg !33060
  %i.ak = extractelement <2 x i64> %i.ai, i64 0, !dbg !33060
  store i64 %i.ak, ptr %.sroa.010.0.in, align 8, !dbg !33060
  %i.al = extractelement <2 x i64> %i.ai, i64 1, !dbg !33060
  store i64 %i.al, ptr %.sroa.011.0.in, align 8, !dbg !33060
  br label %.thread, !dbg !33062

bb.ak:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33063
  %i.am = load ptr, ptr %i.r, align 8, !dbg !33064, !nonnull !1738, !noundef !1738
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.am)
          to label %bb.am unwind label %bb.al, !dbg !33064

bb.al:                                            ; preds = %bb.ak
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.r, align 8, !dbg !33064, !nonnull !1738, !noundef !1738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !33064
  br label %bb.k, !dbg !33063

bb.am:                                            ; preds = %bb.ak
  %i.ap = load ptr, ptr %i.r, align 8, !dbg !33064, !nonnull !1738, !noundef !1738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !33064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33063
  br label %.loopexit, !dbg !33065

.thread:                                          ; preds = %bb.r, %bb.z, %bb.j, %bb.n, %bb.q, %bb.aj, %bb.k
  %.pn5667 = phi { ptr, i32 } [ %.pn56.ph.ph, %bb.k ], [ %i.aj, %bb.aj ], [ %i.v, %bb.q ], [ %i.u, %bb.n ], [ %i.t, %bb.j ], [ %i.w, %bb.r ], [ %i.ae, %bb.z ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %1) #33
          to label %bb.ap unwind label %bb.w, !dbg !33041

bb.an:                                            ; preds = %bb.k
  br i1 %.sroa.047.0.ph.ph, label %.invoke, label %bb.ap, !dbg !33041

bb.ao:                                            ; preds = %bb.k
  br i1 %.sroa.048.0.ph.ph, label %.invoke, label %bb.ap, !dbg !33041

bb.ap:                                            ; preds = %.invoke, %bb.ao, %bb.an, %.thread
  %.pn5666 = phi { ptr, i32 } [ %.pn56.ph.ph, %.invoke ], [ %.pn5667, %.thread ], [ %.pn56.ph.ph, %bb.ao ], [ %.pn56.ph.ph, %bb.an ]
  resume { ptr, i32 } %.pn5666, !dbg !33048

.invoke:                                          ; preds = %bb.an, %bb.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33041
  %.val = load ptr, ptr %i.aq, align 8, !dbg !33041, !nonnull !1738, !noundef !1738
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECsfISxE4fmY1Y_14polars_parquet(ptr %.val) #33
          to label %bb.ap unwind label %bb.w, !dbg !33041
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !33066 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 12 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !33194
  store i8 0, ptr %0, align 8, !dbg !33195
  %i.g = load i8, ptr %i.e, align 8, !dbg !33163, !range !1835, !noundef !1738
  switch i8 %i.g, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread [
    i8 24, label %bb.b
    i8 32, label %bb.c
  ], !dbg !33193

_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %.noexc, %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit, %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !33196
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_dtype(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.i, !dbg !33197

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !33198
  %i.i = load ptr, ptr %i.h, align 8, !dbg !33198, !noundef !1738 ; 2 uses
  %.not22 = icmp eq ptr %i.i, null, !dbg !33198
  br i1 %.not22, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread, label %bb.d, !dbg !33199

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !33200
  %i.k = load i8, ptr %i.j, align 1, !dbg !33200, !range !2189, !noundef !1738 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !33201
  %i.m = load ptr, ptr %i.l, align 8, !dbg !33201, !nonnull !1738, !align !1780, !noundef !1738 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !33202
  %i.o = load i8, ptr %i.n, align 2, !dbg !33202, !range !1991, !noundef !1738
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !33203 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !33203, !noundef !1738 ; 2 uses
  %.not20 = icmp eq ptr %i.q, null, !dbg !33203
  br i1 %.not20, label %bb.q, label %bb.l, !dbg !33204

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33205
  %i.s = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field6PL_KEY, align 8, !dbg !33206, !nonnull !1738, !noundef !1738
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field6PL_KEY, i64 8), align 8, !dbg !33206, !noundef !1738
  %i.u = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t)
          to label %.noexc unwind label %bb.i, !dbg !33207 ; 5 uses

.noexc:                                           ; preds = %bb.d
  %.not.i = icmp eq ptr %i.u, null, !dbg !33208
  br i1 %.not.i, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread, label %bb.e, !dbg !33209

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 23, !dbg !33210
  %i.w = load i8, ptr %i.v, align 1, !dbg !33210, !range !1911, !alias.scope !33170, !noundef !1738 ; 2 uses
  %i.x = icmp ugt i8 %i.w, -41, !dbg !33211
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !33211

bb.f:                                             ; preds = %bb.e
  %i.y = add i8 %i.w, 64, !dbg !33212
  %i.z = tail call i8 @llvm.umin.i8(i8 %i.y, i8 24), !dbg !33213
  %.sroa.0.0.i.i.i = zext nneg i8 %i.z to i64, !dbg !33213
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !33214

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.u, align 8, !dbg !33215, !alias.scope !33170, !noundef !1738
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !33216
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !33216, !alias.scope !33170, !noundef !1738
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !33217

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.01.0.i.i = phi i64 [ %i.ac, %bb.g ], [ %.sroa.0.0.i.i.i, %bb.f ], !dbg !33218 ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.u, %bb.f ], !dbg !33219
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field16MAINTAIN_PL_TYPE, i64 8), align 8, !dbg !33220, !noundef !1738
  %i.ae = icmp eq i64 %.sroa.01.0.i.i, %i.ad, !dbg !33221
  br i1 %i.ae, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread, !dbg !33221

bb.h:                                             ; preds = %bb.p, %bb.ah, %bb.ac, %bb.i
  %.pn = phi { ptr, i32 } [ %i.br, %bb.ac ], [ %i.ah, %bb.i ], [ %lpad.phi57, %bb.ah ], [ %lpad.thr_comm.split-lp, %bb.p ]
  %.sroa.012.0 = phi i1 [ %.sroa.012.2, %bb.ac ], [ %.sroa.012.1, %bb.i ], [ true, %bb.ah ], [ true, %bb.p ], !dbg !33222
  %i.af = load i8, ptr %i.e, align 8, !dbg !33223, !range !1835
  %i.ag = icmp ne i8 %i.af, 32, !dbg !33223
  %or.cond.not = select i1 %.sroa.012.0, i1 %i.ag, i1 false, !dbg !33223
  br i1 %or.cond.not, label %bb.an, label %bb.am, !dbg !33223

bb.i:                                             ; preds = %bb.d, %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread
  %.sroa.012.1 = phi i1 [ false, %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread ], [ true, %bb.d ], !dbg !33222
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.ai = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field16MAINTAIN_PL_TYPE, align 8, !dbg !33220, !nonnull !1738, !noundef !1738
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i.i, ptr nonnull %i.ai, i64 %.sroa.01.0.i.i), !dbg !33224
  %i.aj = icmp eq i32 %bcmp.i, 0, !dbg !33224
  br i1 %i.aj, label %bb.j, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit.thread, !dbg !33225

bb.j:                                             ; preds = %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields0_0Bb_.exit
  store i8 24, ptr %i.f, align 8, !dbg !33226
  br label %bb.k, !dbg !33226

bb.k:                                             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.ad unwind label %bb.ac, !dbg !33227

bb.l:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !33228 ; 4 uses
  %i.al = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, align 8, !dbg !33229, !nonnull !1738, !noundef !1738
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, i64 8), align 8, !dbg !33229, !noundef !1738
  %i.an = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am)
          to label %.noexc30 unwind label %bb.ai, !dbg !33230

.noexc30:                                         ; preds = %bb.l
  %.not.i28 = icmp eq ptr %i.an, null, !dbg !33231
  br i1 %.not.i28, label %bb.m, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit, !dbg !33232

bb.m:                                             ; preds = %.noexc30
  %i.ao = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, align 8, !dbg !33233, !nonnull !1738, !noundef !1738
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, i64 8), align 8, !dbg !33233, !noundef !1738
  %i.aq = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.ap)
          to label %.noexc31 unwind label %bb.ai, !dbg !33234

.noexc31:                                         ; preds = %bb.m
  %.not1.i = icmp eq ptr %i.aq, null, !dbg !33235
  br i1 %.not1.i, label %bb.n, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit, !dbg !33236

bb.n:                                             ; preds = %.noexc31
  %i.ar = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, align 8, !dbg !33237, !nonnull !1738, !noundef !1738
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, i64 8), align 8, !dbg !33237, !noundef !1738
  %i.at = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.as)
          to label %.noexc32 unwind label %bb.ai, !dbg !33238

.noexc32:                                         ; preds = %bb.n
  %.not2.i = icmp eq ptr %i.at, null, !dbg !33239
  br i1 %.not2.i, label %bb.o, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit, !dbg !33240

bb.o:                                             ; preds = %.noexc32
  %i.au = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, align 8, !dbg !33241, !nonnull !1738, !noundef !1738
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, i64 8), align 8, !dbg !33241, !noundef !1738
  %i.aw = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av)
          to label %.noexc33 unwind label %bb.ai, !dbg !33242

.noexc33:                                         ; preds = %bb.o
  %i.ax = icmp ne ptr %i.aw, null, !dbg !33243
  br label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit, !dbg !33232

bb.p:                                             ; preds = %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit, %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h, !dbg !33188

_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit: ; preds = %.noexc33, %.noexc32, %.noexc31, %.noexc30
  %.sroa.0.0.i29 = phi i1 [ %i.ax, %.noexc33 ], [ true, %.noexc32 ], [ true, %.noexc31 ], [ true, %.noexc30 ], !dbg !33244
  %.off = add nsw i8 %i.k, -5
  %switch = icmp ult i8 %.off, 3
  %or.cond = and i1 %switch, %.sroa.0.0.i29, !dbg !33245
  br i1 %or.cond, label %bb.r, label %bb.q, !dbg !33245

bb.q:                                             ; preds = %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit, %bb.c
  %i.ay = load i8, ptr %i.m, align 8, !dbg !33246, !range !1835, !noundef !1738
  switch i8 %i.ay, label %bb.w [
    i8 25, label %bb.u
    i8 26, label %bb.u
    i8 39, label %bb.u
  ], !dbg !33247

bb.r:                                             ; preds = %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_field0Bb_.exit
  %i.az = load i8, ptr %i.m, align 8, !dbg !33248, !range !1835, !noundef !1738 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 39, !dbg !33249       ; 2 uses
  switch i8 %i.az, label %bb.s [
    i8 25, label %bb.t
    i8 26, label %bb.t
    i8 39, label %bb.t
  ], !dbg !33247

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.v, label %bb.w, !dbg !33250

bb.t:                                             ; preds = %bb.r, %bb.r, %bb.r
  br i1 %i.ba, label %bb.v, label %bb.u, !dbg !33250

bb.u:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33251
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !33251
  store i8 %i.k, ptr %i.bb, align 1, !dbg !33251
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33251
  store ptr %i.m, ptr %i.bc, align 8, !dbg !33251
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 2, !dbg !33251
  store i8 %i.o, ptr %i.bd, align 2, !dbg !33251
  store i8 32, ptr %i.c, align 8, !dbg !33251
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_dtype(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.aa unwind label %bb.p, !dbg !33252

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.be = load ptr, ptr %i.p, align 8, !dbg !33253, !noundef !1738 ; 2 uses
  %.not21 = icmp eq ptr %i.be, null, !dbg !33253
  br i1 %.not21, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit, label %bb.x, !dbg !33254

bb.w:                                             ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !33255
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_dtype(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.ab unwind label %bb.ag, !dbg !33256

bb.x:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !33257 ; 2 uses
  %i.bg = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, align 8, !dbg !33258, !nonnull !1738, !noundef !1738
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, i64 8), align 8, !dbg !33258, !noundef !1738
  %i.bi = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bh)
          to label %.noexc36 unwind label %bb.ai, !dbg !33259

.noexc36:                                         ; preds = %bb.x
  %.not.i34 = icmp eq ptr %i.bi, null, !dbg !33260
  br i1 %.not.i34, label %bb.y, label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit, !dbg !33261

bb.y:                                             ; preds = %.noexc36
  %i.bj = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, align 8, !dbg !33262, !nonnull !1738, !noundef !1738
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, i64 8), align 8, !dbg !33262, !noundef !1738
  %i.bl = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bk)
          to label %.noexc37 unwind label %bb.ai, !dbg !33263

.noexc37:                                         ; preds = %bb.y
  %i.bm = icmp ne ptr %i.bl, null, !dbg !33264
  %i.bn = zext i1 %i.bm to i8, !dbg !33265
  br label %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit, !dbg !33261

_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit: ; preds = %.noexc36, %.noexc37, %bb.v
  %.sroa.08.0 = phi i8 [ 0, %bb.v ], [ %i.bn, %.noexc37 ], [ 1, %.noexc36 ], !dbg !33266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33267
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !33267
  store i8 %i.k, ptr %i.bo, align 1, !dbg !33267
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !33267
  store ptr %i.m, ptr %i.bp, align 8, !dbg !33267
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !33267
  store i8 %.sroa.08.0, ptr %i.bq, align 2, !dbg !33267
  store i8 32, ptr %i.d, align 8, !dbg !33267
  invoke fastcc void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_dtype(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.z unwind label %bb.p, !dbg !33268

bb.z:                                             ; preds = %_RNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata13convert_fields_0Bb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33269
  br label %bb.k, !dbg !33270

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33271
  br label %bb.k, !dbg !33270

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33272
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 32, i64 noundef 8) #29, !dbg !33273
  br label %bb.k, !dbg !33188

bb.ac:                                            ; preds = %bb.ak, %bb.k
  %.sroa.012.2 = phi i1 [ false, %bb.ak ], [ true, %bb.k ], !dbg !33222
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !33227
  br label %bb.h, !dbg !33274

bb.ad:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !33227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33274
  %i.bs = load i8, ptr %i.e, align 8, !dbg !33223, !range !1835, !noundef !1738
  %i.bt = icmp eq i8 %i.bs, 32, !dbg !33223
  br i1 %i.bt, label %bb.ae, label %bb.af, !dbg !33223

bb.ae:                                            ; preds = %bb.al, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !33223
  ret void, !dbg !33275

bb.af:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.e), !dbg !33223
  br label %bb.ae, !dbg !33223

bb.ag:                                            ; preds = %bb.w
  %lpad.thr_comm.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah, !dbg !33188

bb.ah:                                            ; preds = %bb.ag, %bb.ai
  %lpad.phi57 = phi { ptr, i32 } [ %lpad.thr_comm52, %bb.ai ], [ %lpad.thr_comm.split-lp53, %bb.ag ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 32, i64 noundef 8) #29, !dbg !33276
  br label %bb.h, !dbg !33277

bb.ai:                                            ; preds = %bb.x, %bb.n, %bb.m, %bb.l, %bb.o, %bb.y
  %lpad.thr_comm52 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.m) #33
          to label %bb.ah unwind label %bb.aj, !dbg !33188

bb.aj:                                            ; preds = %bb.an, %bb.ai
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !33278
end_hunk_0
