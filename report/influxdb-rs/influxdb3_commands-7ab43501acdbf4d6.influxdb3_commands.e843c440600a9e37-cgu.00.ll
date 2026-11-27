Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_commands-7ab43501acdbf4d6.influxdb3_commands.e843c440600a9e37-cgu.00?download=true
inline.NumInlined: 756
inline.NumDeleted: 399
begin_hunk_0_@_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjWl3uGiVprL_18influxdb3_commands:bb.a
  br label %_RNvXs8_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i

_RNvXs8_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i: ; preds = %bb.x, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.sroa.7.040.i.i.i.i.i.i ; 3 uses
  store i64 %i.eq, ptr %i.eu, align 8, !noalias !1984
  %.sroa.426.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.es, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1984
  %.sroa.527.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %.val13.i.i.i.i.i.i, ptr %.sroa.527.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1984
  %i.ev = icmp eq i64 %i.ei, 0
  br i1 %i.ev, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i18.i.i

bb.y:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i.i.i.i

.body16.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i, %bb.y
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1984
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.w
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.040.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !1984
  %i.ex = icmp eq i64 %.sroa.7.040.i.i.i.i.i.i, 0
  br i1 %i.ex, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %.lr.ph353

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph353
  %i.ey = icmp eq i64 %i.fa, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.ey, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i, label %.lr.ph353

.lr.ph353:                                        ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i352 = phi i64 [ %i.fa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i ], [ 0, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.sroa.0.0.i.i.i.i.i.i.i352
  %i.fa = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i352, 1 ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ez)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i unwind label %bb.z, !noalias !1989

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i.i.i.i: ; preds = %.lr.ph355
  %i.fb = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i354, 1 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.fc, label %.body.i.i.i.i.i, label %.lr.ph355

bb.z:                                             ; preds = %.lr.ph353
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fe = icmp eq i64 %i.fa, %.sroa.7.040.i.i.i.i.i.i
  br i1 %i.fe, label %.body.i.i.i.i.i, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i354 = phi i64 [ %i.fb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i.i.i.i ], [ %i.fa, %bb.z ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %.sroa.0.1.i.i.i.i.i.i.i354
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ff)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i.i.i.i unwind label %bb.aa, !noalias !1989

bb.aa:                                            ; preds = %.lr.ph355
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1989
  unreachable

.body.i.i.i.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i.i.i.i, %bb.z
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body16.i.i.i.i unwind label %bb.ab, !noalias !1984

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp.i.i15.i.i unwind label %bb.y, !noalias !1984

bb.ab:                                            ; preds = %.body.i.i.i.i.i
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1984
  unreachable

.loopexit.i.i.i.i:                                ; preds = %_RNvXs8_NtNtCs2AWtUsOyxgP_3std3ffi6os_strNtB5_8OsStringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i18.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i17.i.i
  store i64 %.val13.i.i13.i.i, ptr %i.av, align 8, !noalias !1984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1984
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %.sroa.7.054.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fj = icmp eq i64 %i.du, 0
  br i1 %i.fj, label %.loopexit.i, label %.lr.ph.i.i11.i.i

bb.ac:                                            ; preds = %bb.ae
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ad, %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1981
  unreachable

.loopexit.split-lp.i.i15.i.i:                     ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i22.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp371, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i22.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.054.i.i.i.i, ptr %i.ar, align 8, !noalias !1981
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ae unwind label %bb.ad, !noalias !1981

bb.ad:                                            ; preds = %.loopexit.split-lp.i.i15.i.i
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.af, !noalias !1981

bb.ae:                                            ; preds = %.loopexit.split-lp.i.i15.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body26.i.i unwind label %bb.ac, !noalias !1981

bb.af:                                            ; preds = %bb.ad
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1981
  unreachable

.loopexit.split-lp61.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit31.i.i, %bb.s
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i.i

.body26.i.i:                                      ; preds = %.loopexit.split-lp61.i.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %eh.lpad-body27.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.ae ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp61.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  call void @llvm.experimental.noalias.scope.decl(metadata !1991), !noalias !1992
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !1993, !noalias !1962, !nonnull !8, !noundef !8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1993, !noalias !1962, !noundef !8 ; 4 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %.lr.ph357

bb.ag:                                            ; preds = %.lr.ph357
  %i.fs = icmp eq i64 %i.fu, %i.fq
  br i1 %i.fs, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %.lr.ph357

.lr.ph357:                                        ; preds = %.body26.i.i, %bb.ag
  %.sroa.0.0.i.i.i.i356 = phi i64 [ %i.fu, %bb.ag ], [ 0, %.body26.i.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.sroa.0.0.i.i.i.i356
  %i.fu = add nuw nsw i64 %.sroa.0.0.i.i.i.i356, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.ft)
          to label %bb.ag unwind label %bb.ai, !noalias !1994

bb.ah:                                            ; preds = %.lr.ph359
  %i.fv = add nuw nsw i64 %.sroa.0.1.i.i.i.i358, 1 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, %i.fq
  br i1 %i.fw, label %.body.i13.i, label %.lr.ph359

bb.ai:                                            ; preds = %.lr.ph357
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fy = icmp eq i64 %i.fu, %i.fq
  br i1 %i.fy, label %.body.i13.i, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.ai, %bb.ah
  %.sroa.0.1.i.i.i.i358 = phi i64 [ %i.fv, %bb.ah ], [ %i.fu, %bb.ai ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %.sroa.0.1.i.i.i.i358
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(24) %i.fz) #21
          to label %bb.ah unwind label %bb.aj, !noalias !1994

bb.aj:                                            ; preds = %.lr.ph359
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1994
  unreachable

.body.i13.i:                                      ; preds = %bb.ah, %bb.ai
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body15.i unwind label %bb.ak, !noalias !1962

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %bb.ag, %.body26.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i unwind label %bb.al, !noalias !1962

bb.ak:                                            ; preds = %.body.i13.i
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1962
  unreachable

bb.al:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsbyItyepKEh3_12clap_builder4util9any_value8AnyValueEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, %.body.i.i
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body15.i

.body15.i:                                        ; preds = %bb.al, %.body.i13.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1962
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i11.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i.i10.i.i
  store i64 %.val6.i.i, ptr %i.ar, align 8, !noalias !1981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1981
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.026.0208.i, i64 96
  %i.ge = load i8, ptr %i.gd, align 8, !range !24, !alias.scope !1961, !noundef !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1995
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.0208.i, i64 24, i1 false), !alias.scope !1992, !noalias !1996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.027.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1995
  %2 = zext nneg i8 %i.ge to i16
  %3 = zext i8 %i.bd to i16
  %4 = shl nuw i16 %3, 8
  %5 = or disjoint i16 %4, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1962
  %i.gf = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.7.0206.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gf, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.027.i, i64 96, i1 false), !noalias !1957
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  store i16 %5, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.027.i)
  %i.gg = icmp eq i64 %i.ay, 0
  br i1 %i.gg, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.c

bb.am:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i, %bb.am
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1957
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp378, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.0206.i, ptr %i.ab, align 8, !noalias !1957
  %i.gi = icmp eq i64 %.sroa.7.0206.i, 0
  br i1 %i.gi, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i, label %.lr.ph361

bb.an:                                            ; preds = %.lr.ph361
  %i.gj = icmp eq i64 %i.gl, %.sroa.7.0206.i
  br i1 %i.gj, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i, label %.lr.ph361

.lr.ph361:                                        ; preds = %.loopexit.split-lp.i, %bb.an
  %.sroa.0.0.i.i.i360 = phi i64 [ %i.gl, %bb.an ], [ 0, %.loopexit.split-lp.i ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.0.i.i.i360
  %i.gl = add nuw nsw i64 %.sroa.0.0.i.i.i360, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(104) %i.gk)
          to label %bb.an unwind label %bb.ap, !noalias !1997

bb.ao:                                            ; preds = %.lr.ph363
  %i.gm = add nuw nsw i64 %.sroa.0.1.i.i.i362, 1  ; 2 uses
  %i.gn = icmp eq i64 %i.gm, %.sroa.7.0206.i
  br i1 %i.gn, label %.body.i, label %.lr.ph363

bb.ap:                                            ; preds = %.lr.ph361
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gp = icmp eq i64 %i.gl, %.sroa.7.0206.i
  br i1 %i.gp, label %.body.i, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ap, %bb.ao
  %.sroa.0.1.i.i.i362 = phi i64 [ %i.gm, %bb.ao ], [ %i.gl, %bb.ap ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.1.i.i.i362
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgECsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef align 8 dereferenceable(104) %i.gq) #21
          to label %bb.ao unwind label %bb.aq, !noalias !1997

bb.aq:                                            ; preds = %.lr.ph363
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1997
  unreachable

.body.i:                                          ; preds = %bb.ao, %bb.ap
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ar, !noalias !1957

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.an, %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgEECsjWl3uGiVprL_18influxdb3_commands.exit unwind label %bb.am, !noalias !1957

bb.ar:                                            ; preds = %.body.i
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !1957
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %bb.c, %.loopexit.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i
  store i64 %i.r, ptr %i.ab, align 8, !noalias !1957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !1956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1957
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsjWl3uGiVprL_18influxdb3_commands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !2001 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2003
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2003
  %i.f = load i64, ptr %i.a, align 8, !range !19, !noalias !2003, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !23, !noalias !2003, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2003
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #22, !noalias !2003
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2003, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2003
  store i64 %i.i, ptr %0, align 8, !alias.scope !2002
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2002
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2002
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !2002
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2002
  br label %_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands.exit

_RINvXs_NvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjWl3uGiVprL_18influxdb3_commands.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2014 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBH_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph66

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBH_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i
  %.sroa.0.0.i65 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i65 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i65, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2017, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2017, !noundef !8 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph66, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i64 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i ], [ 0, %.lr.ph66 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i64
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i64, 1  ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i unwind label %bb.b, !noalias !2018

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i: ; preds = %.lr.ph68
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i.i67, 1  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body.i.i, label %.lr.ph68

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body.i.i, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i67 = phi i64 [ %i.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i67
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i unwind label %bb.c, !noalias !2018

bb.c:                                             ; preds = %.lr.ph68
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !2018
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit7.i.i.i.i, %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.d

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjWl3uGiVprL_18influxdb3_commands.exit.i.i.i.i, %.lr.ph66
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.body.i.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjWl3uGiVprL_18influxdb3_commands.exit.i
  %i.x = icmp eq i64 %i.ab, %i.d
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjWl3uGiVprL_18influxdb3_commands.exit._crit_edge, label %.lr.ph72
end_hunk_0
