Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/anyhow-831e7d7b2d122d64.anyhow.dccbda442d702d03-cgu.01?download=true
inline.NumInlined: 45
inline.NumDeleted: 23
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiXichZnxgbf_6anyhow7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEBG_:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiXichZnxgbf_6anyhow.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsiXichZnxgbf_6anyhow.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsiXichZnxgbf_6anyhow.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiXichZnxgbf_6anyhow.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow7wrapper10BoxedErrorEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !align !34, !noundef !16 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !16 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !20, !invariant.load !16 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsiXichZnxgbf_6anyhow.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !21, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsiXichZnxgbf_6anyhow.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !20, !invariant.load !16 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !21, !invariant.load !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow.exit4.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsiXichZnxgbf_6anyhow.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @3, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refINtNtB4_7wrapper12MessageErrorReEEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @5, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error10object_refNtNtB4_7wrapper10BoxedErrorEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @7, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedINtNtB4_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @9, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedINtNtB4_7wrapper12MessageErrorReEEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @11, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RINvNtCsiXichZnxgbf_6anyhow5error12object_boxedNtNtB4_7wrapper10BoxedErrorEB4_(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @13, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error15object_downcastINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB1p_6marker4SendNtB1W_4SyncEL_EEB4_(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !16
  %i.b = icmp eq i128 %i.a, -44880286696605194635538959017295157950
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error15object_downcastNtNtCscdodAO9FK5_5alloc6string6StringEB4_(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !16
  %i.b = icmp eq i128 %i.a, 15710096127482045416963698813991269575
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_RINvNtCsiXichZnxgbf_6anyhow5error15object_downcastReEB4_(ptr nofree noundef nonnull readnone captures(ret: address, provenance) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i128, ptr %1, align 8, !noundef !16
  %i.b = icmp eq i128 %i.a, 48856307742461772449142782864826955356
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull ptr @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error10from_boxed(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error20construct_from_boxed.exit unwind label %bb.c

_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error20construct_from_boxed.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error9constructNtNtB5_7wrapper10BoxedErrorEB5_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsiXichZnxgbf_6anyhow(ptr nonnull %0, ptr nonnull %1) #15
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error10root_cause(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !35, !noalias !38, !nonnull !16, !noundef !16
  call void @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5chain(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.b), !noalias !35
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !alias.scope !43, !noundef !16
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.split.i.preheader, label %.split.us.i

.split.i.preheader:                               ; preds = %bb.a
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %.not5.i.i22 = icmp eq ptr %.promoted, null
  br i1 %.not5.i.i22, label %_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted8 = load ptr, ptr %1, align 8
  br label %bb.b

.split.us.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !46, !nonnull !16, !noundef !16 ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !alias.scope !46 ; 2 uses
  %i.h = icmp eq ptr %.promoted.i, %i.g
  br i1 %i.h, label %.split7.us.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us.i, %.lr.ph.i
  %i.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.promoted.i, %.split.us.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %..split7.us_crit_edge.i, label %.lr.ph.i

..split7.us_crit_edge.i:                          ; preds = %.lr.ph.i
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !46
  %i.l = load ptr, ptr %i.i, align 8, !noalias !46, !nonnull !16, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !46, !nonnull !16, !align !34, !noundef !16
  br label %.split7.us.i

.split7.us.i:                                     ; preds = %..split7.us_crit_edge.i, %.split.us.i
  %.us-phi825.i = phi ptr [ null, %.split.us.i ], [ %i.l, %..split7.us_crit_edge.i ]
  %.us-phi23.i = phi ptr [ undef, %.split.us.i ], [ %i.n, %..split7.us_crit_edge.i ]
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_ENtNtNtB11_3ops4drop4Drop4dropCsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %3, %bb.b ] ; 2 uses
  %2 = phi ptr [ %.promoted8, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !16, !noalias !43, !nonnull !16
  %i.r = call { ptr, ptr } %i.q(ptr noundef nonnull %i.o), !noalias !40, !inline_history !51 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 1
  %3 = extractvalue { ptr, ptr } %i.r, 0          ; 2 uses
  %.not5.i.i = icmp eq ptr %3, null
  br i1 %.not5.i.i, label %_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit, label %bb.b, !llvm.loop !52

_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit: ; preds = %bb.b, %.split.i.preheader, %.split7.us.i
  %.us-phi826.i = phi ptr [ %.us-phi825.i, %.split7.us.i ], [ null, %.split.i.preheader ], [ %i.o, %bb.b ] ; 2 uses
  %.us-phi24.i = phi ptr [ %.us-phi23.i, %.split7.us.i ], [ undef, %.split.i.preheader ], [ %2, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %.us-phi826.i, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit
  %i.t = insertvalue { ptr, ptr } poison, ptr %.us-phi826.i, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.us-phi24.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi24.i) ]
  ret { ptr, ptr } %i.u

bb.d:                                             ; preds = %_RINvYNtCsiXichZnxgbf_6anyhow5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtNtBE_6option6OptionRDNtNtBE_5error5ErrorEL_EINvNvBw_4last4someB1S_EEB5_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error20construct_from_boxed(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error9constructNtNtB5_7wrapper10BoxedErrorEB5_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error20into_boxed_dyn_error(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !34, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %0)
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error49reallocate_into_boxed_dyn_error_without_backtrace(ptr noundef nonnull %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !align !34, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %0)
  ret { ptr, ptr } %i.d
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error5chain(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5chain(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMNtCsiXichZnxgbf_6anyhow5errorNtB4_5Error9backtrace(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl9backtrace(ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvNtCsiXichZnxgbf_6anyhow5error12no_backtrace(ptr nofree nonnull readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCsiXichZnxgbf_6anyhow5chainNtB7_5ChainNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !54, !nonnull !16, !noundef !16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !54, !nonnull !16, !noundef !16
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_ENtNtNtNtB11_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiXichZnxgbf_6anyhow.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !alias.scope !54
  %i.i = load ptr, ptr %i.h, align 8, !noalias !54, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !54, !nonnull !16, !align !34, !noundef !16
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_ENtNtNtNtB11_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiXichZnxgbf_6anyhow.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8
  %.not7.not26 = icmp eq ptr %i.m, null
  br i1 %.not7.not26, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit
  %.sroa.01.028 = phi ptr [ %i.ab, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.4.027 = phi ptr [ %i.ac, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit ], [ %i.o, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.027) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.027, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !16, !nonnull !16
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %.sroa.01.028)
          to label %bb.f unwind label %bb.i       ; 2 uses

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit
  %.pre = load ptr, ptr %i.p, align 8             ; 3 uses
  %.pre43 = load i64, ptr %i.a, align 8, !range !20 ; 2 uses
  %i.u = icmp ult i64 %i.aj, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %.idx = shl nuw nsw i64 %i.aj, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 3 uses
  %i.w = icmp eq i64 %i.aj, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !noalias !57, !nonnull !16, !noundef !16
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !57, !nonnull !16, !align !34, !noundef !16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ab = extractvalue { ptr, ptr } %i.t, 0       ; 2 uses
  %i.ac = extractvalue { ptr, ptr } %i.t, 1
  %i.ad = load i64, ptr %i.q, align 8, !alias.scope !60, !noalias !63, !noundef !16 ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !range !20, !alias.scope !60, !noalias !63, !noundef !16
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8grow_oneCsiXichZnxgbf_6anyhow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit unwind label %bb.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_E8push_mutCsiXichZnxgbf_6anyhow.exit: ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr %i.p, align 8, !alias.scope !60, !noalias !63, !nonnull !16, !noundef !16
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ad ; 2 uses
  store ptr %.sroa.01.028, ptr %i.ah, align 8, !noalias !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.4.027, ptr %i.ai, align 8, !noalias !63
  %i.aj = add i64 %i.ad, 1                        ; 4 uses
  store i64 %i.aj, ptr %i.q, align 8
  %.not7.not = icmp eq ptr %i.ab, null
  br i1 %.not7.not, label %._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit: ; preds = %bb.d, %._crit_edge, %bb.e
  %i.ak = phi ptr [ %.pre, %._crit_edge ], [ %.pre, %bb.e ], [ inttoptr (i64 8 to ptr), %bb.d ] ; 2 uses
  %i.al = phi i64 [ %.pre43, %._crit_edge ], [ %.pre43, %bb.e ], [ 0, %bb.d ]
  %.sroa.6.0 = phi ptr [ %i.v, %._crit_edge ], [ %i.x, %bb.e ], [ inttoptr (i64 8 to ptr), %bb.d ]
  %.sroa.3.0.i13 = phi ptr [ undef, %._crit_edge ], [ %i.aa, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i14 = phi ptr [ null, %._crit_edge ], [ %i.y, %bb.e ], [ null, %bb.d ]
  store ptr %i.ak, ptr %0, align 8
  store ptr %i.ak, ptr %i.l, align 8
  store i64 %i.al, ptr %i.n, align 8
  %.sroa.7.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.7.0..sroa_idx41, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_ENtNtNtNtB11_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiXichZnxgbf_6anyhow.exit

_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterRDNtNtCs4NRVxsYgnAr_4core5error5ErrorEL_ENtNtNtNtB11_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiXichZnxgbf_6anyhow.exit: ; preds = %bb.c, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit
  %.sroa.0.0.i.pn = phi ptr [ %.sroa.0.0.i14, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit ], [ %i.i, %bb.c ], [ null, %bb.b ]
  %.sroa.3.0.i.pn = phi ptr [ %.sroa.3.0.i13, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiXichZnxgbf_6anyhow5chain10ChainStateEBF_.exit ], [ %i.k, %bb.c ], [ undef, %bb.b ]
  %.pn = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.pn, 0
  %.pn11 = insertvalue { ptr, ptr } %.pn, ptr %.sroa.3.0.i.pn, 1
  ret { ptr, ptr } %.pn11

bb.h:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread:                                          ; preds = %bb.i
  resume { ptr, i32 } %i.an

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRDNtNtB4_5error5ErrorEL_EECsiXichZnxgbf_6anyhow(ptr noalias noundef align 8 dereferenceable(24) %i.a) #15
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs0_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = tail call { ptr, ptr } @_RNvMs6_NtCsiXichZnxgbf_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %i.a)
end_hunk_0
