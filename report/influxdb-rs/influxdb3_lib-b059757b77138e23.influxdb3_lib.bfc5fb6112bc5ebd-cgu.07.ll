Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.07?download=true
inline.NumInlined: 5535
inline.NumDeleted: 2839
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNvXNtCs21s4ZTvHFSd_5authz10authorizerINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcDNtBG_10AuthorizerEL_EEB28_9authorize0ECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.j:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #31
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.u, align 1
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs21s4ZTvHFSd_5authz13authorization13AuthorizationNtNtB2s_14iox_authorizer5ErrorENtNtB4_6marker4SendEL_EEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 0, ptr %i.v, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1592)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1593, !nonnull !6, !noundef !6
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1593
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %0) #33
          to label %common.resume unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) #33
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsgsNUVCRJO2f_13influxdb3_lib.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsbFlE7Gjht9i_12influxdb3_id9serialize11SerdeVecMapNtBG_7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret void

bb.h:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1598, !noundef !6 ; 9 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit [
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 3, label %bb.g
    i64 4, label %bb.n
    i64 6, label %bb.dm
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.dj, %bb.di, %bb.dd, %bb.dc, %bb.cx, %bb.cw, %bb.cr, %bb.cq, %bb.cl, %bb.ck, %bb.ce, %bb.cd, %bb.bj, %bb.bi, %bb.bd, %bb.bc, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit20.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit9.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit17.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i, %bb.u, %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit3, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.dn, %bb.p, %bb.v, %bb.w, %bb.af, %bb.ao, %bb.ar, %.body7.i.i, %.body10.i.i, %.body.i.i, %bb.ax, %bb.be, %bb.bf, %bb.bk, %bb.bl, %.body.i, %bb.cf, %bb.cg, %.body38.i, %bb.cm, %bb.cn, %.body43.i, %bb.cs, %bb.ct, %.body48.i, %bb.cy, %bb.cz, %.body53.i, %bb.de, %bb.df, %.body58.i, %bb.dk, %bb.dl, %bb.l, %bb.m, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.hr, %bb.dk ], [ %i.g, %bb.c ], [ %i.v, %bb.l ], [ %i.v, %bb.m ], [ %i.ha, %bb.de ], [ %i.ag, %bb.p ], [ %i.aq, %bb.v ], [ %i.ce, %bb.ax ], [ %i.cp, %bb.be ], [ %i.dd, %bb.bk ], [ %i.ej, %bb.cf ], [ %eh.lpad-body59.i, %.body58.i ], [ %i.fb, %bb.cm ], [ %i.fs, %bb.cs ], [ %i.gj, %bb.cy ], [ %i.aq, %bb.w ], [ %eh.lpad-body11.i.i, %.body10.i.i ], [ %i.bh, %bb.af ], [ %i.bp, %bb.ao ], [ %i.bs, %bb.ar ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body8.i.i, %.body7.i.i ], [ %i.cp, %bb.bf ], [ %i.dd, %bb.bl ], [ %i.ej, %bb.cg ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body39.i, %.body38.i ], [ %eh.lpad-body44.i, %.body43.i ], [ %eh.lpad-body49.i, %.body48.i ], [ %eh.lpad-body54.i, %.body53.i ], [ %i.fb, %bb.cn ], [ %i.fs, %bb.ct ], [ %i.gj, %bb.cz ], [ %i.ha, %bb.df ], [ %i.hr, %bb.dl ], [ %i.hy, %bb.dn ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !26, !alias.scope !1599, !noundef !6
  %i.k = icmp eq i64 %i.j, 4
  br i1 %i.k, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.m, align 8, !noundef !6 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.n, align 8            ; 6 uses
  %i.o = icmp eq ptr %.val, null
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.l:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #31
  br label %common.resume

bb.n:                                             ; preds = %bb.a
  %i.ab = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i64 %i.a, 9223372036854775802
  %i.ad = icmp ugt i64 %i.a, -9223372036854775803
  %i.ae = select i1 %i.ad, i64 %i.ac, i64 2
  switch i64 %i.ae, label %bb.o [
    i64 0, label %bb.r
    i64 1, label %bb.x
    i64 2, label %bb.aa
    i64 3, label %bb.az
    i64 4, label %bb.bg
    i64 5, label %bb.bm
    i64 6, label %bb.bp
    i64 7, label %bb.bs
    i64 8, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit
    i64 9, label %bb.bv
    i64 10, label %bb.by
  ]

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.o
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.r:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27.i = load ptr, ptr %i.ai, align 8, !alias.scope !1600 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28.i = load ptr, ptr %i.aj, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.ak = load ptr, ptr %.val28.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  invoke void %i.ak(ptr noundef nonnull %.val27.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr inbounds nuw i8, ptr %.val28.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef range(i64 1, 0) %i.am, i64 noundef range(i64 1, 536870913) %i.ap) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.v:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %common.resume, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = getelementptr inbounds nuw i8, ptr %.val28.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27.i, i64 noundef range(i64 1, 0) %i.as, i64 noundef range(i64 1, 536870913) %i.av) #31
  br label %common.resume

bb.x:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit32.i unwind label %bb.cb

bb.aa:                                            ; preds = %bb.n
  %i.az = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = xor i64 %i.a, -9223372036854775808
  %i.bb = icmp slt i64 %i.a, 0
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 1
  switch i64 %i.bc, label %bb.ab [
    i64 0, label %bb.ae
    i64 1, label %bb.ah
    i64 2, label %bb.ak
    i64 3, label %bb.an
    i64 4, label %bb.aq
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.body.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.aw

bb.ae:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i: ; preds = %bb.ae
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.ah:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i6.i.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body7.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i6.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit9.i.i unwind label %bb.at

bb.ak:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body10.i.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.av

bb.an:                                            ; preds = %bb.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit14.i.i: ; preds = %bb.an
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.aq:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit17.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit17.i.i: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i6.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body7.i.i

.body7.i.i:                                       ; preds = %bb.at, %bb.ai
  %eh.lpad-body8.i.i = phi { ptr, i32 } [ %i.bu, %bb.at ], [ %i.bj, %bb.ai ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.bv) #33
          to label %common.resume unwind label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit9.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i6.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts11InvalidPartECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.bw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.au:                                            ; preds = %.body.i.i, %.body10.i.i, %.body7.i.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i

.body10.i.i:                                      ; preds = %bb.av, %bb.al
  %eh.lpad-body11.i.i = phi { ptr, i32 } [ %i.by, %bb.av ], [ %i.bm, %bb.al ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz) #33
          to label %common.resume unwind label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ca)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aw, %bb.ac
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cb, %bb.aw ], [ %i.be, %bb.ac ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cc) #33
          to label %common.resume unwind label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit20.i.i unwind label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit20.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.az:                                            ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load ptr, ptr %i.cg, align 8, !alias.scope !1600, !noundef !6 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30.i = load ptr, ptr %i.ch, align 8, !alias.scope !1600 ; 6 uses
  %i.ci = icmp eq ptr %.val29.i, null
  br i1 %i.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i) ]
  %i.cj = load ptr, ptr %.val30.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void %i.cj(ptr noundef nonnull %.val29.i)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ck = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cn = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i, i64 noundef range(i64 1, 0) %i.cl, i64 noundef range(i64 1, 536870913) %i.co) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.be:                                            ; preds = %bb.bb
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val30.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ct = getelementptr inbounds nuw i8, ptr %.val30.i, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val29.i, i64 noundef range(i64 1, 0) %i.cr, i64 noundef range(i64 1, 536870913) %i.cu) #31
  br label %common.resume

bb.bg:                                            ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25.i = load ptr, ptr %i.cv, align 8, !alias.scope !1600 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26.i = load ptr, ptr %i.cw, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.cx = load ptr, ptr %.val26.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i33.i = icmp eq ptr %i.cx, null
  br i1 %.not.i33.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  invoke void %i.cx(ptr noundef nonnull %.val25.i)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.cy = getelementptr inbounds nuw i8, ptr %.val26.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.db = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !12, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.bk:                                            ; preds = %bb.bh
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val26.i, i64 8
  %i.df = load i64, ptr %i.de, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %common.resume, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dh = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25.i, i64 noundef range(i64 1, 0) %i.df, i64 noundef range(i64 1, 536870913) %i.di) #31
  br label %common.resume

bb.bm:                                            ; preds = %bb.n
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i37.i unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %.body38.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i37.i: ; preds = %bb.bm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit40.i unwind label %bb.ci

bb.bp:                                            ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i42.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %.body43.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i42.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit45.i unwind label %bb.co

bb.bs:                                            ; preds = %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i47.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.body48.i unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i47.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit50.i unwind label %bb.cu

bb.bv:                                            ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i52.i unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %.body53.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i52.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit55.i unwind label %bb.da

bb.by:                                            ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i57.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %.body58.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i57.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit60.i unwind label %bb.dg

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cb, %bb.y
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dy, %bb.cb ], [ %i.ax, %bb.y ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23.i = load ptr, ptr %i.dz, align 8, !alias.scope !1600
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24.i = load ptr, ptr %i.ea, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val23.i, ptr nonnull %.val24.i) #33
          to label %common.resume unwind label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit32.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21.i = load ptr, ptr %i.eb, align 8, !alias.scope !1600 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22.i = load ptr, ptr %i.ec, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.ed = load ptr, ptr %.val22.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ed, null
  br i1 %.not.i61.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit32.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  invoke void %i.ed(ptr noundef nonnull %.val21.i)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit32.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eh = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !12, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, 0) %i.ef, i64 noundef range(i64 1, 536870913) %i.ei) #31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal9serialize5ErrorECsgsNUVCRJO2f_13influxdb3_lib.exit

bb.cf:                                            ; preds = %bb.cc
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %common.resume, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.en = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !range !12, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, 0) %i.el, i64 noundef range(i64 1, 536870913) %i.eo) #31
  br label %common.resume

bb.ch:                                            ; preds = %.body58.i, %.body53.i, %.body48.i, %.body43.i, %.body38.i, %.body.i
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ci:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i37.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

.body38.i:                                        ; preds = %bb.ci, %bb.bn
  %eh.lpad-body39.i = phi { ptr, i32 } [ %i.eq, %bb.ci ], [ %i.dk, %bb.bn ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19.i = load ptr, ptr %i.er, align 8, !alias.scope !1600
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20.i = load ptr, ptr %i.es, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECsgsNUVCRJO2f_13influxdb3_lib(ptr %.val19.i, ptr nonnull %.val20.i) #33
          to label %common.resume unwind label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit40.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsgsNUVCRJO2f_13influxdb3_lib.exit.i37.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17.i = load ptr, ptr %i.et, align 8, !alias.scope !1600 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18.i = load ptr, ptr %i.eu, align 8, !alias.scope !1600, !nonnull !6, !align !9, !noundef !6 ; 5 uses
  %i.ev = load ptr, ptr %.val18.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.ev, null
  br i1 %.not.i64.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit40.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i) ]
  invoke void %i.ev(ptr noundef nonnull %.val17.i)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib.exit40.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !11, !invariant.load !6 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
end_hunk_0
