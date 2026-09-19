Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNvXstQ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15ContextModifierNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt:switch.lookup
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXstQ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15ContextModifierNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXstQ_NtCs40MM8ukkVQd_9sqlparser3astNtB6_15ContextModifierNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10051, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXst_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs3PfUT229lOd_12object_store4path4PathENtB5_5Value6recordCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !416, !nonnull !416
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8679)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXst_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRReENtB5_5Value6recordCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !416, !nonnull !416
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8680)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXst_NtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5FieldNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.h = load <2 x i32>, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.d unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.f, %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %.pn, %bb.e ], [ %.pn, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251220)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !419, !alias.scope !251221, !noundef !416 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !251221, !nonnull !416, !noundef !416
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !251221
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx9, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.o, %bb.g ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #68, !noalias !251222
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 185
  %i.q = load i8, ptr %i.p, align 1, !range !480, !noundef !416
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load i8, ptr %i.r, align 8, !range !428, !noundef !416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.d)
  br label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.v = load i64, ptr %1, align 8, !range !442, !noundef !416
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load <2 x i64>, ptr %i.y, align 8        ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !noundef !416 ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.j ], [ undef, %bb.k ], [ %i.an, %bb.m ]
  %.sroa.5.sroa.0.0 = phi ptr [ undef, %bb.j ], [ null, %bb.k ], [ %i.aa, %bb.m ]
  %.sroa.0.0 = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 1, %bb.m ]
  %i.ab = phi <2 x i64> [ undef, %bb.j ], [ %i.z, %bb.k ], [ %i.z, %bb.m ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <2 x i32> %i.h, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.copyload, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.q, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.s, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ab, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load <4 x i32>, ptr %i.ac, align 8
  store <4 x i32> %i.al, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !416, !align !417, !noundef !416
  %i.ao = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 2, 24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.q, %bb.b, %bb.s, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dn, %bb.s ], [ %i.dl, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.s, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251243)
  %i.g = load i8, ptr %0, align 1, !alias.scope !251242, !noalias !251243, !noundef !416 ; 6 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp eq i64 %1, 2
  br i1 %i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 24) %1, i64 4) ; 4 uses
  %i.k = icmp samesign ult i64 %i.j, %1
  br i1 %i.k, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

4:                                                ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %5 = icmp ult i64 %i.j, %18
  br i1 %5, label %.lr.ph.1, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %4
  %6 = add nsw i64 %1, -2                         ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !alias.scope !251242, !noalias !251244, !noundef !416 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %8, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.1
  %i.l = icmp ult i64 %i.j, %6
  br i1 %i.l, label %.lr.ph.2, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %9 = add nsw i64 %1, -3                         ; 4 uses
  %10 = icmp samesign ugt i64 %1, 2
  br i1 %10, label %.lr.ph.a, label %19

.lr.ph.a:                                         ; preds = %.lr.ph.2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !alias.scope !251242, !noalias !251244, !noundef !416 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %12, %i.g
  br i1 %.not.i.not.i.i.2, label %13, label %bb.g

13:                                               ; preds = %.lr.ph.a
  %14 = icmp ult i64 %i.j, %9
  br i1 %14, label %.lr.ph.3, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %13
  %15 = add nsw i64 %1, -4                        ; 3 uses
  %.not = icmp eq i64 %1, 3
  br i1 %.not, label %19, label %bb.f

bb.f:                                             ; preds = %.lr.ph.3
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !alias.scope !251242, !noalias !251244, !noundef !416 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %17, %i.g
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit, label %bb.g

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.d
  %18 = add nsw i64 %1, -1                        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %18
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !251242, !noalias !251244, !noundef !416 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.n, %i.g
  br i1 %.not.i.not.i.i, label %4, label %bb.g

19:                                               ; preds = %.lr.ph.3, %.lr.ph.2
  %.lcssa39 = phi i64 [ %15, %.lr.ph.3 ], [ %9, %.lr.ph.2 ]
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa39, i64 noundef range(i64 2, 24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2500) #72, !noalias !251245
  unreachable

bb.g:                                             ; preds = %bb.f, %.lr.ph.a, %.lr.ph.1, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.lcssa42 = phi i8 [ %i.n, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %8, %.lr.ph.1 ], [ %12, %.lr.ph.a ], [ %17, %bb.f ]
  %.lcssa40 = phi i64 [ %18, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ %6, %.lr.ph.1 ], [ %9, %.lr.ph.a ], [ %15, %bb.f ]
  %i.o = add nuw nsw i64 %1, 15
  %i.p = icmp ult i64 %3, %i.o
  br i1 %i.p, label %.lr.ph.split.us.i.i, label %bb.h

.thread.i:                                        ; preds = %bb.c
  %i.q = icmp ult i64 %3, 17
  br i1 %i.q, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.r = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !251242, !noalias !251243
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !251246, !noalias !251247
  %i.v = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.v, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.w = add i64 %3, -1                           ; 2 uses
  %.not28.i.i35 = icmp ugt i64 %1, %i.w
  br i1 %.not28.i.i35, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i
  %i.x = phi i64 [ %i.aa, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ %i.w, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ]
  %.pn.i36 = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.pn.i36, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 24) %1), !alias.scope !251246, !noalias !251247
  %i.z = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.z, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfR8GmIBoxTX_21lance_namespace_impls.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.aa = add i64 %i.x, -1                        ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.aa
  br i1 %.not28.i.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h, %.thread93.i
  %i.ab = phi i8 [ %.pre.i, %.thread93.i ], [ %.lcssa42, %bb.h ]
  %i.ac = phi <16 x i8> [ %i.s, %.thread93.i ], [ %i.u, %bb.h ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %.lcssa40, %bb.h ] ; 6 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251246
  store ptr %2, ptr %i.a, align 8, !noalias !251246
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.ag, align 8, !noalias !251246
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !noalias !251246
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ai, align 8, !noalias !251246
  %i.aj = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aj, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.014.2.3.i, %bb.m ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.cf, %bb.m ] ; 2 uses
  %i.ak = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.al = add i64 %.sroa.06.0.lcssa.i, %i.ak
  %i.am = icmp uge i64 %i.al, %3
  %i.an = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond3105.i, label %._crit_edge.i, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.06.0103.i = phi i64 [ %i.cf, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !251243, !noalias !251248
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ap, align 1, !alias.scope !251243, !noalias !251248
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ac
  %i.ar = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.ae
  %i.as = and <16 x i1> %i.aq, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !251243, !noalias !251248
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !251243, !noalias !251248
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ac
  %i.ax = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.ae
  %i.ay = and <16 x i1> %i.aw, %i.ax
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !251243, !noalias !251248
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !251243, !noalias !251248
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ac
  %i.bd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.ae
  %i.be = and <16 x i1> %i.bc, %i.bd
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !251243, !noalias !251248
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !251243, !noalias !251248
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ac
  %i.bj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.ae
  %i.bk = and <16 x i1> %i.bi, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = icmp eq i16 %i.at, 0
  br i1 %i.bm, label %.preheader96.1.i, label %bb.n

.preheader96.1.i:                                 ; preds = %bb.n, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ck, %bb.n ] ; 3 uses
  %i.bn = icmp eq i16 %i.az, 0
  br i1 %i.bn, label %.preheader96.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader96.1.i
  %i.bo = or disjoint i64 %.sroa.06.0103.i, 16
  %i.bp = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bq = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bo, i16 noundef %i.az, i1 noundef zeroext %i.bp)
  %i.br = zext i1 %i.bq to i8
  %i.bs = or i8 %.sroa.014.2.i, %i.br
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.j, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.bs, %bb.j ] ; 3 uses
  %i.bt = icmp eq i16 %i.bf, 0
  br i1 %i.bt, label %.preheader96.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader96.2.i
  %i.bu = or disjoint i64 %.sroa.06.0103.i, 32
  %i.bv = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bu, i16 noundef %i.bf, i1 noundef zeroext %i.bv)
  %i.bx = zext i1 %i.bw to i8
  %i.by = or i8 %.sroa.014.2.1.i, %i.bx
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.k, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.by, %bb.k ] ; 3 uses
  %i.bz = icmp eq i16 %i.bl, 0
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader96.3.i
  %i.ca = or disjoint i64 %.sroa.06.0103.i, 48
  %i.cb = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ca, i16 noundef %i.bl, i1 noundef zeroext %i.cb)
  %i.cd = zext i1 %i.cc to i8
  %i.ce = or i8 %.sroa.014.2.2.i, %i.cd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.ce, %bb.l ] ; 2 uses
  %i.cf = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.cg = add i64 %i.cf, %i.aj
  %i.ch = icmp uge i64 %i.cg, %3
  %i.ci = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cj = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.at, i1 noundef zeroext false)
  %i.ck = zext i1 %i.cj to i8
  br label %.preheader96.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.an, %.preheader.i ], [ %i.de, %bb.o ]
  %i.cl = sub i64 %3, %i.h
  %i.cm = add i64 %i.cl, -16                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cn, align 1, !alias.scope !251243, !noalias !251249
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.co, align 1, !alias.scope !251243, !noalias !251249
  %i.cp = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ac
  %i.cq = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.ae
  %i.cr = and <16 x i1> %i.cp, %i.cq
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %bb.r

.lr.ph107.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.06.1106.i = phi i64 [ %i.db, %bb.o ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !251243, !noalias !251250
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cv, align 1, !alias.scope !251243, !noalias !251250
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ac
  %i.cx = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.ae
  %i.cy = and <16 x i1> %i.cw, %i.cx
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.dg, %bb.p ] ; 2 uses
  %i.db = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.dc = add i64 %i.db, %i.ak
  %i.dd = icmp uge i64 %i.dc, %3
  %i.de = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dd, %i.de
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph107.i

bb.p:                                             ; preds = %.lr.ph107.i
  %i.df = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.cz, i1 noundef zeroext false)
  %i.dg = zext i1 %i.df to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251246
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dh = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0CsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cm, i16 noundef %i.cs, i1 noundef zeroext %.lcssa.i)
  %i.di = zext i1 %i.dh to i8
  %i.dj = or i8 %.sroa.014.3.lcssa.i, %i.di
  br label %bb.q

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit: ; preds = %4, %bb.e, %13, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dk = load i64, ptr %i.c, align 8, !range !442, !noundef !416
  %i.dl = trunc nuw nsw i64 %i.dk to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.s:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dm = icmp eq i32 %bcmp, 0
  %i.dn = zext i1 %i.dm to i8
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXst_NtNtCshkPeWWG1flk_5lance7dataset5writeNtB5_15V2WriterAdapterNtB5_13GenericWriter14data_file_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #36 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.b = load i64, ptr %i.a, align 8, !range !421, !noundef !416
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !416, !noundef !416
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.f = load i64, ptr %i.e, align 8, !noundef !416
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.h = load i32, ptr %i.g, align 8, !range !433, !noundef !416
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 708
  %i.j = load i32, ptr %i.i, align 4
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.j, ptr %.sroa.65.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink7 = phi ptr [ %i.d, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sink6 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sink = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  store ptr %.sink7, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink6, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.l, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !570, !noundef !416 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsts_NtCs40MM8ukkVQd_9sqlparser3astNtB6_9FlushTypeNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.10052, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs63DIHKhvmTb_10lance_core5errorNtB5_11FenceReasonNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !428, !noundef !416
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 18, i64 16
  %.1 = select i1 %i.b, ptr @8703, ptr @8702
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRNtNtCs3PfUT229lOd_12object_store4path4PathENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251254)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !251254, !noalias !251255, !nonnull !416, !align !417, !noundef !416
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCs3PfUT229lOd_12object_store4pathNtB5_4PathNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !251254
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs9ipI1vyGjpZ_12tracing_core5fieldINtB5_12DisplayValueRReENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251262)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !251262, !noalias !251263, !nonnull !416, !align !417, !noundef !416 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251264)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !251264, !noalias !251265, !nonnull !416, !noundef !416
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !251264, !noalias !251265, !noundef !416
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !251266
  ret i1 %i.e
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXsu_NtNtCsaSXGKSfiU2E_10lance_file6format2pbNtB5_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !noundef !416 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.b, 1
  %i.e = sext i32 %i.d to i64
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = mul nuw nsw i64 %i.g, 9
  %i.i = add nuw nsw i64 %i.h, 73
  %i.j = lshr i64 %i.i, 6
  %i.k = add nuw nsw i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !416 ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = or i64 %i.m, 1
  %i.q = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 73
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw i64 %i.m, 1
  %i.w = add nuw i64 %i.v, %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.01.0 = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.y = load i32, ptr %i.x, align 4, !noundef !416 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = or i32 %i.y, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = xor i64 %i.ac, 63
  %i.ae = mul nuw nsw i64 %i.ad, 9
  %i.af = add nuw nsw i64 %i.ae, 73
  %i.ag = lshr i64 %i.af, 6
  %i.ah = add nuw nsw i64 %i.ag, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.02.0 = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !416 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = or i32 %i.aj, 1
  %i.am = sext i32 %i.al to i64
  %i.an = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = add nuw nsw i64 %i.ar, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.03.0 = phi i64 [ %i.as, %bb.h ], [ 0, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i64, ptr %i.at, align 8, !noundef !416 ; 4 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = or i64 %i.au, 1
  %i.ay = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = xor i64 %i.ay, 63
  %i.ba = mul nuw nsw i64 %i.az, 9
  %i.bb = add nuw nsw i64 %i.ba, 73
  %i.bc = lshr i64 %i.bb, 6
  %i.bd = add nuw i64 %i.au, 1
  %i.be = add nuw i64 %i.bd, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.04.0 = phi i64 [ %i.be, %bb.j ], [ 0, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = load i8, ptr %i.bf, align 8, !range !428, !noundef !416
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !416 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v4i16
!251044 = !{!251040, !251037, !251036}
!251045 = distinct !{!251045, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index11IndexLookupNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251046 = distinct !{!251046, !251045, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index11IndexLookupNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251047 = distinct !{!251047, !251045, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index11IndexLookupNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251048 = distinct !{!251048, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index11IndexLookupINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251049 = distinct !{!251049, !251048, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCshkPeWWG1flk_5lance2io4exec12scalar_index11IndexLookupINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251050 = !{!251047, !251046}
!251051 = !{!251047}
!251052 = !{!251049, !251047, !251046}
!251053 = distinct !{!251053, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSReNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251054 = distinct !{!251054, !251053, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSReNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251055 = distinct !{!251055, !251053, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSReNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251056 = distinct !{!251056, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251057 = distinct !{!251057, !251056, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRReINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251058 = !{!251055, !251054}
!251059 = !{!251055}
!251060 = !{!251057, !251055, !251054}
!251061 = distinct !{!251061, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251062 = distinct !{!251062, !251061, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251063 = distinct !{!251063, !251061, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251064 = distinct !{null}
!251065 = distinct !{!251065, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEB15_EINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251066 = distinct !{!251066, !251065, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEB15_EINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251067 = distinct !{null, null}
!251068 = !{!251063, !251062}
!251069 = !{!251063}
!251070 = !{!251066, !251063, !251062}
!251071 = distinct !{!251071, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251072 = distinct !{!251072, !251071, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251073 = distinct !{!251073, !251071, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251074 = distinct !{!251074, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251075 = distinct !{!251075, !251074, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251076 = !{!251073, !251072}
!251077 = !{!251073}
!251078 = !{!251075, !251073, !251072}
!251079 = distinct !{!251079, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringyENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251080 = distinct !{!251080, !251079, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringyENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251081 = distinct !{!251081, !251079, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs40k4W9msRzi_5alloc6string6StringyENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251082 = distinct !{!251082, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs40k4W9msRzi_5alloc6string6StringyEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251083 = distinct !{!251083, !251082, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs40k4W9msRzi_5alloc6string6StringyEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251084 = !{!251081, !251080}
!251085 = !{!251081}
!251086 = !{!251083, !251081, !251080}
!251087 = distinct !{!251087, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251088 = distinct !{!251088, !251087, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251089 = distinct !{!251089, !251087, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprBw_ENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251090 = distinct !{!251090, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprB15_EINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251091 = distinct !{!251091, !251090, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4ExprB15_EINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251092 = !{!251089, !251088}
!251093 = !{!251089}
!251094 = !{!251091, !251089, !251088}
!251095 = distinct !{!251095, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTjNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251096 = distinct !{!251096, !251095, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTjNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251097 = distinct !{!251097, !251095, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSTjNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListENtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251098 = distinct !{!251098, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTjNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251099 = distinct !{!251099, !251098, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRTjNtNtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4plan16ColumnUnnestListEINtNtNtBa_5slice4iter4IterB14_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251100 = !{!251097, !251096}
!251101 = !{!251097}
!251102 = !{!251099, !251097, !251096}
!251103 = distinct !{!251103, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtShNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251104 = distinct !{!251104, !251103, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtShNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251105 = distinct !{!251105, !251103, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtShNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251106 = distinct !{!251106, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251107 = distinct !{!251107, !251106, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251108 = !{!251105, !251104}
!251109 = !{!251105}
!251110 = !{!251107, !251105, !251104}
!251111 = distinct !{!251111, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSjNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251112 = distinct !{!251112, !251111, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSjNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251113 = distinct !{!251113, !251111, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSjNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251114 = distinct !{!251114, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251115 = distinct !{!251115, !251114, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251116 = !{!251113, !251112}
!251117 = !{!251113}
!251118 = !{!251115, !251113, !251112}
!251119 = distinct !{!251119, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSmNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251120 = distinct !{!251120, !251119, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSmNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251121 = distinct !{!251121, !251119, !"_RNvXsr_NtCscI6d9CVNmLh_4core3fmtSmNtB5_5Debug3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251122 = distinct !{!251122, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251123 = distinct !{!251123, !251122, !"_RINvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB6_9DebugList7entriesRmINtNtNtBa_5slice4iter4ItermEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251124 = !{!251121, !251120}
!251125 = !{!251121}
!251126 = !{!251123, !251121, !251120}
!251127 = distinct !{!251127, !"_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251128 = distinct !{!251128, !251127, !"_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251129 = distinct !{!251129, !"_RNvXNtNtCscI6d9CVNmLh_4core5clone6uninitNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251130 = distinct !{!251130, !251129, !"_RNvXNtNtCscI6d9CVNmLh_4core5clone6uninitNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251131 = distinct !{!251131, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251132 = distinct !{!251132, !251131, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251133 = distinct !{!251133, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251134 = distinct !{!251134, !251133, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251135 = distinct !{!251135, !251131, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251136 = distinct !{!251136, !251133, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251137 = !{!251128}
!251138 = !{!251130, !251128}
!251139 = !{!251132}
!251140 = !{!251134, !251132}
!251141 = !{!251136, !251135}
!251142 = distinct !{!251142, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251143 = distinct !{!251143, !251142, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251144 = distinct !{!251144, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB12_6string6StringB2q_EEEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251145 = distinct !{!251145, !251144, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB12_6string6StringB2q_EEEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251146 = distinct !{!251146, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBG_6string6StringB24_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251147 = distinct !{!251147, !251146, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtBG_6string6StringB24_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251148 = distinct !{!251148, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!251149 = distinct !{!251149, !251148, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtB7_6string6StringB1B_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251150 = distinct !{!251150, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251151 = distinct !{!251151, !251150, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecmENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251152 = distinct !{!251152, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls"}
!251153 = distinct !{!251153, !251152, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251154 = distinct !{!251154, !251152, !"_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inmNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251155 = distinct !{!251155, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls"}
!251156 = distinct !{!251156, !251155, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251157 = distinct !{!251157, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecmEEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251158 = distinct !{!251158, !251157, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecmEEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251159 = distinct !{!251159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251160 = distinct !{!251160, !251159, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251161 = distinct !{!251161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251162 = distinct !{!251162, !251161, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCshkPeWWG1flk_5lance7session7SessionEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251163 = distinct !{!251163, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7session7SessionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!251164 = distinct !{!251164, !251163, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCshkPeWWG1flk_5lance7session7SessionENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251165 = distinct !{!251165, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251166 = distinct !{!251166, !251165, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251167 = distinct !{!251167, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251168 = distinct !{!251168, !251167, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251169 = distinct !{!251169, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!251170 = distinct !{!251170, !251169, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCs9KQ7US1M400_11lance_table2io6commit13CommitHandlerEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251171 = distinct !{!251171, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshkPeWWG1flk_5lance7dataset8progress15WriteProgressFnEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251172 = distinct !{!251172, !251171, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshkPeWWG1flk_5lance7dataset8progress15WriteProgressFnEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251173 = distinct !{!251173, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset8progress15WriteProgressFnECsfR8GmIBoxTX_21lance_namespace_impls"}
!251174 = distinct !{!251174, !251173, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset8progress15WriteProgressFnECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251175 = distinct !{!251175, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCshkPeWWG1flk_5lance7dataset8progress10WriteStatsEEp6OutputuNtNtB4_6marker4SyncNtB2H_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251176 = distinct !{!251176, !251175, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCshkPeWWG1flk_5lance7dataset8progress10WriteStatsEEp6OutputuNtNtB4_6marker4SyncNtB2H_4SendEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251177 = distinct !{!251177, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTNtNtNtCshkPeWWG1flk_5lance7dataset8progress10WriteStatsEEp6OutputuNtNtBO_6marker4SyncNtB2u_4SendEL_ENtNtBM_4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!251178 = distinct !{!251178, !251177, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDINtNtNtCscI6d9CVNmLh_4core3ops8function2FnTNtNtNtCshkPeWWG1flk_5lance7dataset8progress10WriteStatsEEp6OutputuNtNtBO_6marker4SyncNtB2u_4SendEL_ENtNtBM_4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251179 = distinct !{!251179, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCshkPeWWG1flk_5lance7dataset8progress21WriteFragmentProgressEL_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251180 = distinct !{!251180, !251179, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCshkPeWWG1flk_5lance7dataset8progress21WriteFragmentProgressEL_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251181 = distinct !{!251181, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCshkPeWWG1flk_5lance7dataset8progress21WriteFragmentProgressEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls"}
!251182 = distinct !{!251182, !251181, !"_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCshkPeWWG1flk_5lance7dataset8progress21WriteFragmentProgressEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251183 = distinct !{!251183, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251184 = distinct !{!251184, !251183, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251185 = !{!251143}
!251186 = !{!251149, !251147, !251145}
!251187 = !{!251156, !251154, !251153, !251151}
!251188 = !{!251154, !251151}
!251189 = !{!251158}
!251190 = !{!251160}
!251191 = !{!251164, !251162, !251160}
!251192 = !{!251166}
!251193 = !{!251170, !251168, !251166}
!251194 = !{!251172}
!251195 = !{!251178, !251176, !251174, !251172}
!251196 = !{!251180}
!251197 = !{!251182}
!251198 = !{!251182, !251180}
!251199 = !{!251184}
!251200 = distinct !{!251200, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter4tell0E3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!251201 = distinct !{!251201, !251200, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter4tell0E3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251202 = !{!251201}
!251203 = distinct !{!251203, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter5write0E3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!251204 = distinct !{!251204, !251203, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter5write0E3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251205 = !{!251204}
!251206 = distinct !{!251206, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter6finish0E3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!251207 = distinct !{!251207, !251206, !"_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvXss_NtNtCshkPeWWG1flk_5lance7dataset5writeINtBM_15V1WriterAdapterNtNtNtCs9KQ7US1M400_11lance_table2io8manifest18ManifestDescribingENtBM_13GenericWriter6finish0E3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251208 = !{!251207}
!251209 = distinct !{!251209, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!251210 = distinct !{!251210, !251209, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251211 = distinct !{!251211, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251212 = distinct !{!251212, !251211, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251213 = distinct !{!251213, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls"}
!251214 = distinct !{!251214, !251213, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core9datatypes11LogicalTypeECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251215 = distinct !{!251215, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls"}
!251216 = distinct !{!251216, !251215, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251217 = distinct !{!251217, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251218 = distinct !{!251218, !251217, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251219 = !{!251210}
!251220 = !{!251212}
!251221 = !{!251212, !251210}
!251222 = !{!251218, !251216, !251214}
!251223 = distinct !{!251223, !"_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains"}
!251224 = distinct !{!251224, !251223, !"_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains: argument 0"}
!251225 = distinct !{!251225, !251223, !"_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains: argument 1"}
!251226 = distinct !{!251226, !"_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251227 = distinct !{!251227, !251226, !"_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251228 = distinct !{!251228, !251226, !"_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251229 = distinct !{!251229, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls"}
!251230 = distinct !{!251230, !251229, !"_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251231 = distinct !{!251231, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains0CsfR8GmIBoxTX_21lance_namespace_impls"}
!251232 = distinct !{!251232, !251231, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251233 = distinct !{!251233, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251234 = distinct !{!251234, !251233, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251235 = distinct !{!251235, !251233, !"_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251236 = distinct !{!251236, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!251237 = distinct !{!251237, !251236, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251238 = distinct !{!251238, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!251239 = distinct !{!251239, !251238, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251240 = distinct !{!251240, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls"}
!251241 = distinct !{!251241, !251240, !"_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss1_0CsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251242 = !{!251224}
!251243 = !{!251225}
!251244 = !{!251232, !251230, !251228, !251227, !251225}
!251245 = !{!251232, !251230, !251228, !251227, !251224, !251225}
!251246 = !{!251224, !251225}
!251247 = !{!251235, !251234}
!251248 = !{!251237, !251224}
!251249 = !{!251239, !251224}
!251250 = !{!251241, !251224}
!251251 = distinct !{!251251, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251252 = distinct !{!251252, !251251, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251253 = distinct !{!251253, !251251, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs3PfUT229lOd_12object_store4path4PathNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251254 = !{!251252}
!251255 = !{!251253}
!251256 = distinct !{!251256, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251257 = distinct !{!251257, !251256, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251258 = distinct !{!251258, !251256, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251259 = distinct !{!251259, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls"}
!251260 = distinct !{!251260, !251259, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251261 = distinct !{!251261, !251259, !"_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251262 = !{!251257}
!251263 = !{!251258}
!251264 = !{!251260}
!251265 = !{!251261, !251257, !251258}
!251266 = !{!251260, !251257}
!251267 = distinct !{!251267, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!251268 = distinct !{!251268, !251267, !"_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb10DictionaryE6map_orjNCNvXsu_BL_NtBL_5FieldNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251269 = distinct !{!251269, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1c_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1K_EECsfR8GmIBoxTX_21lance_namespace_impls"}
!251270 = distinct !{!251270, !251269, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1c_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1K_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251271 = distinct !{!251271, !251269, !"_RINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1c_3vec3VechENvNtB4_6string11encoded_lenINvNtB4_5bytes11encoded_lenB1K_EECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251272 = distinct !{!251272, !"_RNvMs1_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB17_3vec3VechEE4iterCsfR8GmIBoxTX_21lance_namespace_impls"}
!251273 = distinct !{!251273, !251272, !"_RNvMs1_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB17_3vec3VechEE4iterCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251274 = distinct !{!251274, !251272, !"_RNvMs1_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB17_3vec3VechEE4iterCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251275 = distinct !{!251275, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBY_3vec3VechEEE3newCsfR8GmIBoxTX_21lance_namespace_impls"}
!251276 = distinct !{!251276, !251275, !"_RNvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBY_3vec3VechEEE3newCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251277 = distinct !{!251277, !"_RINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBP_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1M_8adapters3map8map_foldTRBL_RB1n_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBL_B1n_NvNtB3A_6string11encoded_lenINvNtB3A_5bytes11encoded_lenB1n_EE0NCINvXsK_NtB1K_5accumjNtB5V_3Sum3sumINtB2M_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBL_B1n_EB3t_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls"}
!251278 = distinct !{!251278, !251277, !"_RINvXsG_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_4IterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBP_3vec3VechEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1M_8adapters3map8map_foldTRBL_RB1n_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBL_B1n_NvNtB3A_6string11encoded_lenINvNtB3A_5bytes11encoded_lenB1n_EE0NCINvXsK_NtB1K_5accumjNtB5V_3Sum3sumINtB2M_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBL_B1n_EB3t_EE0E0ECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251279 = distinct !{!251279, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9fold_implNCINvXsG_NtB8_3mapINtB2a_4IterBV_B1x_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2J_8adapters3map8map_foldTRBV_RB1x_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBV_B1x_NvNtB4x_6string11encoded_lenINvNtB4x_5bytes11encoded_lenB1x_EE0NCINvXsK_NtB2H_5accumjNtB6S_3Sum3sumINtB3J_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBV_B1x_EB4q_EE0E0E0jECsfR8GmIBoxTX_21lance_namespace_impls"}
!251280 = distinct !{!251280, !251279, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9fold_implNCINvXsG_NtB8_3mapINtB2a_4IterBV_B1x_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2J_8adapters3map8map_foldTRBV_RB1x_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBV_B1x_NvNtB4x_6string11encoded_lenINvNtB4x_5bytes11encoded_lenB1x_EE0NCINvXsK_NtB2H_5accumjNtB6S_3Sum3sumINtB3J_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBV_B1x_EB4q_EE0E0E0jECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251281 = distinct !{!251281, !251279, !"_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9fold_implNCINvXsG_NtB8_3mapINtB2a_4IterBV_B1x_ENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2J_8adapters3map8map_foldTRBV_RB1x_EjjNCINvNtNtCskAO0uQb8M5a_5prost8encoding8hash_map24encoded_len_with_defaultBV_B1x_NvNtB4x_6string11encoded_lenINvNtB4x_5bytes11encoded_lenB1x_EE0NCINvXsK_NtB2H_5accumjNtB6S_3Sum3sumINtB3J_3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4IterBV_B1x_EB4q_EE0E0E0jECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251282 = !{!251268}
!251283 = !{!251276, !251274, !251273, !251271, !251270}
!251284 = !{!251281, !251280, !251278, !251271, !251270}
!251285 = distinct !{!251285, !"_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251286 = distinct !{!251286, !251285, !"_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251287 = distinct !{!251287, !251285, !"_RNvXsh_NtNtCs9KQ7US1M400_11lance_table6format7row_idsNtB5_9RowIdMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251288 = distinct !{!251288, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251289 = distinct !{!251289, !251288, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251290 = distinct !{!251290, !251288, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251291 = distinct !{!251291, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251292 = distinct !{!251292, !251291, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251293 = distinct !{!251293, !251291, !"_RNvXsl_NtNtCs9KQ7US1M400_11lance_table6rowids7versionNtB5_21RowDatasetVersionMetaNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251294 = !{!251286}
!251295 = !{!251287}
!251296 = !{!251286, !251287}
!251297 = !{!251289}
!251298 = !{!251290}
!251299 = !{!251289, !251290}
!251300 = !{!251292}
!251301 = !{!251293}
!251302 = !{!251292, !251293}
!251303 = distinct !{!251303, !"_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtB2r_4sync3ArcDNtB4b_11ObjectStoreEL_ENtB5W_14ObjectStoreExt12read_dir_allRNtNtB4b_4path4PathE0EEB2W_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls"}
!251304 = distinct !{!251304, !251303, !"_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtB2r_4sync3ArcDNtB4b_11ObjectStoreEL_ENtB5W_14ObjectStoreExt12read_dir_allRNtNtB4b_4path4PathE0EEB2W_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251305 = distinct !{!251305, !251303, !"_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtB2r_4sync3ArcDNtB4b_11ObjectStoreEL_ENtB5W_14ObjectStoreExt12read_dir_allRNtNtB4b_4path4PathE0EEB2W_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251306 = distinct !{!251306, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB3M_5ErrorENtNtB1w_6marker4SendEL_EEEB2x_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls"}
!251307 = distinct !{!251307, !251306, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB3M_5ErrorENtNtB1w_6marker4SendEL_EEEB2x_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251308 = distinct !{!251308, !251306, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB3M_5ErrorENtNtB1w_6marker4SendEL_EEEB2x_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251309 = distinct !{!251309, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsfR8GmIBoxTX_21lance_namespace_impls"}
!251310 = distinct !{!251310, !251309, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251311 = distinct !{!251311, !251309, !"_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251312 = distinct !{!251312, !"_RNvXs_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls"}
!251313 = distinct !{!251313, !251312, !"_RNvXs_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251314 = distinct !{!251314, !251312, !"_RNvXs_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251315 = distinct !{null, null, null, null}
!251316 = distinct !{!251316, !"_RNvXse_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtB11_14ObjectStoreExt12read_dir_allRNtNtB2f_4path4PathE0EINtB5_6FnMut1INtNtCscI6d9CVNmLh_4core6result6ResultNtB2f_10ObjectMetaNtB2f_5ErrorEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls"}
!251317 = distinct !{!251317, !251316, !"_RNvXse_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtB11_14ObjectStoreExt12read_dir_allRNtNtB2f_4path4PathE0EINtB5_6FnMut1INtNtCscI6d9CVNmLh_4core6result6ResultNtB2f_10ObjectMetaNtB2f_5ErrorEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251318 = distinct !{!251318, !251316, !"_RNvXse_NtCs9p5Dg9WVwvP_12futures_util3fnsINtB5_8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtB11_14ObjectStoreExt12read_dir_allRNtNtB2f_4path4PathE0EINtB5_6FnMut1INtNtCscI6d9CVNmLh_4core6result6ResultNtB2f_10ObjectMetaNtB2f_5ErrorEE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251319 = distinct !{!251319, !"_RNvXs_NtCs9p5Dg9WVwvP_12futures_util3fnsNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtBL_14ObjectStoreExt12read_dir_allRNtNtB1Z_4path4PathE0INtB4_6FnMut1NtB1Z_5ErrorE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls"}
!251320 = distinct !{!251320, !251319, !"_RNvXs_NtCs9p5Dg9WVwvP_12futures_util3fnsNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtBL_14ObjectStoreExt12read_dir_allRNtNtB1Z_4path4PathE0INtB4_6FnMut1NtB1Z_5ErrorE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251321 = distinct !{!251321, !251319, !"_RNvXs_NtCs9p5Dg9WVwvP_12futures_util3fnsNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCs3PfUT229lOd_12object_store11ObjectStoreEL_ENtBL_14ObjectStoreExt12read_dir_allRNtNtB1Z_4path4PathE0INtB4_6FnMut1NtB1Z_5ErrorE8call_mutCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251322 = !{!251304}
!251323 = !{!251304, !251305}
!251324 = !{!251314, !251313, !251311, !251310, !251308, !251307, !251304, !251305}
!251325 = !{!251305}
!251326 = !{!251321, !251320, !251318, !251317, !251304, !251305}
!251327 = distinct !{!251327, !"_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtB2r_4sync3ArcDNtB4b_11ObjectStoreEL_ENtB5W_14ObjectStoreExt12read_dir_allRNtNtB4b_4path4PathE0EEB2W_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls"}
!251328 = distinct !{!251328, !251327, !"_RNvXs1_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns8MapErrFnNCINvXsc_NtCsjjbR6Jfsbqw_8lance_io12object_storeINtNtB2r_4sync3ArcDNtB4b_11ObjectStoreEL_ENtB5W_14ObjectStoreExt12read_dir_allRNtNtB4b_4path4PathE0EEB2W_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251329 = distinct !{!251329, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB3M_5ErrorENtNtB1w_6marker4SendEL_EEEB2x_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls"}
!251330 = distinct !{!251330, !251329, !"_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream11into_streamINtB5_10IntoStreamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB3M_5ErrorENtNtB1w_6marker4SendEL_EEEB2x_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251331 = distinct !{!251331, !"_RNvXs_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls"}
!251332 = distinct !{!251332, !251331, !"_RNvXs_NtCsj3nLz3LBTXi_12futures_core6streamINtNtCscI6d9CVNmLh_4core3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCs3PfUT229lOd_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251333 = distinct !{null, null, null}
!251334 = !{!251332, !251330, !251328}
!251335 = distinct !{!251335, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!251336 = distinct !{!251336, !251335, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!251337 = distinct !{!251337, !251335, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!251338 = distinct !{!251338, !251335, !"_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!251339 = distinct !{!251339, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!251340 = distinct !{!251340, !251339, !"_RNvXs9_NtNtCscI6d9CVNmLh_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!251341 = distinct !{!251341, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251342 = distinct !{!251342, !251341, !"_RINvNtNtCscI6d9CVNmLh_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251343 = !{!251336}
!251344 = !{!251337}
!251345 = !{!251338}
!251346 = !{!251340}
!251347 = !{!251337, !251338}
!251348 = !{!251342, !251337, !251338}
!251349 = !{!251337, !251336}
!251350 = !{!251342, !251337, !251336}
!251351 = distinct !{!251351, !"_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251352 = distinct !{!251352, !251351, !"_RNvXsd_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251353 = distinct !{!251353, !"_RNvXNtNtCscI6d9CVNmLh_4core5clone6uninitNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251354 = distinct !{!251354, !251353, !"_RNvXNtNtCscI6d9CVNmLh_4core5clone6uninitNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5QueryNtB2_8CopySpec9clone_oneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251355 = !{!251352}
!251356 = !{!251354, !251352}
!251357 = distinct !{!251357, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251358 = distinct !{!251358, !251357, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251359 = distinct !{!251359, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251360 = distinct !{!251360, !251359, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251361 = distinct !{!251361, !251357, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251362 = distinct !{!251362, !251359, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251363 = distinct !{!251363, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251364 = distinct !{!251364, !251363, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251365 = distinct !{!251365, !251363, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251366 = distinct !{!251366, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251367 = distinct !{!251367, !251366, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251368 = distinct !{!251368, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251369 = distinct !{!251369, !251368, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251370 = distinct !{!251370, !251366, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251371 = distinct !{!251371, !251368, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251372 = distinct !{!251372, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251373 = distinct !{!251373, !251372, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251374 = distinct !{!251374, !251372, !"_RNvXs4L_NtCs40MM8ukkVQd_9sqlparser3astNtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251375 = !{!251360, !251358}
!251376 = !{!251362, !251361}
!251377 = !{!251364}
!251378 = !{!251365}
!251379 = !{!251364, !251365}
!251380 = !{!251367}
!251381 = !{!251369, !251367}
!251382 = !{!251371, !251370}
!251383 = !{!251373}
!251384 = !{!251374}
!251385 = !{!251373, !251374}
!251386 = distinct !{!251386, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251387 = distinct !{!251387, !251386, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251388 = distinct !{!251388, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251389 = distinct !{!251389, !251388, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251390 = distinct !{!251390, !251386, !"_RNvXs4P_NtCs40MM8ukkVQd_9sqlparser3astNtB6_10ObjectNameNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251391 = distinct !{!251391, !251388, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251392 = !{!251387}
!251393 = !{!251389, !251387}
!251394 = !{!251391, !251390}
!251395 = distinct !{!251395, !"_RNvXs5H_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251396 = distinct !{!251396, !251395, !"_RNvXs5H_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251397 = distinct !{!251397, !251395, !"_RNvXs5H_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_14TableWithJoinsNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251398 = distinct !{!251398, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4JoinENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251399 = distinct !{!251399, !251398, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4JoinENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251400 = distinct !{!251400, !251398, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4JoinENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251401 = distinct !{!251401, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast10AssignmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251402 = distinct !{!251402, !251401, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast10AssignmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251403 = distinct !{!251403, !251401, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs40MM8ukkVQd_9sqlparser3ast10AssignmentENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251404 = distinct !{!251404, !"_RNvXsh4_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19UpdateTableFromKindNtNtCscI6d9CVNmLh_4core5clone5Clone5clone"}
!251405 = distinct !{!251405, !251404, !"_RNvXsh4_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19UpdateTableFromKindNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 1"}
!251406 = distinct !{!251406, !251404, !"_RNvXsh4_NtNtCs40MM8ukkVQd_9sqlparser3ast5queryNtB6_19UpdateTableFromKindNtNtCscI6d9CVNmLh_4core5clone5Clone5clone: argument 0"}
!251407 = distinct !{!251407, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251408 = distinct !{!251408, !251407, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251409 = distinct !{!251409, !251407, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251410 = distinct !{null, null}
!251411 = distinct !{!251411, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251412 = distinct !{!251412, !251411, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251413 = distinct !{!251413, !251411, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251414 = distinct !{!251414, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251415 = distinct !{!251415, !251414, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251416 = distinct !{!251416, !251414, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251417 = distinct !{!251417, !"_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls"}
!251418 = distinct !{!251418, !251417, !"_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251419 = distinct !{!251419, !251417, !"_RINvXNvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251420 = distinct !{!251420, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls"}
!251421 = distinct !{!251421, !251420, !"_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251422 = distinct !{!251422, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251423 = distinct !{!251423, !251422, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251424 = distinct !{!251424, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11OrderByExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls"}
!251425 = distinct !{!251425, !251424, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11OrderByExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 1"}
!251426 = distinct !{!251426, !251424, !"_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11OrderByExprENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251427 = distinct !{!251427, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251428 = distinct !{!251428, !251427, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251429 = distinct !{!251429, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml12OutputClauseEECsfR8GmIBoxTX_21lance_namespace_impls"}
!251430 = distinct !{!251430, !251429, !"_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast3dml12OutputClauseEECsfR8GmIBoxTX_21lance_namespace_impls: argument 0"}
!251431 = !{!251397, !251396}
!251432 = !{!251399}
!251433 = !{!251400, !251397}
!251434 = !{!251397}
!251435 = !{!251396}
!251436 = !{!251402}
!251437 = !{!251403}
!251438 = !{!251406, !251405}
!251439 = !{!251408}
!251440 = !{!251409}
!251441 = !{!251405}
!251442 = !{!251412}
!251443 = !{!251413}
!251444 = !{!251415}
!251445 = !{!251416}
end_hunk_1
