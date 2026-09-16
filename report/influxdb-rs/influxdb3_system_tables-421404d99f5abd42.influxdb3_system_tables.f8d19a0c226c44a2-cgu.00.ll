Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_system_tables-421404d99f5abd42.influxdb3_system_tables.f8d19a0c226c44a2-cgu.00?download=true
inline.NumInlined: 7480
inline.NumDeleted: 2116
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast13UtilityOptionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables:bb.a

bb.k:                                             ; preds = %.loopexit, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.027, ptr %i.r, align 8, !noalias !14285
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast13UtilityOptionEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.l unwind label %bb.j, !noalias !14285, !inline_history !14280

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast13UtilityOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.i, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit
  store i64 %i.h, ptr %i.r, align 8, !noalias !14281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14281
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.09 = alloca [64 x i8], align 8           ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !108, !noundef !108 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !noundef !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14310
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 128102389400760776) %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !noalias !14310
  %i.i = load i64, ptr %i.b, align 8, !range !133, !noalias !14310, !noundef !108
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !244, !noalias !14310, !noundef !108 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit, !prof !245

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !14310
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #22, !noalias !14310
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !14310, !nonnull !108, !noundef !108 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p), !noalias !14310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14310
  store i64 %i.l, ptr %i.d, align 8, !noalias !14310
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !14310
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.h
  %i.t = icmp eq i64 %i.l, 0
  br i1 %i.t, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.02.026 = phi ptr [ %i.g, %.lr.ph ], [ %i.y, %bb.h ] ; 6 uses
  %.sroa.7.025 = phi i64 [ 0, %.lr.ph ], [ %i.z, %bb.h ] ; 3 uses
  %.sroa.10.024 = phi i64 [ %i.l, %.lr.ph ], [ %i.w, %bb.h ]
  %i.w = add i64 %.sroa.10.024, -1                ; 2 uses
  %i.x = icmp eq ptr %.sroa.02.026, %i.s
  br i1 %i.x, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.d

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.026, i64 72
  %i.z = add nuw nsw i64 %.sroa.7.025, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14313), !noalias !14314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14315), !noalias !14314
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.02.026)
          to label %.noexc unwind label %.loopexit, !inline_history !14302

.noexc:                                           ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.026, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !range !246, !alias.scope !14316, !noalias !14317, !noundef !108
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.026, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !alias.scope !14318, !noalias !14319
  store i32 %i.ab, ptr %i.v, align 8, !alias.scope !14313, !noalias !14320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14321), !noalias !14314
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprE13new_uninit_inCslmsipRFvlgQ_23influxdb3_system_tables()
          to label %.noexc.i unwind label %bb.f, !noalias !14319, !inline_history !14305 ; 3 uses

.noexc.i:                                         ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.026, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !14322, !noalias !14319, !nonnull !108, !noundef !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14323
  invoke fastcc void @_RNvXs6H_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.af)
          to label %bb.h unwind label %bb.e, !inline_history !14308

bb.e:                                             ; preds = %.noexc.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 328, i64 noundef 8) #21, !noalias !14324
  br label %.body.i

bb.f:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.ag, %bb.e ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.j unwind label %bb.g, !noalias !14319, !inline_history !14302

bb.g:                                             ; preds = %.body.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !14319, !inline_history !14302
  unreachable

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ad, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !14323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14323
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.09)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.09, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !14314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14312
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.7.025 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.09, i64 64, i1 false), !noalias !14314
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store ptr %i.ad, ptr %.sroa.410.0..sroa_idx, align 8, !noalias !14314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.09)
  %i.ak = icmp eq i64 %i.w, 0
  br i1 %i.ak, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.c

bb.i:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !14314, !inline_history !14309
  unreachable

bb.j:                                             ; preds = %.loopexit, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.025, ptr %i.r, align 8, !noalias !14314
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.k unwind label %bb.i, !noalias !14314, !inline_history !14309

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %eh.lpad-body

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15DictionaryFieldNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.h, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit
  store i64 %i.h, ptr %i.r, align 8, !noalias !14310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !14325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14310
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast15RaisErrorOptionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14332
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.16.val, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !14332
  %i.b = load i64, ptr %i.a, align 8, !range !133, !noalias !14332, !noundef !108
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !244, !noalias !14332, !noundef !108 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i, !prof !245

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !14332
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22, !noalias !14332
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !14332, !nonnull !108, !noundef !108 ; 3 uses
  %i.i = icmp ule i64 %.16.val, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14332
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.16.val
  %i.k = icmp eq i64 %i.e, 0
  br i1 %i.k, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15RaisErrorOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i
  %i.l = add i64 %i.e, -1
  %i.m = tail call i64 @llvm.umin.i64(i64 %.16.val, i64 %i.l)
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.n, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.o = and i64 %i.n, 31                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 32, i64 %i.o
  %n.vec = sub i64 %i.n, %i.q                     ; 4 uses
  %1 = getelementptr i8, ptr %.8.val, i64 %n.vec
  %i.r = sub i64 %i.e, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.8.val, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !14331, !noalias !14333
  %wide.load2 = load <16 x i8>, ptr %i.s, align 1, !alias.scope !14331, !noalias !14333
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %wide.load, ptr %i.t, align 1, !noalias !14332
  store <16 x i8> %wide.load2, ptr %i.u, align 1, !noalias !14332
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %.lr.ph.i.preheader5, label %vector.body, !llvm.loop !14329

.lr.ph.i.preheader5:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.013.022.i.ph = phi ptr [ %.8.val, %.lr.ph.i.preheader ], [ %1, %vector.body ]
  %.sroa.7.021.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  %.sroa.10.020.i.ph = phi i64 [ %i.e, %.lr.ph.i.preheader ], [ %i.r, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader5, %bb.c
  %.sroa.013.022.i = phi ptr [ %i.z, %bb.c ], [ %.sroa.013.022.i.ph, %.lr.ph.i.preheader5 ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.y, %bb.c ], [ %.sroa.7.021.i.ph, %.lr.ph.i.preheader5 ] ; 2 uses
  %.sroa.10.020.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.10.020.i.ph, %.lr.ph.i.preheader5 ]
  %i.w = icmp eq ptr %.sroa.013.022.i, %i.j
  br i1 %i.w, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15RaisErrorOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add i64 %.sroa.10.020.i, -1              ; 2 uses
  %i.y = add nuw i64 %.sroa.7.021.i, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 1
  %.val12.i = load i8, ptr %.sroa.013.022.i, align 1, !range !248, !alias.scope !14331, !noalias !14333, !noundef !108
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.7.021.i
  store i8 %.val12.i, ptr %i.aa, align 1, !noalias !14332
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15RaisErrorOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %.lr.ph.i, !llvm.loop !14330

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15RaisErrorOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i
  store i64 %i.e, ptr %0, align 8, !noalias !14331
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14331
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.16.val, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14331
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast15TransactionModeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14340
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 4611686018427387904) %.16.val, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !noalias !14340
  %i.b = load i64, ptr %i.a, align 8, !range !133, !noalias !14340, !noundef !108
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !244, !noalias !14340, !noundef !108 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i, !prof !245

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !14340
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #22, !noalias !14340
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !14340, !nonnull !108, !noundef !108 ; 2 uses
  %i.i = icmp ule i64 %.16.val, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14340
  store i64 %i.e, ptr %0, align 8, !alias.scope !14339, !noalias !14341
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !alias.scope !14339, !noalias !14341
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !14339, !noalias !14341
  %.not.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15TransactionModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i
  %i.l = shl nuw nsw i64 %.16.val, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %.8.val, i64 %i.l, i1 false), !noalias !14339
  store i64 %.16.val, ptr %i.k, align 8, !alias.scope !14339, !noalias !14341
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15TransactionModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast15TransactionModeNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast16CopyLegacyOptionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 40 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14357
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 0, 144115188075855872) %.16.val, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64), !noalias !14357
  %i.k = load i64, ptr %i.h, align 8, !range !133, !noalias !14357, !noundef !108
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !244, !noalias !14357, !noundef !108 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i, !prof !245

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !14357
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #22, !noalias !14358
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !14357, !nonnull !108, !noundef !108 ; 2 uses
  %i.r = icmp ule i64 %.16.val, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14357
  store i64 %i.n, ptr %i.j, align 8, !noalias !14357
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !14357
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.8.val, i64 %.16.val
  %i.v = icmp eq i64 %i.n, 0
  br i1 %i.v, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast16CopyLegacyOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslmsipRFvlgQ_23influxdb3_system_tables.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 12 uses
  %.sroa.521.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.bb, %.lr.ph.i
  %.sroa.025.055.i = phi ptr [ %.8.val, %.lr.ph.i ], [ %i.aj, %bb.bb ] ; 24 uses
  %.sroa.7.052.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ak, %bb.bb ] ; 3 uses
  %.sroa.10.051.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.ah, %bb.bb ]
  %i.ah = add i64 %.sroa.10.051.i, -1             ; 2 uses
  %i.ai = icmp eq ptr %.sroa.025.055.i, %i.u
  br i1 %i.ai, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCsaNmiEuYuYZf_9sqlparser3ast16CopyLegacyOptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECslmsipRFvlgQ_23influxdb3_system_tables.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ac, %bb.ab, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.055.i, i64 64
  %i.ak = add nuw nsw i64 %.sroa.7.052.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14357
  %i.al = load i8, ptr %.sroa.025.055.i, align 8, !range !179, !alias.scope !14361, !noalias !14362, !noundef !108
  switch i8 %i.al, label %.unreachabledefault [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.w
    i8 10, label %bb.x
    i8 11, label %bb.y
    i8 12, label %bb.z
    i8 13, label %bb.aa
    i8 14, label %bb.ab
    i8 15, label %bb.ac
    i8 16, label %bb.ad
    i8 17, label %bb.ae
    i8 18, label %bb.af
    i8 19, label %bb.ag
    i8 20, label %bb.ah
    i8 21, label %bb.ai
    i8 22, label %bb.aj
    i8 23, label %bb.ak
    i8 24, label %bb.al
    i8 25, label %bb.am
    i8 26, label %bb.an
    i8 27, label %bb.ao
    i8 28, label %bb.ap
    i8 29, label %bb.aq
    i8 30, label %bb.ar
    i8 31, label %bb.as
  ]

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.o
  unreachable
end_hunk_0
