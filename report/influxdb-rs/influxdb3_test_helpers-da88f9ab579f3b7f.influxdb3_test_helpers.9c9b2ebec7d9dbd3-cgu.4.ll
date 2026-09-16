Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_test_helpers-da88f9ab579f3b7f.influxdb3_test_helpers.9c9b2ebec7d9dbd3-cgu.4?download=true
inline.NumInlined: 329
inline.NumDeleted: 169
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !568, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !568, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !568, !noundef !4
  invoke void %i.aa(ptr noundef %i.x, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsdrBSO4t3gk1_22influxdb3_test_helpers.exit7.i unwind label %bb.c, !noalias !562, !inline_history !0

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsdrBSO4t3gk1_22influxdb3_test_helpers.exit7.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsdrBSO4t3gk1_22influxdb3_test_helpers.exit7.i, %bb.b
  resume { ptr, i32 } %i.t

bb.c:                                             ; preds = %.lr.ph3
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !562
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBI_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [376 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBH_(ptr noalias noundef align 8 dereferenceable(376) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [376 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBH_(ptr noalias noundef align 8 dereferenceable(376) %i.m) #21
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBI_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBK_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBK_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBH_(ptr noalias noundef align 8 dereferenceable(376) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i: ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [384 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEBH_(ptr noalias noundef align 8 dereferenceable(376) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit7.i, %bb.b
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBK_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallEEBJ_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync7barrier7BarrierEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync7barrier7BarrierENtB5_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs1LivM9IBWqb_12object_store4path4PathNtB5_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyEEINtNtBL_7convert4FromRSBE_E4fromCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !575
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !575
  %i.b = load i64, ptr %i.a, align 8, !range !17, !noalias !575, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !noalias !575, !noundef !4 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !575
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #18, !noalias !575
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !575, !nonnull !4, !noundef !4 ; 4 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !575
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i
  %i.l = add i64 %i.e, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.l) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.m, 576460752303423486       ; 4 uses
  %3 = shl nuw nsw i64 %n.vec, 4
  %4 = getelementptr i8, ptr %1, i64 %3
  %5 = sub i64 %i.e, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.n
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %next.gep2 = getelementptr i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !576
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8, !noalias !576
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> %wide.load, ptr %i.p, align 8, !noalias !575
  store <2 x i64> %wide.load3, ptr %i.r, align 8, !noalias !575
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %.lr.ph.i.preheader6, label %vector.body, !llvm.loop !572

.lr.ph.i.preheader6:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.014.023.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %4, %vector.body ]
  %.sroa.7.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.021.i.ph = phi i64 [ %i.e, %.lr.ph.i.preheader ], [ %5, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.014.023.i = phi ptr [ %i.w, %bb.c ], [ %.sroa.014.023.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.c ], [ %.sroa.7.022.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.u, %bb.c ], [ %.sroa.10.021.i.ph, %.lr.ph.i.preheader6 ]
  %i.t = icmp eq ptr %.sroa.014.023.i, %i.j
  br i1 %i.t, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.sroa.7.022.i
  %i.y = load <2 x i64>, ptr %.sroa.014.023.i, align 8, !alias.scope !574, !noalias !576
  store <2 x i64> %i.y, ptr %i.x, align 8, !noalias !575
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdrBSO4t3gk1_22influxdb3_test_helpers.exit, label %.lr.ph.i, !llvm.loop !573

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsdrBSO4t3gk1_22influxdb3_test_helpers.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdrBSO4t3gk1_22influxdb3_test_helpers.exit.i
  store i64 %i.e, ptr %0, align 8, !noalias !574
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !574
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !574
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCseCDlJsl44RV_5tokio4loom3std11parking_lotINtB5_6RwLockjE5writeCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCseCDlJsl44RV_5tokio4sync5watch10big_notifyNtB2_9BigNotify14notify_waiters(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCseCDlJsl44RV_5tokio4sync7barrier7BarrierEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyEENtNtBQ_4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsuxFxh2mtOX_5bytes5bytes5BytesENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock8MockCallENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs6P5GRezSnwZ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2G_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs1LivM9IBWqb_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio4sync5watch5stateNtB5_11AtomicState4load(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCseCDlJsl44RV_5tokio4loom3std11parking_lotINtB5_6RwLockjE4readCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtCsdrBSO4t3gk1_22influxdb3_test_helpers12object_store4mock14MockStoreStateENCNvMs9_B10_BX_3new0EB1t_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs8_NtCsgIGNhOnZR2a_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path4PathNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio4loom3std12atomic_usizeNtB5_11AtomicUsizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBufNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCseCDlJsl44RV_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs6P5GRezSnwZ_4http10extensions10ExtensionsNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCseCDlJsl44RV_5tokio4sync7barrier7BarrierE9drop_slowCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtCsuxFxh2mtOX_5bytes5bytes5BytesE9drop_slowCs1LivM9IBWqb_12object_store(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4path5ErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs8tMIthlWNBj_6chrono8datetime8DateTimeNtNtNtBB_6offset3utc3UtcENtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs1LivM9IBWqb_12object_store4util8GetRangeNtB6_5Debug3fmtCsdrBSO4t3gk1_22influxdb3_test_helpers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
