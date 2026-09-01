Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.15?download=true
inline.NumInlined: 9161
inline.NumDeleted: 2965
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.660.0, ptr %.sroa.660.0..sroa_idx, align 8
  br label %common.ret

bb.ag:                                            ; preds = %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8950
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !range !10, !alias.scope !8961, !noundef !11
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsaXLCtUcOqO5_15influxdb3_authz7SubjectECsgsNUVCRJO2f_13influxdb3_lib.exit33, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions11PermissionsECsgsNUVCRJO2f_13influxdb3_lib.exit.i29 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %.body25 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions11PermissionsECsgsNUVCRJO2f_13influxdb3_lib.exit.i29: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaXLCtUcOqO5_15influxdb3_authz4role16role_permissions10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsaXLCtUcOqO5_15influxdb3_authz7SubjectECsgsNUVCRJO2f_13influxdb3_lib.exit33 unwind label %bb.af

bb.ak:                                            ; preds = %bb.m, %.body
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi24replace_plugin_directory0CsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %i.c = alloca [176 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [128 x i8], align 8               ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [128 x i8], align 8               ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [176 x i8], align 8               ; 6 uses
  %i.m = alloca [176 x i8], align 8               ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [128 x i8], align 8               ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 11 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.57.sroa.15.sroa.14.i = alloca [56 x i8], align 8 ; 13 uses
  %i.ah = alloca [88 x i8], align 8               ; 13 uses
  %i.ai = alloca [88 x i8], align 8               ; 12 uses
  %i.aj = alloca [88 x i8], align 8               ; 12 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [88 x i8], align 8               ; 12 uses
  %i.ap = alloca [96 x i8], align 8               ; 18 uses
  %.sroa.8541.sroa.11.sroa.8.i = alloca [16 x i8], align 4 ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.0530.i = alloca [24 x i8], align 8       ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 10 uses
  %i.as = alloca [32 x i8], align 8               ; 9 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [48 x i8], align 8               ; 17 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.1245.i = alloca [56 x i8], align 8       ; 9 uses
  %i.aw = alloca [48 x i8], align 8               ; 10 uses
  %.sroa.527.i = alloca [56 x i8], align 8        ; 7 uses
  %i.ax = alloca [96 x i8], align 8               ; 12 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.28 = alloca [56 x i8], align 8           ; 6 uses
  %.sroa.31 = alloca [24 x i8], align 8           ; 2 uses
  %i.az = alloca [112 x i8], align 8              ; 5 uses
  %i.ba = alloca [112 x i8], align 8              ; 6 uses
  %i.bb = alloca [128 x i8], align 8              ; 15 uses
  %i.bc = alloca [48 x i8], align 8               ; 10 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [48 x i8], align 8               ; 10 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.11231 = alloca [56 x i8], align 8        ; 2 uses
  %.sroa.22 = alloca [56 x i8], align 8           ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 18 uses
  %i.bm = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.6187 = alloca [16 x i8], align 8         ; 2 uses
  %.sroa.10175 = alloca [56 x i8], align 8        ; 5 uses
  %.sroa.13 = alloca [56 x i8], align 8           ; 10 uses
  %i.bn = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.6140.sroa.4 = alloca [56 x i8], align 8  ; 2 uses
  %i.bo = alloca [96 x i8], align 8               ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 8, !range !1337, !noundef !11
  switch i8 %i.bq, label %default.unreachable445 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 4, label %bb.o
    i8 5, label %bb.ax
  ]

default.unreachable445:                           ; preds = %bb.fa, %bb.dy, %bb.dt, %bb.ax, %bb.o, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 505
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 507
  store i8 0, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 506
  store i8 0, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !11, !align !52, !noundef !11 ; 2 uses
  store ptr %i.bw, ptr %i.bu, align 8
  store i8 1, ptr %i.br, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.bx, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %i.bw, ptr %i.by, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 520
  store ptr %i.bx, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i8 0, ptr %.sroa.10138.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #36
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #36
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ca) #34
          to label %.body110 unwind label %bb.m

bb.f:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.bo, ptr noundef nonnull align 8 %i.ca, ptr noalias noundef align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.cb = load i32, ptr %i.bo, align 8, !range !7035, !noundef !11 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, -2
  br i1 %i.cc, label %bb.h, label %bb.i

common.ret:                                       ; preds = %bb.ox, %bb.ng, %bb.an, %bb.h
  %.sink = phi i8 [ 1, %bb.ox ], [ 5, %bb.ng ], [ 4, %bb.an ], [ 3, %bb.h ]
  store i8 %.sink, ptr %i.bp, align 8
  ret void

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.i:                                             ; preds = %bb.g
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.6140.sroa.0.0.copyload = load ptr, ptr %.sroa.6140.0..sroa_idx, align 8
  %.sroa.6140.sroa.2.0..sroa.6140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cd = load <2 x i64>, ptr %.sroa.6140.sroa.2.0..sroa.6140.0..sroa_idx.sroa_idx, align 8
  %.sroa.6140.sroa.4.0..sroa.6140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6140.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6140.sroa.4.0..sroa.6140.0..sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ca)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.k:                                             ; preds = %bb.i
  %.not.i67 = icmp eq i32 %i.cb, -1
  br i1 %.not.i67, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i64 %.sroa.4.0.copyload, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !11, !align !52, !noundef !11
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ca, ptr noundef nonnull align 8 dereferenceable(240) %i.cj, i64 240, i1 false)
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %i.ch, ptr %.sroa.8158.0..sroa_idx, align 8
  %.sroa.10160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1600
  store i8 0, ptr %.sroa.10160.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 1600
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6140.sroa.4, i64 56, i1 false)
  %.sroa.6281.sroa.0.0.extract.trunc = trunc nuw nsw i32 %i.cb to i8
  %.sroa.13282.sroa.0.0.extract.trunc285 = trunc i32 %.sroa.3.0.copyload to i8
  %.sroa.13282.sroa.6.0.extract.shift288 = lshr i32 %.sroa.3.0.copyload, 8
  %.sroa.13282.sroa.6.0.extract.trunc289 = trunc i32 %.sroa.13282.sroa.6.0.extract.shift288 to i8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121, %bb.av, %bb.l
  %.sroa.18283.0 = phi i64 [ %.sroa.4.0.copyload, %bb.l ], [ %i.fj, %bb.av ], [ %.sroa.18283.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.21284.0 = phi ptr [ %.sroa.6140.sroa.0.0.copyload, %bb.l ], [ %.sroa.943.1.i336, %bb.av ], [ %.sroa.21284.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.13282.sroa.0.0 = phi i8 [ %.sroa.13282.sroa.0.0.extract.trunc285, %bb.l ], [ %.sroa.13282.sroa.0.0.extract.trunc286, %bb.av ], [ %.sroa.13282.sroa.0.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.13282.sroa.6.0 = phi i8 [ %.sroa.13282.sroa.6.0.extract.trunc289, %bb.l ], [ %.sroa.13282.sroa.6.0.extract.trunc291, %bb.av ], [ %.sroa.13282.sroa.6.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.13282.sroa.7.0 = phi i32 [ %.sroa.3.0.copyload, %bb.l ], [ %.sroa.441.1.i332, %bb.av ], [ %.sroa.13282.sroa.7.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.6281.sroa.0.0 = phi i8 [ %.sroa.6281.sroa.0.0.extract.trunc, %bb.l ], [ %.sroa.6281.sroa.0.0.extract.trunc300, %bb.av ], [ %.sroa.6281.sroa.0.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.6281.sroa.6.0 = phi i8 [ 0, %bb.l ], [ 0, %bb.av ], [ %.sroa.6281.sroa.6.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %.sroa.6281.sroa.7.0 = phi i16 [ 0, %bb.l ], [ 0, %bb.av ], [ %.sroa.6281.sroa.7.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %i.cm = phi <2 x i64> [ %i.cd, %bb.l ], [ %i.fm, %bb.av ], [ %i.ajo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 505 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !range !54, !noundef !11
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.pk, label %bb.pj

bb.m:                                             ; preds = %bb.at, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pf, %bb.pe, %.body80, %.body, %bb.e
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

.body110:                                         ; preds = %.body, %bb.e, %bb.j, %bb.pb, %bb.ou, %bb.ow, %bb.po
  %.pn50.pn = phi { ptr, i32 } [ %i.ajs, %bb.pb ], [ %i.ce, %bb.j ], [ %.pn44.pn.pn, %bb.po ], [ %i.ajh, %bb.ou ], [ %i.ajj, %bb.ow ], [ %i.bz, %bb.e ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 505
  %i.cs = load i8, ptr %i.cr, align 1, !range !54, !noundef !11
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.pq, label %bb.pl

bb.n:                                             ; preds = %bb.v, %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.n
  %i.cv = phi ptr [ %i.cw, %bb.n ], [ %i.el, %bb.ak ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cu, %bb.n ], [ %.pn7.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.cv) #34
          to label %.body110 unwind label %bb.m

bb.o:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1600
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1322, !noalias !8964
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1245.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.527.i)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1600 ; 2 uses
  switch i8 %.pre, label %default.unreachable445 [
    i8 0, label %bb.p
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.x
  ]

bb.p:                                             ; preds = %.thread, %bb.o
  %i.cy = phi ptr [ %i.cl, %.thread ], [ %i.cx, %bb.o ] ; 3 uses
  %i.cz = phi ptr [ %i.ck, %.thread ], [ %i.cw, %bb.o ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1601 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !8964, !nonnull !11, !align !52, !noundef !11
  store i8 1, ptr %i.da, align 1, !noalias !8964
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.dd, ptr noundef nonnull align 8 dereferenceable(240) %i.cz, i64 240, i1 false), !noalias !8964
  %i.de = invoke noundef zeroext i1 @_RNvNtCsbakdBCgU4AF_16influxdb3_server4http17json_content_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dd)
          to label %bb.r unwind label %bb.q, !noalias !8964

bb.q:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.r:                                             ; preds = %bb.p
  br i1 %i.de, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.ab
  %.sroa.527.i.sink = phi ptr [ %.sroa.527.i, %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @70, i64 32), %bb.r ]
  %i.dg = phi ptr [ %i.ds, %bb.ab ], [ %i.cy, %bb.r ] ; 2 uses
  %i.dh = phi ptr [ %i.dt, %bb.ab ], [ %i.cz, %bb.r ]
  %.sroa.040.0.i = phi i32 [ %i.dv, %bb.ab ], [ 15, %bb.r ]
  %.sroa.441.0.i = phi i32 [ %.sroa.3.sroa.0.0.copyload.i, %bb.ab ], [ undef, %bb.r ]
  %.sroa.642.0.i = phi ptr [ %.sroa.3.sroa.2.0.copyload.i, %bb.ab ], [ null, %bb.r ]
  %.sroa.943.0.i = phi ptr [ %.sroa.3.sroa.4.0.copyload.i, %bb.ab ], [ undef, %bb.r ]
  %.sroa.10.0.i = phi i64 [ %.sroa.3.sroa.6.0.copyload.i, %bb.ab ], [ -9223372036854775806, %bb.r ]
  %.sroa.1144.0.i = phi ptr [ %.sroa.3.sroa.8.0.copyload.i, %bb.ab ], [ undef, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i.sink, i64 56, i1 false), !noalias !8964
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1601 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !range !54, !noalias !8964, !noundef !11
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.aj, label %.thread323

bb.t:                                             ; preds = %bb.r
  store i8 0, ptr %i.da, align 1, !noalias !8964
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1000
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.dl, ptr noundef nonnull align 8 dereferenceable(240) %i.dd, i64 240, i1 false), !noalias !8964
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1240
  store ptr %i.dc, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8964
  %.sroa.1025.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1592
  store i8 0, ptr %.sroa.1025.0..sroa_idx.i, align 8, !noalias !8964
  br label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.w, %bb.aa, %bb.ah, %bb.ac, %bb.q
  %i.dm = phi ptr [ %i.ds, %bb.ac ], [ %i.cy, %bb.q ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.w ], [ %i.ds, %bb.aa ] ; 2 uses
  %i.dn = phi ptr [ %i.dt, %bb.ac ], [ %i.cz, %bb.q ], [ %i.dt, %bb.ah ], [ %i.dt, %bb.w ], [ %i.dt, %bb.aa ] ; 2 uses
  %.pn3.pn.pn.i = phi { ptr, i32 } [ %i.dy, %bb.ac ], [ %i.df, %bb.q ], [ %i.eh, %bb.ah ], [ %i.dr, %bb.w ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1601
  %i.dp = load i8, ptr %i.do, align 1, !range !54, !noalias !8964, !noundef !11
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.am, label %bb.ak

bb.u:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #36
          to label %.noexc68 unwind label %bb.n

.noexc68:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #36
          to label %.noexc69 unwind label %bb.n

.noexc69:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8964
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.du) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ai, !noalias !8968

bb.x:                                             ; preds = %bb.o, %bb.t
  %i.ds = phi ptr [ %i.cx, %bb.o ], [ %i.cy, %bb.t ] ; 7 uses
  %i.dt = phi ptr [ %i.cw, %bb.o ], [ %i.cz, %bb.t ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8964
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 3 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi9read_body0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ax, ptr noundef nonnull align 8 %i.du, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.w, !noalias !8968

bb.y:                                             ; preds = %bb.x
  %i.dv = load i32, ptr %i.ax, align 8, !range !7035, !noalias !8964, !noundef !11 ; 3 uses
  %i.dw = icmp eq i32 %i.dv, -2
  br i1 %i.dw, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.3.sroa.0.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !noalias !8964
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3.sroa.2.0.copyload.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !8964 ; 5 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.3.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !8964 ; 4 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.3.sroa.6.0.copyload.i = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !8964 ; 4 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.3.sroa.8.0.copyload.i = load ptr, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !8964 ; 3 uses
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.0..sroa_idx.i, i64 56, i1 false), !noalias !8964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8964
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.du)
          to label %bb.ab unwind label %bb.aa, !noalias !8968

bb.aa:                                            ; preds = %bb.z
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ab:                                            ; preds = %bb.z
  %.not.i.i = icmp eq i32 %i.dv, -1
  br i1 %.not.i.i, label %bb.ad, label %bb.s

bb.ac:                                            ; preds = %bb.ad
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8964
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i) ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !8969, !nonnull !11, !noundef !11
  invoke void %i.ea(ptr noundef %.sroa.3.sroa.8.0.copyload.i, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i, i64 noundef %.sroa.3.sroa.6.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ai, !noalias !8968, !inline_history !60

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !8964
  invoke void @_RINvNtCsdLkRf3gRIi6_10serde_json2de10from_sliceNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.3.sroa.4.0.copyload.i, i64 noundef %.sroa.3.sroa.6.0.copyload.i)
          to label %bb.ae unwind label %bb.ac, !noalias !8968

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !8974)
  %i.eb = load i64, ptr %i.aw, align 8, !range !10, !alias.scope !8977, !noalias !8979, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.eb, -1                   ; 2 uses
  br i1 %.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !8977, !noalias !8979, !nonnull !11, !align !52, !noundef !11
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.ee = inttoptr i64 %i.eb to ptr
  %.sroa.943.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.943.8.copyload.i = load ptr, ptr %.sroa.943.8..sroa_idx.i, align 8, !alias.scope !8980, !noalias !8964
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.10.8.copyload.i = load i64, ptr %.sroa.10.8..sroa_idx.i, align 8, !alias.scope !8980, !noalias !8964
  %.sroa.1144.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.1144.8.copyload.i = load ptr, ptr %.sroa.1144.8..sroa_idx.i, align 8, !alias.scope !8980, !noalias !8964
  %.sroa.1245.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1245.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1245.8..sroa_idx.i, i64 16, i1 false), !alias.scope !8980, !noalias !8964
  br label %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.642.2.i = phi ptr [ %i.ed, %bb.af ], [ %i.ee, %bb.ag ] ; 2 uses
  %.sroa.943.2.i = phi ptr [ undef, %bb.af ], [ %.sroa.943.8.copyload.i, %bb.ag ] ; 2 uses
  %.sroa.10.2.i = phi i64 [ undef, %bb.af ], [ %.sroa.10.8.copyload.i, %bb.ag ] ; 2 uses
  %.sroa.1144.2.i = phi ptr [ undef, %bb.af ], [ %.sroa.1144.8.copyload.i, %bb.ag ] ; 3 uses
  %.sink.i.i = phi i32 [ 38, %bb.af ], [ -1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !8964
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.2.0.copyload.i) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload.i, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !8981, !nonnull !11, !noundef !11
  invoke void %i.eg(ptr noundef %.sroa.3.sroa.8.0.copyload.i, ptr noundef nonnull %.sroa.3.sroa.4.0.copyload.i, i64 noundef %.sroa.3.sroa.6.0.copyload.i)
          to label %bb.ao unwind label %bb.ah, !noalias !8968, !inline_history !60

bb.ah:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ai:                                            ; preds = %bb.am, %bb.ac, %bb.w
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !8968
  unreachable

.thread323:                                       ; preds = %bb.s, %bb.aj
  store i8 0, ptr %i.di, align 1, !noalias !8964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i, i64 56, i1 false), !noalias !8986
  store i8 1, ptr %i.dg, align 8, !noalias !8964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10175, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.av

bb.aj:                                            ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.ej)
          to label %.thread323 unwind label %bb.al, !noalias !8968

bb.ak:                                            ; preds = %bb.am, %bb.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ek = phi ptr [ %i.dg, %bb.al ], [ %i.dm, %bb.am ], [ %i.dm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.el = phi ptr [ %i.dh, %bb.al ], [ %i.dn, %bb.am ], [ %i.dn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.pn7.i = phi { ptr, i32 } [ %i.en, %bb.al ], [ %.pn3.pn.pn.i, %bb.am ], [ %.pn3.pn.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 1601
  store i8 0, ptr %i.em, align 1, !noalias !8964
  store i8 2, ptr %i.ek, align 8, !noalias !8964
  br label %.body

bb.al:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 760
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.eo) #34
          to label %bb.ak unwind label %bb.ai, !noalias !8968

bb.an:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !8964
  store i8 3, ptr %i.ds, align 8, !noalias !8964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ao:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6resultINtB3_6ResultNtNtCs9h7Hq22ZyhR_15influxdb3_types4http29ReplacePluginDirectoryRequestNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorE7map_errNtNtCsbakdBCgU4AF_16influxdb3_server4http5ErrorNvYB1R_INtNtB5_7convert4IntoB2G_E4intoECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 1601
  store i8 0, ptr %i.ep, align 1, !noalias !8964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.1245.i, i64 56, i1 false), !noalias !8986
  store i8 1, ptr %i.ds, align 8, !noalias !8964
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1245.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.527.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10175, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br i1 %.not, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6187, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10175, i64 16, i1 false)
  store ptr %.sroa.642.2.i, ptr %i.dt, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  store ptr %.sroa.943.2.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  store i64 %.sroa.10.2.i, ptr %.sroa.3185.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 507
  store ptr %.sroa.1144.2.i, ptr %i.bn, align 8
  %.sroa.6187.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6187.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6187, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  store i8 0, ptr %i.eq, align 1
  %i.er = ptrtoint ptr %.sroa.1144.2.i to i64
  %.sroa.5197.0.copyload = load ptr, ptr %.sroa.6187.24..sroa_idx, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.sroa.6198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.6198.0.copyload = load i64, ptr %.sroa.6198.0..sroa_idx, align 8 ; 2 uses
  %i.es = icmp ult i64 %.sroa.6198.0.copyload, 192153584101141163
  call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5197.0.copyload, i64 %.sroa.6198.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8987
  store ptr %.sroa.5197.0.copyload, ptr %i.av, align 8, !alias.scope !8994, !noalias !8998
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.5197.0.copyload, ptr %.sroa.5193.0..sroa_idx, align 8, !alias.scope !8994, !noalias !8998
  %.sroa.6194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.er, ptr %.sroa.6194.0..sroa_idx, align 8, !alias.scope !8994, !noalias !8998
  %.sroa.7195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.et, ptr %.sroa.7195.0..sroa_idx, align 8, !alias.scope !8994, !noalias !8998
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTNtNtB8_6string6StringBY_EEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB4o_7HttpApi24replace_plugin_directory00EE9from_iterCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !8987
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 506 ; 2 uses
  store i8 1, ptr %i.ev, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !11, !align !52, !noundef !11
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 104
  %.val66 = load ptr, ptr %i.ey, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ez = atomicrmw add ptr %.val66, i64 1 monotonic, align 8
  %i.fa = icmp slt i64 %i.ez, 0
  br i1 %i.fa, label %bb.as, label %.thread446

bb.as:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

.thread446:                                       ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  store ptr %.val66, ptr %i.fb, align 8
  %.val64 = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !11, !noundef !11
  %.val65 = load i64, ptr %.sroa.3185.0..sroa_idx, align 8, !noundef !11
  store i8 0, ptr %i.ev, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  %.sroa.9217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.fb, ptr %.sroa.9217.0..sroa_idx, align 8
  %.sroa.10218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %.val64, ptr %.sroa.10218.0..sroa_idx, align 8
  %.sroa.11219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i64 %.val65, ptr %.sroa.11219.0..sroa_idx, align 8
  %.sroa.13221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 944
  store i8 0, ptr %.sroa.13221.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i)
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 944
  br label %bb.ay

bb.at:                                            ; preds = %bb.ni
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agk)
          to label %.body105 unwind label %bb.m

bb.au:                                            ; preds = %bb.aq, %bb.pn, %.body105
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.pn ], [ %.pn44.pn, %.body105 ], [ %i.eu, %bb.aq ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 506
  store i8 0, ptr %i.ff, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 507 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !range !54, !noundef !11
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.pp, label %bb.po

bb.av:                                            ; preds = %bb.ao, %.thread323
  %.sroa.1144.1.i340 = phi ptr [ %.sroa.1144.0.i, %.thread323 ], [ %.sroa.1144.2.i, %bb.ao ]
  %.sroa.10.1.i338 = phi i64 [ %.sroa.10.0.i, %.thread323 ], [ %.sroa.10.2.i, %bb.ao ]
  %.sroa.943.1.i336 = phi ptr [ %.sroa.943.0.i, %.thread323 ], [ %.sroa.943.2.i, %bb.ao ]
  %.sroa.642.1.i334 = phi ptr [ %.sroa.642.0.i, %.thread323 ], [ %.sroa.642.2.i, %bb.ao ]
  %.sroa.441.1.i332 = phi i32 [ %.sroa.441.0.i, %.thread323 ], [ undef, %bb.ao ] ; 3 uses
  %.sroa.040.1.i331 = phi i32 [ %.sroa.040.0.i, %.thread323 ], [ %.sink.i.i, %bb.ao ]
  %.sroa.10175.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10175, i64 16
  %.sroa.28.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.28, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.28.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10175.56..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.28, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10175, i64 16, i1 false)
  %.sroa.6281.sroa.0.0.extract.trunc300 = trunc nuw nsw i32 %.sroa.040.1.i331 to i8
  %.sroa.13282.sroa.0.0.extract.trunc286 = trunc i32 %.sroa.441.1.i332 to i8
  %.sroa.13282.sroa.6.0.extract.shift290 = lshr i32 %.sroa.441.1.i332, 8
  %.sroa.13282.sroa.6.0.extract.trunc291 = trunc i32 %.sroa.13282.sroa.6.0.extract.shift290 to i8
  %i.fj = ptrtoint ptr %.sroa.642.1.i334 to i64
  %i.fk = ptrtoint ptr %.sroa.1144.1.i340 to i64
  %i.fl = insertelement <2 x i64> poison, i64 %.sroa.10.1.i338, i64 0
  %i.fm = insertelement <2 x i64> %i.fl, i64 %i.fk, i64 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125

bb.aw:                                            ; preds = %bb.de, %bb.dd
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body80

.body80:                                          ; preds = %.body520.i, %bb.aw
  %i.fo = phi ptr [ %i.fp, %bb.aw ], [ %i.agb, %.body520.i ]
  %eh.lpad-body81 = phi { ptr, i32 } [ %i.fn, %bb.aw ], [ %.pn180.i, %.body520.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl24replace_plugin_directory0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.fo) #34
          to label %bb.ni unwind label %bb.m

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %1, i64 944
  %.pre412 = load i8, ptr %.phi.trans.insert411, align 8, !range !67, !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 17 uses
  switch i8 %.pre412, label %default.unreachable445 [
    i8 0, label %bb.ay
    i8 1, label %bb.dd
    i8 2, label %bb.de
    i8 3, label %bb.dg
    i8 4, label %bb.dt
    i8 5, label %bb.hn
    i8 6, label %bb.fa
    i8 7, label %bb.ir
    i8 8, label %bb.jf
    i8 9, label %bb.jw
    i8 10, label %bb.ks
    i8 11, label %bb.la
    i8 12, label %bb.lr
  ]

bb.ay:                                            ; preds = %.thread446, %bb.ax
  %i.fr = phi ptr [ %i.fe, %.thread446 ], [ %i.fq, %bb.ax ] ; 16 uses
  %i.fs = phi ptr [ %i.fd, %.thread446 ], [ %i.fp, %bb.ax ] ; 17 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 948
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 945
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 568
  store i32 256, ptr %i.fu, align 1, !noalias !8999
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !8999, !nonnull !11, !align !52, !noundef !11 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !8999, !noundef !11
  store ptr %i.fz, ptr %i.fx, align 8, !noalias !8999
  %i.gc = getelementptr i8, ptr %1, i64 600       ; 2 uses
  store i64 %i.gb, ptr %i.gc, align 8, !noalias !8999
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 24, i1 false), !noalias !8999
  %.val194.i = load ptr, ptr %i.fw, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %i.ge = getelementptr inbounds nuw i8, ptr %.val194.i, i64 104
  %i.gf = load i8, ptr %i.ge, align 8, !range !54, !noalias !9003, !noundef !11
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.cw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !8999
  store i64 -1, ptr %i.au, align 8, !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !8999
  %.val193.i = load ptr, ptr %i.fw, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %i.gh = getelementptr inbounds nuw i8, ptr %.val193.i, i64 112
  %.val183.i = load ptr, ptr %i.gh, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %i.gi = getelementptr inbounds nuw i8, ptr %.val183.i, i64 16
  invoke void @_RNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB5_7Catalog14list_db_schema(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noundef nonnull align 8 %i.gi)
          to label %bb.bb unwind label %bb.ba, !noalias !9003

bb.ba:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8999
  br label %.thread1040.i

bb.bb:                                            ; preds = %bb.az
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.at, align 8, !alias.scope !9004, !noalias !9007
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !9004, !noalias !9007, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !9004, !noalias !9007 ; 3 uses
  %i.gk = icmp ult i64 %.sroa.55.0.copyload.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.gk)
  %.idx1104.i = shl nuw nsw i64 %.sroa.55.0.copyload.i.i, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.idx1104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !8999
  store ptr %.sroa.44.0.copyload.i.i, ptr %i.as, align 8, !noalias !8999
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  store ptr %.sroa.44.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.gl, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !8999
  %i.gm = icmp eq i64 %.sroa.55.0.copyload.i.i, 0
  br i1 %i.gm, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit232.i, %bb.bb
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit226.i unwind label %bb.bp, !noalias !9003

.lr.ph.i:                                         ; preds = %bb.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gn = phi ptr [ %i.lo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %.sroa.44.0.copyload.i.i, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9009)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr %i.go, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9009, !noalias !8999
  %i.gp = load ptr, ptr %i.gn, align 8, !noalias !9012, !nonnull !11, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !8999
  store ptr %i.gp, ptr %i.ar, align 8, !noalias !8999
  %i.gq = getelementptr i8, ptr %i.gp, i64 216
  %.val219.i = load ptr, ptr %i.gq, align 8, !noalias !9003, !nonnull !11, !noundef !11 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 224
  %.val220.i = load i64, ptr %i.gr, align 8, !noalias !9003, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val220.i, 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.val219.i, i64 %.idx.i
  %.val222.i = load ptr, ptr %i.fx, align 8, !noalias !8999
  %.val223.i = load i64, ptr %i.gc, align 8, !noalias !8999 ; 2 uses
  %i.gt = icmp eq i64 %.val220.i, 0
  br i1 %i.gt, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.gu = phi ptr [ %i.gv, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.val219.i, %.lr.ph.i ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9013)
  %i.gw = load ptr, ptr %i.gu, align 8, !alias.scope !9013, !noalias !9016, !nonnull !11, !noundef !11 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !9022, !noundef !11
  %i.gz = icmp eq i64 %i.gy, %.val223.i
  br i1 %i.gz, label %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i

_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 96
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !9022, !nonnull !11, !noundef !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hc, ptr nonnull readonly %.val222.i, i64 %.val223.i), !noalias !9022
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.hd = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.hd, label %bb.bd, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.he = icmp eq ptr %i.gv, %i.gs
  br i1 %i.he, label %.loopexit.i, label %.lr.ph.i.i.i

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema7trigger17TriggerDefinitionENCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB3w_27ProcessingEngineManagerImpl24replace_plugin_directory00E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %.lr.ph.i
  %i.hf = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !noalias !9023
  %i.hg = icmp eq i64 %i.hf, 1
  br i1 %i.hg, label %bb.bc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bc:                                            ; preds = %.loopexit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %.loopexit1100.i, !noalias !9003

bb.bd:                                            ; preds = %_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory00CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0530.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !8999
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9028
  store i64 0, ptr %i.ag, align 8, !noalias !9028
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !9028
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9028
  %i.hi = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 1610612768, ptr %i.hi, align 8, !noalias !9028
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !noalias !9028
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 2, !noalias !9028
  store ptr %i.ag, ptr %i.af, align 8, !noalias !9028
  %i.hj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @483, ptr %i.hj, align 8, !noalias !9028
  %i.hk = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hh, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.bf unwind label %bb.be, !noalias !9035

bb.be:                                            ; preds = %bb.bg, %bb.bd
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #34
          to label %.body.i unwind label %bb.bh, !noalias !9035

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.hk, label %bb.bg, label %bb.bj, !prof !29

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @484, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @394, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @486) #36
          to label %.noexc.i.i.i unwind label %bb.be, !noalias !9035

.noexc.i.i.i:                                     ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9035
  unreachable

.body.i:                                          ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8999
  br label %bb.cz

bb.bi:                                            ; preds = %bb.bk, %bb.bj
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #34
          to label %bb.cy unwind label %bb.cx, !noalias !9003

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !9036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9028
  %.val221.i = load ptr, ptr %i.gu, align 8, !noalias !9003, !nonnull !11, !noundef !11 ; 2 uses
  %i.ho = getelementptr i8, ptr %.val221.i, i64 56
  %.val224.i = load ptr, ptr %i.ho, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %i.hp = getelementptr i8, ptr %.val221.i, i64 64
  %.val225.i = load i64, ptr %i.hp, align 8, !noalias !9003, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9037
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.val225.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc229.i unwind label %bb.bi, !noalias !9003

.noexc229.i:                                      ; preds = %bb.bj
  %i.hq = load i64, ptr %i.ae, align 8, !range !27, !noalias !9037, !noundef !11
  %i.hr = trunc nuw i64 %i.hq to i1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !range !28, !noalias !9037, !noundef !11 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.hr, label %bb.bk, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, !prof !29

bb.bk:                                            ; preds = %.noexc229.i
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !9037
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ht, i64 %i.hv) #36
          to label %.noexc230.i unwind label %bb.bi, !noalias !9003

.noexc230.i:                                      ; preds = %bb.bk
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i: ; preds = %.noexc229.i
  %i.hw = load ptr, ptr %i.hu, align 8, !noalias !9037, !nonnull !11, !noundef !11 ; 3 uses
  %i.hx = icmp ule i64 %.val225.i, %i.ht
  call void @llvm.assume(i1 %i.hx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9037
  %.not.i.i.i.i = icmp eq i64 %.val225.i, 0
  br i1 %.not.i.i.i.i, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hw, ptr nonnull readonly align 1 %.val224.i, i64 range(i64 0, -9223372036854775808) %.val225.i, i1 false), !noalias !9045
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bl, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0530.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8999
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.au)
          to label %bb.bn unwind label %bb.bm, !noalias !9003

bb.bm:                                            ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0530.i, i64 24, i1 false), !noalias !8999
  %.sroa.7531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.ht, ptr %.sroa.7531.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.8534.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.hw, ptr %.sroa.8534.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %.val225.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.cz

bb.bn:                                            ; preds = %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0530.i, i64 24, i1 false), !noalias !8999
  %.sroa.7531.0..sroa_idx532.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.ht, ptr %.sroa.7531.0..sroa_idx532.i, align 8, !noalias !8999
  %.sroa.8534.0..sroa_idx535.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store ptr %i.hw, ptr %.sroa.8534.0..sroa_idx535.i, align 8, !noalias !8999
  %.sroa.9.0..sroa_idx537.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %.val225.i, ptr %.sroa.9.0..sroa_idx537.i, align 8, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0530.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !9046)
  call void @llvm.experimental.noalias.scope.decl(metadata !9049)
  %i.hz = load ptr, ptr %i.ar, align 8, !alias.scope !9052, !noalias !8999, !nonnull !11, !noundef !11
  %i.ia = atomicrmw sub ptr %i.hz, i64 1 release, align 8, !noalias !9053
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.bo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit232.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit232.i unwind label %.loopexit.split-lp.i, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i: ; preds = %bb.da, %bb.cz, %.loopexit.split-lp.i, %.loopexit1100.i
  %.pn54.i = phi { ptr, i32 } [ %.pn51.pn.i, %bb.cz ], [ %.pn51.pn.i, %bb.da ], [ %lpad.loopexit.i, %.loopexit1100.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8999
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

.loopexit1100.i:                                  ; preds = %bb.bc
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i

.loopexit.split-lp.i:                             ; preds = %bb.bo
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit232.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8999
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i
  %.pn57.i = phi { ptr, i32 } [ %i.ic, %bb.bp ], [ %.pn54.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8999
  br label %.thread1040.i

bb.bp:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit226.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8541.sroa.11.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !8999
  %.sroa.0545.0.copyload.i = load i64, ptr %i.au, align 8, !noalias !8999 ; 3 uses
  %.not.i.i76 = icmp eq i64 %.sroa.0545.0.copyload.i, -1
  br i1 %.not.i.i76, label %bb.bq, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit226.i
  %.sroa.6547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sroa.0545.0.copyload.i, ptr %i.id, align 8, !alias.scope !9054, !noalias !9058
  %.sroa.6547.0..sroa_idx548.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6547.0..sroa_idx548.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6547.0..sroa_idx.i, i64 40, i1 false), !noalias !8999
  %i.ie = inttoptr i64 %.sroa.0545.0.copyload.i to ptr
  br label %bb.bs

bb.bq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit226.i
  invoke fastcc void @_RNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB9_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fx)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.br, !noalias !9003

bb.br:                                            ; preds = %bb.bq
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8541.sroa.11.sroa.8.i)
  br label %bb.db

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bq
  %.pr.i = load i32, ptr %i.ap, align 8, !alias.scope !9060, !noalias !9063 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9065)
  %.not.i234.i = icmp eq i32 %.pr.i, -1
  br i1 %.not.i234.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit._crit_edge.i, label %bb.cv

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit._crit_edge.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8541.sroa.6.4.copyload934.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !9066, !noalias !8999
  br label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit._crit_edge.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %.sroa.8541.sroa.6.4.copyload934.i = phi ptr [ %.sroa.8541.sroa.6.4.copyload934.pre.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit._crit_edge.i ], [ %i.ie, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.8541.sroa.9.4..sroa_idx935.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.8541.sroa.9.4.copyload936.i = load ptr, ptr %.sroa.8541.sroa.9.4..sroa_idx935.i, align 8, !alias.scope !9066, !noalias !8999
  %.sroa.8541.sroa.10.4..sroa_idx937.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.8541.sroa.11.sroa.8.0..sroa.8541.sroa.11.4..sroa_idx939.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.0..sroa.8541.sroa.11.4..sroa_idx939.sroa_idx.i, i64 16, i1 false), !alias.scope !9066, !noalias !8999
  %.sroa.4941.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %1, i64 664 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 632
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.sroa.3.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %1, i64 648
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.ih = load <2 x i64>, ptr %.sroa.8541.sroa.10.4..sroa_idx937.i, align 8, !alias.scope !9066, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4941.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.i, i64 16, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8541.sroa.11.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8999
  store i8 1, ptr %i.ft, align 4, !noalias !8999
  store ptr %.sroa.8541.sroa.6.4.copyload934.i, ptr %i.ig, align 8, !noalias !8999
  store ptr %.sroa.8541.sroa.9.4.copyload936.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !8999
  store <2 x i64> %i.ih, ptr %.sroa.3.0..sroa_idx.i77, align 8, !noalias !8999
  %.val192.i = load ptr, ptr %i.fw, align 8, !noalias !9003, !nonnull !11, !noundef !11 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.val192.i, i64 16
  %i.ij = load i64, ptr %i.ii, align 8, !range !10, !alias.scope !9067, !noalias !9003, !noundef !11
  %.not.i235.i = icmp eq i64 %i.ij, -1
  br i1 %.not.i235.i, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ik = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 30)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i unwind label %bb.bu, !noalias !9003

bb.bu:                                            ; preds = %bb.bt
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body491.i

bb.bv:                                            ; preds = %bb.bw
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8999
  br label %.body491.i

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8999
  %i.in = getelementptr i8, ptr %.val192.i, i64 24 ; 3 uses
  %.val213.i = load ptr, ptr %i.in, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %i.io = getelementptr i8, ptr %.val192.i, i64 32 ; 3 uses
  %.val214.i = load i64, ptr %i.io, align 8, !noalias !9003, !noundef !11
  %.val190.i = load ptr, ptr %.sroa.4941.sroa.2.0..sroa_idx.i, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ip = getelementptr i8, ptr %1, i64 672
  %.val191.i = load i64, ptr %i.ip, align 8, !noalias !8999, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ao, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val213.i, i64 noundef %.val214.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val190.i, i64 noundef %.val191.i)
          to label %bb.bx unwind label %bb.bv, !noalias !9003

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !9070)
  %i.iq = load i8, ptr %i.ao, align 8, !range !8073, !alias.scope !9073, !noalias !9075, !noundef !11 ; 2 uses
  %.not.i239.i = icmp eq i8 %i.iq, -1
  br i1 %.not.i239.i, label %bb.by, label %bb.cs

bb.by:                                            ; preds = %bb.bx
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8574.sroa.6.7.copyload956.i = load ptr, ptr %i.ir, align 8, !alias.scope !9076, !noalias !8999
  %.sroa.8574.sroa.10.7..sroa_idx959.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.it = load <2 x i64>, ptr %.sroa.8574.sroa.10.7..sroa_idx959.i, align 8, !alias.scope !9076, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8999
  store ptr %.sroa.8574.sroa.6.7.copyload956.i, ptr %4, align 8, !noalias !8999
  store <2 x i64> %i.it, ptr %i.is, align 8, !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8999
  store ptr %3, ptr %i.am, align 8, !noalias !8999
  %.sroa.5583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5583.0..sroa_idx.i, align 8, !noalias !8999
  invoke fastcc void @_RNvNtCscdodAO9FK5_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.an, ptr noundef nonnull @203, ptr noundef nonnull %i.am)
          to label %bb.ca unwind label %bb.bz, !noalias !9003

bb.bz:                                            ; preds = %bb.by
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8999
  br label %.body485.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8999
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.an, i64 24, i1 false), !alias.scope !9077, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8999
  store ptr %3, ptr %i.ak, align 8, !noalias !8999
  %.sroa.5585.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5585.0..sroa_idx.i, align 8, !noalias !8999
  invoke fastcc void @_RNvNtCscdodAO9FK5_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull @204, ptr noundef nonnull %i.ak)
          to label %bb.cd unwind label %bb.cb, !noalias !9003

bb.cb:                                            ; preds = %bb.ca
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8999
  br label %.body255.i

bb.cc:                                            ; preds = %bb.cd
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8999
  br label %.body252.i

bb.cd:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8999
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.al, i64 24, i1 false), !alias.scope !9081, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8999
  %.val211.i = load ptr, ptr %i.in, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %.val212.i = load i64, ptr %i.io, align 8, !noalias !9003, !noundef !11
  %i.iz = getelementptr i8, ptr %1, i64 712
  %.val188.i = load ptr, ptr %i.iz, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ja = getelementptr i8, ptr %1, i64 720
  %.val189.i = load i64, ptr %i.ja, align 8, !noalias !8999, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val211.i, i64 noundef %.val212.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val188.i, i64 noundef %.val189.i)
          to label %bb.ce unwind label %bb.cc, !noalias !9003

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !9085)
  %i.jb = load i8, ptr %i.aj, align 8, !range !8073, !alias.scope !9088, !noalias !9090, !noundef !11 ; 2 uses
  %.not.i242.i = icmp eq i8 %i.jb, -1
  br i1 %.not.i242.i, label %bb.cg, label %bb.cp

bb.cf:                                            ; preds = %bb.cg
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8999
  br label %.body277.i

bb.cg:                                            ; preds = %bb.ce
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.8588.sroa.6.7.copyload964.i = load ptr, ptr %i.jd, align 8, !alias.scope !9091, !noalias !8999
  %.sroa.8588.sroa.9.7..sroa_idx965.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %.sroa.4970.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  %.sroa.5971.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.jf = load <2 x i64>, ptr %.sroa.8588.sroa.9.7..sroa_idx965.i, align 8, !alias.scope !9091, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8999
  store ptr %.sroa.8588.sroa.6.7.copyload964.i, ptr %i.je, align 8, !noalias !8999
  store <2 x i64> %i.jf, ptr %.sroa.4970.0..sroa_idx.i, align 8, !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8999
  %.val209.i = load ptr, ptr %i.in, align 8, !noalias !9003, !nonnull !11, !noundef !11
  %.val210.i = load i64, ptr %i.io, align 8, !noalias !9003, !noundef !11
  %i.jg = getelementptr i8, ptr %1, i64 736
  %.val186.i = load ptr, ptr %i.jg, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.jh = getelementptr i8, ptr %1, i64 744
  %.val187.i = load i64, ptr %i.jh, align 8, !noalias !8999, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ai, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val209.i, i64 noundef %.val210.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val186.i, i64 noundef %.val187.i)
          to label %bb.ch unwind label %bb.cf, !noalias !9003

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !9092)
  %i.ji = load i8, ptr %i.ai, align 8, !range !8073, !alias.scope !9095, !noalias !9097, !noundef !11 ; 2 uses
  %.not.i247.i = icmp eq i8 %i.ji, -1
  br i1 %.not.i247.i, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8598.sroa.6.7.copyload972.i = load ptr, ptr %i.jj, align 8, !alias.scope !9098, !noalias !8999
  %.sroa.8598.sroa.10.7..sroa_idx975.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.jl = load <2 x i64>, ptr %.sroa.8598.sroa.10.7..sroa_idx975.i, align 8, !alias.scope !9098, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8999
  store ptr %.sroa.8598.sroa.6.7.copyload972.i, ptr %5, align 8, !noalias !8999
  store <2 x i64> %i.jl, ptr %i.jk, align 8, !noalias !8999
  %.val207.i = load ptr, ptr %.sroa.4970.0..sroa_idx.i, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %.val208.i = load i64, ptr %.sroa.5971.0..sroa_idx.i, align 8, !noalias !8999, !noundef !11
  %i.jm = invoke fastcc noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6exists(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val207.i, i64 noundef %.val208.i)
          to label %bb.ck unwind label %bb.cj, !noalias !9003

bb.cj:                                            ; preds = %bb.ci
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ck:                                            ; preds = %bb.ci
  br i1 %i.jm, label %bb.cl, label %.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.je, ptr %i.jo, align 8, !noalias !8999
  %.sroa.9622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %.sroa.9622.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.dg

bb.cm:                                            ; preds = %bb.ch
  %.sroa.8598.0..sroa_idx599.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %.sroa.8598.sroa.0.0.copyload.i = load i56, ptr %.sroa.8598.0..sroa_idx599.i, align 1, !alias.scope !9098, !noalias !8999
  %.sroa.8598.sroa.6.0..sroa.8598.0..sroa_idx599.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8598.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8598.sroa.6.0..sroa.8598.0..sroa_idx599.sroa_idx.i, align 8, !alias.scope !9098, !noalias !8999
  %.sroa.8598.sroa.9.0..sroa.8598.0..sroa_idx599.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.jp = load <2 x i64>, ptr %.sroa.8598.sroa.9.0..sroa.8598.0..sroa_idx599.sroa_idx.i, align 8, !alias.scope !9098, !noalias !8999
  %.sroa.10601.0..sroa_idx602.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10601.0..sroa_idx602.i, i64 56, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8999
  %.sroa.4.i249.sroa.3.0.insert.ext.i = zext nneg i8 %i.ji to i64
  %.sroa.4.i249.sroa.3.1.insert.ext.i = zext i56 %.sroa.8598.sroa.0.0.copyload.i to i64
  %.sroa.4.i249.sroa.3.1.insert.shift.i = shl nuw i64 %.sroa.4.i249.sroa.3.1.insert.ext.i, 8
  %.sroa.4.i249.sroa.3.1.insert.insert.i = or disjoint i64 %.sroa.4.i249.sroa.3.1.insert.shift.i, %.sroa.4.i249.sroa.3.0.insert.ext.i
  %i.jq = inttoptr i64 %.sroa.4.i249.sroa.3.1.insert.insert.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit280.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit280.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i, %bb.cm
  %i.jr = phi ptr [ %i.fr, %bb.cm ], [ %i.mr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ] ; 3 uses
  %i.js = phi ptr [ %i.fs, %bb.cm ], [ %i.ms, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ] ; 3 uses
  %.sroa.30.0.i = phi ptr [ %i.jq, %bb.cm ], [ %.sroa.30.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ]
  %.sroa.48.0.i = phi ptr [ %.sroa.8598.sroa.6.0.copyload.i, %bb.cm ], [ %.sroa.48.4.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ]
  %i.jt = phi <2 x i64> [ %i.jp, %bb.cm ], [ %i.mt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ]
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.cn, !noalias !9003

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit280.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %.body252.i unwind label %bb.co, !noalias !9003

bb.co:                                            ; preds = %bb.cn
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit280.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.me, !noalias !9003

.body277.i:                                       ; preds = %bb.mb, %bb.km, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.dq, %bb.cf
  %i.jx = phi ptr [ %i.fr, %bb.cf ], [ %i.mx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.mr, %bb.dq ], [ %i.adv, %bb.mb ], [ %i.aat, %bb.km ]
  %i.jy = phi ptr [ %i.fs, %bb.cf ], [ %i.my, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.ms, %bb.dq ], [ %i.adw, %bb.mb ], [ %i.aau, %bb.km ]
  %.pn157.pn.i = phi { ptr, i32 } [ %i.jc, %bb.cf ], [ %.pn154.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.mv, %bb.dq ], [ %i.adx, %bb.mb ], [ %i.aay, %bb.km ]
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 752
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.jz) #34
          to label %.body252.i unwind label %bb.cx, !noalias !9003

bb.cp:                                            ; preds = %bb.ce
  %.sroa.8588.0..sroa_idx589.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.sroa.8588.sroa.0.0.copyload.i = load i56, ptr %.sroa.8588.0..sroa_idx589.i, align 1, !alias.scope !9091, !noalias !8999
  %.sroa.8588.sroa.6.0..sroa.8588.0..sroa_idx589.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.8588.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8588.sroa.6.0..sroa.8588.0..sroa_idx589.sroa_idx.i, align 8, !alias.scope !9091, !noalias !8999
  %.sroa.8588.sroa.9.0..sroa.8588.0..sroa_idx589.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ka = load <2 x i64>, ptr %.sroa.8588.sroa.9.0..sroa.8588.0..sroa_idx589.sroa_idx.i, align 8, !alias.scope !9091, !noalias !8999
  %.sroa.10591.0..sroa_idx592.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10591.0..sroa_idx592.i, i64 56, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8999
  %.sroa.4.i244.sroa.3.0.insert.ext.i = zext nneg i8 %i.jb to i64
  %.sroa.4.i244.sroa.3.1.insert.ext.i = zext i56 %.sroa.8588.sroa.0.0.copyload.i to i64
  %.sroa.4.i244.sroa.3.1.insert.shift.i = shl nuw i64 %.sroa.4.i244.sroa.3.1.insert.ext.i, 8
  %.sroa.4.i244.sroa.3.1.insert.insert.i = or disjoint i64 %.sroa.4.i244.sroa.3.1.insert.shift.i, %.sroa.4.i244.sroa.3.0.insert.ext.i
  %i.kb = inttoptr i64 %.sroa.4.i244.sroa.3.1.insert.insert.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.cp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.kc = phi ptr [ %i.fr, %bb.cp ], [ %i.jr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 7 uses
  %i.kd = phi ptr [ %i.fs, %bb.cp ], [ %i.js, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ] ; 7 uses
  %.sroa.30.1.i = phi ptr [ %i.kb, %bb.cp ], [ %.sroa.30.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %.sroa.48.1.i = phi ptr [ %.sroa.8588.sroa.6.0.copyload.i, %bb.cp ], [ %.sroa.48.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.ke = phi <2 x i64> [ %i.ka, %bb.cp ], [ %i.jt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.cq, !noalias !9003

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %.body255.i unwind label %bb.cr, !noalias !9003

bb.cr:                                            ; preds = %bb.cq
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.mh, !noalias !9003

.body252.i:                                       ; preds = %bb.me, %bb.mc, %.body277.i, %bb.cn, %bb.cc
  %i.ki = phi ptr [ %i.fr, %bb.cc ], [ %i.jx, %.body277.i ], [ %i.jr, %bb.cn ], [ %i.aeb, %bb.me ], [ %i.aat, %bb.mc ]
  %i.kj = phi ptr [ %i.fs, %bb.cc ], [ %i.jy, %.body277.i ], [ %i.js, %bb.cn ], [ %i.aec, %bb.me ], [ %i.aau, %bb.mc ]
  %.pn160.pn.i = phi { ptr, i32 } [ %i.ix, %bb.cc ], [ %.pn157.pn.i, %.body277.i ], [ %i.jv, %bb.cn ], [ %i.aed, %bb.me ], [ %i.adz, %bb.mc ]
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 728
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kk) #34
          to label %.body255.i unwind label %bb.cx, !noalias !9003

.body255.i:                                       ; preds = %bb.mh, %bb.mf, %.body252.i, %bb.cq, %bb.cb
  %i.kl = phi ptr [ %i.fr, %bb.cb ], [ %i.ki, %.body252.i ], [ %i.kc, %bb.cq ], [ %i.aeh, %bb.mh ], [ %i.aat, %bb.mf ]
  %i.km = phi ptr [ %i.fs, %bb.cb ], [ %i.kj, %.body252.i ], [ %i.kd, %bb.cq ], [ %i.aei, %bb.mh ], [ %i.aau, %bb.mf ]
  %.pn163.i = phi { ptr, i32 } [ %i.iw, %bb.cb ], [ %.pn160.pn.i, %.body252.i ], [ %i.kg, %bb.cq ], [ %i.aej, %bb.mh ], [ %i.aef, %bb.mf ]
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 704
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kn) #34
          to label %.body485.i unwind label %bb.cx, !noalias !9003

.body485.i:                                       ; preds = %bb.mr, %bb.mk, %bb.mi, %.body255.i, %bb.bz
  %i.ko = phi ptr [ %i.fr, %bb.bz ], [ %i.kl, %.body255.i ], [ %i.aat, %bb.mi ], [ %i.aen, %bb.mk ], [ %i.kc, %bb.mr ]
  %i.kp = phi ptr [ %i.fs, %bb.bz ], [ %i.km, %.body255.i ], [ %i.aau, %bb.mi ], [ %i.aeo, %bb.mk ], [ %i.kd, %bb.mr ]
  %.pn165.i = phi { ptr, i32 } [ %i.iu, %bb.bz ], [ %.pn163.i, %.body255.i ], [ %i.ael, %bb.mi ], [ %i.aep, %bb.mk ], [ %i.afk, %bb.mr ]
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.kq) #34
          to label %.body491.i unwind label %bb.cx, !noalias !9003

bb.cs:                                            ; preds = %bb.bx
  %.sroa.8574.0..sroa_idx575.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.8574.sroa.0.0.copyload.i = load i56, ptr %.sroa.8574.0..sroa_idx575.i, align 1, !alias.scope !9076, !noalias !8999
  %.sroa.8574.sroa.6.0..sroa.8574.0..sroa_idx575.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8574.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8574.sroa.6.0..sroa.8574.0..sroa_idx575.sroa_idx.i, align 8, !alias.scope !9076, !noalias !8999
  %.sroa.8574.sroa.9.0..sroa.8574.0..sroa_idx575.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.kr = load <2 x i64>, ptr %.sroa.8574.sroa.9.0..sroa.8574.0..sroa_idx575.sroa_idx.i, align 8, !alias.scope !9076, !noalias !8999
  %.sroa.10577.0..sroa_idx578.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10577.0..sroa_idx578.i, i64 56, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !8999
  %.sroa.4.i.sroa.3.0.insert.ext.i = zext nneg i8 %i.iq to i64
  %.sroa.4.i.sroa.3.1.insert.ext.i = zext i56 %.sroa.8574.sroa.0.0.copyload.i to i64
  %.sroa.4.i.sroa.3.1.insert.shift.i = shl nuw i64 %.sroa.4.i.sroa.3.1.insert.ext.i, 8
  %.sroa.4.i.sroa.3.1.insert.insert.i = or disjoint i64 %.sroa.4.i.sroa.3.1.insert.shift.i, %.sroa.4.i.sroa.3.0.insert.ext.i
  %i.ks = inttoptr i64 %.sroa.4.i.sroa.3.1.insert.insert.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i, %bb.cs, %bb.bt
  %i.kt = phi ptr [ %i.kc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.fr, %bb.cs ], [ %i.fr, %bb.bt ] ; 5 uses
  %i.ku = phi ptr [ %i.kd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.fs, %bb.cs ], [ %i.fs, %bb.bt ] ; 5 uses
  %.sroa.30.2.i = phi ptr [ %.sroa.30.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.ks, %bb.cs ], [ inttoptr (i64 27 to ptr), %bb.bt ]
  %.sroa.48.2.i = phi ptr [ %.sroa.48.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %.sroa.8574.sroa.6.0.copyload.i, %bb.cs ], [ %i.ik, %bb.bt ]
  %i.kv = phi <2 x i64> [ %i.ke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.kr, %bb.cs ], [ undef, %bb.bt ]
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i unwind label %bb.ct, !noalias !9003

bb.ct:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %.body260.i unwind label %bb.cu, !noalias !9003

bb.cu:                                            ; preds = %bb.ct
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit263.i unwind label %bb.mq, !noalias !9003

.body491.i:                                       ; preds = %bb.mt, %bb.mn, %bb.ml, %.body485.i, %bb.bv, %bb.bu
  %i.kz = phi ptr [ %i.fr, %bb.bu ], [ %i.fr, %bb.bv ], [ %i.ko, %.body485.i ], [ %i.aat, %bb.ml ], [ %i.aet, %bb.mn ], [ %i.kc, %bb.mt ]
  %i.la = phi ptr [ %i.fs, %bb.bu ], [ %i.fs, %bb.bv ], [ %i.kp, %.body485.i ], [ %i.aau, %bb.ml ], [ %i.aeu, %bb.mn ], [ %i.kd, %bb.mt ]
  %.pn169.pn.i = phi { ptr, i32 } [ %i.il, %bb.bu ], [ %i.im, %bb.bv ], [ %.pn165.i, %.body485.i ], [ %i.aer, %bb.ml ], [ %i.aev, %bb.mn ], [ %i.afn, %bb.mt ]
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lb) #34
          to label %.body260.i unwind label %bb.cx, !noalias !9003

bb.cv:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBJ_EE10ok_or_elseNtNtCsh4GC5dvIChH_27influxdb3_processing_engine7manager21ProcessingEngineErrorNCNCNvMs6_B1F_NtB1F_27ProcessingEngineManagerImpl24replace_plugin_directory0s_0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sroa.8541.0..sroa_idx542.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.8541.sroa.0.0.copyload.i = load i32, ptr %.sroa.8541.0..sroa_idx542.i, align 4, !alias.scope !9066, !noalias !8999
  %.sroa.8541.sroa.6.0..sroa.8541.0..sroa_idx542.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8541.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8541.sroa.6.0..sroa.8541.0..sroa_idx542.sroa_idx.i, align 8, !alias.scope !9066, !noalias !8999
  %.sroa.8541.sroa.9.0..sroa.8541.0..sroa_idx542.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.8541.sroa.9.0.copyload.i = load ptr, ptr %.sroa.8541.sroa.9.0..sroa.8541.0..sroa_idx542.sroa_idx.i, align 8, !alias.scope !9066, !noalias !8999
  %.sroa.8541.sroa.10.0..sroa.8541.0..sroa_idx542.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.lc = load <2 x i64>, ptr %.sroa.8541.sroa.10.0..sroa.8541.0..sroa_idx542.sroa_idx.i, align 8, !alias.scope !9066, !noalias !8999
  %.sroa.8541.sroa.11.sroa.8.0..sroa.8541.sroa.11.0..sroa.8541.0..sroa_idx542.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.0..sroa.8541.sroa.11.0..sroa.8541.0..sroa_idx542.sroa_idx.sroa_idx.i, i64 16, i1 false), !alias.scope !9066, !noalias !8999
  %.sroa.10.0..sroa_idx544.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.57.sroa.15.sroa.14.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.57.sroa.15.sroa.14.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.57.sroa.15.sroa.14.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx544.i, i64 40, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !8999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.sroa.15.sroa.14.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8541.sroa.11.sroa.8.i, i64 16, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8541.sroa.11.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8999
  br label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i, %bb.cv, %bb.ay
  %i.ld = phi ptr [ %i.fr, %bb.cv ], [ %i.kt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ %i.fr, %bb.ay ] ; 3 uses
  %i.le = phi ptr [ %i.fs, %bb.cv ], [ %i.ku, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ %i.fs, %bb.ay ] ; 3 uses
  %.sroa.30.3.i = phi ptr [ %.sroa.8541.sroa.6.0.copyload.i, %bb.cv ], [ %.sroa.30.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ inttoptr (i64 34 to ptr), %bb.ay ]
  %.sroa.48.3.i = phi ptr [ %.sroa.8541.sroa.9.0.copyload.i, %bb.cv ], [ %.sroa.48.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ undef, %bb.ay ]
  %.sroa.17.3.i = phi i32 [ %.sroa.8541.sroa.0.0.copyload.i, %bb.cv ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ undef, %bb.ay ]
  %.sroa.0834.3.i = phi i32 [ %.pr.i, %bb.cv ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ 4, %bb.ay ] ; 2 uses
  %i.lf = phi <2 x i64> [ %i.lc, %bb.cv ], [ %i.kv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i ], [ undef, %bb.ay ]
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 946 ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 2, !range !54, !noalias !8999, !noundef !11
  %i.li = trunc nuw i8 %i.lh to i1
  br i1 %i.li, label %bb.my, label %bb.nf

bb.cx:                                            ; preds = %bb.ne, %bb.nd, %bb.lq, %bb.lp, %bb.kz, %bb.kr, %bb.jv, %bb.je, %bb.iq, %bb.ip, %.body379.i, %.body353.i, %bb.hm, %.body331.i, %.body311.i, %.body283.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.df, %.thread1040.i, %bb.da, %.body491.i, %.body485.i, %.body255.i, %.body252.i, %.body277.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i, %bb.bi
  %i.lj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

bb.cy:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !8999
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.bm, %.body.i
  %.pn51.pn.i = phi { ptr, i32 } [ %i.hl, %.body.i ], [ %i.hy, %bb.bm ], [ %i.hn, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0530.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !9099)
  call void @llvm.experimental.noalias.scope.decl(metadata !9102)
  %i.lk = load ptr, ptr %i.ar, align 8, !alias.scope !9105, !noalias !8999, !nonnull !11, !noundef !11
  %i.ll = atomicrmw sub ptr %i.lk, i64 1 release, align 8, !noalias !9106
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.da, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit265.i unwind label %bb.cx, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.bc, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !8999
  %i.ln = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !9107, !noalias !8999, !nonnull !11, !noundef !11
  %i.lo = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9107, !noalias !8999, !nonnull !11, !noundef !11 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ln
  br i1 %i.lp, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %.lr.ph.i

bb.db:                                            ; preds = %.thread1040.i, %bb.br
  %.pn176.pn1043.i = phi { ptr, i32 } [ %.pn57.pn.i, %.thread1040.i ], [ %i.if, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !8999
  br label %bb.dc

.thread1040.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ba
  %.pn57.pn.i = phi { ptr, i32 } [ %.pn57.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema8database14DatabaseSchemaEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.gj, %bb.ba ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringBY_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.au) #34
          to label %bb.db unwind label %bb.cx, !noalias !9003

bb.dc:                                            ; preds = %.body515.i, %bb.db
  %i.lq = phi ptr [ %i.fr, %bb.db ], [ %i.afs, %.body515.i ] ; 2 uses
  %i.lr = phi ptr [ %i.fs, %bb.db ], [ %i.aft, %.body515.i ] ; 2 uses
  %.pn176.pn.pn.i = phi { ptr, i32 } [ %.pn176.pn1043.i, %bb.db ], [ %.pn174.i, %.body515.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 946
  %i.lt = load i8, ptr %i.ls, align 2, !range !54, !noalias !8999, !noundef !11
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.ne, label %.body520.i

bb.dd:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #36
          to label %.noexc78 unwind label %bb.aw

.noexc78:                                         ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #36
          to label %.noexc79 unwind label %bb.aw

.noexc79:                                         ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dg
  %i.lv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ly) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.dg:                                            ; preds = %bb.cl, %bb.ax
  %i.lw = phi ptr [ %i.fr, %bb.cl ], [ %i.fq, %bb.ax ] ; 6 uses
  %i.lx = phi ptr [ %i.fs, %bb.cl ], [ %i.fp, %bb.ax ] ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.lz = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ly, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dh unwind label %bb.df, !noalias !9003 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.ma = extractvalue { i64, ptr } %i.lz, 0
  %i.mb = extractvalue { i64, ptr } %i.lz, 1
  %i.mc = trunc nuw i64 %i.ma to i1
  br i1 %i.mc, label %.thread354, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.me = load i8, ptr %i.md, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i = icmp eq i8 %i.me, 3
  br i1 %cond.i.i, label %bb.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.mh = load i8, ptr %i.mg, align 8, !range !1322, !noalias !8999, !noundef !11
  switch i8 %i.mh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i [
    i8 0, label %bb.dk
    i8 3, label %bb.dn
  ]

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.dl, !noalias !9003

bb.dl:                                            ; preds = %bb.dk
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.dm, !noalias !9003

bb.dm:                                            ; preds = %bb.dl
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.dk
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.do, !noalias !9003

bb.dn:                                            ; preds = %bb.dj
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 992
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.do, !noalias !9003

bb.do:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.dn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.dn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.dj, %bb.di
  %i.mm = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %i.mb, ptr noalias noundef nonnull readonly captures(address, read_provenance) @206, i64 noundef 40)
          to label %bb.dp unwind label %bb.do, !noalias !9003 ; 2 uses

bb.dp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.not.i270.i = icmp eq ptr %i.mm, null
  br i1 %.not.i270.i, label %.thread.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

.thread.i:                                        ; preds = %bb.dp, %bb.ck
  %i.mn = phi ptr [ %i.lw, %bb.dp ], [ %i.fr, %bb.ck ]
  %i.mo = phi ptr [ %i.lx, %bb.dp ], [ %i.fs, %bb.ck ]
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  store ptr %i.mp, ptr %i.mq, align 8, !noalias !8999
  %.sroa.9647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  store i8 0, ptr %.sroa.9647.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.du

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i: ; preds = %bb.ma, %bb.ln, %bb.js, %bb.ja, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i, %bb.ex, %bb.dp
  %i.mr = phi ptr [ %i.xj, %bb.ja ], [ %i.ace, %bb.ln ], [ %i.yl, %bb.js ], [ %i.of, %bb.ex ], [ %i.wp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ %i.lw, %bb.dp ], [ %i.ade, %bb.ma ] ; 3 uses
  %i.ms = phi ptr [ %i.xk, %bb.ja ], [ %i.acf, %bb.ln ], [ %i.ym, %bb.js ], [ %i.og, %bb.ex ], [ %i.wq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ %i.lx, %bb.dp ], [ %i.adf, %bb.ma ] ; 3 uses
  %.sroa.30.4.i = phi ptr [ inttoptr (i64 27 to ptr), %bb.ja ], [ inttoptr (i64 27 to ptr), %bb.ln ], [ inttoptr (i64 27 to ptr), %bb.js ], [ inttoptr (i64 27 to ptr), %bb.ex ], [ %.sroa.30.6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ inttoptr (i64 27 to ptr), %bb.dp ], [ inttoptr (i64 27 to ptr), %bb.ma ]
  %.sroa.48.4.i = phi ptr [ %i.xz, %bb.ja ], [ %i.adb, %bb.ln ], [ %i.yy, %bb.js ], [ %i.px, %bb.ex ], [ %.sroa.48.6.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ %i.mm, %bb.dp ], [ %i.adu, %bb.ma ]
  %i.mt = phi <2 x i64> [ undef, %bb.ja ], [ undef, %bb.ln ], [ undef, %bb.js ], [ undef, %bb.ex ], [ %i.wr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ undef, %bb.dp ], [ undef, %bb.ma ]
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i unwind label %bb.dq, !noalias !9003

bb.dq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %.body277.i unwind label %bb.dr, !noalias !9003

bb.dr:                                            ; preds = %bb.dq
  %i.mw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.mu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit280.i unwind label %bb.mb, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.lz, %bb.lw, %bb.lq, %bb.lo, %bb.kj, %bb.kb, %bb.jv, %bb.ju, %bb.jt, %bb.jn, %bb.jk, %bb.je, %bb.jd, %bb.jc, %bb.iz, %bb.iw, %bb.iq, %bb.hc, %bb.gy, %bb.gv, %.body331.i, %bb.ew, %.body283.i, %bb.do, %bb.dl, %bb.df, %bb.cj
  %i.mx = phi ptr [ %i.qe, %bb.gy ], [ %i.lw, %bb.do ], [ %i.to, %.body331.i ], [ %i.of, %bb.ew ], [ %i.xj, %bb.iz ], [ %i.aby, %bb.lo ], [ %i.zp, %bb.jt ], [ %i.zp, %bb.kj ], [ %i.tw, %bb.gv ], [ %i.yl, %bb.jc ], [ %i.qe, %bb.hc ], [ %i.fr, %bb.cj ], [ %i.lw, %bb.dl ], [ %i.lw, %bb.df ], [ %i.ade, %bb.lz ], [ %i.nb, %.body283.i ], [ %i.xj, %bb.iw ], [ %i.xj, %bb.iq ], [ %i.yl, %bb.jn ], [ %i.yl, %bb.jd ], [ %i.yl, %bb.jk ], [ %i.yl, %bb.je ], [ %i.zp, %bb.kb ], [ %i.zp, %bb.ju ], [ %i.zp, %bb.jv ], [ %i.ade, %bb.lw ], [ %i.ade, %bb.lq ]
  %i.my = phi ptr [ %i.qf, %bb.gy ], [ %i.lx, %bb.do ], [ %i.tp, %.body331.i ], [ %i.og, %bb.ew ], [ %i.xk, %bb.iz ], [ %i.abz, %bb.lo ], [ %i.zq, %bb.jt ], [ %i.zq, %bb.kj ], [ %i.tx, %bb.gv ], [ %i.ym, %bb.jc ], [ %i.qf, %bb.hc ], [ %i.fs, %bb.cj ], [ %i.lx, %bb.dl ], [ %i.lx, %bb.df ], [ %i.adf, %bb.lz ], [ %i.nc, %.body283.i ], [ %i.xk, %bb.iw ], [ %i.xk, %bb.iq ], [ %i.ym, %bb.jn ], [ %i.ym, %bb.jd ], [ %i.ym, %bb.jk ], [ %i.ym, %bb.je ], [ %i.zq, %bb.kb ], [ %i.zq, %bb.ju ], [ %i.zq, %bb.jv ], [ %i.adf, %bb.lw ], [ %i.adf, %bb.lq ]
  %.pn154.pn.i = phi { ptr, i32 } [ %i.ud, %bb.gy ], [ %i.ml, %bb.do ], [ %.pn148.i, %.body331.i ], [ %i.py, %bb.ew ], [ %i.xy, %bb.iz ], [ %.pn120.pn.i, %bb.lo ], [ %i.zj, %bb.jt ], [ %i.aas, %bb.kj ], [ %i.ty, %bb.gv ], [ %i.yf, %bb.jc ], [ %i.uj, %bb.hc ], [ %i.jn, %bb.cj ], [ %i.mi, %bb.dl ], [ %i.lv, %bb.df ], [ %i.adt, %bb.lz ], [ %eh.lpad-body284.i, %.body283.i ], [ %i.xv, %bb.iw ], [ %i.xi, %bb.iq ], [ %i.za, %bb.jn ], [ %i.yf, %bb.jd ], [ %i.yx, %bb.jk ], [ %i.yf, %bb.je ], [ %i.aac, %bb.kb ], [ %i.zj, %bb.ju ], [ %i.zj, %bb.jv ], [ %i.adq, %bb.lw ], [ %i.add, %bb.lq ]
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 776
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.mz) #34
          to label %.body277.i unwind label %bb.cx, !noalias !9003

bb.ds:                                            ; preds = %bb.dx, %bb.dw
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body283.i

.body283.i:                                       ; preds = %.body17.i.i, %bb.ds
  %i.nb = phi ptr [ %i.fq, %bb.ds ], [ %i.pt, %.body17.i.i ]
  %i.nc = phi ptr [ %i.fp, %bb.ds ], [ %i.pu, %.body17.i.i ]
  %i.nd = phi ptr [ %i.ne, %bb.ds ], [ %i.pw, %.body17.i.i ]
  %eh.lpad-body284.i = phi { ptr, i32 } [ %i.na, %bb.ds ], [ %.pn12.pn.pn.i.i, %.body17.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.nd) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.dt:                                            ; preds = %bb.ax
  %.phi.trans.insert1110.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 5 uses
  %.pre.i = load i8, ptr %.phi.trans.insert1110.i, align 8, !range !1322, !noalias !9109
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 6 uses
  switch i8 %.pre.i, label %default.unreachable445 [
    i8 0, label %._crit_edge
    i8 1, label %bb.dw
    i8 2, label %bb.dx
    i8 3, label %bb.dy
  ]

._crit_edge:                                      ; preds = %bb.dt
  %.pre413 = load ptr, ptr %i.ne, align 8, !noalias !9109
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge, %.thread.i
  %i.nf = phi ptr [ %i.mn, %.thread.i ], [ %i.fq, %._crit_edge ] ; 2 uses
  %i.ng = phi ptr [ %i.mo, %.thread.i ], [ %i.fp, %._crit_edge ] ; 2 uses
  %i.nh = phi ptr [ %i.mp, %.thread.i ], [ %.pre413, %._crit_edge ] ; 3 uses
  %i.ni = phi ptr [ %.sroa.9647.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert1110.i, %._crit_edge ] ; 2 uses
  %i.nj = phi ptr [ %i.mq, %.thread.i ], [ %i.ne, %._crit_edge ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.nh, ptr %i.nk, align 8, !noalias !9109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9109
  %i.nl = getelementptr i8, ptr %i.nh, i64 8
  %.val.i.i.i = load ptr, ptr %i.nl, align 8, !noalias !9112, !nonnull !11, !noundef !11
  %i.nm = getelementptr i8, ptr %i.nh, i64 16
  %.val1.i.i.i = load i64, ptr %i.nm, align 8, !noalias !9112, !noundef !11
  invoke void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path11to_path_buf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %.thread.i.i unwind label %bb.dv, !noalias !9112

bb.dv:                                            ; preds = %bb.du
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body17.i.i

.thread.i.i:                                      ; preds = %bb.du
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.no, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !9109
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9109
  br label %bb.dz

bb.dw:                                            ; preds = %bb.dt
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #36
          to label %.noexc281.i unwind label %bb.ds, !noalias !9003

.noexc281.i:                                      ; preds = %bb.dw
  unreachable

bb.dx:                                            ; preds = %bb.dt
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #36
          to label %.noexc282.i unwind label %bb.ds, !noalias !9003

.noexc282.i:                                      ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9109
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !1322, !noalias !9113
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  switch i8 %.pre.i.i, label %default.unreachable445 [
    i8 0, label %bb.dz
    i8 1, label %bb.ed
    i8 2, label %bb.ee
    i8 3, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy, %.thread.i.i
  %i.nq = phi ptr [ %i.nf, %.thread.i.i ], [ %i.fq, %bb.dy ] ; 2 uses
  %i.nr = phi ptr [ %i.ng, %.thread.i.i ], [ %i.fp, %bb.dy ] ; 2 uses
  %i.ns = phi ptr [ %i.ni, %.thread.i.i ], [ %.phi.trans.insert1110.i, %bb.dy ] ; 2 uses
  %i.nt = phi ptr [ %i.nj, %.thread.i.i ], [ %i.ne, %bb.dy ] ; 2 uses
  %i.nu = phi ptr [ %.sroa.7.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %bb.dy ] ; 2 uses
  %i.nv = phi ptr [ %i.no, %.thread.i.i ], [ %i.np, %bb.dy ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.nv, i64 24, i1 false), !noalias !9113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9113
  %i.nw = invoke noundef nonnull ptr @_RINvNtNtNtCseCDlJsl44RV_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtB8_2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00INtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtB1W_2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79)
          to label %bb.ec unwind label %bb.eb, !noalias !9116

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9113
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dz
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ec:                                            ; preds = %bb.dz
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr %i.nw, ptr %i.ny, align 8, !noalias !9113
  br label %bb.ef

.body.i.i.i:                                      ; preds = %bb.es, %bb.er, %bb.eq, %bb.ej, %bb.eg, %bb.eb
  %i.nz = phi ptr [ %i.nq, %bb.eb ], [ %i.of, %bb.ej ], [ %i.of, %bb.es ], [ %i.of, %bb.eq ], [ %i.of, %bb.er ], [ %i.of, %bb.eg ]
  %i.oa = phi ptr [ %i.nr, %bb.eb ], [ %i.og, %bb.ej ], [ %i.og, %bb.es ], [ %i.og, %bb.eq ], [ %i.og, %bb.er ], [ %i.og, %bb.eg ]
  %i.ob = phi ptr [ %i.ns, %bb.eb ], [ %i.oh, %bb.ej ], [ %i.oh, %bb.es ], [ %i.oh, %bb.eq ], [ %i.oh, %bb.er ], [ %i.oh, %bb.eg ]
  %i.oc = phi ptr [ %i.nt, %bb.eb ], [ %i.oi, %bb.ej ], [ %i.oi, %bb.es ], [ %i.oi, %bb.eq ], [ %i.oi, %bb.er ], [ %i.oi, %bb.eg ]
  %i.od = phi ptr [ %i.nu, %bb.eb ], [ %i.oj, %bb.ej ], [ %i.oj, %bb.es ], [ %i.oj, %bb.eq ], [ %i.oj, %bb.er ], [ %i.oj, %bb.eg ]
  %i.oe = phi ptr [ %i.nv, %bb.eb ], [ %i.ok, %bb.ej ], [ %i.ok, %bb.es ], [ %i.ok, %bb.eq ], [ %i.ok, %bb.er ], [ %i.ok, %bb.eg ]
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.nx, %bb.eb ], [ %i.oq, %bb.ej ], [ %i.pk, %bb.es ], [ %i.pe, %bb.eq ], [ %i.pe, %bb.er ], [ %i.om, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9113
  store i8 2, ptr %i.od, align 8, !noalias !9113
  br label %.body.i.i

bb.ed:                                            ; preds = %bb.dy
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #36
          to label %.noexc.i.i unwind label %bb.eu, !noalias !9112

.noexc.i.i:                                       ; preds = %bb.ed
  unreachable

bb.ee:                                            ; preds = %bb.dy
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #36
          to label %.noexc16.i.i unwind label %bb.eu, !noalias !9112

.noexc16.i.i:                                     ; preds = %bb.ee
  unreachable

bb.ef:                                            ; preds = %bb.ec, %bb.ea
  %i.of = phi ptr [ %i.nq, %bb.ec ], [ %i.fq, %bb.ea ] ; 9 uses
  %i.og = phi ptr [ %i.nr, %bb.ec ], [ %i.fp, %bb.ea ] ; 8 uses
  %i.oh = phi ptr [ %i.ns, %bb.ec ], [ %.phi.trans.insert1110.i, %bb.ea ] ; 7 uses
  %i.oi = phi ptr [ %i.nt, %bb.ec ], [ %i.ne, %bb.ea ] ; 5 uses
  %i.oj = phi ptr [ %i.nu, %bb.ec ], [ %.phi.trans.insert.i.i, %bb.ea ] ; 7 uses
  %i.ok = phi ptr [ %i.nv, %bb.ec ], [ %i.np, %bb.ea ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9113
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 3 uses
  invoke void @_RNvXs4_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_6future6future6Future4pollCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.eh unwind label %bb.eg, !noalias !9003

bb.eg:                                            ; preds = %bb.ef
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9113
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ol)
          to label %.body.i.i.i unwind label %bb.et, !noalias !9003

bb.eh:                                            ; preds = %bb.ef
  %i.on = load i64, ptr %i.aa, align 8, !range !27, !noalias !9113, !noundef !11
  %i.oo = trunc nuw i64 %i.on to i1
  br i1 %i.oo, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.op = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.op, i64 24, i1 false), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9113
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ol)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.ej, !noalias !9003

bb.ej:                                            ; preds = %bb.ei
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.ei
  %i.or = load i64, ptr %i.ab, align 8, !noalias !9113, !noundef !11
  %.not.i.i.i = icmp eq i64 %i.or, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.os = invoke noundef nonnull ptr @_RINvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB6_5Error3newReEBa_(i8 noundef 40, ptr noalias noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 22)
          to label %bb.el unwind label %bb.es, !noalias !9003 ; 3 uses

.thread.i.i.i:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCseCDlJsl44RV_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !noalias !9113, !noundef !11
  br label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.el:                                            ; preds = %bb.ek
  call void @llvm.experimental.noalias.scope.decl(metadata !9117)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.ov, align 8, !alias.scope !9117, !noalias !9113, !noundef !11 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.ow, align 8, !alias.scope !9117, !noalias !9113 ; 6 uses
  %i.ox = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ox, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.oy = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11, !noalias !9120 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void %i.oy(ptr noundef nonnull %.val2.i.i.i.i)
          to label %bb.eo unwind label %bb.eq, !noalias !9120

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.oz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !range !692, !invariant.load !11, !noalias !9120 ; 2 uses
  %i.pb = icmp eq i64 %i.pa, 0
  br i1 %i.pb, label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.pd = load i64, ptr %i.pc, align 8, !range !693, !invariant.load !11, !noalias !9120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef range(i64 1, 0) %i.pa, i64 noundef range(i64 1, 536870913) %i.pd) #29, !noalias !9120
  br label %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i

bb.eq:                                            ; preds = %bb.en
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !range !692, !invariant.load !11, !noalias !9120 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, 0
  br i1 %i.ph, label %.body.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.pi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !range !693, !invariant.load !11, !noalias !9120
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef range(i64 1, 0) %i.pg, i64 noundef range(i64 1, 536870913) %i.pj) #29, !noalias !9120
  br label %.body.i.i.i

bb.es:                                            ; preds = %bb.ek
  %i.pk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultIBC_uNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtNtNtCseCDlJsl44RV_5tokio7runtime4task5error9JoinErrorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #34
          to label %.body.i.i.i unwind label %bb.et, !noalias !9003

bb.et:                                            ; preds = %bb.es, %bb.eg
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

bb.eu:                                            ; preds = %bb.ee, %bb.ed
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.eu, %.body.i.i.i
  %i.pn = phi ptr [ %i.nz, %.body.i.i.i ], [ %i.fq, %bb.eu ]
  %i.po = phi ptr [ %i.oa, %.body.i.i.i ], [ %i.fp, %bb.eu ]
  %i.pp = phi ptr [ %i.ob, %.body.i.i.i ], [ %.phi.trans.insert1110.i, %bb.eu ]
  %i.pq = phi ptr [ %i.oc, %.body.i.i.i ], [ %i.ne, %bb.eu ]
  %i.pr = phi ptr [ %i.oe, %.body.i.i.i ], [ %i.np, %bb.eu ]
  %.pn10.i.i = phi { ptr, i32 } [ %.pn7.i.i.i, %.body.i.i.i ], [ %i.pm, %bb.eu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCINvNtBG_14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.pr) #34
          to label %.body17.i.i unwind label %bb.ev, !noalias !9003

bb.ev:                                            ; preds = %.body.i.i
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

.body17.i.i:                                      ; preds = %.body.i.i, %bb.dv
  %i.pt = phi ptr [ %i.nf, %bb.dv ], [ %i.pn, %.body.i.i ]
  %i.pu = phi ptr [ %i.ng, %bb.dv ], [ %i.po, %.body.i.i ]
  %i.pv = phi ptr [ %i.ni, %bb.dv ], [ %i.pp, %.body.i.i ]
  %i.pw = phi ptr [ %i.nj, %bb.dv ], [ %i.pq, %.body.i.i ]
  %.pn12.pn.pn.i.i = phi { ptr, i32 } [ %i.nn, %bb.dv ], [ %.pn10.i.i, %.body.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9109
  store i8 2, ptr %i.pv, align 8, !noalias !9109
  br label %.body283.i

_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9113
  store i8 3, ptr %i.oj, align 8, !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9109
  br label %.thread354.sink.split

_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.ep, %bb.eo, %bb.el, %.thread.i.i.i
  %.sroa.03.012.i.i.i = phi ptr [ %i.ou, %.thread.i.i.i ], [ %i.os, %bb.el ], [ %i.os, %bb.eo ], [ %i.os, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9113
  store i8 1, ptr %i.oj, align 8, !noalias !9113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9109
  store i8 1, ptr %i.oh, align 8, !noalias !9109
  %i.px = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %.sroa.03.012.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 31)
          to label %bb.ex unwind label %bb.ew, !noalias !9003 ; 2 uses

bb.ew:                                            ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ex:                                            ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %.not.i291.i = icmp eq ptr %i.px, null
  br i1 %.not.i291.i, label %bb.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

bb.ey:                                            ; preds = %bb.ex
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 946
  store i8 0, ptr %i.pz, align 2, !noalias !8999
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 608
  %.sroa.0659.0.copyload.i = load i64, ptr %i.qa, align 8, !noalias !8999
  %.sroa.5660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.sroa.5660.0.copyload.i = load ptr, ptr %.sroa.5660.0..sroa_idx.i, align 8, !noalias !8999, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.6661.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.sroa.6661.0.copyload.i = load i64, ptr %.sroa.6661.0..sroa_idx.i, align 8, !noalias !8999 ; 2 uses
  %i.qb = icmp ult i64 %.sroa.6661.0.copyload.i, 192153584101141163
  call void @llvm.assume(i1 %i.qb)
  %i.qc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5660.0.copyload.i, i64 %.sroa.6661.0.copyload.i ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 800
  store ptr %.sroa.5660.0.copyload.i, ptr %i.qd, align 8, !noalias !8999
  %.sroa.10656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 808
  store ptr %.sroa.5660.0.copyload.i, ptr %.sroa.10656.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.11657.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 816
  store i64 %.sroa.0659.0.copyload.i, ptr %.sroa.11657.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.12658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  store ptr %i.qc, ptr %.sroa.12658.0..sroa_idx.i, align 8, !noalias !8999
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i, %bb.ey
  %i.qe = phi ptr [ %i.sf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i ], [ %i.of, %bb.ey ] ; 11 uses
  %i.qf = phi ptr [ %i.sg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i ], [ %i.og, %bb.ey ] ; 11 uses
  %i.qg = phi ptr [ %.pre1114.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i ], [ %.sroa.5660.0.copyload.i, %bb.ey ] ; 4 uses
  %i.qh = phi ptr [ %.pre1112.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i ], [ %i.qc, %bb.ey ]
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9121)
  call void @llvm.experimental.noalias.scope.decl(metadata !9124)
  %i.qk = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qk, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334.i
  store i64 -1, ptr %i.qj, align 8, !alias.scope !9121, !noalias !9126
  br label %bb.gu

bb.ez:                                            ; preds = %bb.fx, %bb.fw
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body311.i

.body311.i:                                       ; preds = %bb.ge, %bb.ez
  %i.qm = phi ptr [ %i.fq, %bb.ez ], [ %i.ry, %bb.ge ]
  %i.qn = phi ptr [ %i.fp, %bb.ez ], [ %i.rz, %bb.ge ]
  %i.qo = phi ptr [ %i.qp, %bb.ez ], [ %i.sb, %bb.ge ]
  %eh.lpad-body312.i = phi { ptr, i32 } [ %i.ql, %bb.ez ], [ %.pn8.pn.pn.i.i, %bb.ge ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.qo) #34
          to label %.body353.i unwind label %bb.cx, !noalias !9003

bb.fa:                                            ; preds = %bb.ax
  %.phi.trans.insert1115.i = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 3 uses
  %.pre1116.i = load i8, ptr %.phi.trans.insert1115.i, align 8, !range !1322, !noalias !9127
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  switch i8 %.pre1116.i, label %default.unreachable445 [
    i8 0, label %._crit_edge414
    i8 1, label %bb.fw
    i8 2, label %bb.fx
    i8 3, label %bb.fb
  ]

._crit_edge414:                                   ; preds = %bb.fa
  %.phi.trans.insert415 = getelementptr inbounds nuw i8, ptr %1, i64 976
  %.pre416 = load ptr, ptr %.phi.trans.insert415, align 8, !noalias !9127
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9127
  br label %bb.fy

bb.fc:                                            ; preds = %._crit_edge414, %.thread1144.i
  %i.qq = phi ptr [ %i.wf, %.thread1144.i ], [ %i.fq, %._crit_edge414 ] ; 2 uses
  %i.qr = phi ptr [ %i.wg, %.thread1144.i ], [ %i.fp, %._crit_edge414 ] ; 2 uses
  %i.qs = phi ptr [ %i.wh, %.thread1144.i ], [ %.pre416, %._crit_edge414 ] ; 3 uses
  %i.qt = phi ptr [ %.sroa.10718.0..sroa_idx.i, %.thread1144.i ], [ %.phi.trans.insert1115.i, %._crit_edge414 ] ; 2 uses
  %i.qu = phi ptr [ %i.wj, %.thread1144.i ], [ %i.qp, %._crit_edge414 ] ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 1121 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr %i.qs, ptr %i.qw, align 8, !noalias !9127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9127
  store i8 1, ptr %i.qv, align 1, !noalias !9127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i64 24, i1 false), !noalias !9127
  %i.qx = getelementptr i8, ptr %i.qs, i64 8
  %.val.i.i303.i = load ptr, ptr %i.qx, align 8, !noalias !9130, !nonnull !11, !noundef !11
  %i.qy = getelementptr i8, ptr %i.qs, i64 16
  %.val1.i.i304.i = load i64, ptr %i.qy, align 8, !noalias !9130, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9127
  store i8 0, ptr %i.qv, align 1, !noalias !9127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i64 24, i1 false), !noalias !9127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9131
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringINtNtBV_3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc.i306.i unwind label %bb.ft, !noalias !9130

.noexc.i306.i:                                    ; preds = %bb.fc
  %i.qz = load i64, ptr %i.x, align 8, !range !27, !noalias !9131, !noundef !11
  %i.ra = trunc nuw i64 %i.qz to i1
  %i.rb = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.ra, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %.noexc.i306.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.rb, i64 24, i1 false), !noalias !9131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9131
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringBR_ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc13.i.i unwind label %bb.ft, !noalias !9130

.noexc13.i.i:                                     ; preds = %bb.fd
  %i.rc = load i64, ptr %i.v, align 8, !range !27, !noalias !9131, !noundef !11
  %i.rd = trunc nuw i64 %i.rc to i1
  %i.re = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.rd, label %bb.ff, label %bb.fg

bb.fe:                                            ; preds = %.noexc.i306.i
  %.sroa.12.8.copyload.i.i = load i64, ptr %i.rb, align 8, !noalias !9135
  %.sroa.15.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.15.8.copyload.i.i = load ptr, ptr %.sroa.15.8..sroa_idx.i.i, align 8, !noalias !9135
  %.sroa.16.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.16.8.copyload.i.i = load i64, ptr %.sroa.16.8..sroa_idx.i.i, align 8, !noalias !9135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9131
  br label %bb.fu

bb.ff:                                            ; preds = %.noexc13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.re, i64 24, i1 false), !noalias !9131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9131
  invoke void @_RINvNtNtCseCDlJsl44RV_5tokio4util6typeid13try_transmuteNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsuxFxh2mtOX_5bytes5bytes5BytesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc14.i.i unwind label %bb.ft, !noalias !9130

.noexc14.i.i:                                     ; preds = %bb.ff
  %i.rf = load ptr, ptr %i.s, align 8, !noalias !9131, !noundef !11 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, null
  %i.rh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.rg, label %bb.fj, label %bb.fh

bb.fg:                                            ; preds = %.noexc13.i.i
  %.sroa.12.8.copyload19.i.i = load i64, ptr %i.re, align 8, !noalias !9135
  %.sroa.15.8..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.15.8.copyload23.i.i = load ptr, ptr %.sroa.15.8..sroa_idx22.i.i, align 8, !noalias !9135
  %.sroa.16.8..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.16.8.copyload27.i.i = load i64, ptr %.sroa.16.8..sroa_idx26.i.i, align 8, !noalias !9135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9131
  br label %bb.fu

bb.fh:                                            ; preds = %.noexc14.i.i
  %.sroa.12.0.copyload.i.i = load i64, ptr %i.rh, align 8, !noalias !9135
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.15.0.copyload.i.i = load ptr, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !9135
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.16.0.copyload.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !noalias !9135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9131
  br label %bb.fu

bb.fi:                                            ; preds = %bb.fl, %bb.fj
  %i.ri = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #34
          to label %.body.i305.i unwind label %bb.fs, !noalias !9136

bb.fj:                                            ; preds = %.noexc14.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i64 24, i1 false), !noalias !9131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9131
  %i.rj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i12.i.i = load ptr, ptr %i.rj, align 8, !noalias !9131, !nonnull !11, !noundef !11
  %i.rk = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val4.i.i.i = load i64, ptr %i.rk, align 8, !noalias !9131, !noundef !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9131
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef %.val4.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fk unwind label %bb.fi, !noalias !9136

bb.fk:                                            ; preds = %bb.fj
  %i.rl = load i64, ptr %i.r, align 8, !range !27, !noalias !9131, !noundef !11
  %i.rm = trunc nuw i64 %i.rl to i1
  %i.rn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !range !28, !noalias !9131, !noundef !11 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.rm, label %bb.fl, label %bb.fm, !prof !29

bb.fl:                                            ; preds = %bb.fk
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !9131
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ro, i64 %i.rq) #36
          to label %bb.fr unwind label %bb.fi, !noalias !9136

bb.fm:                                            ; preds = %bb.fk
  %i.rr = load ptr, ptr %i.rp, align 8, !noalias !9131, !nonnull !11, !noundef !11 ; 2 uses
  %i.rs = icmp ule i64 %.val4.i.i.i, %i.ro
  call void @llvm.assume(i1 %i.rs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9131
  %.not.i.i308.i = icmp eq i64 %.val4.i.i.i, 0
  br i1 %.not.i.i308.i, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fq, %bb.fm
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.fo, !noalias !9136

bb.fo:                                            ; preds = %bb.fn
  %i.rt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body.i305.i unwind label %bb.fp, !noalias !9136

bb.fp:                                            ; preds = %bb.fo
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9136
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.fn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc15.i.i unwind label %bb.ft, !noalias !9130

.noexc15.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9131
  br label %bb.fu

bb.fq:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rr, ptr nonnull align 1 %.val.i12.i.i, i64 %.val4.i.i.i, i1 false), !noalias !9136
  br label %bb.fn

bb.fr:                                            ; preds = %bb.fl
  unreachable

bb.fs:                                            ; preds = %bb.fi
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9136
  unreachable

bb.ft:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.ff, %bb.fd, %bb.fc
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i305.i

.body.i305.i:                                     ; preds = %bb.ft, %bb.fo, %bb.fi
end_hunk_0
begin_hunk_1_@_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi24replace_plugin_directory0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i unwind label %bb.go, !noalias !9003

bb.go:                                            ; preds = %bb.gn
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %.body325.i unwind label %bb.gp, !noalias !9003

bb.gp:                                            ; preds = %bb.go
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i: ; preds = %bb.gn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ta)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit328.i unwind label %bb.gq, !noalias !9003

.body325.i:                                       ; preds = %.body353.i, %bb.if, %bb.hf, %bb.gq, %bb.go
  %i.td = phi ptr [ %i.qe, %bb.hf ], [ %i.wk, %.body353.i ], [ %i.sf, %bb.go ], [ %i.ti, %bb.gq ], [ %i.wa, %bb.if ] ; 2 uses
  %i.te = phi ptr [ %i.qf, %bb.hf ], [ %i.wl, %.body353.i ], [ %i.sg, %bb.go ], [ %i.tj, %bb.gq ], [ %i.wb, %bb.if ] ; 2 uses
  %.pn143.pn.i = phi { ptr, i32 } [ %i.ul, %bb.hf ], [ %.pn139.pn.pn.i, %.body353.i ], [ %i.tb, %bb.go ], [ %i.tk, %bb.gq ], [ %i.wd, %bb.if ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 945
  %i.tg = load i8, ptr %i.tf, align 1, !range !54, !noalias !8999, !noundef !11
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.ip, label %.body379.i

bb.gq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i
  %i.ti = phi ptr [ %i.wa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ], [ %i.sf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i ]
  %i.tj = phi ptr [ %i.wb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ], [ %i.sg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i ]
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %.body325.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit328.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i324.i
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.tl, align 1, !noalias !8999
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i unwind label %bb.gr, !noalias !9003

bb.gr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit328.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %.body331.i unwind label %bb.gs, !noalias !9003

bb.gs:                                            ; preds = %bb.gr
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit328.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ss)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i unwind label %bb.gt, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334_crit_edge.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i
  %.phi.trans.insert1111.i = getelementptr inbounds nuw i8, ptr %1, i64 824
  %.pre1112.i = load ptr, ptr %.phi.trans.insert1111.i, align 8, !alias.scope !9124, !noalias !9146
  %.phi.trans.insert1113.i = getelementptr inbounds nuw i8, ptr %1, i64 808
  %.pre1114.i = load ptr, ptr %.phi.trans.insert1113.i, align 8, !alias.scope !9124, !noalias !9146
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334.i

.body331.i:                                       ; preds = %.body379.i, %bb.ij, %bb.gt, %bb.gr
  %i.to = phi ptr [ %i.xb, %.body379.i ], [ %i.sf, %bb.gr ], [ %i.tr, %bb.gt ], [ %i.wp, %bb.ij ]
  %i.tp = phi ptr [ %i.xc, %.body379.i ], [ %i.sg, %bb.gr ], [ %i.ts, %bb.gt ], [ %i.wq, %bb.ij ]
  %.pn148.i = phi { ptr, i32 } [ %.pn146.i, %.body379.i ], [ %i.tm, %bb.gr ], [ %i.tt, %bb.gt ], [ %i.ww, %bb.ij ]
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 800
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.tq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.gt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i
  %i.tr = phi ptr [ %i.wp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i ], [ %i.sf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i ]
  %i.ts = phi ptr [ %i.wq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i ], [ %i.sg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i330.i ]
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %.body331.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit334.i
  %i.tu = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.tv = getelementptr inbounds nuw i8, ptr %i.qg, i64 48
  store ptr %i.tv, ptr %i.tu, align 8, !alias.scope !9124, !noalias !9146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qj, ptr noundef nonnull align 8 dereferenceable(48) %i.qg, i64 48, i1 false), !noalias !9147
  %.pr1063.i = load i64, ptr %i.qj, align 8, !noalias !8999
  %.not87.i = icmp eq i64 %.pr1063.i, -1
  br i1 %.not87.i, label %bb.gu, label %bb.hg

bb.gu:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.qi)
          to label %bb.gw unwind label %bb.gv, !noalias !9003

bb.gv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i, %bb.gu
  %i.tw = phi ptr [ %i.wp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ %i.qe, %bb.gu ]
  %i.tx = phi ptr [ %i.wq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i ], [ %i.qf, %bb.gu ]
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.gw:                                            ; preds = %bb.gu
  %i.tz = getelementptr i8, ptr %1, i64 688
  %.val203.i = load ptr, ptr %i.tz, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ua = getelementptr i8, ptr %1, i64 696
  %.val204.i = load i64, ptr %i.ua, align 8, !noalias !8999, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9148
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val203.i, i64 noundef %.val204.i)
          to label %.noexc339.i unwind label %bb.gy, !noalias !9003

.noexc339.i:                                      ; preds = %bb.gw
  %i.ub = load i64, ptr %i.m, align 8, !range !760, !noalias !9148, !noundef !11
  %.not.i.i338.i = icmp eq i64 %i.ub, 2
  br i1 %.not.i.i338.i, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %.noexc339.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val1.i.i = load ptr, ptr %i.uc, align 8, !noalias !9148, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val1.i.i)
          to label %bb.gz unwind label %bb.gy, !noalias !9003

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9148
  br label %bb.jr

bb.ha:                                            ; preds = %.noexc339.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9148
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.uf = getelementptr i8, ptr %1, i64 784
  %.val201.i = load ptr, ptr %i.uf, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ug = getelementptr i8, ptr %1, i64 792
  %.val202.i = load i64, ptr %i.ug, align 8, !noalias !8999, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9151
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val201.i, i64 noundef %.val202.i)
          to label %.noexc343.i unwind label %bb.hc, !noalias !9003

.noexc343.i:                                      ; preds = %bb.ha
  %i.uh = load i64, ptr %i.l, align 8, !range !760, !noalias !9151, !noundef !11
  %.not.i.i341.i = icmp eq i64 %i.uh, 2
  br i1 %.not.i.i341.i, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %.noexc343.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i342.i = load ptr, ptr %i.ui, align 8, !noalias !9151, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val1.i342.i)
          to label %bb.hd unwind label %bb.hc, !noalias !9003

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9151
  br label %bb.jb

bb.he:                                            ; preds = %.noexc343.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9151
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.ue, ptr %i.uk, align 8, !noalias !8999
  %.sroa.9743.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %.sroa.9743.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.ir

bb.hf:                                            ; preds = %bb.hg
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8999
  br label %.body325.i

bb.hg:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.um, ptr noundef nonnull align 8 dereferenceable(24) %i.qg, i64 24, i1 false), !noalias !9003
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 1, ptr %i.un, align 1, !noalias !8999
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 952
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uo, ptr noundef nonnull align 8 dereferenceable(24) %i.up, i64 24, i1 false), !noalias !8999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8999
  %i.uq = getelementptr i8, ptr %1, i64 760
  %.val205.i = load ptr, ptr %i.uq, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ur = getelementptr i8, ptr %1, i64 768
  %.val206.i = load i64, ptr %i.ur, align 8, !noalias !8999, !noundef !11
  %i.us = getelementptr i8, ptr %1, i64 888
  %.val184.i = load ptr, ptr %i.us, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.ut = getelementptr i8, ptr %1, i64 896
  %.val185.i = load i64, ptr %i.ut, align 8, !noalias !8999, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ah, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val205.i, i64 noundef %.val206.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val184.i, i64 noundef %.val185.i)
          to label %bb.hh unwind label %bb.hf, !noalias !9003

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.experimental.noalias.scope.decl(metadata !9154)
  %i.uu = load i8, ptr %i.ah, align 8, !range !8073, !alias.scope !9157, !noalias !9159, !noundef !11 ; 2 uses
  %.not.i346.i = icmp eq i8 %i.uu, -1
  br i1 %.not.i346.i, label %bb.hi, label %bb.ih

bb.hi:                                            ; preds = %bb.hh
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8664.sroa.6.7.copyload980.i = load ptr, ptr %i.uv, align 8, !alias.scope !9160, !noalias !8999
  %.sroa.8664.sroa.9.7..sroa_idx981.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.8664.sroa.9.7.copyload982.i = load i64, ptr %.sroa.8664.sroa.9.7..sroa_idx981.i, align 8, !alias.scope !9160, !noalias !8999 ; 2 uses
  %.sroa.8664.sroa.10.7..sroa_idx983.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.8664.sroa.10.7.copyload984.i = load i64, ptr %.sroa.8664.sroa.10.7..sroa_idx983.i, align 8, !alias.scope !9160, !noalias !8999 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8999
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 904
  store ptr %.sroa.8664.sroa.6.7.copyload980.i, ptr %6, align 8, !noalias !8999
  %.sroa.4986.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i64 %.sroa.8664.sroa.9.7.copyload982.i, ptr %.sroa.4986.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.5987.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i64 %.sroa.8664.sroa.10.7.copyload984.i, ptr %.sroa.5987.0..sroa_idx.i, align 8, !noalias !8999
  %.val199.cast.i = inttoptr i64 %.sroa.8664.sroa.9.7.copyload982.i to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val199.cast.i) ]
  %i.uw = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val199.cast.i, i64 noundef %.sroa.8664.sroa.10.7.copyload984.i)
          to label %bb.hk unwind label %bb.hj, !noalias !9003 ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %.body353.i

bb.hk:                                            ; preds = %bb.hi
  %i.uy = extractvalue { ptr, i64 } %i.uw, 0      ; 2 uses
  %.not128.i = icmp eq ptr %i.uy, null
  br i1 %.not128.i, label %.thread1144.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.uz = extractvalue { ptr, i64 } %i.uw, 1
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.uy, ptr %i.va, align 8, !noalias !8999
  %.sroa.8689.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 984
  store i64 %i.uz, ptr %.sroa.8689.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.10691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.10691.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.hn

bb.hm:                                            ; preds = %bb.hn
  %i.vb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ve) #34
          to label %.body353.i unwind label %bb.cx, !noalias !9003

bb.hn:                                            ; preds = %bb.hl, %bb.ax
  %i.vc = phi ptr [ %i.qe, %bb.hl ], [ %i.fq, %bb.ax ] ; 8 uses
  %i.vd = phi ptr [ %i.qf, %bb.hl ], [ %i.fp, %bb.ax ] ; 7 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 2 uses
  %i.vf = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.ve, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ho unwind label %bb.hm, !noalias !9003 ; 2 uses

bb.ho:                                            ; preds = %bb.hn
  %i.vg = extractvalue { i64, ptr } %i.vf, 0
  %i.vh = extractvalue { i64, ptr } %i.vf, 1
  %i.vi = trunc nuw i64 %i.vg to i1
  br i1 %i.vi, label %.thread354, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.vk = load i8, ptr %i.vj, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i351.i = icmp eq i8 %i.vk, 3
  br i1 %cond.i351.i, label %bb.hq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.hq:                                            ; preds = %bb.hp
  %i.vl = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.vn = load i8, ptr %i.vm, align 8, !range !1322, !noalias !8999, !noundef !11
  switch i8 %i.vn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i [
    i8 0, label %bb.hr
    i8 3, label %bb.hu
  ]

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.hs, !noalias !9003

bb.hs:                                            ; preds = %bb.hr
  %i.vo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vl)
          to label %.body353.i unwind label %bb.ht, !noalias !9003

bb.ht:                                            ; preds = %bb.hs
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.hr
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.hv, !noalias !9003

bb.hu:                                            ; preds = %bb.hq
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 1032
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.vq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.hv, !noalias !9003

bb.hv:                                            ; preds = %bb.hu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %.body353.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.hu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.hq, %bb.hp
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.vt = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E12with_contextNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtB37_27ProcessingEngineManagerImpl24replace_plugin_directory0s3_0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %i.vh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vs)
          to label %bb.hx unwind label %bb.hw, !noalias !9003 ; 3 uses

bb.hw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %.body353.i

bb.hx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.not.i357.i = icmp eq ptr %i.vt, null
  br i1 %.not.i357.i, label %.thread1144.i, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9161
  store ptr %i.vt, ptr %i.k, align 8, !noalias !9165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9165
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vv)
          to label %bb.ia unwind label %bb.hz, !noalias !9169

bb.hz:                                            ; preds = %bb.ib, %bb.ia, %bb.hy
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body353.i unwind label %bb.ic, !noalias !9169

bb.ia:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !9165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9165
  %i.vx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %i.vx, align 8, !noalias !9165
  %i.vy = invoke noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn5spawnNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBT_27ProcessingEngineManagerImpl24replace_plugin_directory0s4_00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106)
          to label %bb.ib unwind label %bb.hz, !noalias !9169

bb.ib:                                            ; preds = %bb.ia
  store ptr %i.vy, ptr %i.j, align 8, !noalias !9165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9165
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.id unwind label %bb.hz, !noalias !9169

bb.ic:                                            ; preds = %bb.hz
  %i.vz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9169
  unreachable

bb.id:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9161
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ii, %bb.id
  %i.wa = phi ptr [ %i.sf, %bb.ii ], [ %i.vc, %bb.id ] ; 3 uses
  %i.wb = phi ptr [ %i.sg, %bb.ii ], [ %i.vd, %bb.id ] ; 3 uses
  %.sroa.48.5.in.i = phi ptr [ %i.st, %bb.ii ], [ %i.vt, %bb.id ]
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i unwind label %bb.if, !noalias !9003

bb.if:                                            ; preds = %bb.ie
  %i.wd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wc)
          to label %.body325.i unwind label %bb.ig, !noalias !9003

bb.ig:                                            ; preds = %bb.if
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i: ; preds = %bb.ie
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit370.i unwind label %bb.gq, !noalias !9003

.thread1144.i:                                    ; preds = %bb.hx, %bb.hk
  %i.wf = phi ptr [ %i.vc, %bb.hx ], [ %i.qe, %bb.hk ]
  %i.wg = phi ptr [ %i.vd, %bb.hx ], [ %i.qf, %bb.hk ]
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.wi, align 1, !noalias !8999
  %.sroa.8716.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.wh, ptr %.sroa.8716.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.10718.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  store i8 0, ptr %.sroa.10718.0..sroa_idx.i, align 8, !noalias !8999
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 952
  br label %bb.fc

.body353.i:                                       ; preds = %.body311.i, %bb.gg, %bb.gj, %bb.hz, %bb.hw, %bb.hv, %bb.hs, %bb.hm, %bb.hj
  %i.wk = phi ptr [ %i.vc, %bb.hv ], [ %i.qe, %bb.hj ], [ %i.vc, %bb.hz ], [ %i.vc, %bb.hs ], [ %i.vc, %bb.hw ], [ %i.vc, %bb.hm ], [ %i.sf, %bb.gj ], [ %i.qm, %.body311.i ], [ %i.sf, %bb.gg ]
  %i.wl = phi ptr [ %i.vd, %bb.hv ], [ %i.qf, %bb.hj ], [ %i.vd, %bb.hz ], [ %i.vd, %bb.hs ], [ %i.vd, %bb.hw ], [ %i.vd, %bb.hm ], [ %i.sg, %bb.gj ], [ %i.qn, %.body311.i ], [ %i.sg, %bb.gg ]
  %.pn139.pn.pn.i = phi { ptr, i32 } [ %i.vr, %bb.hv ], [ %i.ux, %bb.hj ], [ %i.vw, %bb.hz ], [ %i.vo, %bb.hs ], [ %i.vu, %bb.hw ], [ %i.vb, %bb.hm ], [ %i.sw, %bb.gj ], [ %eh.lpad-body312.i, %.body311.i ], [ %i.su, %bb.gg ]
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 904
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.wm) #34
          to label %.body325.i unwind label %bb.cx, !noalias !9003

bb.ih:                                            ; preds = %bb.hh
  %.sroa.8664.0..sroa_idx665.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.sroa.8664.sroa.0.0.copyload.i = load i56, ptr %.sroa.8664.0..sroa_idx665.i, align 1, !alias.scope !9160, !noalias !8999
  %.sroa.8664.sroa.6.0..sroa.8664.0..sroa_idx665.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8664.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8664.sroa.6.0..sroa.8664.0..sroa_idx665.sroa_idx.i, align 8, !alias.scope !9160, !noalias !8999
  %.sroa.8664.sroa.9.0..sroa.8664.0..sroa_idx665.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.wn = load <2 x i64>, ptr %.sroa.8664.sroa.9.0..sroa.8664.0..sroa_idx665.sroa_idx.i, align 8, !alias.scope !9160, !noalias !8999
  %.sroa.10667.0..sroa_idx668.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10667.0..sroa_idx668.i, i64 56, i1 false), !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8999
  %.sroa.4.i348.sroa.3.0.insert.ext.i = zext nneg i8 %i.uu to i64
  %.sroa.4.i348.sroa.3.1.insert.ext.i = zext i56 %.sroa.8664.sroa.0.0.copyload.i to i64
  %.sroa.4.i348.sroa.3.1.insert.shift.i = shl nuw i64 %.sroa.4.i348.sroa.3.1.insert.ext.i, 8
  %.sroa.4.i348.sroa.3.1.insert.insert.i = or disjoint i64 %.sroa.4.i348.sroa.3.1.insert.shift.i, %.sroa.4.i348.sroa.3.0.insert.ext.i
  %i.wo = inttoptr i64 %.sroa.4.i348.sroa.3.1.insert.insert.i to ptr
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit370.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit370.i: ; preds = %bb.ih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i
  %i.wp = phi ptr [ %i.qe, %bb.ih ], [ %i.wa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ] ; 6 uses
  %i.wq = phi ptr [ %i.qf, %bb.ih ], [ %i.wb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ] ; 6 uses
  %.sroa.30.6.i = phi ptr [ %i.wo, %bb.ih ], [ inttoptr (i64 27 to ptr), %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ]
  %.sroa.48.6.i = phi ptr [ %.sroa.8664.sroa.6.0.copyload.i, %bb.ih ], [ %.sroa.48.5.in.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ]
  %i.wr = phi <2 x i64> [ %i.wn, %bb.ih ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i366.i ]
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 945 ; 2 uses
  %i.wt = load i8, ptr %i.ws, align 1, !range !54, !noalias !8999, !noundef !11
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.il, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit382.i

bb.ii:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9137
  br label %bb.ie

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit382.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i378.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit370.i
  store i8 0, ptr %i.ws, align 1, !noalias !8999
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i unwind label %bb.ij, !noalias !9003

bb.ij:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit382.i
  %i.ww = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wv)
          to label %.body331.i unwind label %bb.ik, !noalias !9003

bb.ik:                                            ; preds = %bb.ij
  %i.wx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit382.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i unwind label %bb.gt, !noalias !9003

bb.il:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit370.i
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i378.i unwind label %bb.im, !noalias !9003

bb.im:                                            ; preds = %bb.il
  %i.wz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wy)
          to label %.body379.i unwind label %bb.in, !noalias !9003

bb.in:                                            ; preds = %bb.im
  %i.xa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i378.i: ; preds = %bb.il
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.wy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit382.i unwind label %bb.io, !noalias !9003

.body379.i:                                       ; preds = %bb.ip, %bb.io, %bb.im, %.body325.i
  %i.xb = phi ptr [ %i.td, %.body325.i ], [ %i.td, %bb.ip ], [ %i.wp, %bb.io ], [ %i.wp, %bb.im ]
  %i.xc = phi ptr [ %i.te, %.body325.i ], [ %i.te, %bb.ip ], [ %i.wq, %bb.io ], [ %i.wq, %bb.im ]
  %.pn146.i = phi { ptr, i32 } [ %.pn143.pn.i, %.body325.i ], [ %.pn143.pn.i, %bb.ip ], [ %i.xf, %bb.io ], [ %i.wz, %bb.im ]
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 945
  store i8 0, ptr %i.xd, align 1, !noalias !8999
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 880
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xe) #34
          to label %.body331.i unwind label %bb.cx, !noalias !9003

bb.io:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i378.i
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %.body379.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit376.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i372.i
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 800
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.xg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i unwind label %bb.gv, !noalias !9003

bb.ip:                                            ; preds = %.body325.i
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 952
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xh) #34
          to label %.body379.i unwind label %bb.cx, !noalias !9003

bb.iq:                                            ; preds = %bb.ir
  %i.xi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.xl) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.ir:                                            ; preds = %bb.he, %bb.ax
  %i.xj = phi ptr [ %i.qe, %bb.he ], [ %i.fq, %bb.ax ] ; 6 uses
  %i.xk = phi ptr [ %i.qf, %bb.he ], [ %i.fp, %bb.ax ] ; 5 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.xm = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.xl, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.is unwind label %bb.iq, !noalias !9003 ; 2 uses

bb.is:                                            ; preds = %bb.ir
  %i.xn = extractvalue { i64, ptr } %i.xm, 0
  %i.xo = extractvalue { i64, ptr } %i.xm, 1
  %i.xp = trunc nuw i64 %i.xn to i1
  br i1 %i.xp, label %.thread354, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.xr = load i8, ptr %i.xq, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i385.i = icmp eq i8 %i.xr, 3
  br i1 %cond.i385.i, label %bb.iu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i

bb.iu:                                            ; preds = %bb.it
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.xu = load i8, ptr %i.xt, align 8, !range !1322, !noalias !8999, !noundef !11
  switch i8 %i.xu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i [
    i8 0, label %bb.iv
    i8 3, label %bb.iy
  ]

bb.iv:                                            ; preds = %bb.iu
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i387.i unwind label %bb.iw, !noalias !9003

bb.iw:                                            ; preds = %bb.iv
  %i.xv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ix, !noalias !9003

bb.ix:                                            ; preds = %bb.iw
  %i.xw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i387.i: ; preds = %bb.iv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i unwind label %bb.iz, !noalias !9003

bb.iy:                                            ; preds = %bb.iu
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 992
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i unwind label %bb.iz, !noalias !9003

bb.iz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i, %bb.iy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i387.i
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i: ; preds = %bb.iy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i387.i, %bb.iu, %bb.it
  %i.xz = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %i.xo, ptr noalias noundef nonnull readonly captures(address, read_provenance) @208, i64 noundef 39)
          to label %bb.ja unwind label %bb.iz, !noalias !9003 ; 2 uses

bb.ja:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit392.i
  %.not.i393.i = icmp eq ptr %i.xz, null
  br i1 %.not.i393.i, label %bb.jb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

bb.jb:                                            ; preds = %bb.ja, %bb.hd
  %i.ya = phi ptr [ %i.xj, %bb.ja ], [ %i.qe, %bb.hd ]
  %i.yb = phi ptr [ %i.xk, %bb.ja ], [ %i.qf, %bb.hd ]
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.yc, ptr %i.ye, align 8, !noalias !8999
  %.sroa.8768.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.yd, ptr %.sroa.8768.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.10770.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store i8 0, ptr %.sroa.10770.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.jf

bb.jc:                                            ; preds = %bb.jf
  %i.yf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.yh = load i8, ptr %i.yg, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i399.i = icmp eq i8 %i.yh, 3
  br i1 %cond.i399.i, label %bb.jd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.jd:                                            ; preds = %bb.jc
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.yj = load i8, ptr %i.yi, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i.i = icmp eq i8 %i.yj, 3
  br i1 %cond.i.i.i, label %bb.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.je:                                            ; preds = %bb.jd
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.yk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.jf:                                            ; preds = %bb.jb, %bb.ax
  %i.yl = phi ptr [ %i.ya, %bb.jb ], [ %i.fq, %bb.ax ] ; 8 uses
  %i.ym = phi ptr [ %i.yb, %bb.jb ], [ %i.fp, %bb.ax ] ; 7 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 952
  %i.yo = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.yn, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jg unwind label %bb.jc, !noalias !9003 ; 2 uses

bb.jg:                                            ; preds = %bb.jf
  %i.yp = extractvalue { i64, ptr } %i.yo, 0
  %i.yq = extractvalue { i64, ptr } %i.yo, 1
  %i.yr = trunc nuw i64 %i.yp to i1
  br i1 %i.yr, label %.thread354, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.yt = load i8, ptr %i.ys, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i401.i = icmp eq i8 %i.yt, 3
  br i1 %cond.i401.i, label %bb.ji, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i

bb.ji:                                            ; preds = %bb.jh
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.yv = load i8, ptr %i.yu, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i402.i = icmp eq i8 %i.yv, 3
  br i1 %cond.i.i402.i, label %bb.jj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i

bb.jj:                                            ; preds = %bb.ji
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.yw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i unwind label %bb.jk, !noalias !9003

bb.jk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i, %bb.jj
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i: ; preds = %bb.jj, %bb.ji, %bb.jh
  %i.yy = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %i.yq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 30)
          to label %bb.jl unwind label %bb.jk, !noalias !9003 ; 3 uses

bb.jl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit404.i
  %.not.i405.i = icmp eq ptr %i.yy, null
  br i1 %.not.i405.i, label %bb.jr, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9170
  store ptr %i.yy, ptr %i.g, align 8, !noalias !9174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9174
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yz)
          to label %bb.jo unwind label %bb.jn, !noalias !9178

bb.jn:                                            ; preds = %bb.jp, %bb.jo, %bb.jm
  %i.za = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCsaIKnL9StOw_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.jq, !noalias !9178

bb.jo:                                            ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9174
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 0, ptr %i.zb, align 8, !noalias !9174
  %i.zc = invoke noundef nonnull ptr @_RINvNtNtCseCDlJsl44RV_5tokio4task5spawn5spawnNCNCNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBT_27ProcessingEngineManagerImpl24replace_plugin_directory0s8_00ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108)
          to label %bb.jp unwind label %bb.jn, !noalias !9178

bb.jp:                                            ; preds = %bb.jo
  store ptr %i.zc, ptr %i.f, align 8, !noalias !9174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9174
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.js unwind label %bb.jn, !noalias !9178

bb.jq:                                            ; preds = %bb.jn
  %i.zd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9178
  unreachable

bb.jr:                                            ; preds = %bb.jl, %bb.gz
  %i.ze = phi ptr [ %i.yl, %bb.jl ], [ %i.qe, %bb.gz ]
  %i.zf = phi ptr [ %i.ym, %bb.jl ], [ %i.qf, %bb.gz ]
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.zg, ptr %i.zi, align 8, !noalias !8999
  %.sroa.7784.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.zh, ptr %.sroa.7784.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.9786.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1088
  store i8 0, ptr %.sroa.9786.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.jw

bb.js:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9170
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

bb.jt:                                            ; preds = %bb.jw
  %i.zj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.zl = load i8, ptr %i.zk, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i413.i = icmp eq i8 %i.zl, 3
  br i1 %cond.i413.i, label %bb.ju, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ju:                                            ; preds = %bb.jt
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.zn = load i8, ptr %i.zm, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i414.i = icmp eq i8 %i.zn, 3
  br i1 %cond.i.i414.i, label %bb.jv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.jv:                                            ; preds = %bb.ju
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.zo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.jw:                                            ; preds = %bb.jr, %bb.ax
  %i.zp = phi ptr [ %i.ze, %bb.jr ], [ %i.fq, %bb.ax ] ; 11 uses
  %i.zq = phi ptr [ %i.zf, %bb.jr ], [ %i.fp, %bb.ax ] ; 10 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 3 uses
  %i.zs = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.zr, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.jx unwind label %bb.jt, !noalias !9003 ; 2 uses

bb.jx:                                            ; preds = %bb.jw
  %i.zt = extractvalue { i64, ptr } %i.zs, 0
  %i.zu = trunc nuw i64 %i.zt to i1
  br i1 %i.zu, label %.thread354, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.zv = extractvalue { i64, ptr } %i.zs, 1      ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  store ptr %i.zv, ptr %i.zw, align 8, !noalias !8999
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.zy = load i8, ptr %i.zx, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i417.i = icmp eq i8 %i.zy, 3
  br i1 %cond.i417.i, label %bb.jz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i

bb.jz:                                            ; preds = %bb.jy
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.aaa = load i8, ptr %i.zz, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i418.i = icmp eq i8 %i.aaa, 3
  br i1 %cond.i.i418.i, label %bb.ka, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i

bb.ka:                                            ; preds = %bb.jz
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aab)
          to label %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420thread-pre-split_crit_edge.i unwind label %bb.kb, !noalias !9003

._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420thread-pre-split_crit_edge.i: ; preds = %bb.ka
  %.pr1088.pre.i = load ptr, ptr %i.zw, align 8, !noalias !8999
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i

bb.kb:                                            ; preds = %bb.ka
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420thread-pre-split_crit_edge.i, %bb.jz, %bb.jy
  %i.aad = phi ptr [ %i.zv, %bb.jy ], [ %.pr1088.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420thread-pre-split_crit_edge.i ], [ %i.zv, %bb.jz ] ; 2 uses
  %.not102.i = icmp eq ptr %i.aad, null
  br i1 %.not102.i, label %bb.kh, label %bb.kc

bb.kc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 947
  store i8 1, ptr %i.aae, align 1, !noalias !8999
  %i.aaf = getelementptr inbounds nuw i8, ptr %1, i64 936
  store ptr %i.aad, ptr %i.aaf, align 8, !noalias !8999
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.aah = getelementptr i8, ptr %1, i64 784
  %.val197.i = load ptr, ptr %i.aah, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.aai = getelementptr i8, ptr %1, i64 792
  %.val198.i = load i64, ptr %i.aai, align 8, !noalias !8999, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9179
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val197.i, i64 noundef %.val198.i)
          to label %.noexc423.i unwind label %bb.ke, !noalias !9003

.noexc423.i:                                      ; preds = %bb.kc
  %i.aaj = load i64, ptr %i.c, align 8, !range !760, !noalias !9179, !noundef !11
  %.not.i.i421.i = icmp eq i64 %i.aaj, 2
  br i1 %.not.i.i421.i, label %bb.kd, label %bb.kg

bb.kd:                                            ; preds = %.noexc423.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i422.i = load ptr, ptr %i.aak, align 8, !noalias !9179, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val1.i422.i)
          to label %bb.kf unwind label %bb.ke, !noalias !9003

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

bb.kf:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9179
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.kg:                                            ; preds = %.noexc423.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9179
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 680
  store ptr %i.aag, ptr %i.zr, align 8, !noalias !8999
  %.sroa.7795.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.aam, ptr %.sroa.7795.0..sroa_idx.i, align 8, !noalias !8999
  store i8 0, ptr %i.zx, align 8, !noalias !8999
  br label %bb.ks

bb.kh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit420.i
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.aao = getelementptr i8, ptr %1, i64 784
  %.val195.i = load ptr, ptr %i.aao, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.aap = getelementptr i8, ptr %1, i64 792
  %.val196.i = load i64, ptr %i.aap, align 8, !noalias !8999, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9182
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val195.i, i64 noundef %.val196.i)
          to label %.noexc428.i unwind label %bb.kj, !noalias !9003

.noexc428.i:                                      ; preds = %bb.kh
  %i.aaq = load i64, ptr %i.b, align 8, !range !760, !noalias !9182, !noundef !11
  %.not.i.i426.i = icmp eq i64 %i.aaq, 2
  br i1 %.not.i.i426.i, label %bb.ki, label %bb.ko

bb.ki:                                            ; preds = %.noexc428.i
  %i.aar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i427.i = load ptr, ptr %i.aar, align 8, !noalias !9182, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val1.i427.i)
          to label %bb.kk unwind label %bb.kj, !noalias !9003

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  %i.aas = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.kk:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9182
  br label %bb.kl

bb.kl:                                            ; preds = %bb.ma, %bb.kk
  %i.aat = phi ptr [ %i.ade, %bb.ma ], [ %i.zp, %bb.kk ] ; 13 uses
  %i.aau = phi ptr [ %i.adf, %bb.ma ], [ %i.zq, %bb.kk ] ; 13 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 948 ; 2 uses
  store i8 0, ptr %i.aav, align 4, !noalias !8999
  %i.aaw = getelementptr inbounds nuw i8, ptr %1, i64 632
  %.sroa.0919.0.copyload.i = load ptr, ptr %i.aaw, align 8, !noalias !8999
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8999
  %.sroa.5920.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.5920.0.copyload.i = load i64, ptr %.sroa.5920.0..sroa_idx.i, align 8, !noalias !8999
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i unwind label %bb.km, !noalias !9003

bb.km:                                            ; preds = %bb.kl
  %i.aay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %.body277.i unwind label %bb.kn, !noalias !9003

bb.kn:                                            ; preds = %bb.km
  %i.aaz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i: ; preds = %bb.kl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit436.i unwind label %bb.mb, !noalias !9003

bb.ko:                                            ; preds = %.noexc428.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9182
  store ptr %i.aan, ptr %i.zr, align 8, !noalias !8999
  %.sroa.9826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %.sroa.9826.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.lr

bb.kp:                                            ; preds = %bb.ks
  %i.aba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.abc = load i8, ptr %i.abb, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i437.i = icmp eq i8 %i.abc, 3
  br i1 %cond.i437.i, label %bb.kq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

bb.kq:                                            ; preds = %bb.kp
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.abe = load i8, ptr %i.abd, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i438.i = icmp eq i8 %i.abe, 3
  br i1 %cond.i.i438.i, label %bb.kr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

bb.kr:                                            ; preds = %bb.kq
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.abf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i unwind label %bb.cx, !noalias !9003

bb.ks:                                            ; preds = %bb.kg, %bb.ax
  %i.abg = phi ptr [ %i.zp, %bb.kg ], [ %i.fq, %bb.ax ] ; 7 uses
  %i.abh = phi ptr [ %i.zq, %bb.kg ], [ %i.fp, %bb.ax ] ; 6 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 952
  %i.abj = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufBJ_E0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.abi, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.kt unwind label %bb.kp, !noalias !9003 ; 2 uses

bb.kt:                                            ; preds = %bb.ks
  %i.abk = extractvalue { i64, ptr } %i.abj, 0
  %i.abl = trunc nuw i64 %i.abk to i1
  br i1 %i.abl, label %.thread354, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.abm = extractvalue { i64, ptr } %i.abj, 1    ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.abo = load i8, ptr %i.abn, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i441.i = icmp eq i8 %i.abo, 3
  br i1 %cond.i441.i, label %bb.kv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i

bb.kv:                                            ; preds = %bb.ku
  %i.abp = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.abq = load i8, ptr %i.abp, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i.i442.i = icmp eq i8 %i.abq, 3
  br i1 %cond.i.i442.i, label %bb.kw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i

bb.kw:                                            ; preds = %bb.kv
  %i.abr = getelementptr inbounds nuw i8, ptr %1, i64 1016
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCseCDlJsl44RV_5tokio2fs8asyncifyNCNCNvNtBG_6rename15rename_blocking00uE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.abr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i unwind label %bb.kx, !noalias !9003

bb.kx:                                            ; preds = %bb.ky, %bb.kw
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i: ; preds = %bb.kw, %bb.kv, %bb.ku
  %i.abt = icmp eq ptr %i.abm, null
  br i1 %i.abt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.ky

bb.ky:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.abm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.kx, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ky, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i, %bb.kf
  %i.abu = phi ptr [ %i.abg, %bb.ky ], [ %i.abg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i ], [ %i.zp, %bb.kf ]
  %i.abv = phi ptr [ %i.abh, %bb.ky ], [ %i.abh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit444.i ], [ %i.zq, %bb.kf ]
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 952
  store ptr %i.abw, ptr %i.abx, align 8, !noalias !8999
  %.sroa.8806.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i8 0, ptr %.sroa.8806.0..sroa_idx.i, align 8, !noalias !8999
  br label %bb.la

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i: ; preds = %bb.lm, %bb.lk, %bb.li, %bb.lf, %bb.kz, %bb.kx, %bb.kr, %bb.kq, %bb.kp, %bb.ke
  %i.aby = phi ptr [ %i.ace, %bb.lk ], [ %i.abg, %bb.kp ], [ %i.ace, %bb.lm ], [ %i.zp, %bb.ke ], [ %i.abg, %bb.kx ], [ %i.abg, %bb.kq ], [ %i.abg, %bb.kr ], [ %i.ace, %bb.lf ], [ %i.ace, %bb.kz ], [ %i.ace, %bb.li ]
  %i.abz = phi ptr [ %i.acf, %bb.lk ], [ %i.abh, %bb.kp ], [ %i.acf, %bb.lm ], [ %i.zq, %bb.ke ], [ %i.abh, %bb.kx ], [ %i.abh, %bb.kq ], [ %i.abh, %bb.kr ], [ %i.acf, %bb.lf ], [ %i.acf, %bb.kz ], [ %i.acf, %bb.li ]
  %.pn120.pn.i = phi { ptr, i32 } [ %i.acv, %bb.lk ], [ %i.aba, %bb.kp ], [ %i.ada, %bb.lm ], [ %i.aal, %bb.ke ], [ %i.abs, %bb.kx ], [ %i.aba, %bb.kq ], [ %i.aba, %bb.kr ], [ %i.acq, %bb.lf ], [ %i.acd, %bb.kz ], [ %i.act, %bb.li ]
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 947 ; 2 uses
  %i.acb = load i8, ptr %i.aca, align 1, !range !54, !noalias !8999, !noundef !11
  %i.acc = trunc nuw i8 %i.acb to i1
  br i1 %i.acc, label %bb.lp, label %bb.lo

bb.kz:                                            ; preds = %bb.la
  %i.acd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.acg) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i unwind label %bb.cx, !noalias !9003

bb.la:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ax
  %i.ace = phi ptr [ %i.abu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.fq, %bb.ax ] ; 7 uses
  %i.acf = phi ptr [ %i.abv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.fp, %bb.ax ] ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.ach = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.acg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.lb unwind label %bb.kz, !noalias !9003 ; 2 uses

bb.lb:                                            ; preds = %bb.la
  %i.aci = extractvalue { i64, ptr } %i.ach, 0
  %i.acj = trunc nuw i64 %i.aci to i1
  br i1 %i.acj, label %.thread354, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ack = extractvalue { i64, ptr } %i.ach, 1    ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.acm = load i8, ptr %i.acl, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i446.i = icmp eq i8 %i.acm, 3
  br i1 %cond.i446.i, label %bb.ld, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i

bb.ld:                                            ; preds = %bb.lc
  %i.acn = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.acp = load i8, ptr %i.aco, align 8, !range !1322, !noalias !8999, !noundef !11
  switch i8 %i.acp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i [
    i8 0, label %bb.le
    i8 3, label %bb.lh
  ]

bb.le:                                            ; preds = %bb.ld
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i448.i unwind label %bb.lf, !noalias !9003

bb.lf:                                            ; preds = %bb.le
  %i.acq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i unwind label %bb.lg, !noalias !9003

bb.lg:                                            ; preds = %bb.lf
  %i.acr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i448.i: ; preds = %bb.le
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.acn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i unwind label %bb.li, !noalias !9003

bb.lh:                                            ; preds = %bb.ld
  %i.acs = getelementptr inbounds nuw i8, ptr %1, i64 992
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i unwind label %bb.li, !noalias !9003

bb.li:                                            ; preds = %bb.lj, %bb.lh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i448.i
  %i.act = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i: ; preds = %bb.lh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i448.i, %bb.ld, %bb.lc
  %i.acu = icmp eq ptr %i.ack, null
  br i1 %i.acu, label %bb.ll, label %bb.lj

bb.lj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %i.ack)
          to label %bb.ll unwind label %bb.li, !noalias !9003

bb.lk:                                            ; preds = %bb.ll
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

bb.ll:                                            ; preds = %bb.lj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit453.i
  %i.acw = getelementptr inbounds nuw i8, ptr %1, i64 947 ; 2 uses
  store i8 0, ptr %i.acw, align 1, !noalias !8999
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.acy = load ptr, ptr %i.acx, align 8, !noalias !8999, !nonnull !11, !noundef !11
  %i.acz = invoke noundef nonnull ptr @_RNvXs_NtCsaIKnL9StOw_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4fromCsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %i.acy)
          to label %_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.lk, !noalias !9003

bb.lm:                                            ; preds = %_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ada = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i

_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.ll
  %i.adb = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull %i.acz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 41)
          to label %bb.ln unwind label %bb.lm, !noalias !9003

bb.ln:                                            ; preds = %_RINvMs1_NtCsaIKnL9StOw_6anyhow4kindNtB6_5Trait3newNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  store i8 0, ptr %i.acw, align 1, !noalias !8999
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

bb.lo:                                            ; preds = %bb.lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i
  store i8 0, ptr %i.aca, align 1, !noalias !8999
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.lp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs6rename6renameRNtNtCs2AWtUsOyxgP_3std4path7PathBufB1l_E0ECsgsNUVCRJO2f_13influxdb3_lib.exit440.i
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 936
  %.val.i = load ptr, ptr %i.adc, align 8, !noalias !8999, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i) #34
          to label %bb.lo unwind label %bb.cx, !noalias !9003

bb.lq:                                            ; preds = %bb.lr
  %i.add = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.adg) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.cx, !noalias !9003

bb.lr:                                            ; preds = %bb.ko, %bb.ax
  %i.ade = phi ptr [ %i.zp, %bb.ko ], [ %i.fq, %bb.ax ] ; 6 uses
  %i.adf = phi ptr [ %i.zq, %bb.ko ], [ %i.fp, %bb.ax ] ; 5 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.adh = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.adg, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ls unwind label %bb.lq, !noalias !9003 ; 2 uses

bb.ls:                                            ; preds = %bb.lr
  %i.adi = extractvalue { i64, ptr } %i.adh, 0
  %i.adj = extractvalue { i64, ptr } %i.adh, 1
  %i.adk = trunc nuw i64 %i.adi to i1
  br i1 %i.adk, label %.thread354, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.adm = load i8, ptr %i.adl, align 8, !range !1322, !noalias !8999, !noundef !11
  %cond.i457.i = icmp eq i8 %i.adm, 3
  br i1 %cond.i457.i, label %bb.lu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i

bb.lu:                                            ; preds = %bb.lt
  %i.adn = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.adp = load i8, ptr %i.ado, align 8, !range !1322, !noalias !8999, !noundef !11
  switch i8 %i.adp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i [
    i8 0, label %bb.lv
    i8 3, label %bb.ly
  ]

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i459.i unwind label %bb.lw, !noalias !9003

bb.lw:                                            ; preds = %bb.lv
  %i.adq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.lx, !noalias !9003

bb.lx:                                            ; preds = %bb.lw
  %i.adr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i459.i: ; preds = %bb.lv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.adn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i unwind label %bb.lz, !noalias !9003

bb.ly:                                            ; preds = %bb.lu
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 992
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ads)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i unwind label %bb.lz, !noalias !9003

bb.lz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i, %bb.ly, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i459.i
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i: ; preds = %bb.ly, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i459.i, %bb.lu, %bb.lt
  %i.adu = invoke noundef ptr @_RINvXNtCsaIKnL9StOw_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1a_E7contextReECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef %i.adj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 30)
          to label %bb.ma unwind label %bb.lz, !noalias !9003 ; 2 uses

bb.ma:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14remove_dir_all14remove_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0ECsgsNUVCRJO2f_13influxdb3_lib.exit464.i
  %.not.i465.i = icmp eq ptr %i.adu, null
  br i1 %.not.i465.i, label %bb.kl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtBI_6string6StringB1p_EEECsgsNUVCRJO2f_13influxdb3_lib.exit384.i

bb.mb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i
  %i.adv = phi ptr [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i ], [ %i.mr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ]
  %i.adw = phi ptr [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i ], [ %i.ms, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i276.i ]
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body277.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit436.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i432.i
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ady)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i unwind label %bb.mc, !noalias !9003

bb.mc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit436.i
  %i.adz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ady)
          to label %.body252.i unwind label %bb.md, !noalias !9003

bb.md:                                            ; preds = %bb.mc
  %i.aea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit436.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ady)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit476.i unwind label %bb.me, !noalias !9003

bb.me:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.aeb = phi ptr [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i ], [ %i.jr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.aec = phi ptr [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i ], [ %i.js, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.aed = landingpad { ptr, i32 }
          cleanup
  br label %.body252.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit476.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i472.i
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 728 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aee)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i unwind label %bb.mf, !noalias !9003

bb.mf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit476.i
  %i.aef = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aee)
          to label %.body255.i unwind label %bb.mg, !noalias !9003

bb.mg:                                            ; preds = %bb.mf
  %i.aeg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit476.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aee)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit482.i unwind label %bb.mh, !noalias !9003

bb.mh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.aeh = phi ptr [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i ], [ %i.kc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.aei = phi ptr [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i ], [ %i.kd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ]
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %.body255.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit482.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i478.i
  %i.aek = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aek)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i unwind label %bb.mi, !noalias !9003

bb.mi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit482.i
  %i.ael = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aek)
          to label %.body485.i unwind label %bb.mj, !noalias !9003

bb.mj:                                            ; preds = %bb.mi
  %i.aem = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit482.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aek)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit488.i unwind label %bb.mk, !noalias !9003

bb.mk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i
  %i.aen = phi ptr [ %i.kc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i ], [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i ]
  %i.aeo = phi ptr [ %i.kd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i ], [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i ]
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %.body485.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit488.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i484.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i unwind label %bb.ml, !noalias !9003

bb.ml:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit488.i
  %i.aer = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeq)
          to label %.body491.i unwind label %bb.mm, !noalias !9003

bb.mm:                                            ; preds = %bb.ml
  %i.aes = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit488.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aeq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit494.i unwind label %bb.mn, !noalias !9003

bb.mn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i
  %i.aet = phi ptr [ %i.kc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i ]
  %i.aeu = phi ptr [ %i.kd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i ], [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i ]
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %.body491.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit494.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i490.i
  %i.aew = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i unwind label %bb.mo, !noalias !9003

bb.mo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit494.i
  %i.aex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %.body260.i unwind label %bb.mp, !noalias !9003

bb.mp:                                            ; preds = %bb.mo
  %i.aey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit494.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aew)
          to label %.thread362 unwind label %bb.mq, !noalias !9003

.body260.i:                                       ; preds = %bb.mq, %bb.mo, %.body491.i, %bb.ct
  %i.aez = phi ptr [ %i.kz, %.body491.i ], [ %i.kt, %bb.ct ], [ %i.afe, %bb.mq ], [ %i.aat, %bb.mo ] ; 2 uses
  %i.afa = phi ptr [ %i.la, %.body491.i ], [ %i.ku, %bb.ct ], [ %i.aff, %bb.mq ], [ %i.aau, %bb.mo ] ; 2 uses
  %.pn172.i = phi { ptr, i32 } [ %.pn169.pn.i, %.body491.i ], [ %i.kx, %bb.ct ], [ %i.afg, %bb.mq ], [ %i.aex, %bb.mo ] ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 948
  %i.afc = load i8, ptr %i.afb, align 4, !range !54, !noalias !8999, !noundef !11
  %i.afd = trunc nuw i8 %i.afc to i1
  br i1 %i.afd, label %bb.nd, label %.body515.i

bb.mq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i
  %i.afe = phi ptr [ %i.aat, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i ], [ %i.kt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i ]
  %i.aff = phi ptr [ %i.aau, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i ], [ %i.ku, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i ]
  %i.afg = landingpad { ptr, i32 }
          cleanup
  br label %.body260.i

.thread362:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i496.i
  store i8 0, ptr %i.aav, align 4, !noalias !8999
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 946
  store i8 0, ptr %i.afh, align 2, !noalias !8999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, i64 56, i1 false), !noalias !9185
  store i8 1, ptr %i.aat, align 8, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i)
  %i.afi = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5920.0.copyload.i, i64 0
  br label %bb.nh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i unwind label %bb.mr, !noalias !9003

bb.mr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.afk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afj)
          to label %.body485.i unwind label %bb.ms, !noalias !9003

bb.ms:                                            ; preds = %bb.mr
  %i.afl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit506.i unwind label %bb.mk, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit506.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i502.i
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i unwind label %bb.mt, !noalias !9003

bb.mt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit506.i
  %i.afn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afm)
          to label %.body491.i unwind label %bb.mu, !noalias !9003

bb.mu:                                            ; preds = %bb.mt
  %i.afo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i508.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit506.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit512.i unwind label %bb.mn, !noalias !9003

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit263.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i259.i
  %i.afp = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i514.i unwind label %bb.mv, !noalias !9003

bb.mv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit263.i
  %i.afq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afp)
          to label %.body515.i unwind label %bb.mw, !noalias !9003

bb.mw:                                            ; preds = %bb.mv
  %i.afr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i514.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit263.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i unwind label %bb.mx, !noalias !9003

.body515.i:                                       ; preds = %bb.nd, %bb.mx, %bb.mv, %.body260.i
  %i.afs = phi ptr [ %i.aez, %.body260.i ], [ %i.aez, %bb.nd ], [ %i.kt, %bb.mx ], [ %i.kt, %bb.mv ]
  %i.aft = phi ptr [ %i.afa, %.body260.i ], [ %i.afa, %bb.nd ], [ %i.ku, %bb.mx ], [ %i.ku, %bb.mv ]
  %.pn174.i = phi { ptr, i32 } [ %.pn172.i, %.body260.i ], [ %.pn172.i, %bb.nd ], [ %i.afv, %bb.mx ], [ %i.afq, %bb.mv ]
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 948
  store i8 0, ptr %i.afu, align 4, !noalias !8999
  br label %bb.dc

bb.mx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i514.i
  %i.afv = landingpad { ptr, i32 }
          cleanup
  br label %.body515.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit518.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i514.i
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 948
  store i8 0, ptr %i.afw, align 4, !noalias !8999
  br label %bb.cw

bb.my:                                            ; preds = %bb.cw
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afx)
          to label %bb.na unwind label %bb.mz, !noalias !9003

bb.mz:                                            ; preds = %bb.my
  %i.afy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afx)
          to label %.body520.i unwind label %bb.nb, !noalias !9003

bb.na:                                            ; preds = %bb.my
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.afx)
          to label %bb.nf unwind label %bb.nc, !noalias !9003

bb.nb:                                            ; preds = %bb.mz
  %i.afz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !9003
  unreachable

.body520.i:                                       ; preds = %bb.ne, %bb.nc, %bb.mz, %bb.dc
  %i.aga = phi ptr [ %i.lq, %bb.dc ], [ %i.lq, %bb.ne ], [ %i.ld, %bb.nc ], [ %i.ld, %bb.mz ]
  %i.agb = phi ptr [ %i.lr, %bb.dc ], [ %i.lr, %bb.ne ], [ %i.le, %bb.nc ], [ %i.le, %bb.mz ]
  %.pn180.i = phi { ptr, i32 } [ %.pn176.pn.pn.i, %bb.dc ], [ %.pn176.pn.pn.i, %bb.ne ], [ %i.agd, %bb.nc ], [ %i.afy, %bb.mz ]
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 946
  store i8 0, ptr %i.agc, align 2, !noalias !8999
  store i8 2, ptr %i.aga, align 8, !noalias !8999
  br label %.body80

bb.nc:                                            ; preds = %bb.na
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body520.i

bb.nd:                                            ; preds = %.body260.i
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.age) #34
          to label %.body515.i unwind label %bb.cx, !noalias !9003

bb.ne:                                            ; preds = %bb.dc
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.agf) #34
          to label %.body520.i unwind label %bb.cx, !noalias !9003

.thread354.sink.split:                            ; preds = %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sink451 = phi ptr [ %i.sh, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.oh, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.ph = phi ptr [ %i.sf, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.of, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %.sink.i.ph.ph = phi i8 [ 6, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCscdodAO9FK5_5alloc6string6StringE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ 4, %_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path7PathBufE0CsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  store i8 3, ptr %.sink451, align 8, !noalias !8999
  br label %.thread354

.thread354:                                       ; preds = %.thread354.sink.split, %bb.jg, %bb.lb, %bb.kt, %bb.jx, %bb.is, %bb.ho, %bb.dh, %bb.ls
  %i.agg = phi ptr [ %i.ade, %bb.ls ], [ %i.zp, %bb.jx ], [ %i.abg, %bb.kt ], [ %i.lw, %bb.dh ], [ %i.ace, %bb.lb ], [ %i.vc, %bb.ho ], [ %i.xj, %bb.is ], [ %i.yl, %bb.jg ], [ %.ph, %.thread354.sink.split ]
  %.sink.i.ph = phi i8 [ 12, %bb.ls ], [ 9, %bb.jx ], [ 10, %bb.kt ], [ 3, %bb.dh ], [ 11, %bb.lb ], [ 5, %bb.ho ], [ 7, %bb.is ], [ 8, %bb.jg ], [ %.sink.i.ph.ph, %.thread354.sink.split ]
  store i8 %.sink.i.ph, ptr %i.agg, align 8, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i)
  br label %bb.ng

bb.nf:                                            ; preds = %bb.cw, %bb.na
  store i8 0, ptr %i.lg, align 2, !noalias !8999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.sroa.15.sroa.14.i, i64 56, i1 false), !noalias !9185
  store i8 1, ptr %i.ld, align 8, !noalias !8999
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.sroa.15.sroa.14.i)
  %i.agh = icmp eq i32 %.sroa.0834.3.i, -2
  br i1 %i.agh, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %.thread354, %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %common.ret

bb.nh:                                            ; preds = %.thread362, %bb.nf
  %i.agi = phi ptr [ %i.aau, %.thread362 ], [ %i.le, %bb.nf ]
  %.sroa.0834.7.i374 = phi i32 [ -1, %.thread362 ], [ %.sroa.0834.3.i, %bb.nf ] ; 4 uses
  %.sroa.17.7.i373 = phi i32 [ undef, %.thread362 ], [ %.sroa.17.3.i, %bb.nf ] ; 4 uses
  %.sroa.48.7.i372 = phi ptr [ %.sroa.4.0.copyload.i, %.thread362 ], [ %.sroa.48.3.i, %bb.nf ] ; 3 uses
  %.sroa.30.7.i371 = phi ptr [ %.sroa.0919.0.copyload.i, %.thread362 ], [ %.sroa.30.3.i, %bb.nf ] ; 2 uses
  %i.agj = phi <2 x i64> [ %i.afi, %.thread362 ], [ %i.lf, %bb.nf ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11231, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.22, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl24replace_plugin_directory0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.agi)
          to label %bb.nk unwind label %bb.nj

bb.ni:                                            ; preds = %bb.nj, %.body80
  %.pn15 = phi { ptr, i32 } [ %i.ago, %bb.nj ], [ %eh.lpad-body81, %.body80 ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9186)
  call void @llvm.experimental.noalias.scope.decl(metadata !9189)
  %i.agl = load ptr, ptr %i.agk, align 8, !alias.scope !9192, !nonnull !11, !noundef !11
  %i.agm = atomicrmw sub ptr %i.agl, i64 1 release, align 8, !noalias !9192
  %i.agn = icmp eq i64 %i.agm, 1
  br i1 %i.agn, label %bb.at, label %.body105

bb.nj:                                            ; preds = %bb.nh
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.ni

bb.nk:                                            ; preds = %bb.nh
  %.not.i82 = icmp eq i32 %.sroa.0834.7.i374, -1
  br i1 %.not.i82, label %bb.nl, label %bb.pg

bb.nl:                                            ; preds = %bb.nk
  store ptr %.sroa.30.7.i371, ptr %i.bl, align 8
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %.sroa.48.7.i372, ptr %.sroa.4240.0..sroa_idx, align 8
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.agp = extractelement <2 x i64> %i.agj, i64 0
  store i64 %i.agp, ptr %.sroa.5241.0..sroa_idx, align 8
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9193)
  call void @llvm.experimental.noalias.scope.decl(metadata !9196)
  %i.agr = load ptr, ptr %i.agq, align 8, !alias.scope !9199, !nonnull !11, !noundef !11
  %i.ags = atomicrmw sub ptr %i.agr, i64 1 release, align 8, !noalias !9199
  %i.agt = icmp eq i64 %i.ags, 1
  br i1 %i.agt, label %bb.nm, label %.noexc

bb.nm:                                            ; preds = %bb.nl
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agq)
          to label %.noexc unwind label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

.noexc:                                           ; preds = %bb.nm, %bb.nl
  %i.agv = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.agv, -3
  %switch = icmp ult i64 %.off, 3
  br i1 %switch, label %bb.nv, label %bb.no

bb.no:                                            ; preds = %.noexc
  %i.agw = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.agx = icmp ult i8 %i.agw, 3
  br i1 %i.agx, label %bb.nr, label %bb.np, !prof !7106

bb.np:                                            ; preds = %bb.no
  %i.agy = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE)
          to label %bb.nr unwind label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.nr:                                            ; preds = %bb.np, %bb.no
  %.sroa.0.0.i87 = phi i8 [ %i.agw, %bb.no ], [ %i.agy, %bb.np ] ; 2 uses
  %i.aha = icmp eq i8 %.sroa.0.0.i87, 0
  br i1 %i.aha, label %bb.nv, label %bb.nt

bb.ns:                                            ; preds = %bb.nt
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %bb.pf

bb.nt:                                            ; preds = %bb.nr
  %i.ahc = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !nonnull !11, !align !52, !noundef !11
  %i.ahd = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ahc, i8 noundef %.sroa.0.0.i87)
          to label %bb.nu unwind label %bb.ns

bb.nu:                                            ; preds = %bb.nt
  br i1 %i.ahd, label %bb.oi, label %bb.nv

bb.nv:                                            ; preds = %.noexc, %bb.nr, %bb.nu
  %i.ahe = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not402 = icmp eq i8 %i.ahe, 0
  br i1 %.not402, label %bb.nw, label %bb.oh

bb.nw:                                            ; preds = %bb.nv
  %i.ahf = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ahg = icmp ult i64 %i.ahf, 6
  call void @llvm.assume(i1 %i.ahg)
  %i.ahh = icmp samesign ugt i64 %i.ahf, 2
  br i1 %i.ahh, label %bb.nx, label %bb.oh

bb.nx:                                            ; preds = %bb.nw
  %i.ahi = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !nonnull !11, !align !52, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.ahj = getelementptr i8, ptr %i.ahi, i64 32
  %.val62 = load ptr, ptr %i.ahj, align 8, !nonnull !11, !noundef !11
  %i.ahk = getelementptr i8, ptr %i.ahi, i64 40
  %.val63 = load i64, ptr %i.ahk, align 8, !noundef !11
  store i64 3, ptr %i.bg, align 8, !alias.scope !9200
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.val62, ptr %.sroa.6258.0..sroa_idx, align 8, !alias.scope !9200
  %.sroa.8259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.val63, ptr %.sroa.8259.0..sroa_idx, align 8, !alias.scope !9200
  %i.ahl = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.nz unwind label %bb.ny     ; 2 uses

bb.ny:                                            ; preds = %bb.nx
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.nz:                                            ; preds = %bb.nx
  %i.ahn = extractvalue { ptr, ptr } %i.ahl, 0    ; 2 uses
  %i.aho = extractvalue { ptr, ptr } %i.ahl, 1    ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 24
  %i.ahq = load ptr, ptr %i.ahp, align 8, !invariant.load !11, !nonnull !11
  %i.ahr = invoke noundef zeroext i1 %i.ahq(ptr noundef %i.ahn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %bb.ob unwind label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %bb.og

bb.ob:                                            ; preds = %bb.nz
  br i1 %i.ahr, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.oh

bb.od:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.aht = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !nonnull !11, !align !52, !noundef !11
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.ahv, ptr %i.bc, align 8
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5261.0..sroa_idx, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bl, ptr %i.ahx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5263.0..sroa_idx, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.ahw, ptr %i.ahy, align 8
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5265.0..sroa_idx, align 8
  store ptr @294, ptr %i.bd, align 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.ahz, align 8
  store ptr %i.bd, ptr %i.be, align 8
  %i.aia = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @54, ptr %i.aia, align 8
  store i64 1, ptr %i.bf, align 8, !alias.scope !9204, !noalias !9207
  %.sroa.4.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx.i95, align 8, !alias.scope !9204, !noalias !9207
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i96, align 8, !alias.scope !9204, !noalias !9207
  %i.aib = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.ahu, ptr %i.aib, align 8, !alias.scope !9204, !noalias !9207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ahi, ptr noundef nonnull %i.ahn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aho, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %bb.of unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.og

bb.of:                                            ; preds = %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.oc

bb.og:                                            ; preds = %bb.oa, %bb.oe, %bb.ny
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.aic, %bb.oe ], [ %i.ahs, %bb.oa ], [ %i.ahm, %bb.ny ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.pf

bb.oh:                                            ; preds = %bb.oc, %bb.nw, %bb.nv, %bb.ok
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.az)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit unwind label %bb.ol

bb.oi:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.aid = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory010___CALLSITE, align 8, !nonnull !11, !align !52, !noundef !11
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.aig = getelementptr inbounds nuw i8, ptr %1, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.aif, ptr %i.bh, align 8
  %.sroa.5249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5249.0..sroa_idx, align 8
  %i.aih = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bl, ptr %i.aih, align 8
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5251.0..sroa_idx, align 8
  %i.aii = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.aig, ptr %i.aii, align 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5253.0..sroa_idx, align 8
  store ptr @294, ptr %i.bi, align 8
  %i.aij = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bh, ptr %i.aij, align 8
  store ptr %i.bi, ptr %i.bj, align 8
  %i.aik = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @54, ptr %i.aik, align 8
  store i64 1, ptr %i.bk, align 8
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %.sroa.6245.0..sroa_idx, align 8
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 1, ptr %.sroa.7246.0..sroa_idx, align 8
  %.sroa.8247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.aie, ptr %.sroa.8247.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi24replace_plugin_directory0s_0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.bk)
          to label %bb.ok unwind label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.ail = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.pf

bb.ok:                                            ; preds = %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.oh

bb.ol:                                            ; preds = %bb.oh, %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit
  %i.aim = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.pd

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit: ; preds = %bb.oh
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.az, i16 noundef 200)
          to label %bb.om unwind label %bb.ol

bb.om:                                            ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ain = invoke { ptr, ptr } @_RNvCs4dh2fNjPIep_13iox_http_util19empty_response_body()
          to label %bb.oo unwind label %bb.pe     ; 2 uses

bb.on:                                            ; preds = %bb.oo
  %i.aio = landingpad { ptr, i32 }
          cleanup
  br label %bb.pd

bb.oo:                                            ; preds = %bb.om
  %i.aip = extractvalue { ptr, ptr } %i.ain, 0
  %i.aiq = extractvalue { ptr, ptr } %i.ain, 1
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder4bodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3f_6marker4SendNtB3M_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.ba, ptr noundef nonnull %i.aip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aiq)
          to label %bb.op unwind label %bb.on

bb.op:                                            ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.experimental.noalias.scope.decl(metadata !9210)
  %i.air = load i64, ptr %i.bb, align 8, !range !361, !alias.scope !9213, !noalias !9210, !noundef !11 ; 2 uses
  %i.ais = icmp eq i64 %i.air, -1
  %i.ait = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.aiu = load i8, ptr %i.ait, align 8, !alias.scope !9215 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.aiw = load i8, ptr %i.aiv, align 1, !alias.scope !9215 ; 2 uses
  br i1 %i.ais, label %bb.oy, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %.sroa.12274.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %.sroa.12274.sroa.0.0.copyload = load i16, ptr %.sroa.12274.0..sroa_idx275, align 2, !alias.scope !9216
  %.sroa.12274.sroa.6.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.sroa.12274.sroa.6.0.copyload = load i32, ptr %.sroa.12274.sroa.6.0..sroa.12274.0..sroa_idx275.sroa_idx, align 4, !alias.scope !9216 ; 3 uses
  %.sroa.12274.sroa.7.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.12274.sroa.7.0.copyload = load i64, ptr %.sroa.12274.sroa.7.0..sroa.12274.0..sroa_idx275.sroa_idx, align 8, !alias.scope !9216
  %.sroa.12274.sroa.8.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.12274.sroa.8.0.copyload = load ptr, ptr %.sroa.12274.sroa.8.0..sroa.12274.0..sroa_idx275.sroa_idx, align 8, !alias.scope !9216
  %.sroa.12274.sroa.9.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.aix = load <2 x i64>, ptr %.sroa.12274.sroa.9.0..sroa.12274.0..sroa_idx275.sroa_idx, align 8, !alias.scope !9216
  %.sroa.12274.sroa.11.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12274.sroa.11.0..sroa.12274.0..sroa_idx275.sroa_idx, i64 56, i1 false)
  %.sroa.12274.sroa.12.0..sroa.12274.0..sroa_idx275.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12274.sroa.12.0..sroa.12274.0..sroa_idx275.sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %.sroa.13282.sroa.0.0.extract.trunc = trunc i32 %.sroa.12274.sroa.6.0.copyload to i8
  %.sroa.13282.sroa.6.0.extract.shift = lshr i32 %.sroa.12274.sroa.6.0.copyload, 8
  %.sroa.13282.sroa.6.0.extract.trunc = trunc i32 %.sroa.13282.sroa.6.0.extract.shift to i8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body105 unwind label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.aiz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.oq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.ot

.body105:                                         ; preds = %bb.pi, %bb.at, %bb.ni, %bb.oz, %bb.or, %bb.ot, %bb.pf
  %.pn44.pn = phi { ptr, i32 } [ %i.ajm, %bb.oz ], [ %.pn39.pn, %bb.pf ], [ %i.aiy, %bb.or ], [ %i.ajd, %bb.ot ], [ %i.aka, %bb.pi ], [ %.pn15, %bb.ni ], [ %.pn15, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 506
  %i.ajb = load i8, ptr %i.aja, align 2, !range !54, !noundef !11
  %i.ajc = trunc nuw i8 %i.ajb to i1
  br i1 %i.ajc, label %bb.pn, label %bb.au

bb.ot:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %.body105

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 506
  store i8 0, ptr %i.aje, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 507
  store i8 0, ptr %i.ajf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ajg = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i109 unwind label %bb.ou

bb.ou:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ajh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajg)
          to label %.body110 unwind label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.aji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i109: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 unwind label %bb.ow

bb.ow:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i109
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %.body110

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i109
  %i.ajk = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.ajk, align 1
  br label %bb.ox

bb.ox:                                            ; preds = %bb.pj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113
  %.sroa.0280.1 = phi i64 [ -1, %bb.pj ], [ %i.air, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.18283.1 = phi i64 [ %.sroa.18283.0, %bb.pj ], [ %.sroa.12274.sroa.7.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.21284.1 = phi ptr [ %.sroa.21284.0, %bb.pj ], [ %.sroa.12274.sroa.8.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.13282.sroa.0.1 = phi i8 [ %.sroa.13282.sroa.0.0, %bb.pj ], [ %.sroa.13282.sroa.0.0.extract.trunc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.13282.sroa.6.1 = phi i8 [ %.sroa.13282.sroa.6.0, %bb.pj ], [ %.sroa.13282.sroa.6.0.extract.trunc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.13282.sroa.7.1.in = phi i32 [ %.sroa.13282.sroa.7.0, %bb.pj ], [ %.sroa.12274.sroa.6.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.6281.sroa.0.1 = phi i8 [ %.sroa.6281.sroa.0.0, %bb.pj ], [ %i.aiu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.6281.sroa.6.1 = phi i8 [ %.sroa.6281.sroa.6.0, %bb.pj ], [ %i.aiw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.6281.sroa.7.1 = phi i16 [ %.sroa.6281.sroa.7.0, %bb.pj ], [ %.sroa.12274.sroa.0.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %i.ajl = phi <2 x i64> [ %i.cm, %bb.pj ], [ %i.aix, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit113 ]
  %.sroa.13282.sroa.7.1 = and i32 %.sroa.13282.sroa.7.1.in, -65536
  store i64 %.sroa.0280.1, ptr %0, align 8
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6281.sroa.7.0.insert.ext = zext i16 %.sroa.6281.sroa.7.1 to i32
  %.sroa.6281.sroa.7.0.insert.shift = shl nuw i32 %.sroa.6281.sroa.7.0.insert.ext, 16
  %.sroa.6281.sroa.6.0.insert.ext = zext i8 %.sroa.6281.sroa.6.1 to i32
  %.sroa.6281.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.6281.sroa.6.0.insert.ext, 8
  %.sroa.6281.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6281.sroa.7.0.insert.shift, %.sroa.6281.sroa.6.0.insert.shift
  %.sroa.6281.sroa.0.0.insert.ext = zext i8 %.sroa.6281.sroa.0.1 to i32
  %.sroa.6281.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6281.sroa.6.0.insert.insert, %.sroa.6281.sroa.0.0.insert.ext
  store i32 %.sroa.6281.sroa.0.0.insert.insert, ptr %.sroa.6281.0..sroa_idx, align 8
  %.sroa.13282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.13282.sroa.6.0.insert.ext = zext i8 %.sroa.13282.sroa.6.1 to i32
  %.sroa.13282.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.13282.sroa.6.0.insert.ext, 8
  %.sroa.13282.sroa.6.0.insert.insert = or disjoint i32 %.sroa.13282.sroa.7.1, %.sroa.13282.sroa.6.0.insert.shift
  %.sroa.13282.sroa.0.0.insert.ext = zext i8 %.sroa.13282.sroa.0.1 to i32
  %.sroa.13282.sroa.0.0.insert.insert = or disjoint i32 %.sroa.13282.sroa.6.0.insert.insert, %.sroa.13282.sroa.0.0.insert.ext
  store i32 %.sroa.13282.sroa.0.0.insert.insert, ptr %.sroa.13282.0..sroa_idx, align 4
  %.sroa.18283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.18283.1, ptr %.sroa.18283.0..sroa_idx, align 8
  %.sroa.21284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21284.1, ptr %.sroa.21284.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.ajl, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28, i64 56, i1 false)
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31, i64 24, i1 false)
  br label %common.ret

bb.oy:                                            ; preds = %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 unwind label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body105 unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.ajn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115: ; preds = %bb.oy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119 unwind label %bb.ot

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119: ; preds = %bb.ph, %bb.pg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115
  %.sroa.18283.2 = phi i64 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %i.ajv, %bb.pg ], [ %i.ajv, %bb.ph ]
  %.sroa.21284.2 = phi ptr [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.48.7.i372, %bb.pg ], [ %.sroa.48.7.i372, %bb.ph ]
  %.sroa.13282.sroa.0.2 = phi i8 [ %i.aiu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.13282.sroa.0.0.extract.trunc287, %bb.pg ], [ %.sroa.13282.sroa.0.0.extract.trunc287, %bb.ph ]
  %.sroa.13282.sroa.6.2 = phi i8 [ %i.aiw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.13282.sroa.6.0.extract.trunc293, %bb.pg ], [ %.sroa.13282.sroa.6.0.extract.trunc293, %bb.ph ]
  %.sroa.13282.sroa.7.2 = phi i32 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.17.7.i373, %bb.pg ], [ %.sroa.17.7.i373, %bb.ph ]
  %.sroa.6281.sroa.0.2 = phi i8 [ 34, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.6281.sroa.0.0.extract.trunc301, %bb.pg ], [ %.sroa.6281.sroa.0.0.extract.trunc301, %bb.ph ]
  %.sroa.6281.sroa.6.2 = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.6281.sroa.6.0.extract.trunc305, %bb.pg ], [ %.sroa.6281.sroa.6.0.extract.trunc305, %bb.ph ]
  %.sroa.6281.sroa.7.2 = phi i16 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %.sroa.6281.sroa.7.0.extract.trunc309, %bb.pg ], [ %.sroa.6281.sroa.7.0.extract.trunc309, %bb.ph ]
  %i.ajo = phi <2 x i64> [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i115 ], [ %i.agj, %bb.pg ], [ %i.agj, %bb.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 506
  store i8 0, ptr %i.ajp, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 507
  store i8 0, ptr %i.ajq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121 unwind label %bb.pb

bb.pb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajr)
          to label %.body110 unwind label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ajt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i121: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ajr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125 unwind label %bb.ow

bb.pd:                                            ; preds = %bb.on, %bb.pe, %bb.ol
  %.pn35 = phi { ptr, i32 } [ %i.aju, %bb.pe ], [ %i.aio, %bb.on ], [ %i.aim, %bb.ol ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.pf

bb.pe:                                            ; preds = %bb.om
  %i.aju = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.ba) #34
          to label %bb.pd unwind label %bb.m

bb.pf:                                            ; preds = %bb.og, %bb.nq, %bb.ns, %bb.oj, %bb.pd, %bb.nn
  %.pn39.pn = phi { ptr, i32 } [ %.pn35, %bb.pd ], [ %i.ail, %bb.oj ], [ %i.agu, %bb.nn ], [ %i.agz, %bb.nq ], [ %i.ahb, %bb.ns ], [ %.pn25.pn.pn, %bb.og ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl) #34
          to label %.body105 unwind label %bb.m

bb.pg:                                            ; preds = %bb.nk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11231, i64 56, i1 false)
  %.sroa.6281.sroa.0.0.extract.trunc301 = trunc i32 %.sroa.0834.7.i374 to i8 ; 2 uses
  %.sroa.6281.sroa.6.0.extract.shift304 = lshr i32 %.sroa.0834.7.i374, 8
  %.sroa.6281.sroa.6.0.extract.trunc305 = trunc i32 %.sroa.6281.sroa.6.0.extract.shift304 to i8 ; 2 uses
  %.sroa.6281.sroa.7.0.extract.shift308 = lshr i32 %.sroa.0834.7.i374, 16
  %.sroa.6281.sroa.7.0.extract.trunc309 = trunc nuw i32 %.sroa.6281.sroa.7.0.extract.shift308 to i16 ; 2 uses
  %.sroa.13282.sroa.0.0.extract.trunc287 = trunc i32 %.sroa.17.7.i373 to i8 ; 2 uses
  %.sroa.13282.sroa.6.0.extract.shift292 = lshr i32 %.sroa.17.7.i373, 8
  %.sroa.13282.sroa.6.0.extract.trunc293 = trunc i32 %.sroa.13282.sroa.6.0.extract.shift292 to i8 ; 2 uses
  %i.ajv = ptrtoint ptr %.sroa.30.7.i371 to i64   ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9217)
  call void @llvm.experimental.noalias.scope.decl(metadata !9220)
  %i.ajx = load ptr, ptr %i.ajw, align 8, !alias.scope !9223, !nonnull !11, !noundef !11
  %i.ajy = atomicrmw sub ptr %i.ajx, i64 1 release, align 8, !noalias !9223
  %i.ajz = icmp eq i64 %i.ajy, 1
  br i1 %i.ajz, label %bb.ph, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119

bb.ph:                                            ; preds = %bb.pg
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ajw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit119 unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %.body105

bb.pj:                                            ; preds = %bb.pk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125
  store i8 0, ptr %i.cn, align 1
  br label %bb.ox

bb.pk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit125
  %i.akb = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.akb)
          to label %bb.pj unwind label %bb.pm

bb.pl:                                            ; preds = %bb.pq, %bb.pm, %.body110
  %.pn53 = phi { ptr, i32 } [ %i.akd, %bb.pm ], [ %.pn50.pn, %bb.pq ], [ %.pn50.pn, %.body110 ]
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 505
  store i8 0, ptr %i.akc, align 1
  store i8 2, ptr %i.bp, align 8
  resume { ptr, i32 } %.pn53

bb.pm:                                            ; preds = %bb.pk
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %bb.pl

bb.pn:                                            ; preds = %.body105
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringB18_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.bm) #34
          to label %bb.au unwind label %bb.m

bb.po:                                            ; preds = %bb.pp, %bb.au
  store i8 0, ptr %i.fg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ake) #34
          to label %.body110 unwind label %bb.m

bb.pp:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.bn) #34
          to label %bb.po unwind label %bb.m

bb.pq:                                            ; preds = %.body110
  %i.akf = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.akf) #34
          to label %bb.pl unwind label %bb.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi9read_body0CsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [320 x i8], align 8               ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [320 x i8], align 8               ; 4 uses
  %i.p = alloca [336 x i8], align 8               ; 11 uses
  %.sroa.39.sroa.3.sroa.3 = alloca [56 x i8], align 8 ; 2 uses
  %i.q = alloca [96 x i8], align 8                ; 13 uses
  %i.r = alloca [96 x i8], align 8                ; 11 uses
  %i.s = alloca [240 x i8], align 8               ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !range !1322, !noundef !11
  switch i8 %i.u, label %default.unreachable368 [
    i8 0, label %bb.b
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 584
  %.val72.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aj

default.unreachable368:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 595 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 594 ; 2 uses
  store i8 0, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !align !52, !noundef !11
  store ptr %i.z, ptr %i.x, align 8
  store i8 1, ptr %i.v, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aa, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  %i.ab = invoke noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getRNtNtB8_4name10HeaderNameECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aa, ptr noundef nonnull align 8 @321)
          to label %bb.d unwind label %bb.c       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6P5GRezSnwZ_4http6header5value11HeaderValueEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit346, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !9224, !nonnull !11, !noundef !11 ; 5 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  %.val2.i = load i64, ptr %i.ae, align 8, !noalias !9224, !noundef !11 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val2.i
  %i.ag = icmp samesign eq i64 %.val2.i, 0
  br i1 %i.ag, label %.loopexit346, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i, i64 1 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %.loopexit346, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
end_hunk_1
begin_hunk_2_@_RNCNvNtCsbakdBCgU4AF_16influxdb3_server4http15perform_routing0CsgsNUVCRJO2f_13influxdb3_lib:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i75.i: ; preds = %bb.ijh
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aahq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBL_7HttpApi35clear_retention_period_for_database020ClearRetentionPeriodECsgsNUVCRJO2f_13influxdb3_lib.exit79.i unwind label %bb.ijb, !noalias !14589

bb.ijk:                                           ; preds = %bb.ijl, %bb.iiv, %bb.iit
  %.pn17.i5559 = phi { ptr, i32 } [ %i.aaht, %bb.ijl ], [ %i.aagq, %bb.iiv ], [ %i.aago, %bb.iit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !14582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !14582
  br label %bb.iic

bb.ijl:                                           ; preds = %bb.iiu
  %i.aaht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.as) #34
          to label %bb.ijk unwind label %bb.ijm, !noalias !14589

bb.ijm:                                           ; preds = %bb.ijl, %bb.iih, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit60.i5536, %bb.iie, %bb.iic
  %i.aahu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14589
  unreachable

bb.ijn:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtBJ_7Catalog35clear_retention_period_for_database0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i5542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.16.i5530, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6116.i, i64 64, i1 false), !noalias !14582
  %.sroa.4.i.sroa.5.4.insert.ext.i5544 = zext nneg i8 %i.aagb to i64
  %.sroa.4.i.sroa.5.5.insert.ext.i5545 = zext i56 %.sroa.3.sroa.0.0.copyload.i5540 to i64
  %.sroa.4.i.sroa.5.5.insert.shift.i5546 = shl nuw i64 %.sroa.4.i.sroa.5.5.insert.ext.i5545, 8
  %.sroa.4.i.sroa.5.5.insert.insert.i5547 = or disjoint i64 %.sroa.4.i.sroa.5.5.insert.shift.i5546, %.sroa.4.i.sroa.5.4.insert.ext.i5544
  %i.aahv = inttoptr i64 %.sroa.4.i.sroa.5.5.insert.insert.i5547 to ptr
  %i.aahw = ptrtoint ptr %.sroa.4115.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !14582
  br label %bb.ijh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550: ; preds = %bb.iid, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBL_7HttpApi35clear_retention_period_for_database020ClearRetentionPeriodECsgsNUVCRJO2f_13influxdb3_lib.exit79.i
  %i.aahx = getelementptr inbounds nuw i8, ptr %1, i64 928
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aahx)
          to label %bb.ijp unwind label %bb.ijf, !noalias !14589

bb.ijo:                                           ; preds = %bb.iij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !14582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !14582
  store i8 3, ptr %i.aafy, align 8, !noalias !14582
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i5530)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6116.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.146544)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ijp:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i
  %i.aahy = phi ptr [ %i.aafi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %i.aafy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %i.aahz = phi ptr [ %i.aafj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %i.aafz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.5135.sroa.6.1.i = phi i16 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.0.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.5135.sroa.5.1.i = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %i.aagy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.5135.sroa.0.1.i = phi i8 [ %.sroa.5135.sroa.0.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %i.aagw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.15.1.i5551 = phi i64 [ %.sroa.15.0.i5549, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.10.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.14137.1.i = phi ptr [ %.sroa.14137.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.9.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.14.1.i5552 = phi i16 [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.13.1.i = phi i8 [ %.sroa.13.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.7.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.11136.1.i = phi i8 [ %.sroa.11136.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %.sroa.12129.sroa.6.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.0134.1.i = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit.i5550 ], [ %i.aagt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalog7CatalogEECsgsNUVCRJO2f_13influxdb3_lib.exit73.i ]
  %.sroa.5135.sroa.6.0.insert.ext.i = zext i16 %.sroa.5135.sroa.6.1.i to i32
  %.sroa.5135.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.5135.sroa.6.0.insert.ext.i, 16
  %.sroa.5135.sroa.5.0.insert.ext.i = zext i8 %.sroa.5135.sroa.5.1.i to i32
  %.sroa.5135.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5135.sroa.5.0.insert.ext.i, 8
  %.sroa.5135.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.5135.sroa.5.0.insert.shift.i, %.sroa.5135.sroa.6.0.insert.shift.i
  %.sroa.5135.sroa.0.0.insert.ext.i = zext i8 %.sroa.5135.sroa.0.1.i to i32
  %.sroa.5135.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.5135.sroa.5.0.insert.insert.i, %.sroa.5135.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146544, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.16.i5530, i64 96, i1 false), !noalias !14644
  store i8 1, ptr %i.aahy, align 8, !noalias !14582
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i5530)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6116.i)
  store i64 %.sroa.0134.1.i, ptr %i.amo, align 8
  %.sroa.86538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 %.sroa.5135.sroa.0.0.insert.insert.i, ptr %.sroa.86538.0..sroa_idx, align 8
  %.sroa.96539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i8 %.sroa.11136.1.i, ptr %.sroa.96539.0..sroa_idx, align 4
  %.sroa.106540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 13
  store i8 %.sroa.13.1.i, ptr %.sroa.106540.0..sroa_idx, align 1
  %.sroa.116541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 14
  store i16 %.sroa.14.1.i5552, ptr %.sroa.116541.0..sroa_idx, align 2
  %.sroa.126542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store ptr %.sroa.14137.1.i, ptr %.sroa.126542.0..sroa_idx, align 8
  %.sroa.136543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  store i64 %.sroa.15.1.i5551, ptr %.sroa.136543.0..sroa_idx, align 8
  %.sroa.146544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146544.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.146544, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.146544)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi35clear_retention_period_for_database0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 16 %i.aahz)
          to label %bb.jv unwind label %bb.ijq

bb.ijq:                                           ; preds = %bb.ijp
  %i.aaia = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.ijr:                                           ; preds = %bb.ijv, %bb.iju
  %i.aaib = landingpad { ptr, i32 }
          cleanup
  br label %.body5664

.body5664:                                        ; preds = %bb.iop, %bb.ijr
  %i.aaic = phi ptr [ %i.aaid, %bb.ijr ], [ %i.aasz, %bb.iop ]
  %eh.lpad-body5665 = phi { ptr, i32 } [ %i.aaib, %bb.ijr ], [ %.pn43.i5601, %bb.iop ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166562)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176563)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186564)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18create_plugin_file0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aaic) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bh

bb.ijs:                                           ; preds = %bb.a
  %.phi.trans.insert7869 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %.pre7870 = load i8, ptr %.phi.trans.insert7869, align 16, !range !1337, !noalias !14645
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166562)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176563)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.186564)
  %i.aaid = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i5590)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3144.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5145.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.3.i)
  %i.aaie = getelementptr inbounds nuw i8, ptr %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, i64 16 ; 6 uses
  %i.aaif = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 7 uses
  switch i8 %.pre7870, label %default.unreachable8563 [
    i8 0, label %bb.ijt
    i8 1, label %bb.iju
    i8 2, label %bb.ijv
    i8 3, label %bb.ijx
    i8 4, label %bb.ikh
    i8 5, label %bb.ikv
  ]

bb.ijt:                                           ; preds = %.thread8643, %bb.ijs
  %i.aaig = phi ptr [ %i.bzh, %.thread8643 ], [ %i.aaif, %bb.ijs ]
  %i.aaih = phi ptr [ %i.bzg, %.thread8643 ], [ %i.aaie, %bb.ijs ]
  %i.aaii = phi ptr [ %i.bzf, %.thread8643 ], [ %i.aaid, %bb.ijs ] ; 2 uses
  %i.aaij = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aaik = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aail = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.aaim = load ptr, ptr %i.aail, align 8, !noalias !14645, !nonnull !11, !align !52, !noundef !11 ; 2 uses
  store ptr %i.aaim, ptr %i.aaik, align 16, !noalias !14645
  store i8 1, ptr %i.aaij, align 1, !noalias !14645
  %i.aain = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aain, ptr noundef nonnull align 8 dereferenceable(240) %i.aaii, i64 240, i1 false), !noalias !14645
  %i.aaio = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.aaim, ptr %i.aaio, align 8, !noalias !14645
  %.sroa.8.0..sroa_idx.i5660 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.aain, ptr %.sroa.8.0..sroa_idx.i5660, align 16, !noalias !14645
  %.sroa.10119.0..sroa_idx.i5661 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %.sroa.10119.0..sroa_idx.i5661, align 16, !noalias !14645
  br label %bb.ijx

bb.iju:                                           ; preds = %bb.ijs
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #36
          to label %.noexc5662 unwind label %bb.ijr

.noexc5662:                                       ; preds = %bb.iju
  unreachable

bb.ijv:                                           ; preds = %bb.ijs
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #36
          to label %.noexc5663 unwind label %bb.ijr

.noexc5663:                                       ; preds = %bb.ijv
  unreachable

bb.ijw:                                           ; preds = %bb.ijx
  %i.aaip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14645
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aait) #34
          to label %.body91.i unwind label %bb.ikf, !noalias !14649

bb.ijx:                                           ; preds = %bb.ijs, %bb.ijt
  %i.aaiq = phi ptr [ %i.aaif, %bb.ijs ], [ %i.aaig, %bb.ijt ] ; 5 uses
  %i.aair = phi ptr [ %i.aaie, %bb.ijs ], [ %i.aaih, %bb.ijt ]
  %i.aais = phi ptr [ %i.aaid, %bb.ijs ], [ %i.aaii, %bb.ijt ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !14645
  %i.aait = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ap, ptr noundef nonnull align 8 %i.aait, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ijy unwind label %bb.ijw, !noalias !14649

bb.ijy:                                           ; preds = %bb.ijx
  %i.aaiu = load i32, ptr %i.ap, align 8, !range !7035, !noalias !14645, !noundef !11 ; 3 uses
  %i.aaiv = icmp eq i32 %i.aaiu, -2
  br i1 %i.aaiv, label %bb.ijz, label %bb.ika

bb.ijz:                                           ; preds = %bb.ijy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14645
  br label %bb.ios

bb.ika:                                           ; preds = %bb.ijy
  %.sroa.3.0..sroa_idx.i5657 = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.sroa.3.0.copyload.i5658 = load i32, ptr %.sroa.3.0..sroa_idx.i5657, align 4, !noalias !14645 ; 3 uses
  %.sroa.4.0..sroa_idx.i5659 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i5659, align 8, !noalias !14645 ; 2 uses
  %.sroa.6121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.6121.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6121.0..sroa_idx.i, align 8, !noalias !14645
  %.sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.aaiw = load <2 x i64>, ptr %.sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.i, align 8, !noalias !14645
  %.sroa.6121.sroa.2.sroa.2.sroa.2.0..sroa.6121.sroa.2.sroa.2.0..sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121.sroa.2.sroa.2.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121.sroa.2.sroa.2.sroa.2.0..sroa.6121.sroa.2.sroa.2.0..sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !14645
  %.sroa.6121.sroa.2.sroa.3.0..sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6121.sroa.2.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6121.sroa.2.sroa.3.0..sroa.6121.sroa.2.0..sroa.6121.0..sroa_idx.sroa_idx.sroa_idx.i, i64 40, i1 false), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !14645
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aait)
          to label %bb.ikc unwind label %bb.ikb, !noalias !14649

bb.ikb:                                           ; preds = %bb.ika
  %i.aaix = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

bb.ikc:                                           ; preds = %bb.ika
  %.not.i59.i = icmp eq i32 %i.aaiu, -1
  br i1 %.not.i59.i, label %bb.ikd, label %bb.ike

bb.ikd:                                           ; preds = %bb.ikc
  %i.aaiy = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.4.0.copyload.i, ptr %i.aaiy, align 8, !noalias !14645
  %i.aaiz = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aaja = load ptr, ptr %i.aaiz, align 16, !noalias !14645, !nonnull !11, !align !52, !noundef !11
  %i.aajb = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aajb, align 1, !noalias !14645
  %i.aajc = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aait, ptr noundef nonnull align 8 dereferenceable(240) %i.aajc, i64 240, i1 false), !noalias !14645
  %.sroa.8139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.aaja, ptr %.sroa.8139.0..sroa_idx.i, align 8, !noalias !14645
  %.sroa.10141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2280
  store i8 0, ptr %.sroa.10141.0..sroa_idx.i, align 8, !noalias !14645
  br label %bb.ikh

bb.ike:                                           ; preds = %bb.ikc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6121.sroa.2.sroa.2.sroa.2.i, i64 16, i1 false), !noalias !14645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6121.sroa.2.sroa.3.i, i64 40, i1 false), !noalias !14645
  %.sroa.6219.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %i.aaiu to i8
  %.sroa.13220.sroa.0.0.extract.trunc221.i = trunc i32 %.sroa.3.0.copyload.i5658 to i8
  %.sroa.13220.sroa.6.0.extract.shift224.i = lshr i32 %.sroa.3.0.copyload.i5658, 8
  %.sroa.13220.sroa.6.0.extract.trunc225.i = trunc i32 %.sroa.13220.sroa.6.0.extract.shift224.i to i8
  %.sroa.13220.sroa.7.0.extract.shift230.i = and i32 %.sroa.3.0.copyload.i5658, -65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i, %bb.ikt, %bb.ike
  %i.aajd = phi ptr [ %i.aaoy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %i.aajq, %bb.ikt ], [ %i.aaiq, %bb.ike ] ; 2 uses
  %i.aaje = phi ptr [ %i.aapa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %i.aajs, %bb.ikt ], [ %i.aais, %bb.ike ] ; 2 uses
  %.sroa.13220.sroa.7.0.i = phi i32 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.13220.sroa.7.0.extract.shift234.i, %bb.ikt ], [ %.sroa.13220.sroa.7.0.extract.shift230.i, %bb.ike ]
  %.sroa.13220.sroa.6.0.i = phi i8 [ %.sroa.13220.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.13220.sroa.6.0.extract.trunc229.i, %bb.ikt ], [ %.sroa.13220.sroa.6.0.extract.trunc225.i, %bb.ike ]
  %.sroa.13220.sroa.0.0.i = phi i8 [ %.sroa.13220.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.13220.sroa.0.0.extract.trunc223.i, %bb.ikt ], [ %.sroa.13220.sroa.0.0.extract.trunc221.i, %bb.ike ]
  %.sroa.20.0.i5609 = phi ptr [ %.sroa.20.2.i5605, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.3144.sroa.4.0.copyload.i, %bb.ikt ], [ %.sroa.6121.sroa.0.0.copyload.i, %bb.ike ]
  %.sroa.18.0.i5610 = phi i64 [ %.sroa.18.2.i5606, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.3144.sroa.2.0.copyload.i, %bb.ikt ], [ %.sroa.4.0.copyload.i, %bb.ike ]
  %.sroa.6219.sroa.0.0.i = phi i8 [ %.sroa.6219.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %.sroa.6219.sroa.0.0.extract.trunc241.i, %bb.ikt ], [ %.sroa.6219.sroa.0.0.extract.trunc.i, %bb.ike ]
  %i.aajf = phi <2 x i64> [ %i.aasi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i ], [ %i.aajw, %bb.ikt ], [ %i.aaiw, %bb.ike ]
  %i.aajg = getelementptr inbounds nuw i8, ptr %1, i64 1185 ; 2 uses
  %i.aajh = load i8, ptr %i.aajg, align 1, !range !54, !noalias !14645, !noundef !11
  %i.aaji = trunc nuw i8 %i.aajh to i1
  br i1 %i.aaji, label %bb.ioo, label %bb.ion

bb.ikf:                                           ; preds = %bb.ior, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.ioi, %.body86.i, %.body63.i5596, %bb.iks, %bb.ikg, %bb.ijw
  %i.aajj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14649
  unreachable

.body91.i:                                        ; preds = %bb.ikg, %bb.ikn, %bb.ikp, %bb.ijw, %bb.ikb, %bb.iol, %bb.iod, %bb.iob, %.body86.i
  %i.aajk = phi ptr [ %i.aaoy, %bb.iol ], [ %i.aaiq, %bb.ikb ], [ %i.aaru, %.body86.i ], [ %i.aaoy, %bb.iob ], [ %i.aaoy, %bb.iod ], [ %i.aaiq, %bb.ijw ], [ %i.aajq, %bb.ikp ], [ %i.aajq, %bb.ikn ], [ %i.aajq, %bb.ikg ] ; 2 uses
  %i.aajl = phi ptr [ %i.aapa, %bb.iol ], [ %i.aais, %bb.ikb ], [ %i.aarv, %.body86.i ], [ %i.aapa, %bb.iob ], [ %i.aapa, %bb.iod ], [ %i.aais, %bb.ijw ], [ %i.aajs, %bb.ikp ], [ %i.aajs, %bb.ikn ], [ %i.aajs, %bb.ikg ] ; 2 uses
  %.pn40.pn.i = phi { ptr, i32 } [ %i.aasv, %bb.iol ], [ %i.aaix, %bb.ikb ], [ %.pn36.i5600, %.body86.i ], [ %i.aarz, %bb.iob ], [ %i.aasb, %bb.iod ], [ %i.aaip, %bb.ijw ], [ %i.aakd, %bb.ikp ], [ %i.aaka, %bb.ikn ], [ %i.aajp, %bb.ikg ] ; 2 uses
  %i.aajm = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aajn = load i8, ptr %i.aajm, align 1, !range !54, !noalias !14645, !noundef !11
  %i.aajo = trunc nuw i8 %i.aajn to i1
  br i1 %i.aajo, label %bb.ior, label %bb.iop

bb.ikg:                                           ; preds = %bb.ikh
  %i.aajp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14645
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aajt) #34
          to label %.body91.i unwind label %bb.ikf, !noalias !14649

bb.ikh:                                           ; preds = %bb.ijs, %bb.ikd
  %i.aajq = phi ptr [ %i.aaif, %bb.ijs ], [ %i.aaiq, %bb.ikd ] ; 6 uses
  %i.aajr = phi ptr [ %i.aaie, %bb.ijs ], [ %i.aair, %bb.ikd ]
  %i.aajs = phi ptr [ %i.aaid, %bb.ijs ], [ %i.aais, %bb.ikd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !14645
  %i.aajt = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB8_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ao, ptr noundef nonnull align 8 %i.aajt, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.iki unwind label %bb.ikg, !noalias !14649

bb.iki:                                           ; preds = %bb.ikh
  %i.aaju = load i32, ptr %i.ao, align 8, !range !7035, !noalias !14645, !noundef !11 ; 3 uses
  %i.aajv = icmp eq i32 %i.aaju, -2
  br i1 %i.aajv, label %bb.ikj, label %bb.ikk

bb.ikj:                                           ; preds = %bb.iki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14645
  br label %bb.ios

bb.ikk:                                           ; preds = %bb.iki
  %.sroa.3144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.3144.sroa.0.0.copyload.i = load i32, ptr %.sroa.3144.0..sroa_idx.i, align 4, !noalias !14645 ; 3 uses
  %.sroa.3144.sroa.2.0..sroa.3144.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.3144.sroa.2.0.copyload.i = load i64, ptr %.sroa.3144.sroa.2.0..sroa.3144.0..sroa_idx.sroa_idx.i, align 8, !noalias !14645 ; 2 uses
  %.sroa.3144.sroa.4.0..sroa.3144.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.3144.sroa.4.0.copyload.i = load ptr, ptr %.sroa.3144.sroa.4.0..sroa.3144.0..sroa_idx.sroa_idx.i, align 8, !noalias !14645 ; 2 uses
  %.sroa.3144.sroa.6.0..sroa.3144.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aajw = load <2 x i64>, ptr %.sroa.3144.sroa.6.0..sroa.3144.0..sroa_idx.sroa_idx.i, align 8, !noalias !14645 ; 2 uses
  %.sroa.3144.sroa.6.sroa.3.sroa.3.0..sroa.3144.sroa.6.sroa.3.0..sroa.3144.sroa.6.0..sroa.3144.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3144.sroa.6.sroa.3.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3144.sroa.6.sroa.3.sroa.3.0..sroa.3144.sroa.6.sroa.3.0..sroa.3144.sroa.6.0..sroa.3144.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !14645
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5145.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5145.0..sroa_idx.i, i64 40, i1 false), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !14645
  %i.aajx = getelementptr inbounds nuw i8, ptr %1, i64 2280
  %i.aajy = load i8, ptr %i.aajx, align 8, !range !1322, !noalias !14645, !noundef !11
  switch i8 %i.aajy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i [
    i8 0, label %bb.ikl
    i8 3, label %bb.ikm
  ]

bb.ikl:                                           ; preds = %bb.ikk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.aajt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ikp, !noalias !14649

bb.ikm:                                           ; preds = %bb.ikk
  %i.aajz = getelementptr inbounds nuw i8, ptr %1, i64 1680
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi9read_body0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aajz)
          to label %bb.iko unwind label %bb.ikn, !noalias !14649

bb.ikn:                                           ; preds = %bb.ikm
  %i.aaka = landingpad { ptr, i32 }
          cleanup
  %i.aakb = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.aakb, align 1, !noalias !14645
  br label %.body91.i

bb.iko:                                           ; preds = %bb.ikm
  %i.aakc = getelementptr inbounds nuw i8, ptr %1, i64 2281
  store i8 0, ptr %i.aakc, align 1, !noalias !14645
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ikp:                                           ; preds = %bb.ikl
  %i.aakd = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.iko, %bb.ikl, %bb.ikk
  %.not.i61.i5647 = icmp eq i32 %i.aaju, -1
  br i1 %.not.i61.i5647, label %bb.ikq, label %bb.ikt

bb.ikq:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %.sroa.3240.sroa.2.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3240.sroa.2.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3144.sroa.6.sroa.3.sroa.3.i, i64 16, i1 false), !noalias !14645
  store i64 %.sroa.3144.sroa.2.0.copyload.i, ptr %i.aajt, align 8, !noalias !14645
  %.sroa.2239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  store ptr %.sroa.3144.sroa.4.0.copyload.i, ptr %.sroa.2239.0..sroa_idx.i, align 16, !noalias !14645
  %.sroa.3240.0..sroa_idx.i = getelementptr i8, ptr %1, i64 1208 ; 2 uses
  store <2 x i64> %i.aajw, ptr %.sroa.3240.0..sroa_idx.i, align 8, !noalias !14645
  %i.aake = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aakf = load ptr, ptr %i.aake, align 16, !noalias !14645, !nonnull !11, !align !52, !noundef !11
  %i.aakg = getelementptr inbounds nuw i8, ptr %i.aakf, i64 104
  %.val58.i5648 = load ptr, ptr %i.aakg, align 8, !noalias !14649, !nonnull !11, !noundef !11 ; 2 uses
  %i.aakh = atomicrmw add ptr %.val58.i5648, i64 1 monotonic, align 8, !noalias !14649
  %i.aaki = icmp slt i64 %i.aakh, 0
  br i1 %i.aaki, label %bb.ikr, label %.thread.i5649

bb.ikr:                                           ; preds = %bb.ikq
  call void @llvm.trap()
  unreachable

.thread.i5649:                                    ; preds = %bb.ikq
  %i.aakj = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 3 uses
  store ptr %.val58.i5648, ptr %i.aakj, align 8, !noalias !14645
  %.val56.i5650 = load ptr, ptr %.sroa.2239.0..sroa_idx.i, align 16, !noalias !14645, !nonnull !11, !noundef !11 ; 2 uses
  %.val57.i5651 = load i64, ptr %.sroa.3240.0..sroa_idx.i, align 8, !noalias !14645, !noundef !11 ; 2 uses
  %.val54.i5652 = load ptr, ptr %.sroa.3240.sroa.2.sroa.2.0..sroa_idx.i, align 8, !noalias !14645, !nonnull !11, !noundef !11 ; 2 uses
  %i.aakk = getelementptr i8, ptr %1, i64 1232
  %.val55.i5653 = load i64, ptr %i.aakk, align 16, !noalias !14645, !noundef !11 ; 2 uses
  %i.aakl = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 2 uses
  store ptr %i.aakj, ptr %i.aakl, align 16, !noalias !14645
  %.sroa.8164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store ptr %.val56.i5650, ptr %.sroa.8164.0..sroa_idx.i, align 8, !noalias !14645
  %.sroa.9165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i64 %.val57.i5651, ptr %.sroa.9165.0..sroa_idx.i, align 16, !noalias !14645
  %.sroa.10166.0..sroa_idx.i5654 = getelementptr inbounds nuw i8, ptr %1, i64 1272
  store ptr %.val54.i5652, ptr %.sroa.10166.0..sroa_idx.i5654, align 8, !noalias !14645
  %.sroa.11167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1280
  store i64 %.val55.i5653, ptr %.sroa.11167.0..sroa_idx.i, align 16, !noalias !14645
  %.sroa.13.0..sroa_idx.i5655 = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  store i8 0, ptr %.sroa.13.0..sroa_idx.i5655, align 16, !noalias !14645
  br label %bb.ikw

bb.iks:                                           ; preds = %bb.imp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aapg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.ikf, !noalias !14649

bb.ikt:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBK_7HttpApi14read_body_jsonNtNtCs9h7Hq22ZyhR_15influxdb3_types4http23UpdatePluginFileRequestE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5145.i, i64 40, i1 false), !noalias !14645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.3144.sroa.6.sroa.3.sroa.3.i, i64 16, i1 false), !noalias !14645
  %.sroa.6219.sroa.0.0.extract.trunc241.i = trunc nuw nsw i32 %i.aaju to i8
  %.sroa.13220.sroa.0.0.extract.trunc223.i = trunc i32 %.sroa.3144.sroa.0.0.copyload.i to i8
  %.sroa.13220.sroa.6.0.extract.shift228.i = lshr i32 %.sroa.3144.sroa.0.0.copyload.i, 8
  %.sroa.13220.sroa.6.0.extract.trunc229.i = trunc i32 %.sroa.13220.sroa.6.0.extract.shift228.i to i8
  %.sroa.13220.sroa.7.0.extract.shift234.i = and i32 %.sroa.3144.sroa.0.0.copyload.i, -65536
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i

bb.iku:                                           ; preds = %bb.ilj, %bb.ili
  %i.aakm = landingpad { ptr, i32 }
          cleanup
  br label %.body63.i5596

.body63.i5596:                                    ; preds = %.body49.i.i5594, %bb.iku
  %i.aakn = phi ptr [ %i.aaif, %bb.iku ], [ %i.aalx, %.body49.i.i5594 ]
  %i.aako = phi ptr [ %i.aaid, %bb.iku ], [ %i.aaly, %.body49.i.i5594 ]
  %i.aakp = phi ptr [ %i.aakq, %bb.iku ], [ %i.aama, %.body49.i.i5594 ]
  %eh.lpad-body64.i = phi { ptr, i32 } [ %i.aakm, %bb.iku ], [ %.pn31.pn.i.i5595, %.body49.i.i5594 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl18create_plugin_file0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aakp) #34
          to label %bb.imp unwind label %bb.ikf, !noalias !14649

bb.ikv:                                           ; preds = %bb.ijs
  %.phi.trans.insert.i5591 = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 4 uses
  %.pre.i5592 = load i8, ptr %.phi.trans.insert.i5591, align 16, !range !1481, !noalias !14650
  %i.aakq = getelementptr inbounds nuw i8, ptr %1, i64 1248 ; 5 uses
  switch i8 %.pre.i5592, label %default.unreachable8563 [
    i8 0, label %._crit_edge7871
    i8 1, label %bb.ili
    i8 2, label %bb.ilj
    i8 3, label %bb.ill
    i8 4, label %bb.imd
  ]

._crit_edge7871:                                  ; preds = %bb.ikv
  %.pre7872 = load ptr, ptr %i.aakq, align 16, !noalias !14650
  %.phi.trans.insert7873 = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %.pre7874 = load ptr, ptr %.phi.trans.insert7873, align 8, !noalias !14650
  %.phi.trans.insert7875 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %.pre7876 = load i64, ptr %.phi.trans.insert7875, align 16, !noalias !14650
  %.phi.trans.insert7877 = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %.pre7878 = load ptr, ptr %.phi.trans.insert7877, align 8, !noalias !14650
  %.phi.trans.insert7879 = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %.pre7880 = load i64, ptr %.phi.trans.insert7879, align 16, !noalias !14650
  br label %bb.ikw

bb.ikw:                                           ; preds = %._crit_edge7871, %.thread.i5649
  %i.aakr = phi ptr [ %i.aajq, %.thread.i5649 ], [ %i.aaif, %._crit_edge7871 ] ; 8 uses
  %i.aaks = phi ptr [ %i.aajr, %.thread.i5649 ], [ %i.aaie, %._crit_edge7871 ] ; 5 uses
  %i.aakt = phi ptr [ %i.aajs, %.thread.i5649 ], [ %i.aaid, %._crit_edge7871 ] ; 8 uses
  %i.aaku = phi i64 [ %.val55.i5653, %.thread.i5649 ], [ %.pre7880, %._crit_edge7871 ]
  %i.aakv = phi ptr [ %.val54.i5652, %.thread.i5649 ], [ %.pre7878, %._crit_edge7871 ]
  %i.aakw = phi i64 [ %.val57.i5651, %.thread.i5649 ], [ %.pre7876, %._crit_edge7871 ]
  %i.aakx = phi ptr [ %.val56.i5650, %.thread.i5649 ], [ %.pre7874, %._crit_edge7871 ]
  %i.aaky = phi ptr [ %i.aakj, %.thread.i5649 ], [ %.pre7872, %._crit_edge7871 ]
  %i.aakz = phi ptr [ %.sroa.13.0..sroa_idx.i5655, %.thread.i5649 ], [ %.phi.trans.insert.i5591, %._crit_edge7871 ] ; 8 uses
  %i.aala = phi ptr [ %i.aakl, %.thread.i5649 ], [ %i.aakq, %._crit_edge7871 ] ; 8 uses
  %i.aalb = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store ptr %i.aakv, ptr %i.aalb, align 8, !noalias !14650
  %i.aalc = getelementptr inbounds nuw i8, ptr %1, i64 1296
  store i64 %i.aaku, ptr %i.aalc, align 16, !noalias !14650
  %.val34.i.i5639 = load ptr, ptr %i.aaky, align 8, !noalias !14654, !nonnull !11, !noundef !11 ; 4 uses
  %i.aald = getelementptr inbounds nuw i8, ptr %.val34.i.i5639, i64 104
  %i.aale = load i8, ptr %i.aald, align 8, !range !54, !noalias !14654, !noundef !11
  %i.aalf = trunc nuw i8 %i.aale to i1
  br i1 %i.aalf, label %bb.imo, label %bb.ikx

bb.ikx:                                           ; preds = %bb.ikw
  %i.aalg = getelementptr inbounds nuw i8, ptr %.val34.i.i5639, i64 16
  %i.aalh = load i64, ptr %i.aalg, align 8, !range !10, !alias.scope !14655, !noalias !14654, !noundef !11
  %.not.i.i.i5640 = icmp eq i64 %i.aalh, -1
  br i1 %.not.i.i.i5640, label %bb.iky, label %bb.ilb

bb.iky:                                           ; preds = %bb.ikx
  %i.aali = invoke noundef nonnull ptr @_RINvMNtCsaIKnL9StOw_6anyhow5errorNtB5_5Error3msgReECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 30)
          to label %bb.imo unwind label %bb.ikz, !noalias !14654

bb.ikz:                                           ; preds = %bb.iky
  %i.aalj = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i.i5594

bb.ila:                                           ; preds = %bb.ilb
  %i.aalk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14650
  br label %.body49.i.i5594

bb.ilb:                                           ; preds = %bb.ikx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !14650
  %i.aall = getelementptr i8, ptr %.val34.i.i5639, i64 24
  %.val37.i.i5641 = load ptr, ptr %i.aall, align 8, !noalias !14654, !nonnull !11, !noundef !11
  %i.aalm = getelementptr i8, ptr %.val34.i.i5639, i64 32
  %.val38.i.i = load i64, ptr %i.aalm, align 8, !noalias !14654, !noundef !11
  invoke void @_RNvCsh4GC5dvIChH_27influxdb3_processing_engine31validate_path_within_plugin_dir(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val37.i.i5641, i64 noundef %.val38.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aakx, i64 noundef %i.aakw)
          to label %bb.ilc unwind label %bb.ila, !noalias !14654

bb.ilc:                                           ; preds = %bb.ilb
  call void @llvm.experimental.noalias.scope.decl(metadata !14658)
  %i.aaln = load i8, ptr %i.aa, align 8, !range !8073, !alias.scope !14661, !noalias !14663, !noundef !11 ; 2 uses
  %.not.i41.i.i = icmp eq i8 %i.aaln, -1
  br i1 %.not.i41.i.i, label %bb.ild, label %bb.ilh

bb.ild:                                           ; preds = %bb.ilc
  %i.aalo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.887.sroa.6.7.copyload167.i.i = load ptr, ptr %i.aalo, align 8, !alias.scope !14664, !noalias !14650
  %.sroa.887.sroa.9.7..sroa_idx168.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.887.sroa.9.i.sroa.0.0.copyload293.i = load i64, ptr %.sroa.887.sroa.9.7..sroa_idx168.i.i, align 8, !alias.scope !14664, !noalias !14650 ; 2 uses
  %.sroa.887.sroa.9.i.sroa.8.0..sroa.887.sroa.9.7..sroa_idx168.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.887.sroa.9.i.sroa.8.0.copyload295.i = load i64, ptr %.sroa.887.sroa.9.i.sroa.8.0..sroa.887.sroa.9.7..sroa_idx168.i.sroa_idx.i, align 8, !alias.scope !14664, !noalias !14650 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14650
  %i.aalp = getelementptr i8, ptr %1, i64 1312
  store i64 %.sroa.887.sroa.9.i.sroa.0.0.copyload293.i, ptr %i.aalp, align 16, !noalias !14650
  %.sroa.887.sroa.9.i.sroa.8.0..sroa.4170.0..sroa_idx.i.sroa_idx.i = getelementptr i8, ptr %1, i64 1320
  store i64 %.sroa.887.sroa.9.i.sroa.8.0.copyload295.i, ptr %.sroa.887.sroa.9.i.sroa.8.0..sroa.4170.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !14650
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1304
  store ptr %.sroa.887.sroa.6.7.copyload167.i.i, ptr %3, align 8, !noalias !14650
  %i.aalq = inttoptr i64 %.sroa.887.sroa.9.i.sroa.0.0.copyload293.i to ptr
  %i.aalr = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aalq, i64 noundef %.sroa.887.sroa.9.i.sroa.8.0.copyload295.i)
          to label %bb.ilf unwind label %bb.ile, !noalias !14654 ; 2 uses

bb.ile:                                           ; preds = %bb.ild
  %i.aals = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i5593

bb.ilf:                                           ; preds = %bb.ild
  %i.aalt = extractvalue { ptr, i64 } %i.aalr, 0  ; 2 uses
  %.not14.i.i = icmp eq ptr %i.aalt, null
  br i1 %.not14.i.i, label %bb.ilu, label %bb.ilg

bb.ilg:                                           ; preds = %bb.ilf
  %i.aalu = extractvalue { ptr, i64 } %i.aalr, 1
  %i.aalv = getelementptr inbounds nuw i8, ptr %1, i64 1336
  store ptr %i.aalt, ptr %i.aalv, align 8, !noalias !14650
  %.sroa.8109.0..sroa_idx.i.i5644 = getelementptr inbounds nuw i8, ptr %1, i64 1344
  store i64 %i.aalu, ptr %.sroa.8109.0..sroa_idx.i.i5644, align 16, !noalias !14650
  %.sroa.10111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  store i8 0, ptr %.sroa.10111.0..sroa_idx.i.i, align 16, !noalias !14650
  br label %bb.ill

bb.ilh:                                           ; preds = %bb.ilc
  %.sroa.887.0..sroa_idx88.i.i5642 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %.sroa.887.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.887.0..sroa_idx88.i.i5642, align 1, !alias.scope !14664, !noalias !14650
  %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx88.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.887.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.887.sroa.6.0..sroa.887.0..sroa_idx88.sroa_idx.i.i, align 8, !alias.scope !14664, !noalias !14650
  %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx88.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aalw = load <2 x i64>, ptr %.sroa.887.sroa.9.0..sroa.887.0..sroa_idx88.sroa_idx.i.i, align 8, !alias.scope !14664, !noalias !14650
  %.sroa.10.0..sroa_idx90.i.i5643 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx90.i.i5643, i64 56, i1 false), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !14650
  %.sroa.4.i.sroa.3.0.insert.ext.i.i = zext nneg i8 %i.aaln to i64
  %.sroa.4.i.sroa.3.1.insert.ext.i.i = zext i56 %.sroa.887.sroa.0.0.copyload.i.i to i64
  %.sroa.4.i.sroa.3.1.insert.shift.i.i = shl nuw i64 %.sroa.4.i.sroa.3.1.insert.ext.i.i, 8
  %.sroa.4.i.sroa.3.1.insert.insert.i.i = or disjoint i64 %.sroa.4.i.sroa.3.1.insert.shift.i.i, %.sroa.4.i.sroa.3.0.insert.ext.i.i
  br label %bb.imo

.body49.i.i5594:                                  ; preds = %bb.imm, %bb.imk, %.body.i.i5593, %bb.ilw, %bb.ila, %bb.ikz
  %i.aalx = phi ptr [ %i.aakr, %bb.ikz ], [ %i.aakr, %bb.ila ], [ %i.aanz, %bb.imk ], [ %i.aano, %.body.i.i5593 ], [ %i.aanf, %bb.ilw ], [ %i.aaor, %bb.imm ]
  %i.aaly = phi ptr [ %i.aakt, %bb.ikz ], [ %i.aakt, %bb.ila ], [ %i.aaob, %bb.imk ], [ %i.aanp, %.body.i.i5593 ], [ %i.aanh, %bb.ilw ], [ %i.aaos, %bb.imm ]
  %i.aalz = phi ptr [ %i.aakz, %bb.ikz ], [ %i.aakz, %bb.ila ], [ %i.aaoc, %bb.imk ], [ %i.aanq, %.body.i.i5593 ], [ %i.aani, %bb.ilw ], [ %i.aaot, %bb.imm ]
  %i.aama = phi ptr [ %i.aala, %bb.ikz ], [ %i.aala, %bb.ila ], [ %i.aaod, %bb.imk ], [ %i.aanr, %.body.i.i5593 ], [ %i.aanj, %bb.ilw ], [ %i.aaou, %bb.imm ]
  %.pn31.pn.i.i5595 = phi { ptr, i32 } [ %i.aalj, %bb.ikz ], [ %i.aalk, %bb.ila ], [ %i.aaop, %bb.imk ], [ %.pn25.pn.pn.i.i, %.body.i.i5593 ], [ %i.aanl, %bb.ilw ], [ %i.aaov, %bb.imm ]
  store i8 2, ptr %i.aalz, align 8, !noalias !14650
  br label %.body63.i5596

bb.ili:                                           ; preds = %bb.ikv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #36
          to label %.noexc65.i5638 unwind label %bb.iku, !noalias !14649

.noexc65.i5638:                                   ; preds = %bb.ili
  unreachable

bb.ilj:                                           ; preds = %bb.ikv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #36
          to label %.noexc66.i5637 unwind label %bb.iku, !noalias !14649

.noexc66.i5637:                                   ; preds = %bb.ilj
  unreachable

bb.ilk:                                           ; preds = %bb.ill
  %i.aamb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aamh) #34
          to label %.body.i.i5593 unwind label %bb.ily, !noalias !14654

bb.ill:                                           ; preds = %bb.ilg, %bb.ikv
  %i.aamc = phi ptr [ %i.aakr, %bb.ilg ], [ %i.aaif, %bb.ikv ] ; 6 uses
  %i.aamd = phi ptr [ %i.aaks, %bb.ilg ], [ %i.aaie, %bb.ikv ] ; 2 uses
  %i.aame = phi ptr [ %i.aakt, %bb.ilg ], [ %i.aaid, %bb.ikv ] ; 5 uses
  %i.aamf = phi ptr [ %i.aakz, %bb.ilg ], [ %.phi.trans.insert.i5591, %bb.ikv ] ; 6 uses
  %i.aamg = phi ptr [ %i.aala, %bb.ilg ], [ %i.aakq, %bb.ikv ] ; 5 uses
  %i.aamh = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 2 uses
  %i.aami = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aamh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ilm unwind label %bb.ilk, !noalias !14654 ; 2 uses

bb.ilm:                                           ; preds = %bb.ill
  %i.aamj = extractvalue { i64, ptr } %i.aami, 0
  %i.aamk = extractvalue { i64, ptr } %i.aami, 1  ; 2 uses
  %i.aaml = trunc nuw i64 %i.aamj to i1
  br i1 %i.aaml, label %bb.imn, label %bb.iln

bb.iln:                                           ; preds = %bb.ilm
  %i.aamm = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.aamn = load i8, ptr %i.aamm, align 16, !range !1322, !noalias !14650, !noundef !11
  %cond.i.i.i5635 = icmp eq i8 %i.aamn, 3
  br i1 %cond.i.i.i5635, label %bb.ilo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i

bb.ilo:                                           ; preds = %bb.iln
  %i.aamo = getelementptr inbounds nuw i8, ptr %1, i64 1368 ; 3 uses
  %i.aamp = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.aamq = load i8, ptr %i.aamp, align 8, !range !1322, !noalias !14650, !noundef !11
  switch i8 %i.aamq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i [
    i8 0, label %bb.ilp
    i8 3, label %bb.ils
  ]

bb.ilp:                                           ; preds = %bb.ilo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aamo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i unwind label %bb.ilq, !noalias !14654

bb.ilq:                                           ; preds = %bb.ilp
  %i.aamr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aamo)
          to label %.body.i.i5593 unwind label %bb.ilr, !noalias !14654

bb.ilr:                                           ; preds = %bb.ilq
  %i.aams = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14654
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i: ; preds = %bb.ilp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aamo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.ilt, !noalias !14654

bb.ils:                                           ; preds = %bb.ilo
  %i.aamt = getelementptr inbounds nuw i8, ptr %1, i64 1392
  invoke void @_RNvXs5_NtNtNtCseCDlJsl44RV_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aamt)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.ilt, !noalias !14654

bb.ilt:                                           ; preds = %bb.ils, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i
  %i.aamu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i5593

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.ils, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE00ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i, %bb.ilo, %bb.iln
  %.not.i44.i.i5636 = icmp eq ptr %i.aamk, null
  br i1 %.not.i44.i.i5636, label %bb.ilu, label %bb.ilv

bb.ilu:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.ilf
  %i.aamv = phi ptr [ %i.aamc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aakr, %bb.ilf ]
  %i.aamw = phi ptr [ %i.aamd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaks, %bb.ilf ]
  %i.aamx = phi ptr [ %i.aame, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aakt, %bb.ilf ]
  %i.aamy = phi ptr [ %i.aamf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aakz, %bb.ilf ]
  %i.aamz = phi ptr [ %i.aamg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aala, %bb.ilf ]
  %i.aana = getelementptr inbounds nuw i8, ptr %1, i64 1304
  %i.aanb = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.aanc = load ptr, ptr %i.aanb, align 8, !noalias !14650, !nonnull !11, !noundef !11
  %i.aand = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.aane = load i64, ptr %i.aand, align 16, !noalias !14650, !noundef !11
  %.sroa.8138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1464
  store ptr %i.aanc, ptr %.sroa.8138.0..sroa_idx.i.i, align 8, !noalias !14650
  %.sroa.9139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1472
  store i64 %i.aane, ptr %.sroa.9139.0..sroa_idx.i.i, align 16, !noalias !14650
  %.sroa.11141.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1488
  store ptr %i.aana, ptr %.sroa.11141.0..sroa_idx.i.i, align 16, !noalias !14650
  %.sroa.13143.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1497
  store i8 0, ptr %.sroa.13143.0..sroa_idx.i.i, align 1, !noalias !14650
  br label %bb.imd

bb.ilv:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.aanf = phi ptr [ %i.aamc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aanz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ] ; 3 uses
  %i.aang = phi ptr [ %i.aamd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaoa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ]
  %i.aanh = phi ptr [ %i.aame, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaob, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ] ; 3 uses
  %i.aani = phi ptr [ %i.aamf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaoc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ] ; 3 uses
  %i.aanj = phi ptr [ %i.aamg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaod, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ] ; 3 uses
  %.sroa.17.0.in.i.i = phi ptr [ %i.aamk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs14create_dir_all14create_dir_allRNtNtCs2AWtUsOyxgP_3std4path4PathE0ECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.aaoh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i ]
  %i.aank = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aank)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.ilw, !noalias !14654

bb.ilw:                                           ; preds = %bb.ilv
  %i.aanl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aank)
          to label %.body49.i.i5594 unwind label %bb.ilx, !noalias !14654

bb.ilx:                                           ; preds = %bb.ilw
  %i.aanm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14654
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.ilv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aank)
          to label %bb.imo unwind label %bb.imm, !noalias !14654

bb.ily:                                           ; preds = %.body.i.i5593, %bb.ilk
  %i.aann = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body53.i.i

.body53.i.i:                                      ; preds = %bb.imb, %bb.ily
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14654
  unreachable

.body.i.i5593:                                    ; preds = %bb.imh, %bb.imc, %bb.ilz, %bb.ilt, %bb.ilq, %bb.ilk, %bb.ile
  %i.aano = phi ptr [ %i.aamc, %bb.ilq ], [ %i.aakr, %bb.ile ], [ %i.aamc, %bb.ilk ], [ %i.aamc, %bb.ilt ], [ %i.aanz, %bb.imc ], [ %i.aanz, %bb.ilz ], [ %i.aanz, %bb.imh ]
  %i.aanp = phi ptr [ %i.aame, %bb.ilq ], [ %i.aakt, %bb.ile ], [ %i.aame, %bb.ilk ], [ %i.aame, %bb.ilt ], [ %i.aaob, %bb.imc ], [ %i.aaob, %bb.ilz ], [ %i.aaob, %bb.imh ]
  %i.aanq = phi ptr [ %i.aamf, %bb.ilq ], [ %i.aakz, %bb.ile ], [ %i.aamf, %bb.ilk ], [ %i.aamf, %bb.ilt ], [ %i.aaoc, %bb.imc ], [ %i.aaoc, %bb.ilz ], [ %i.aaoc, %bb.imh ]
  %i.aanr = phi ptr [ %i.aamg, %bb.ilq ], [ %i.aala, %bb.ile ], [ %i.aamg, %bb.ilk ], [ %i.aamg, %bb.ilt ], [ %i.aaod, %bb.imc ], [ %i.aaod, %bb.ilz ], [ %i.aaod, %bb.imh ]
  %.pn25.pn.pn.i.i = phi { ptr, i32 } [ %i.aamr, %bb.ilq ], [ %i.aals, %bb.ile ], [ %i.aamb, %bb.ilk ], [ %i.aamu, %bb.ilt ], [ %i.aant, %bb.imc ], [ %i.aant, %bb.ilz ], [ %i.aaol, %bb.imh ]
  %i.aans = getelementptr inbounds nuw i8, ptr %1, i64 1304
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.aans) #34
          to label %.body49.i.i5594 unwind label %bb.ily, !noalias !14654

bb.ilz:                                           ; preds = %bb.imd
  %i.aant = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aanu = getelementptr inbounds nuw i8, ptr %1, i64 1497
  %i.aanv = load i8, ptr %i.aanu, align 1, !range !1322, !noalias !14650, !noundef !11
  %cond.i52.i.i = icmp eq i8 %i.aanv, 3
  br i1 %cond.i52.i.i, label %bb.ima, label %.body.i.i5593

bb.ima:                                           ; preds = %bb.ilz
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aaoe)
          to label %bb.imc unwind label %bb.imb, !noalias !14654

bb.imb:                                           ; preds = %bb.ima
  %i.aanw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aanx = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aanx, align 8, !noalias !14650
  br label %.body53.i.i

bb.imc:                                           ; preds = %bb.ima
  %i.aany = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aany, align 8, !noalias !14650
  br label %.body.i.i5593

bb.imd:                                           ; preds = %bb.ilu, %bb.ikv
  %i.aanz = phi ptr [ %i.aamv, %bb.ilu ], [ %i.aaif, %bb.ikv ] ; 8 uses
  %i.aaoa = phi ptr [ %i.aamw, %bb.ilu ], [ %i.aaie, %bb.ikv ] ; 2 uses
  %i.aaob = phi ptr [ %i.aamx, %bb.ilu ], [ %i.aaid, %bb.ikv ] ; 7 uses
  %i.aaoc = phi ptr [ %i.aamy, %bb.ilu ], [ %.phi.trans.insert.i5591, %bb.ikv ] ; 8 uses
  %i.aaod = phi ptr [ %i.aamz, %bb.ilu ], [ %i.aakq, %bb.ikv ] ; 7 uses
  %i.aaoe = getelementptr inbounds nuw i8, ptr %1, i64 1336 ; 3 uses
  %i.aaof = invoke fastcc { i64, ptr } @_RNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0CsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aaoe, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ime unwind label %bb.ilz, !noalias !14654 ; 2 uses

bb.ime:                                           ; preds = %bb.imd
  %i.aaog = extractvalue { i64, ptr } %i.aaof, 0
  %i.aaoh = extractvalue { i64, ptr } %i.aaof, 1  ; 2 uses
  %i.aaoi = trunc nuw i64 %i.aaog to i1
  br i1 %i.aaoi, label %bb.imn, label %bb.imf

bb.imf:                                           ; preds = %bb.ime
  %i.aaoj = getelementptr inbounds nuw i8, ptr %1, i64 1497
  %i.aaok = load i8, ptr %i.aaoj, align 1, !range !1322, !noalias !14650, !noundef !11
  %cond.i55.i.i = icmp eq i8 %i.aaok, 3
  br i1 %cond.i55.i.i, label %bb.img, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i

bb.img:                                           ; preds = %bb.imf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvNtNtCseCDlJsl44RV_5tokio2fs5write20write_spawn_blocking0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aaoe)
          to label %bb.imi unwind label %bb.imh, !noalias !14654

bb.imh:                                           ; preds = %bb.img
  %i.aaol = landingpad { ptr, i32 }
          cleanup
  %i.aaom = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aaom, align 8, !noalias !14650
  br label %.body.i.i5593

bb.imi:                                           ; preds = %bb.img
  %i.aaon = getelementptr inbounds nuw i8, ptr %1, i64 1496
  store i8 0, ptr %i.aaon, align 8, !noalias !14650
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i: ; preds = %bb.imi, %bb.imf
  %.not.i59.i.i = icmp eq ptr %i.aaoh, null
  br i1 %.not.i59.i.i, label %bb.imj, label %bb.ilv

bb.imj:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtNtCseCDlJsl44RV_5tokio2fs5write5writeRNtNtCs2AWtUsOyxgP_3std4path7PathBufReE0ECsgsNUVCRJO2f_13influxdb3_lib.exit58.i.i
  %i.aaoo = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaoo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i unwind label %bb.imk, !noalias !14654

bb.imk:                                           ; preds = %bb.imj
  %i.aaop = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaoo)
          to label %.body49.i.i5594 unwind label %bb.iml, !noalias !14654

bb.iml:                                           ; preds = %bb.imk
  %i.aaoq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14654
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i: ; preds = %bb.imj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaoo)
          to label %bb.imo unwind label %bb.imm, !noalias !14654

bb.imm:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.aaor = phi ptr [ %i.aanz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ]
  %i.aaos = phi ptr [ %i.aaob, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ]
  %i.aaot = phi ptr [ %i.aaoc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aani, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ]
  %i.aaou = phi ptr [ %i.aaod, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ]
  %i.aaov = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i.i5594

bb.imn:                                           ; preds = %bb.ime, %bb.ilm
  %i.aaow = phi ptr [ %i.aanz, %bb.ime ], [ %i.aamc, %bb.ilm ]
  %i.aaox = phi ptr [ %i.aaoc, %bb.ime ], [ %i.aamf, %bb.ilm ]
  %.sink.i.ph.i5634 = phi i8 [ 4, %bb.ime ], [ 3, %bb.ilm ]
  store i8 %.sink.i.ph.i5634, ptr %i.aaox, align 8, !noalias !14650
  br label %bb.ios

bb.imo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %bb.ilh, %bb.iky, %bb.ikw
  %i.aaoy = phi ptr [ %i.aakr, %bb.ikw ], [ %i.aakr, %bb.iky ], [ %i.aanz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aakr, %bb.ilh ] ; 15 uses
  %i.aaoz = phi ptr [ %i.aaks, %bb.ikw ], [ %i.aaks, %bb.iky ], [ %i.aaoa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aang, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aaks, %bb.ilh ]
  %i.aapa = phi ptr [ %i.aakt, %bb.ikw ], [ %i.aakt, %bb.iky ], [ %i.aaob, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aakt, %bb.ilh ] ; 15 uses
  %i.aapb = phi ptr [ %i.aakz, %bb.ikw ], [ %i.aakz, %bb.iky ], [ %i.aaoc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aani, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aakz, %bb.ilh ]
  %i.aapc = phi ptr [ %i.aala, %bb.ikw ], [ %i.aala, %bb.iky ], [ %i.aaod, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %i.aanj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aala, %bb.ilh ]
  %.sroa.11152.1.i.i = phi i64 [ 34, %bb.ikw ], [ 27, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ 28, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.4.i.sroa.3.1.insert.insert.i.i, %bb.ilh ] ; 2 uses
  %.sroa.17.1.i.i = phi ptr [ undef, %bb.ikw ], [ %i.aali, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ %.sroa.17.0.in.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %.sroa.887.sroa.6.0.copyload.i.i, %bb.ilh ] ; 2 uses
  %.not.i67.i5603 = phi i1 [ false, %bb.ikw ], [ false, %bb.iky ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ false, %bb.ilh ]
  %.sroa.0150.1.i.i = phi i8 [ 4, %bb.ikw ], [ 4, %bb.iky ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ 4, %bb.ilh ] ; 2 uses
  %i.aapd = phi <2 x i64> [ undef, %bb.ikw ], [ undef, %bb.iky ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i66.i.i ], [ undef, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ], [ %i.aalw, %bb.ilh ] ; 2 uses
  store i8 1, ptr %i.aapb, align 8, !noalias !14650
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMs6_Csh4GC5dvIChH_27influxdb3_processing_engineNtBJ_27ProcessingEngineManagerImpl18create_plugin_file0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aapc)
          to label %bb.imr unwind label %bb.imq, !noalias !14649

bb.imp:                                           ; preds = %bb.imq, %.body63.i5596
  %i.aape = phi ptr [ %i.aaoy, %bb.imq ], [ %i.aakn, %.body63.i5596 ] ; 2 uses
  %i.aapf = phi ptr [ %i.aapa, %bb.imq ], [ %i.aako, %.body63.i5596 ] ; 2 uses
  %.pn7.i5597 = phi { ptr, i32 } [ %i.aapk, %bb.imq ], [ %eh.lpad-body64.i, %.body63.i5596 ] ; 2 uses
  %i.aapg = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14665)
  call void @llvm.experimental.noalias.scope.decl(metadata !14668)
  %i.aaph = load ptr, ptr %i.aapg, align 8, !alias.scope !14671, !noalias !14645, !nonnull !11, !noundef !11
  %i.aapi = atomicrmw sub ptr %i.aaph, i64 1 release, align 8, !noalias !14672
  %i.aapj = icmp eq i64 %i.aapi, 1
  br i1 %i.aapj, label %bb.iks, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.imq:                                           ; preds = %bb.imo
  %i.aapk = landingpad { ptr, i32 }
          cleanup
  br label %bb.imp

bb.imr:                                           ; preds = %bb.imo
  br i1 %.not.i67.i5603, label %bb.ims, label %bb.ioj

bb.ims:                                           ; preds = %bb.imr
  %i.aapl = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14673)
  call void @llvm.experimental.noalias.scope.decl(metadata !14676)
  %i.aapm = load ptr, ptr %i.aapl, align 8, !alias.scope !14679, !noalias !14645, !nonnull !11, !noundef !11
  %i.aapn = atomicrmw sub ptr %i.aapm, i64 1 release, align 8, !noalias !14680
  %i.aapo = icmp eq i64 %i.aapn, 1
  br i1 %i.aapo, label %bb.imt, label %.noexc.i5620

bb.imt:                                           ; preds = %bb.ims
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aapl)
          to label %.noexc.i5620 unwind label %bb.imu, !noalias !14649

bb.imu:                                           ; preds = %bb.iok, %bb.imt
  %i.aapp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

.noexc.i5620:                                     ; preds = %bb.imt, %bb.ims
  %i.aapq = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !14645
  %.off.i5621 = add i64 %i.aapq, -3
  %switch.i5622 = icmp ult i64 %.off.i5621, 3
  br i1 %switch.i5622, label %bb.inc, label %bb.imv

bb.imv:                                           ; preds = %.noexc.i5620
  %i.aapr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, i64 16) monotonic, align 8, !noalias !14645 ; 2 uses
  %i.aaps = icmp ult i8 %i.aapr, 3
  br i1 %i.aaps, label %bb.imy, label %bb.imw, !prof !7106

bb.imw:                                           ; preds = %bb.imv
  %i.aapt = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE)
          to label %bb.imy unwind label %bb.imx, !noalias !14649

bb.imx:                                           ; preds = %bb.imw
  %i.aapu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.imy:                                           ; preds = %bb.imw, %bb.imv
  %.sroa.0.0.i72.i5623 = phi i8 [ %i.aapr, %bb.imv ], [ %i.aapt, %bb.imw ] ; 2 uses
  %i.aapv = icmp eq i8 %.sroa.0.0.i72.i5623, 0
  br i1 %i.aapv, label %bb.inc, label %bb.ina

bb.imz:                                           ; preds = %bb.ina
  %i.aapw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ina:                                           ; preds = %bb.imy
  %i.aapx = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !14645, !nonnull !11, !align !52, !noundef !11
  %i.aapy = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aapx, i8 noundef %.sroa.0.0.i72.i5623)
          to label %bb.inb unwind label %bb.imz, !noalias !14649

bb.inb:                                           ; preds = %bb.ina
  br i1 %i.aapy, label %bb.inp, label %bb.inc

bb.inc:                                           ; preds = %bb.inb, %bb.imy, %.noexc.i5620
  %i.aapz = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !14645
  %.not.i5624 = icmp eq i8 %i.aapz, 0
  br i1 %.not.i5624, label %bb.ind, label %bb.ino

bb.ind:                                           ; preds = %bb.inc
  %i.aaqa = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !14645 ; 2 uses
  %i.aaqb = icmp ult i64 %i.aaqa, 6
  call void @llvm.assume(i1 %i.aaqb)
  %i.aaqc = icmp samesign ugt i64 %i.aaqa, 2
  br i1 %i.aaqc, label %bb.ine, label %bb.ino

bb.ine:                                           ; preds = %bb.ind
  %i.aaqd = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !14645, !nonnull !11, !align !52, !noundef !11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !14645
  %i.aaqe = getelementptr i8, ptr %i.aaqd, i64 32
  %.val52.i5631 = load ptr, ptr %i.aaqe, align 8, !noalias !14649, !nonnull !11, !noundef !11
  %i.aaqf = getelementptr i8, ptr %i.aaqd, i64 40
  %.val53.i5632 = load i64, ptr %i.aaqf, align 8, !noalias !14649, !noundef !11
  store i64 3, ptr %i.aj, align 8, !alias.scope !14681, !noalias !14645
  %.sroa.6199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.val52.i5631, ptr %.sroa.6199.0..sroa_idx.i, align 8, !alias.scope !14681, !noalias !14645
  %.sroa.8200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.val53.i5632, ptr %.sroa.8200.0..sroa_idx.i, align 8, !alias.scope !14681, !noalias !14645
  %i.aaqg = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.ing unwind label %bb.inf, !noalias !14649 ; 2 uses

bb.inf:                                           ; preds = %bb.ine
  %i.aaqh = landingpad { ptr, i32 }
          cleanup
  br label %bb.inn

bb.ing:                                           ; preds = %bb.ine
  %i.aaqi = extractvalue { ptr, ptr } %i.aaqg, 0  ; 2 uses
  %i.aaqj = extractvalue { ptr, ptr } %i.aaqg, 1  ; 2 uses
  %i.aaqk = getelementptr inbounds nuw i8, ptr %i.aaqj, i64 24
  %i.aaql = load ptr, ptr %i.aaqk, align 8, !invariant.load !11, !noalias !14649, !nonnull !11
  %i.aaqm = invoke noundef zeroext i1 %i.aaql(ptr noundef %i.aaqi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.ini unwind label %bb.inh, !noalias !14649

bb.inh:                                           ; preds = %bb.ing
  %i.aaqn = landingpad { ptr, i32 }
          cleanup
  br label %bb.inn

bb.ini:                                           ; preds = %bb.ing
  br i1 %i.aaqm, label %bb.ink, label %bb.inj

bb.inj:                                           ; preds = %bb.inm, %bb.ini
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14645
  br label %bb.ino

bb.ink:                                           ; preds = %bb.ini
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !14645
  %i.aaqo = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !14645, !nonnull !11, !align !52, !noundef !11
  %i.aaqp = getelementptr inbounds nuw i8, ptr %i.aaqo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !14645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !14645
  %i.aaqq = getelementptr inbounds nuw i8, ptr %1, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !14645
  %i.aaqr = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %i.aaqq, ptr %i.af, align 8, !noalias !14645
  %.sroa.5202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5202.0..sroa_idx.i, align 8, !noalias !14645
  %i.aaqs = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.aaqr, ptr %i.aaqs, align 8, !noalias !14645
  %.sroa.5204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5204.0..sroa_idx.i, align 8, !noalias !14645
  store ptr @282, ptr %i.ag, align 8, !noalias !14645
  %i.aaqt = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.aaqt, align 8, !noalias !14645
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !14645
  %i.aaqu = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @54, ptr %i.aaqu, align 8, !noalias !14645
  store i64 1, ptr %i.ai, align 8, !alias.scope !14685, !noalias !14688
  %.sroa.4.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i77.i, align 8, !alias.scope !14685, !noalias !14688
  %.sroa.5.0..sroa_idx.i78.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i78.i, align 8, !alias.scope !14685, !noalias !14688
  %i.aaqv = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aaqp, ptr %i.aaqv, align 8, !alias.scope !14685, !noalias !14688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !14645
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aaqd, ptr noundef nonnull %i.aaqi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aaqj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.inm unwind label %bb.inl, !noalias !14649

bb.inl:                                           ; preds = %bb.ink
  %i.aaqw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !14645
  br label %bb.inn

bb.inm:                                           ; preds = %bb.ink
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !14645
  br label %bb.inj

bb.inn:                                           ; preds = %bb.inl, %bb.inh, %bb.inf
  %.pn16.pn.pn.i = phi { ptr, i32 } [ %i.aaqw, %bb.inl ], [ %i.aaqn, %bb.inh ], [ %i.aaqh, %bb.inf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !14645
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ino:                                           ; preds = %bb.inr, %bb.inj, %bb.ind, %bb.inc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !14645
  invoke void @_RNvMs2_NtCs6P5GRezSnwZ_4http8responseNtB5_5Parts3new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ac)
          to label %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5626 unwind label %bb.ins, !noalias !14649

bb.inp:                                           ; preds = %bb.inb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !14645
  %i.aaqx = load ptr, ptr @_RNvNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file010___CALLSITE, align 8, !noalias !14645, !nonnull !11, !align !52, !noundef !11
  %i.aaqy = getelementptr inbounds nuw i8, ptr %i.aaqx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !14645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !14645
  %i.aaqz = getelementptr inbounds nuw i8, ptr %1, i64 1192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !14645
  %i.aara = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store ptr %i.aaqz, ptr %i.ak, align 8, !noalias !14645
  %.sroa.5192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.5192.0..sroa_idx.i, align 8, !noalias !14645
  %i.aarb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.aara, ptr %i.aarb, align 8, !noalias !14645
  %.sroa.5194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXs3e_CsbFlE7Gjht9i_12influxdb3_idNtB6_7TokenIdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !14645
  store ptr @282, ptr %i.al, align 8, !noalias !14645
  %i.aarc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.aarc, align 8, !noalias !14645
  store ptr %i.al, ptr %i.am, align 8, !noalias !14645
  %i.aard = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @54, ptr %i.aard, align 8, !noalias !14645
  store i64 1, ptr %i.an, align 8, !noalias !14645
  %.sroa.6188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.6188.0..sroa_idx.i, align 8, !noalias !14645
  %.sroa.7189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 1, ptr %.sroa.7189.0..sroa_idx.i, align 8, !noalias !14645
  %.sroa.8190.0..sroa_idx.i5633 = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.aaqy, ptr %.sroa.8190.0..sroa_idx.i5633, align 8, !noalias !14645
  invoke fastcc void @_RNCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB9_7HttpApi18create_plugin_file00CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.an)
          to label %bb.inr unwind label %bb.inq, !noalias !14649

bb.inq:                                           ; preds = %bb.inp
  %i.aare = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14645
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.inr:                                           ; preds = %bb.inp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !14645
  br label %bb.ino

bb.ins:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5626, %bb.ino
  %i.aarf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14645
  br label %bb.ioh

_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5626: ; preds = %bb.ino
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder6statusNtNtB8_6status10StatusCodeECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ac, i16 noundef 200)
          to label %bb.int unwind label %bb.ins, !noalias !14649

bb.int:                                           ; preds = %_RNvMs4_NtCs6P5GRezSnwZ_4http8responseNtB5_7Builder3new.exit.i5626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !14645
  %i.aarg = invoke { ptr, ptr } @_RNvCs4dh2fNjPIep_13iox_http_util19empty_response_body()
          to label %bb.inv unwind label %bb.ioi, !noalias !14649 ; 2 uses

bb.inu:                                           ; preds = %bb.inv
  %i.aarh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ioh

bb.inv:                                           ; preds = %bb.int
  %i.aari = extractvalue { ptr, ptr } %i.aarg, 0
  %i.aarj = extractvalue { ptr, ptr } %i.aarg, 1
  invoke void @_RINvMs4_NtCs6P5GRezSnwZ_4http8responseNtB6_7Builder4bodyINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body13UnsyncBoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB3f_6marker4SendNtB3M_4SyncEL_EEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.ad, ptr noundef nonnull %i.aari, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aarj)
          to label %bb.inw unwind label %bb.inu, !noalias !14649

bb.inw:                                           ; preds = %bb.inv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14645
  call void @llvm.experimental.noalias.scope.decl(metadata !14691)
  %i.aark = load i64, ptr %i.ae, align 8, !range !361, !alias.scope !14694, !noalias !14696, !noundef !11 ; 2 uses
  %i.aarl = icmp eq i64 %i.aark, -1
  %i.aarm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aarn = load i8, ptr %i.aarm, align 8, !alias.scope !14697, !noalias !14645 ; 2 uses
  %i.aaro = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.aarp = load i8, ptr %i.aaro, align 1, !alias.scope !14697, !noalias !14645 ; 2 uses
  br i1 %i.aarl, label %bb.ioe, label %bb.inx

bb.inx:                                           ; preds = %bb.inw
  %.sroa.12213.0..sroa_idx214.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %.sroa.12213.sroa.0.0.copyload.i = load i16, ptr %.sroa.12213.0..sroa_idx214.i, align 2, !alias.scope !14698, !noalias !14645
  %.sroa.12213.sroa.6.0..sroa.12213.0..sroa_idx214.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.sroa.12213.sroa.6.0.copyload.i = load i32, ptr %.sroa.12213.sroa.6.0..sroa.12213.0..sroa_idx214.sroa_idx.i, align 4, !alias.scope !14698, !noalias !14645 ; 3 uses
  %.sroa.12213.sroa.7.0..sroa.12213.0..sroa_idx214.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.12213.sroa.7.0.copyload.i = load i64, ptr %.sroa.12213.sroa.7.0..sroa.12213.0..sroa_idx214.sroa_idx.i, align 8, !alias.scope !14698, !noalias !14645
  %.sroa.12213.sroa.8.0..sroa.12213.0..sroa_idx214.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.12213.sroa.8.0.copyload.i = load ptr, ptr %.sroa.12213.sroa.8.0..sroa.12213.0..sroa_idx214.sroa_idx.i, align 8, !alias.scope !14698, !noalias !14645
  %.sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aarq = load <2 x i64>, ptr %.sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.i, align 8, !alias.scope !14698, !noalias !14645
  %.sroa.12213.sroa.9.sroa.6.sroa.6.0..sroa.12213.sroa.9.sroa.6.0..sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12213.sroa.9.sroa.6.sroa.6.0..sroa.12213.sroa.9.sroa.6.0..sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !noalias !14645
  %.sroa.12213.sroa.9.sroa.7.0..sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12213.sroa.9.sroa.7.0..sroa.12213.sroa.9.0..sroa.12213.0..sroa_idx214.sroa_idx.sroa_idx.i, i64 40, i1 false), !noalias !14645
  %.sroa.12213.sroa.10.0..sroa.12213.0..sroa_idx214.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i5590, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12213.sroa.10.0..sroa.12213.0..sroa_idx214.sroa_idx.i, i64 24, i1 false), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14645
  %.sroa.13220.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.12213.sroa.6.0.copyload.i to i8
  %.sroa.13220.sroa.6.0.extract.shift.i = lshr i32 %.sroa.12213.sroa.6.0.copyload.i, 8
  %.sroa.13220.sroa.6.0.extract.trunc.i = trunc i32 %.sroa.13220.sroa.6.0.extract.shift.i to i8
  %.sroa.13220.sroa.7.0.extract.shift.i = and i32 %.sroa.12213.sroa.6.0.copyload.i, -65536
  %i.aarr = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i5627 unwind label %bb.iny, !noalias !14649

bb.iny:                                           ; preds = %bb.inx
  %i.aars = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarr)
          to label %.body86.i unwind label %bb.inz, !noalias !14649

bb.inz:                                           ; preds = %bb.iny
  %i.aart = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14649
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i5627: ; preds = %bb.inx
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i5628 unwind label %bb.ioa, !noalias !14649

.body86.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.iof, %bb.ioa, %bb.iny
  %i.aaru = phi ptr [ %i.aasn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.aaoy, %bb.iny ], [ %i.aaoy, %bb.ioa ], [ %i.aaoy, %bb.iof ]
  %i.aarv = phi ptr [ %i.aaso, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.aapa, %bb.iny ], [ %i.aapa, %bb.ioa ], [ %i.aapa, %bb.iof ]
  %.pn36.i5600 = phi { ptr, i32 } [ %.pn33.pn.i5599, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ], [ %i.aars, %bb.iny ], [ %i.aarx, %bb.ioa ], [ %i.aask, %bb.iof ]
  %i.aarw = getelementptr inbounds nuw i8, ptr %1, i64 1192
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aarw) #34
          to label %.body91.i unwind label %bb.ikf, !noalias !14649

bb.ioa:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i96.i5607, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i5627
  %i.aarx = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i5628: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i5627
  %i.aary = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aary)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i90.i5629 unwind label %bb.iob, !noalias !14649

bb.iob:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i5628
  %i.aarz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aary)
          to label %.body91.i unwind label %bb.ioc, !noalias !14649

bb.ioc:                                           ; preds = %bb.iob
  %i.aasa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14649
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i90.i5629: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i5628
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aary)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 unwind label %bb.iod, !noalias !14649

bb.iod:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i90.i5629
  %i.aasb = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i90.i5629
  %i.aasc = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aasc, align 1, !noalias !14645
  %i.aasd = zext i16 %.sroa.12213.sroa.0.0.copyload.i to i32
  %i.aase = shl nuw i32 %i.aasd, 16
  %i.aasf = zext i8 %i.aarp to i32
  %i.aasg = shl nuw nsw i32 %i.aasf, 8
  %i.aash = or disjoint i32 %i.aase, %i.aasg
  br label %bb.iot

bb.ioe:                                           ; preds = %bb.inw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14645
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i: ; preds = %bb.ioj, %bb.iok, %bb.ioe
  %.sroa.13220.sroa.6.2.i = phi i8 [ %i.aarp, %bb.ioe ], [ 0, %bb.iok ], [ 0, %bb.ioj ]
  %.sroa.13220.sroa.0.2.i = phi i8 [ %i.aarn, %bb.ioe ], [ undef, %bb.iok ], [ undef, %bb.ioj ]
  %.sroa.20.2.i5605 = phi ptr [ undef, %bb.ioe ], [ %.sroa.17.1.i.i, %bb.iok ], [ %.sroa.17.1.i.i, %bb.ioj ]
  %.sroa.18.2.i5606 = phi i64 [ undef, %bb.ioe ], [ %.sroa.11152.1.i.i, %bb.iok ], [ %.sroa.11152.1.i.i, %bb.ioj ]
  %.sroa.6219.sroa.0.2.i = phi i8 [ 34, %bb.ioe ], [ %.sroa.0150.1.i.i, %bb.iok ], [ %.sroa.0150.1.i.i, %bb.ioj ]
  %i.aasi = phi <2 x i64> [ undef, %bb.ioe ], [ %i.aapd, %bb.iok ], [ %i.aapd, %bb.ioj ]
  %i.aasj = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i96.i5607 unwind label %bb.iof, !noalias !14649

bb.iof:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i
  %i.aask = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasj)
          to label %.body86.i unwind label %bb.iog, !noalias !14649

bb.iog:                                           ; preds = %bb.iof
  %i.aasl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14649
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i96.i5607: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i5608 unwind label %bb.ioa, !noalias !14649

bb.ioh:                                           ; preds = %bb.ioi, %bb.inu, %bb.ins
  %.pn25.i5625 = phi { ptr, i32 } [ %i.aasm, %bb.ioi ], [ %i.aarh, %bb.inu ], [ %i.aarf, %bb.ins ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14645
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.ioi:                                           ; preds = %bb.int
  %i.aasm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs6P5GRezSnwZ_4http8response7BuilderECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.ad) #34
          to label %bb.ioh unwind label %bb.ikf, !noalias !14649

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.iks, %bb.imp, %bb.imu, %bb.ioh, %bb.inq, %bb.inn, %bb.imz, %bb.imx
  %i.aasn = phi ptr [ %i.aaoy, %bb.imz ], [ %i.aaoy, %bb.ioh ], [ %i.aaoy, %bb.inq ], [ %i.aaoy, %bb.inn ], [ %i.aaoy, %bb.imx ], [ %i.aaoy, %bb.imu ], [ %i.aape, %bb.imp ], [ %i.aape, %bb.iks ]
  %i.aaso = phi ptr [ %i.aapa, %bb.imz ], [ %i.aapa, %bb.ioh ], [ %i.aapa, %bb.inq ], [ %i.aapa, %bb.inn ], [ %i.aapa, %bb.imx ], [ %i.aapa, %bb.imu ], [ %i.aapf, %bb.imp ], [ %i.aapf, %bb.iks ]
  %.pn33.pn.i5599 = phi { ptr, i32 } [ %i.aapw, %bb.imz ], [ %.pn25.i5625, %bb.ioh ], [ %i.aare, %bb.inq ], [ %.pn16.pn.pn.i, %bb.inn ], [ %i.aapu, %bb.imx ], [ %i.aapp, %bb.imu ], [ %.pn7.i5597, %bb.imp ], [ %.pn7.i5597, %bb.iks ]
  %i.aasp = getelementptr inbounds nuw i8, ptr %1, i64 1216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasp) #34
          to label %.body86.i unwind label %bb.ikf, !noalias !14649

bb.ioj:                                           ; preds = %bb.imr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i, i64 16, i1 false), !noalias !14645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.aaoz, i64 40, i1 false), !noalias !14645
  %i.aasq = getelementptr inbounds nuw i8, ptr %1, i64 1240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14699)
  call void @llvm.experimental.noalias.scope.decl(metadata !14702)
  %i.aasr = load ptr, ptr %i.aasq, align 8, !alias.scope !14705, !noalias !14645, !nonnull !11, !noundef !11
  %i.aass = atomicrmw sub ptr %i.aasr, i64 1 release, align 8, !noalias !14706
  %i.aast = icmp eq i64 %i.aass, 1
  br i1 %i.aast, label %bb.iok, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i

bb.iok:                                           ; preds = %bb.ioj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplE9drop_slowBH_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aasq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsh4GC5dvIChH_27influxdb3_processing_engine27ProcessingEngineManagerImplEECsgsNUVCRJO2f_13influxdb3_lib.exit102.i unwind label %bb.imu, !noalias !14649

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i5608: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i96.i5607
  %i.aasu = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i unwind label %bb.iol, !noalias !14649

bb.iol:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i5608
  %i.aasv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasu)
          to label %.body91.i unwind label %bb.iom, !noalias !14649

bb.iom:                                           ; preds = %bb.iol
  %i.aasw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14649
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i104.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit100.i5608
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aasu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i unwind label %bb.iod, !noalias !14649

bb.ion:                                           ; preds = %bb.ioo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i
  store i8 0, ptr %i.aajg, align 1, !noalias !14645
  br label %bb.iot

bb.ioo:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit108.i
  %i.aasx = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aasx)
          to label %bb.ion unwind label %bb.ioq, !noalias !14649

bb.iop:                                           ; preds = %bb.ior, %bb.ioq, %.body91.i
  %i.aasy = phi ptr [ %i.aajd, %bb.ioq ], [ %i.aajk, %bb.ior ], [ %i.aajk, %.body91.i ]
  %i.aasz = phi ptr [ %i.aaje, %bb.ioq ], [ %i.aajl, %bb.ior ], [ %i.aajl, %.body91.i ]
  %.pn43.i5601 = phi { ptr, i32 } [ %i.aatb, %bb.ioq ], [ %.pn40.pn.i, %bb.ior ], [ %.pn40.pn.i, %.body91.i ]
  %i.aata = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aata, align 1, !noalias !14645
  store i8 2, ptr %i.aasy, align 8, !noalias !14645
  br label %.body5664

bb.ioq:                                           ; preds = %bb.ioo
  %i.aatb = landingpad { ptr, i32 }
          cleanup
  br label %bb.iop

bb.ior:                                           ; preds = %.body91.i
  %i.aatc = getelementptr inbounds nuw i8, ptr %1, i64 936
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6P5GRezSnwZ_4http7request7RequestINtNtNtCsPDBpS1owJq_14http_body_util11combinators8box_body7BoxBodyNtNtCsuxFxh2mtOX_5bytes5bytes5BytesINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB3M_4SyncEL_EEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(240) %i.aatc) #34
          to label %bb.iop unwind label %bb.ikf, !noalias !14649

bb.ios:                                           ; preds = %bb.ijz, %bb.ikj, %bb.imn
  %i.aatd = phi ptr [ %i.aaiq, %bb.ijz ], [ %i.aajq, %bb.ikj ], [ %i.aaow, %bb.imn ]
  %.sink.i5619.ph = phi i8 [ 3, %bb.ijz ], [ 4, %bb.ikj ], [ 5, %bb.imn ]
  store i8 %.sink.i5619.ph, ptr %i.aatd, align 8, !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i5590)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3144.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5145.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166562)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176563)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186564)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.iot:                                           ; preds = %bb.ion, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630
  %i.aate = phi ptr [ %i.aajd, %bb.ion ], [ %i.aaoy, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %i.aatf = phi ptr [ %i.aaje, %bb.ion ], [ %i.aapa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.13220.sroa.7.1.i = phi i32 [ %.sroa.13220.sroa.7.0.i, %bb.ion ], [ %.sroa.13220.sroa.7.0.extract.shift.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.13220.sroa.6.1.i = phi i8 [ %.sroa.13220.sroa.6.0.i, %bb.ion ], [ %.sroa.13220.sroa.6.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.13220.sroa.0.1.i = phi i8 [ %.sroa.13220.sroa.0.0.i, %bb.ion ], [ %.sroa.13220.sroa.0.0.extract.trunc.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.20.1.i5612 = phi ptr [ %.sroa.20.0.i5609, %bb.ion ], [ %.sroa.12213.sroa.8.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.18.1.i5613 = phi i64 [ %.sroa.18.0.i5610, %bb.ion ], [ %.sroa.12213.sroa.7.0.copyload.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.0218.1.i = phi i64 [ -1, %bb.ion ], [ %i.aark, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.6219.sroa.0.1.i = phi i8 [ %.sroa.6219.sroa.0.0.i, %bb.ion ], [ %i.aarn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.6219.sroa.6.0.insert.insert.i = phi i32 [ 0, %bb.ion ], [ %i.aash, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %i.aatg = phi <2 x i64> [ %i.aajf, %bb.ion ], [ %i.aarq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit94.i5630 ]
  %.sroa.6219.sroa.0.0.insert.ext.i = zext i8 %.sroa.6219.sroa.0.1.i to i32
  %.sroa.6219.sroa.0.0.insert.insert.i = or i32 %.sroa.6219.sroa.6.0.insert.insert.i, %.sroa.6219.sroa.0.0.insert.ext.i
  %.sroa.13220.sroa.6.0.insert.ext.i = zext i8 %.sroa.13220.sroa.6.1.i to i32
  %.sroa.13220.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13220.sroa.6.0.insert.ext.i, 8
  %.sroa.13220.sroa.6.0.insert.insert.i = or i32 %.sroa.13220.sroa.6.0.insert.shift.i, %.sroa.13220.sroa.7.1.i
  %.sroa.13220.sroa.0.0.insert.ext.i = zext i8 %.sroa.13220.sroa.0.1.i to i32
  %.sroa.13220.sroa.0.0.insert.insert.i = or i32 %.sroa.13220.sroa.6.0.insert.insert.i, %.sroa.13220.sroa.0.0.insert.ext.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166562, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.sroa.5.sroa.5.i, i64 16, i1 false), !noalias !14707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176563, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.22.sroa.6.i, i64 40, i1 false), !noalias !14707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186564, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.i5590, i64 24, i1 false), !noalias !14707
  store i8 1, ptr %i.aate, align 8, !noalias !14645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.7.i.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i5590)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3144.sroa.6.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5145.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.2.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6121.sroa.2.sroa.3.i)
  store i64 %.sroa.0218.1.i, ptr %i.amo, align 8
  %.sroa.106556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  store i32 %.sroa.6219.sroa.0.0.insert.insert.i, ptr %.sroa.106556.0..sroa_idx, align 8
  %.sroa.116557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 12
  store i32 %.sroa.13220.sroa.0.0.insert.insert.i, ptr %.sroa.116557.0..sroa_idx, align 4
  %.sroa.126558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  store i64 %.sroa.18.1.i5613, ptr %.sroa.126558.0..sroa_idx, align 8
  %.sroa.136559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 24
  store ptr %.sroa.20.1.i5612, ptr %.sroa.136559.0..sroa_idx, align 8
  %.sroa.146560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 32
  store <2 x i64> %i.aatg, ptr %.sroa.146560.0..sroa_idx, align 8
  %.sroa.166562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.166562, i64 16, i1 false)
  %.sroa.176563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176563.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.176563, i64 40, i1 false)
  %.sroa.186564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amo, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.186564, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166562)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176563)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.186564)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18create_plugin_file0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aatf)
          to label %bb.jv unwind label %bb.iou

bb.iou:                                           ; preds = %bb.iot
  %i.aath = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.iov:                                           ; preds = %bb.ioz, %bb.ioy
  %i.aati = landingpad { ptr, i32 }
          cleanup
  br label %.body5766

.body5766:                                        ; preds = %bb.iuz, %bb.iov
  %i.aatj = phi ptr [ %i.aatk, %bb.iov ], [ %i.abgn, %bb.iuz ]
  %eh.lpad-body5767 = phi { ptr, i32 } [ %i.aati, %bb.iov ], [ %.pn50.i5680, %bb.iuz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.166582)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.176583)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi18update_plugin_file0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aatj) #34
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi23test_telemetry_snapshot0ECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.bh

bb.iow:                                           ; preds = %bb.a
  %.phi.trans.insert7852 = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %.pre7853 = load i8, ptr %.phi.trans.insert7852, align 16, !range !1337, !noalias !14708
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.166582)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.176583)
  %i.aatk = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i5666)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14202.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3166.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5167.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6143.sroa.4.i)
  %i.aatl = getelementptr inbounds nuw i8, ptr %1, i64 1184 ; 7 uses
  switch i8 %.pre7853, label %default.unreachable8563 [
    i8 0, label %bb.iox
    i8 1, label %bb.ioy
    i8 2, label %bb.ioz
    i8 3, label %bb.ipb
    i8 4, label %bb.ipl
    i8 5, label %bb.ipz
  ]

bb.iox:                                           ; preds = %.thread8644, %bb.iow
  %i.aatm = phi ptr [ %i.cel, %.thread8644 ], [ %i.aatl, %bb.iow ]
  %i.aatn = phi ptr [ %i.cek, %.thread8644 ], [ %i.aatk, %bb.iow ] ; 2 uses
  %i.aato = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aatp = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aatq = getelementptr inbounds nuw i8, ptr %1, i64 920
  %i.aatr = load ptr, ptr %i.aatq, align 8, !noalias !14708, !nonnull !11, !align !52, !noundef !11 ; 2 uses
  store ptr %i.aatr, ptr %i.aatp, align 16, !noalias !14708
  store i8 1, ptr %i.aato, align 1, !noalias !14708
  %i.aats = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aats, ptr noundef nonnull align 8 dereferenceable(240) %i.aatn, i64 240, i1 false), !noalias !14708
  %i.aatt = getelementptr inbounds nuw i8, ptr %1, i64 1192
  store ptr %i.aatr, ptr %i.aatt, align 8, !noalias !14708
  %.sroa.8.0..sroa_idx.i5762 = getelementptr inbounds nuw i8, ptr %1, i64 1200
  store ptr %i.aats, ptr %.sroa.8.0..sroa_idx.i5762, align 16, !noalias !14708
  %.sroa.10141.0..sroa_idx.i5763 = getelementptr inbounds nuw i8, ptr %1, i64 1264
  store i8 0, ptr %.sroa.10141.0..sroa_idx.i5763, align 16, !noalias !14708
  br label %bb.ipb

bb.ioy:                                           ; preds = %bb.iow
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #36
          to label %.noexc5764 unwind label %bb.iov

.noexc5764:                                       ; preds = %bb.ioy
  unreachable

bb.ioz:                                           ; preds = %bb.iow
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #36
          to label %.noexc5765 unwind label %bb.iov

.noexc5765:                                       ; preds = %bb.ioz
  unreachable

bb.ipa:                                           ; preds = %bb.ipb
  %i.aatu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14708
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aatx) #34
          to label %.body107.i5679 unwind label %bb.ipj, !noalias !14712

bb.ipb:                                           ; preds = %bb.iow, %bb.iox
  %i.aatv = phi ptr [ %i.aatl, %bb.iow ], [ %i.aatm, %bb.iox ] ; 5 uses
  %i.aatw = phi ptr [ %i.aatk, %bb.iow ], [ %i.aatn, %bb.iox ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !14708
  %i.aatx = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 4 uses
  invoke fastcc void @_RNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_7HttpApi15authorize_admin0CsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.z, ptr noundef nonnull align 8 %i.aatx, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ipc unwind label %bb.ipa, !noalias !14712

bb.ipc:                                           ; preds = %bb.ipb
  %i.aaty = load i32, ptr %i.z, align 8, !range !7035, !noalias !14708, !noundef !11 ; 3 uses
  %i.aatz = icmp eq i32 %i.aaty, -2
  br i1 %i.aatz, label %bb.ipd, label %bb.ipe

bb.ipd:                                           ; preds = %bb.ipc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14708
  br label %bb.ivc

bb.ipe:                                           ; preds = %bb.ipc
  %.sroa.3.0..sroa_idx.i5758 = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.3.0.copyload.i5759 = load i32, ptr %.sroa.3.0..sroa_idx.i5758, align 4, !noalias !14708 ; 3 uses
  %.sroa.4.0..sroa_idx.i5760 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4.0.copyload.i5761 = load i64, ptr %.sroa.4.0..sroa_idx.i5760, align 8, !noalias !14708 ; 3 uses
  %.sroa.6143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.6143.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6143.0..sroa_idx.i, align 8, !noalias !14708
  %.sroa.6143.sroa.2.0..sroa.6143.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6143.sroa.2.0.copyload.i = load i64, ptr %.sroa.6143.sroa.2.0..sroa.6143.0..sroa_idx.sroa_idx.i, align 8, !noalias !14708
  %.sroa.6143.sroa.3.0..sroa.6143.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.6143.sroa.3.0.copyload.i = load i64, ptr %.sroa.6143.sroa.3.0..sroa.6143.0..sroa_idx.sroa_idx.i, align 8, !noalias !14708
  %.sroa.6143.sroa.4.0..sroa.6143.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6143.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6143.sroa.4.0..sroa.6143.0..sroa_idx.sroa_idx.i, i64 56, i1 false), !noalias !14708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !14708
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtBJ_7HttpApi15authorize_admin0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noundef nonnull align 8 %i.aatx)
          to label %bb.ipg unwind label %bb.ipf, !noalias !14712

bb.ipf:                                           ; preds = %bb.ipe
  %i.aaua = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i5679

bb.ipg:                                           ; preds = %bb.ipe
  %.not.i66.i = icmp eq i32 %i.aaty, -1
  br i1 %.not.i66.i, label %bb.iph, label %bb.ipi

bb.iph:                                           ; preds = %bb.ipg
  %i.aaub = getelementptr inbounds nuw i8, ptr %1, i64 1176
  store i64 %.sroa.4.0.copyload.i5761, ptr %i.aaub, align 8, !noalias !14708
  %i.aauc = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.aaud = load ptr, ptr %i.aauc, align 16, !noalias !14708, !nonnull !11, !align !52, !noundef !11
  %i.aaue = getelementptr inbounds nuw i8, ptr %1, i64 1185
  store i8 0, ptr %i.aaue, align 1, !noalias !14708
  %i.aauf = getelementptr inbounds nuw i8, ptr %1, i64 936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.aatx, ptr noundef nonnull align 8 dereferenceable(240) %i.aauf, i64 240, i1 false), !noalias !14708
  %.sroa.8161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1432
  store ptr %i.aaud, ptr %.sroa.8161.0..sroa_idx.i, align 8, !noalias !14708
  %.sroa.10163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 2280
  store i8 0, ptr %.sroa.10163.0..sroa_idx.i, align 8, !noalias !14708
  br label %bb.ipl

bb.ipi:                                           ; preds = %bb.ipg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.25.i5666, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6143.sroa.4.i, i64 56, i1 false), !noalias !14708
  %.sroa.6262.sroa.0.0.extract.trunc.i = trunc nuw nsw i32 %i.aaty to i8
  %.sroa.13.sroa.0274.0.extract.trunc275.i = trunc i32 %.sroa.3.0.copyload.i5759 to i8
  %.sroa.13.sroa.6.0.extract.shift278.i = lshr i32 %.sroa.3.0.copyload.i5759, 8
  %.sroa.13.sroa.6.0.extract.trunc279.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift278.i to i8
  %.sroa.13.sroa.7.0.extract.shift284.i = and i32 %.sroa.3.0.copyload.i5759, -65536
  %.sroa.18.sroa.0.0.extract.trunc264.i = trunc i64 %.sroa.4.0.copyload.i5761 to i8
  %.sroa.18.sroa.5.0.extract.shift267.i = lshr i64 %.sroa.4.0.copyload.i5761, 8
  %.sroa.18.sroa.5.0.extract.trunc268.i = trunc nuw i64 %.sroa.18.sroa.5.0.extract.shift267.i to i56
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit130.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit130.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i, %bb.ipx, %bb.ipi
  %i.aaug = phi ptr [ %i.aatv, %bb.ipi ], [ %i.aaus, %bb.ipx ], [ %i.abch, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ] ; 2 uses
  %i.aauh = phi ptr [ %i.aatw, %bb.ipi ], [ %i.aaut, %bb.ipx ], [ %i.abci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ] ; 2 uses
  %.sroa.13.sroa.6.0.i = phi i8 [ %.sroa.13.sroa.6.0.extract.trunc279.i, %bb.ipi ], [ %.sroa.13.sroa.6.0.extract.trunc283.i, %bb.ipx ], [ %.sroa.13.sroa.6.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.13.sroa.0274.0.i = phi i8 [ %.sroa.13.sroa.0274.0.extract.trunc275.i, %bb.ipi ], [ %.sroa.13.sroa.0274.0.extract.trunc277.i, %bb.ipx ], [ %.sroa.13.sroa.0274.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.13.sroa.7.0.i = phi i32 [ %.sroa.13.sroa.7.0.extract.shift284.i, %bb.ipi ], [ %.sroa.13.sroa.7.0.extract.shift288.i, %bb.ipx ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.18.sroa.5.sroa.0.0.i = phi i56 [ %.sroa.18.sroa.5.0.extract.trunc268.i, %bb.ipi ], [ %.sroa.18.sroa.5.0.extract.trunc266.i, %bb.ipx ], [ %.sroa.18.sroa.5.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.18.sroa.0.0.i5690 = phi i8 [ %.sroa.18.sroa.0.0.extract.trunc264.i, %bb.ipi ], [ %.sroa.18.sroa.0.0.extract.trunc263.i, %bb.ipx ], [ %.sroa.18.sroa.0.2.i5687, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.24.0.i5691 = phi i64 [ %.sroa.6143.sroa.3.0.copyload.i, %bb.ipi ], [ %.sroa.3166.sroa.8.0.copyload.i, %bb.ipx ], [ %.sroa.24.2.i5688, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.23.0.i = phi i64 [ %.sroa.6143.sroa.2.0.copyload.i, %bb.ipi ], [ %.sroa.3166.sroa.6.0.copyload.i, %bb.ipx ], [ %.sroa.23.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.21.0.i5692 = phi ptr [ %.sroa.6143.sroa.0.0.copyload.i, %bb.ipi ], [ %.sroa.3166.sroa.4.0.copyload.i, %bb.ipx ], [ %.sroa.21.2.i5689, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %.sroa.6262.sroa.0.0.i = phi i8 [ %.sroa.6262.sroa.0.0.extract.trunc.i, %bb.ipi ], [ %.sroa.6262.sroa.0.0.extract.trunc299.i, %bb.ipx ], [ %.sroa.6262.sroa.0.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i126.i ]
  %i.aaui = getelementptr inbounds nuw i8, ptr %1, i64 1185 ; 2 uses
  %i.aauj = load i8, ptr %i.aaui, align 1, !range !54, !noalias !14708, !noundef !11
  %i.aauk = trunc nuw i8 %i.aauj to i1
  br i1 %i.aauk, label %bb.iuy, label %bb.iux

bb.ipj:                                           ; preds = %bb.ivb, %bb.iur, %bb.iuq, %.body101.i, %.body96.i, %.body70.i5673, %bb.ipw, %bb.ipk, %bb.ipa
  %i.aaul = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !14712
  unreachable

.body107.i5679:                                   ; preds = %bb.ipk, %bb.ipr, %bb.ipt, %bb.ipa, %bb.ipf, %bb.iuv, %bb.iuj, %bb.iuh, %.body101.i
  %i.aaum = phi ptr [ %i.abch, %bb.iuv ], [ %i.aatv, %bb.ipf ], [ %i.abfi, %.body101.i ], [ %i.abch, %bb.iuh ], [ %i.abch, %bb.iuj ], [ %i.aatv, %bb.ipa ], [ %i.aaus, %bb.ipt ], [ %i.aaus, %bb.ipr ], [ %i.aaus, %bb.ipk ] ; 2 uses
  %i.aaun = phi ptr [ %i.abci, %bb.iuv ], [ %i.aatw, %bb.ipf ], [ %i.abfj, %.body101.i ], [ %i.abci, %bb.iuh ], [ %i.abci, %bb.iuj ], [ %i.aatw, %bb.ipa ], [ %i.aaut, %bb.ipt ], [ %i.aaut, %bb.ipr ], [ %i.aaut, %bb.ipk ] ; 2 uses
  %.pn47.pn.i = phi { ptr, i32 } [ %i.abgi, %bb.iuv ], [ %i.aaua, %bb.ipf ], [ %.pn43.i5678, %.body101.i ], [ %i.abfn, %bb.iuh ], [ %i.abfp, %bb.iuj ], [ %i.aatu, %bb.ipa ], [ %i.aavd, %bb.ipt ], [ %i.aava, %bb.ipr ], [ %i.aaur, %bb.ipk ] ; 2 uses
  %i.aauo = getelementptr inbounds nuw i8, ptr %1, i64 1185
  %i.aaup = load i8, ptr %i.aauo, align 1, !range !54, !noalias !14708, !noundef !11
  %i.aauq = trunc nuw i8 %i.aaup to i1
  br i1 %i.aauq, label %bb.ivb, label %bb.iuz

bb.ipk:                                           ; preds = %bb.ipl
  %i.aaur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !14708
end_hunk_2
