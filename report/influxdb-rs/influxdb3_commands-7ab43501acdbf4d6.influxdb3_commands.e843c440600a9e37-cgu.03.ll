Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_commands-7ab43501acdbf4d6.influxdb3_commands.e843c440600a9e37-cgu.03?download=true
inline.NumInlined: 631
inline.NumDeleted: 339
begin_hunk_0_@_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBI_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i16
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsjWl3uGiVprL_18influxdb3_commands.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.t = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.h
  br i1 %i.u, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1LivM9IBWqb_12object_store4path4PathECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.r, %bb.b ]
  %i.w = icmp eq i64 %i.p, %i.h
  br i1 %i.w, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.t, %bb.d ], [ %i.p, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_(ptr noalias noundef align 8 dereferenceable(64) %i.x) #18
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph18
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBI_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryEBH_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1961 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1962 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5                   ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph

.body:                                            ; preds = %bb.d, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !8
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.h unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.0.i16
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph18
  %i.t = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.h
  br i1 %i.u, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.r, %bb.b ]
  %i.w = icmp eq i64 %i.p, %i.h
  br i1 %i.w, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i17 = phi i64 [ %i.t, %bb.d ], [ %i.p, %.body.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(32) %i.x) #18
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph18
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !8
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.h:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB1g_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEIB1c_B29_EENtNtNtB9_6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1992 {
bb.a:
  %.sroa.633 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.629 = alloca [24 x i8], align 8          ; 11 uses
  %.sroa.11 = alloca [24 x i8], align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = load ptr, ptr %1, align 8
  %.fr = freeze ptr %i.d
  %.not.i2 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.622.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.promoted50 = load ptr, ptr %i.b, align 8      ; 2 uses
  %.promoted51 = load ptr, ptr %i.c, align 8      ; 8 uses
  br i1 %.not.i2, label %.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %bb.a
  %.promoted52 = load ptr, ptr %i.g, align 8      ; 5 uses
  %i.h = icmp eq ptr %.promoted, null
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629)
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.peel, label %bb.b

bb.b:                                             ; preds = %.split.split.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  %i.i = icmp eq ptr %.promoted51, %.promoted50
  br i1 %i.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.peel, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.peel

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.peel: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted51, i64 32
  store ptr %i.j, ptr %i.c, align 8, !alias.scope !1996
  %.sroa.027.0.copyload.peel = load ptr, ptr %.promoted51, align 8, !noalias !1997 ; 2 uses
  %.sroa.629.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted51, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.peel, i64 24, i1 false), !noalias !1997
  %.not6.i.peel = icmp eq ptr %.sroa.027.0.copyload.peel, null
  br i1 %.not6.i.peel, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.peel, label %.split54.us

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.peel: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.peel, %bb.b
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.peel unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !1998

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.peel: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.peel
  store ptr null, ptr %i.a, align 8, !alias.scope !1993
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.peel: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.peel, %.split.split.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  %i.k = icmp eq ptr %.promoted52, %i.f
  br i1 %i.k, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.peel

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.peel
  %i.l = getelementptr inbounds nuw i8, ptr %.promoted52, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !2001
  %.sroa.0.0.copyload11.peel = load i64, ptr %.promoted52, align 8, !noalias !2001 ; 2 uses
  %.not1.peel = icmp eq i64 %.sroa.0.0.copyload11.peel, -1
  br i1 %.not1.peel, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.peel
  %.sroa.8.0..sroa_idx12.peel = getelementptr inbounds nuw i8, ptr %.promoted52, i64 8
  %.sroa.8.sroa.0.0.copyload.peel = load ptr, ptr %.sroa.8.0..sroa_idx12.peel, align 8, !noalias !2001, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.peel = getelementptr inbounds nuw i8, ptr %.promoted52, i64 16
  %.sroa.8.sroa.5.0.copyload.peel = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.peel, align 8, !noalias !2001 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.sroa.5.0.copyload.peel, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload.peel, i64 %.sroa.8.sroa.5.0.copyload.peel ; 2 uses
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload.peel, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload11.peel, ptr %.sroa.622.0..sroa_idx23, align 8
  store ptr %i.n, ptr %i.b, align 8
  br label %.split.split

.split.us:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629)
  %.not.i.us = icmp eq ptr %.promoted, null
  br i1 %.not.i.us, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.us, label %bb.c

bb.c:                                             ; preds = %.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %i.o = icmp eq ptr %.promoted51, %.promoted50
  br i1 %i.o, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.us, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.us

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.us: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.promoted51, i64 32
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !2005
  %.sroa.027.0.copyload.us = load ptr, ptr %.promoted51, align 8, !noalias !2006 ; 2 uses
  %.sroa.629.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.promoted51, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.us, i64 24, i1 false), !noalias !2006
  %.not6.i.us = icmp eq ptr %.sroa.027.0.copyload.us, null
  br i1 %.not6.i.us, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.us, label %.split54.us

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.us: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.us, %bb.c
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.us unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !1998

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.us: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.us
  store ptr null, ptr %i.a, align 8, !alias.scope !2002
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.us

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.us: ; preds = %.split.us, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36.us
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread

.split.split:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit
  %i.q = phi ptr [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit ], [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel ] ; 5 uses
  %i.r = phi ptr [ %.sroa.8.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit ], [ %.sroa.8.sroa.0.0.copyload.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel ] ; 4 uses
  %i.s = phi ptr [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit ], [ %i.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.peel ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %.split.split
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.u, ptr %i.c, align 8, !alias.scope !2005
  %.sroa.027.0.copyload = load ptr, ptr %i.r, align 8, !noalias !2006 ; 2 uses
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx, i64 24, i1 false), !noalias !2006
  %.not6.i = icmp eq ptr %.sroa.027.0.copyload, null
  br i1 %.not6.i, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i, label %.split54.us

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i: ; preds = %.split.split, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !1998

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i
  store ptr null, ptr %i.a, align 8, !alias.scope !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.v = icmp eq ptr %i.q, %i.f
  br i1 %i.v, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i7, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i7 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i.split.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.us, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !alias.scope !2002
  br label %common.resume

.split54.us:                                      ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.peel, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.us
  %.us-phi = phi ptr [ %.sroa.027.0.copyload.us, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.us ], [ %.sroa.027.0.copyload.peel, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i.peel ], [ %.sroa.027.0.copyload, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629, i64 24, i1 false), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.629)
  store ptr %.us-phi, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.d

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.g, align 8, !alias.scope !2009
  %.sroa.0.0.copyload11 = load i64, ptr %i.q, align 8, !noalias !2009 ; 2 uses
  %.not1 = icmp eq i64 %.sroa.0.0.copyload11, -1
  br i1 %.not1, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit

bb.d:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit10, %.split54.us
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx12, align 8, !noalias !2009, !nonnull !8, !noundef !8 ; 4 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx, align 8, !noalias !2009 ; 2 uses
  %i.x = icmp ult i64 %.sroa.8.sroa.5.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.5.0.copyload ; 2 uses
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  store i64 %.sroa.0.0.copyload11, ptr %.sroa.622.0..sroa_idx23, align 8
  store ptr %i.y, ptr %i.b, align 8
  br label %.split.split, !llvm.loop !1984

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.peel, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.peel, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit.thread36, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.us
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2012, !noundef !8
  %.not.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2015, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !2015, !nonnull !8, !noundef !8 ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i9, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i4

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i4: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ag, ptr %i.ad, align 8, !alias.scope !2015
  %.sroa.031.0.copyload = load ptr, ptr %i.ae, align 8, !noalias !2016 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633.0..sroa_idx, i64 24, i1 false), !noalias !2016
  %.not6.i6 = icmp eq ptr %.sroa.031.0.copyload, null
  br i1 %.not6.i6, label %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i9, label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands.exit.thread
  store ptr null, ptr %0, align 8, !alias.scope !2011
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit10

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.i8, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i4
  %.sroa.031.0 = phi ptr [ null, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.i8 ], [ %.sroa.031.0.copyload, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i4 ]
  store ptr %.sroa.031.0, ptr %0, align 8, !noalias !2012
  %.sroa.633.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.633, i64 24, i1 false), !noalias !2012
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit10

_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i9: ; preds = %bb.e, %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.i4
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.i8 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i7, !noalias !2011

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEECsjWl3uGiVprL_18influxdb3_commands.exit.i8: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i9
  store ptr null, ptr %i.z, align 8, !alias.scope !2012
  br label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands.exit.i7: ; preds = %_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands.exit.thread.i9
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.z, align 8, !alias.scope !2012
  br label %common.resume

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands.exit10: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633)
  br label %bb.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg17into_vals_flatten(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoINtCsko13YHIqNcp_7secrecy6SecretNtNtCscdodAO9FK5_5alloc6string6StringEECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCsj7DbYNsdxOJ_3url3UrlECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs2AWtUsOyxgP_3std4path7PathBufECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs9h7Hq22ZyhR_15influxdb3_types5write9PrecisionECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCsjWl3uGiVprL_18influxdb3_commands5query13QueryLanguageEB1l_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCsjWl3uGiVprL_18influxdb3_commands6common6FormatEB1l_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog13CatalogFormatEB1n_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intobECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intojECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoyECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsbyItyepKEh3_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_2id2IdNtNtNtNtB6_6parser7matches11matched_arg10MatchedArgE6insertCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBY_EE14reserve_rehashNCINvNtBa_3map11make_hasherBY_BY_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherEE0ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEENtNtNtBQ_3ops4drop4Drop4dropB20_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjWl3uGiVprL_18influxdb3_commands6common17SeparatedKeyValueNtNtB7_6string6StringB1O_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBQ_5value11HeaderValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjWl3uGiVprL_18influxdb3_commands5debug7catalog16CatalogFileEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2RxINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB28_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs9_NtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chanINtB5_2TxINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB7_7bounded9SemaphoreENtNtNtBY_3ops4drop4Drop4dropB28_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsbyItyepKEh3_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoINtNtCsjWl3uGiVprL_18influxdb3_commands6common17SeparatedKeyValueNtNtCscdodAO9FK5_5alloc6string6StringB2k_EEB1m_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2l_(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2l_(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMNtNtBb_2fs12open_optionsNtB2l_11OpenOptions8std_open00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB2o_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB1N_(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB1N_(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMNtNtBb_2fs12open_optionsNtB1N_11OpenOptions8std_open00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull, ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2l_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2l_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMNtNtBb_2fs12open_optionsNtB2l_11OpenOptions8std_open00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCscdodAO9FK5_5alloc5boxed3BoxNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB2o_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB1N_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB1N_(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMNtNtBb_2fs12open_optionsNtB1N_11OpenOptions8std_open00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCseCDlJsl44RV_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCsjWl3uGiVprL_18influxdb3_commands(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!1769 = !{!1707}
!1770 = !{!1713, !1712, !1707, !1706}
!1771 = !{!1713, !1712, !1707}
!1772 = !{!1715}
!1773 = !{!1717}
!1774 = !{!1717, !1715, !1723, !1721, !1719}
!1775 = !{!1717, !1715, !1713, !1712, !1707}
!1776 = !{!1725}
!1777 = !{!1727}
!1778 = !{!1727, !1725, !1723, !1721, !1719}
!1779 = !{!1727, !1725, !1713, !1712, !1707}
!1780 = !{!1729}
!1781 = !{!1731}
!1782 = !{!1733}
!1783 = !{!1733, !1731, !1737, !1735}
!1784 = !{!1733, !1731, !1729}
!1785 = !{!1739}
!1786 = !{!1741}
!1787 = !{!1741, !1739, !1737, !1735}
!1788 = !{!1741, !1739, !1729}
!1789 = !{!1743}
!1790 = !{!1745}
!1791 = !{!1747}
!1792 = !{!1747, !1745, !1751, !1749}
!1793 = !{!1747, !1745, !1743}
!1794 = !{!1753}
!1795 = !{!1755}
!1796 = !{!1755, !1753, !1751, !1749}
!1797 = !{!1755, !1753, !1743}
!1798 = !{i64 3398762711465697392}
!1799 = !{i64 -2092431958365433149}
!1800 = !{i64 2536066009933266373}
!1801 = !{i64 -9206191618570181171}
!1802 = distinct !{!1802, i1 true, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands"}
!1803 = distinct !{!1803, !1802, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1804 = distinct !{!1804, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0EBI_"}
!1805 = distinct !{!1805, !1804, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtCs2AWtUsOyxgP_3std2fs4FileE0EBI_: argument 0"}
!1806 = distinct !{!1806, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_"}
!1807 = distinct !{!1807, !1806, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_: argument 0"}
!1808 = distinct !{!1808, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_"}
!1809 = distinct !{!1809, !1808, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_: argument 0"}
!1810 = distinct !{!1810, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEB2s_"}
!1811 = distinct !{!1811, !1810, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEB2s_: argument 0"}
!1812 = distinct !{!1812, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan2TxINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBG_7bounded9SemaphoreEEB2l_"}
!1813 = distinct !{!1813, !1812, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan2TxINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBG_7bounded9SemaphoreEEB2l_: argument 0"}
!1814 = distinct !{!1814, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_"}
!1815 = distinct !{!1815, !1814, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_: argument 0"}
!1816 = distinct !{!1816, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_"}
!1817 = distinct !{!1817, !1816, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_: argument 0"}
!1818 = distinct !{!1818, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEEB2y_"}
!1819 = distinct !{!1819, !1818, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEEB2y_: argument 0"}
!1820 = !{i64 -4640699635303241171}
!1821 = !{!1803}
!1822 = !{!1805}
!1823 = !{!1807}
!1824 = !{!1809}
!1825 = !{!1809, !1807, !1813, !1811, !1805}
!1826 = !{!1809, !1807}
!1827 = !{!1815}
!1828 = !{!1817}
!1829 = !{!1817, !1815, !1813, !1811, !1805}
!1830 = !{!1817, !1815}
!1831 = !{!1819}
!1832 = distinct !{!1832, i1 true, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands"}
!1833 = distinct !{!1833, !1832, !"_RINvXs1_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1834 = distinct !{!1834, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_"}
!1835 = distinct !{!1835, !1834, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_: argument 0"}
!1836 = distinct !{!1836, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_"}
!1837 = distinct !{!1837, !1836, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_: argument 0"}
!1838 = distinct !{!1838, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0EBI_"}
!1839 = distinct !{!1839, !1838, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCsjWl3uGiVprL_18influxdb3_commands5write14read_as_streamNtNtNtCs2AWtUsOyxgP_3std2io5stdio5StdinE0EBI_: argument 0"}
!1840 = distinct !{!1840, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEB2s_"}
!1841 = distinct !{!1841, !1840, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc7bounded6SenderINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEB2s_: argument 0"}
!1842 = distinct !{!1842, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan2TxINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBG_7bounded9SemaphoreEEB2l_"}
!1843 = distinct !{!1843, !1842, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan2TxINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBG_7bounded9SemaphoreEEB2l_: argument 0"}
!1844 = distinct !{!1844, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_"}
!1845 = distinct !{!1845, !1844, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtB4_6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtB1d_7bounded9SemaphoreEEEB2U_: argument 0"}
!1846 = distinct !{!1846, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_"}
!1847 = distinct !{!1847, !1846, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc4chan4ChanINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorENtNtBK_7bounded9SemaphoreEENtNtNtB1x_3ops4drop4Drop4dropB2H_: argument 0"}
!1848 = distinct !{!1848, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEEB2y_"}
!1849 = distinct !{!1849, !1848, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtNtNtCseCDlJsl44RV_5tokio4sync4mpsc5error9SendErrorIBC_NtNtCsuxFxh2mtOX_5bytes5bytes5BytesNtNtCsjWl3uGiVprL_18influxdb3_commands5write5ErrorEEEEB2y_: argument 0"}
!1850 = !{i64 2610346820235310195}
!1851 = !{!1833}
!1852 = !{!1835}
!1853 = !{!1837}
!1854 = !{!1837, !1835, !1843, !1841, !1839}
!1855 = !{!1837, !1835}
!1856 = !{!1845}
!1857 = !{!1847}
!1858 = !{!1847, !1845, !1843, !1841, !1839}
!1859 = !{!1847, !1845}
!1860 = !{!1849}
!1861 = distinct !{!1861, i1 true, !"_RNCNCNvMNtNtCseCDlJsl44RV_5tokio2fs12open_optionsNtB6_11OpenOptions8std_open00CsjWl3uGiVprL_18influxdb3_commands"}
!1862 = distinct !{!1862, !1861, !"_RNCNCNvMNtNtCseCDlJsl44RV_5tokio2fs12open_optionsNtB6_11OpenOptions8std_open00CsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1863 = distinct !{!1863, !1861, !"_RNCNCNvMNtNtCseCDlJsl44RV_5tokio2fs12open_optionsNtB6_11OpenOptions8std_open00CsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1864 = !{i64 2085542344421026376}
!1865 = !{!1863, !1862}
!1866 = distinct !{!1866, i1 true, !"_RNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB9_9GetResult5bytes00CsjWl3uGiVprL_18influxdb3_commands"}
!1867 = distinct !{!1867, !1866, !"_RNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB9_9GetResult5bytes00CsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1868 = distinct !{!1868, !1866, !"_RNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtB9_9GetResult5bytes00CsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1869 = distinct !{!1869, i1 true, !"_RNCNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtBb_9GetResult5bytes000CsjWl3uGiVprL_18influxdb3_commands"}
!1870 = distinct !{!1870, !1869, !"_RNCNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtBb_9GetResult5bytes000CsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1871 = distinct !{!1871, !1869, !"_RNCNCNCNvMs0_Cs1LivM9IBWqb_12object_storeNtBb_9GetResult5bytes000CsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1872 = !{i64 8283044469221277330}
!1873 = !{!1867}
!1874 = !{!1868}
!1875 = !{!1871, !1870, !1867, !1868}
!1876 = !{!1871, !1867}
!1877 = !{!1867, !1868}
!1878 = !{!1870, !1867, !1868}
!1879 = !{i64 3815403055615101382}
!1880 = !{i64 8050946747358147549}
!1881 = !{i64 -8149084118542373888}
!1882 = !{i64 -5478416820404761836}
!1883 = !{i64 -8538277710037761815}
!1884 = !{i64 -8474992263622497580}
!1885 = !{i64 5131439486910646949}
!1886 = distinct !{!1886, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBH_5value11HeaderValueEECsjWl3uGiVprL_18influxdb3_commands"}
!1887 = distinct !{!1887, !1886, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBH_5value11HeaderValueEECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1888 = distinct !{!1888, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsjWl3uGiVprL_18influxdb3_commands"}
!1889 = distinct !{!1889, !1888, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1890 = distinct !{!1890, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsjWl3uGiVprL_18influxdb3_commands"}
!1891 = distinct !{!1891, !1890, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1892 = distinct !{!1892, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header4name4ReprNtBE_6CustomEECsjWl3uGiVprL_18influxdb3_commands"}
!1893 = distinct !{!1893, !1892, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header4name4ReprNtBE_6CustomEECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1894 = distinct !{!1894, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name6CustomECsjWl3uGiVprL_18influxdb3_commands"}
!1895 = distinct !{!1895, !1894, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name6CustomECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1896 = distinct !{!1896, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8byte_str7ByteStrECsjWl3uGiVprL_18influxdb3_commands"}
!1897 = distinct !{!1897, !1896, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8byte_str7ByteStrECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1898 = distinct !{!1898, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands"}
!1899 = distinct !{!1899, !1898, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1900 = distinct !{!1900, i1 true, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!1901 = distinct !{!1901, !1900, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!1902 = distinct !{!1902, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsjWl3uGiVprL_18influxdb3_commands"}
!1903 = distinct !{!1903, !1902, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1904 = distinct !{!1904, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands"}
!1905 = distinct !{!1905, !1904, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1906 = distinct !{!1906, i1 true, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!1907 = distinct !{!1907, !1906, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!1908 = distinct !{!1908, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsjWl3uGiVprL_18influxdb3_commands"}
!1909 = distinct !{!1909, !1908, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1910 = distinct !{!1910, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands"}
!1911 = distinct !{!1911, !1910, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1912 = distinct !{!1912, i1 true, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop"}
!1913 = distinct !{!1913, !1912, !"_RNvXs1_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop: argument 0"}
!1914 = !{i64 -4978468567935053403}
!1915 = !{!1887}
!1916 = !{!1889}
!1917 = !{!1891}
!1918 = !{!1893}
!1919 = !{!1893, !1891, !1889, !1887}
!1920 = !{!1895}
!1921 = !{!1897}
!1922 = !{!1899}
!1923 = !{!1901}
!1924 = !{!1901, !1899, !1897, !1895, !1893, !1891, !1889, !1887}
!1925 = !{!1889, !1887}
!1926 = !{!1903}
!1927 = !{!1905}
!1928 = !{!1907}
!1929 = !{!1907, !1905, !1903, !1889, !1887}
!1930 = !{!1909}
!1931 = !{!1911}
!1932 = !{!1913}
!1933 = !{!1913, !1911, !1909, !1889, !1887}
!1934 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6P5GRezSnwZ_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsjWl3uGiVprL_18influxdb3_commands}
!1935 = distinct !{!1935, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands"}
!1936 = distinct !{!1936, !1935, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1937 = distinct !{!1937, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1q_4SyncEL_EECsjWl3uGiVprL_18influxdb3_commands"}
!1938 = distinct !{!1938, !1937, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1q_4SyncEL_EECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1939 = distinct !{!1939, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_ENtNtNtBK_3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands"}
!1940 = distinct !{!1940, !1939, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_ENtNtNtBK_3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1941 = distinct !{!1941, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands"}
!1942 = distinct !{!1942, !1941, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1943 = distinct !{!1943, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands"}
!1944 = distinct !{!1944, !1943, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1945 = distinct !{!1945, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1q_4SyncEL_EECsjWl3uGiVprL_18influxdb3_commands"}
!1946 = distinct !{!1946, !1945, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1q_4SyncEL_EECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1947 = distinct !{!1947, i1 true, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_ENtNtNtBK_3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands"}
!1948 = distinct !{!1948, !1947, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_ENtNtNtBK_3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1949 = !{i64 2661653215902354746}
!1950 = !{!1936}
!1951 = !{!1938}
!1952 = !{!1940}
!1953 = !{!1940, !1938, !1936, !1942}
!1954 = !{!1940, !1938, !1936}
!1955 = !{!1944}
!1956 = !{!1946}
!1957 = !{!1948}
!1958 = !{!1948, !1946, !1944, !1942}
!1959 = !{!1948, !1946, !1944}
!1960 = !{i64 -6391132692984534228}
!1961 = !{i64 -3671082500867423345}
!1962 = !{i64 6170961248627156019}
!1963 = distinct !{!1963, i1 true, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands"}
!1964 = distinct !{!1964, !1963, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands: argument 1:Peel0"}
!1965 = distinct !{!1965, i1 true, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands"}
!1966 = distinct !{!1966, !1965, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands: argument 1:Peel0"}
!1967 = distinct !{!1967, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1968 = distinct !{!1968, !1967, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1:Peel0"}
!1969 = distinct !{!1969, i1 true, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands"}
!1970 = distinct !{!1970, !1969, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1971 = distinct !{!1971, i1 true, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1972 = distinct !{!1972, !1971, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1:Peel0"}
!1973 = distinct !{!1973, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1974 = distinct !{!1974, !1973, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1:Peel0"}
!1975 = distinct !{!1975, !1969, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1976 = distinct !{!1976, i1 true, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands"}
!1977 = distinct !{!1977, !1976, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1978 = distinct !{!1978, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1979 = distinct !{!1979, !1978, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1980 = distinct !{!1980, i1 true, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1981 = distinct !{!1981, !1980, !"_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtB13_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEEEINtB5_8FuseImplBY_E4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1982 = distinct !{!1982, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1983 = distinct !{!1983, !1982, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1984 = distinct !{!1984, !2010}
!1985 = distinct !{!1985, i1 true, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands"}
!1986 = distinct !{!1986, !1985, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands: argument 0"}
!1987 = distinct !{!1987, !1985, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEB1T_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1988 = distinct !{!1988, i1 true, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands"}
!1989 = distinct !{!1989, !1988, !"_RNvYNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1X_3ops8function6FnOnceTQB5_EE9call_onceCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1990 = distinct !{!1990, i1 true, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands"}
!1991 = distinct !{!1991, !1990, !"_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjWl3uGiVprL_18influxdb3_commands: argument 1"}
!1992 = !{i64 -6832579955410511707}
!1993 = !{!1964}
!1994 = !{!1966}
!1995 = !{!1968}
!1996 = !{!1968, !1966, !1964}
!1997 = !{!1968, !1966, !1970, !1964}
!1998 = !{!1970}
!1999 = !{!1972}
!2000 = !{!1974}
!2001 = !{!1974, !1972}
!2002 = !{!1975}
!2003 = !{!1977}
!2004 = !{!1979}
!2005 = !{!1979, !1977, !1975}
!2006 = !{!1979, !1977, !1970, !1975}
!2007 = !{!1981}
!2008 = !{!1983}
!2009 = !{!1983, !1981}
!2010 = !{!"llvm.loop.peeled.count", i32 1}
!2011 = !{!1986}
!2012 = !{!1987}
!2013 = !{!1989}
!2014 = !{!1991}
!2015 = !{!1991, !1989, !1987}
!2016 = !{!1991, !1989, !1986, !1987}
end_hunk_1
