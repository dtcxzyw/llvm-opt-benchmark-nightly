Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.01?download=true
inline.NumInlined: 1598
inline.NumDeleted: 868
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep:bb.a
  store i64 %i.eu, ptr %i.ey, align 8, !noalias !2193
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ew, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2193
  %.sroa.524.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.val13.i.i.i.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2193
  %i.ez = icmp eq i64 %i.em, 0
  br i1 %i.ez, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i20.i.i

bb.aa:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i.i.i.i

.body16.i.i.i.i:                                  ; preds = %.body.i.i.i.i.i, %bb.aa
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2193
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.037.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !2193
  %i.fb = icmp eq i64 %.sroa.7.037.i.i.i.i.i.i, 0
  br i1 %i.fb, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i, label %.lr.ph353

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph353
  %i.fc = icmp eq i64 %i.fe, %.sroa.7.037.i.i.i.i.i.i
  br i1 %i.fc, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i, label %.lr.ph353

.lr.ph353:                                        ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i352 = phi i64 [ %i.fe, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i ], [ 0, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.0.0.i.i.i.i.i.i.i352
  %i.fe = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i352, 1 ; 4 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !2198

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit7.i.i.i.i.i.i.i: ; preds = %.lr.ph355
  %i.ff = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i354, 1 ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %.sroa.7.037.i.i.i.i.i.i
  br i1 %i.fg, label %.body.i.i.i.i.i, label %.lr.ph355

bb.ab:                                            ; preds = %.lr.ph353
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.fi = icmp eq i64 %i.fe, %.sroa.7.037.i.i.i.i.i.i
  br i1 %i.fi, label %.body.i.i.i.i.i, label %.lr.ph355

.lr.ph355:                                        ; preds = %bb.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit7.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i354 = phi i64 [ %i.ff, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit7.i.i.i.i.i.i.i ], [ %i.fe, %bb.ab ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.sroa.0.1.i.i.i.i.i.i.i354
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit7.i.i.i.i.i.i.i unwind label %bb.ac, !noalias !2198

bb.ac:                                            ; preds = %.lr.ph355
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2198
  unreachable

.body.i.i.i.i.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit7.i.i.i.i.i.i.i, %bb.ab
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body16.i.i.i.i unwind label %bb.ad, !noalias !2193

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp.i.i17.i.i unwind label %bb.aa, !noalias !2193

bb.ad:                                            ; preds = %.body.i.i.i.i.i
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2193
  unreachable

.loopexit.i.i.i.i:                                ; preds = %_RNvXs6_NtNtCs5Xr050g3D4S_3std3ffi6os_strNtB5_8OsStringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i20.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i19.i.i
  store i64 %.val13.i.i15.i.i, ptr %i.av, align 8, !noalias !2193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2193
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %.sroa.7.054.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fn = icmp eq i64 %i.dy, 0
  br i1 %i.fn, label %.loopexit.i, label %.lr.ph.i.i13.i.i

bb.ae:                                            ; preds = %bb.ag
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.af, %bb.ae
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2190
  unreachable

.loopexit.split-lp.i.i17.i.i:                     ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i24.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp371, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i24.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.054.i.i.i.i, ptr %i.ar, align 8, !noalias !2190
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ag unwind label %bb.af, !noalias !2190

bb.af:                                            ; preds = %.loopexit.split-lp.i.i17.i.i
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.ah, !noalias !2190

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i17.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body28.i.i unwind label %bb.ae, !noalias !2190

bb.ah:                                            ; preds = %bb.af
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2190
  unreachable

.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit33.i.i, %bb.u
  %lpad.loopexit.split-lp384 = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.i

.body28.i.i:                                      ; preds = %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %eh.lpad-body29.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %bb.ag ], [ %lpad.loopexit.split-lp384, %.loopexit.split-lp69.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200), !noalias !2201
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !2202, !noalias !2170, !nonnull !5, !noundef !5 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !2202, !noalias !2170, !noundef !5 ; 4 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %.lr.ph357

bb.ai:                                            ; preds = %.lr.ph357
  %i.fw = icmp eq i64 %i.fy, %i.fu
  br i1 %i.fw, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %.lr.ph357

.lr.ph357:                                        ; preds = %.body28.i.i, %bb.ai
  %.sroa.0.0.i.i.i.i356 = phi i64 [ %i.fy, %bb.ai ], [ 0, %.body28.i.i ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.i356
  %i.fy = add nuw nsw i64 %.sroa.0.0.i.i.i.i356, 1 ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fx)
          to label %bb.ai unwind label %bb.ak, !noalias !2203

bb.aj:                                            ; preds = %.lr.ph359
  %i.fz = add nuw nsw i64 %.sroa.0.1.i.i.i.i358, 1 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, %i.fu
  br i1 %i.ga, label %.body.i13.i, label %.lr.ph359

bb.ak:                                            ; preds = %.lr.ph357
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gc = icmp eq i64 %i.fy, %i.fu
  br i1 %i.gc, label %.body.i13.i, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.ak, %bb.aj
  %.sroa.0.1.i.i.i.i358 = phi i64 [ %i.fz, %bb.aj ], [ %i.fy, %bb.ak ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %.sroa.0.1.i.i.i.i358
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gd) #23
          to label %bb.aj unwind label %bb.al, !noalias !2203

bb.al:                                            ; preds = %.lr.ph359
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2203
  unreachable

.body.i13.i:                                      ; preds = %bb.aj, %bb.ak
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body15.i unwind label %bb.am, !noalias !2170

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.ai, %.body28.i.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.i.i unwind label %bb.an, !noalias !2170

bb.am:                                            ; preds = %.body.i13.i
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2170
  unreachable

bb.an:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i.i, %.body.i.i
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body15.i

.body15.i:                                        ; preds = %bb.an, %.body.i13.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2170
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.i.i.i, %.lr.ph.i.i13.i.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i.i12.i.i
  store i64 %.val8.i.i, ptr %i.ar, align 8, !noalias !2190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.744.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2190
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.026.0216.i, i64 96
  %i.gi = load i8, ptr %i.gh, align 8, !range !7, !alias.scope !2169, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.542.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2166
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.441.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !2166
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2170
  %i.gj = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.7.0214.i ; 7 uses
  store i64 %.sroa.01.0.i.i, ptr %i.gj, align 8, !noalias !2166
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.i, i64 16, i1 false), !noalias !2166
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.542.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.542.i, i64 24, i1 false), !noalias !2166
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.643.i, i64 24, i1 false), !noalias !2166
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.744.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.744.i, i64 24, i1 false), !noalias !2166
  %.sroa.845.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 96
  store i8 %i.gi, ptr %.sroa.845.0..sroa_idx.i, align 8, !noalias !2166
  %.sroa.946.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 97
  store i8 %i.bd, ptr %.sroa.946.0..sroa_idx.i, align 1, !noalias !2166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.441.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i)
  %i.gk = icmp eq i64 %i.ay, 0
  br i1 %i.gk, label %_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.ao:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ao
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2166
  unreachable

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp378, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  store i64 %.sroa.7.0214.i, ptr %i.ab, align 8, !noalias !2166
  %i.gm = icmp eq i64 %.sroa.7.0214.i, 0
  br i1 %i.gm, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph361

bb.ap:                                            ; preds = %.lr.ph361
  %i.gn = icmp eq i64 %i.gp, %.sroa.7.0214.i
  br i1 %i.gn, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph361

.lr.ph361:                                        ; preds = %.loopexit.split-lp.i, %bb.ap
  %.sroa.0.0.i.i.i360 = phi i64 [ %i.gp, %bb.ap ], [ 0, %.loopexit.split-lp.i ] ; 2 uses
  %i.go = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.0.i.i.i360
  %i.gp = add nuw nsw i64 %.sroa.0.0.i.i.i360, 1  ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(104) %i.go)
          to label %bb.ap unwind label %bb.ar, !noalias !2204

bb.aq:                                            ; preds = %.lr.ph363
  %i.gq = add nuw nsw i64 %.sroa.0.1.i.i.i362, 1  ; 2 uses
  %i.gr = icmp eq i64 %i.gq, %.sroa.7.0214.i
  br i1 %i.gr, label %.body.i, label %.lr.ph363

bb.ar:                                            ; preds = %.lr.ph361
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.gt = icmp eq i64 %i.gp, %.sroa.7.0214.i
  br i1 %i.gt, label %.body.i, label %.lr.ph363

.lr.ph363:                                        ; preds = %bb.ar, %bb.aq
  %.sroa.0.1.i.i.i362 = phi i64 [ %i.gq, %bb.aq ], [ %i.gp, %bb.ar ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.sroa.0.1.i.i.i362
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gu) #23
          to label %bb.aq unwind label %bb.as, !noalias !2204

bb.as:                                            ; preds = %.lr.ph363
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2204
  unreachable

.body.i:                                          ; preds = %bb.aq, %bb.ar
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.at, !noalias !2166

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.ap, %.loopexit.split-lp.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.ao, !noalias !2166

bb.at:                                            ; preds = %.body.i
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !2166
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep.exit.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtNtNtCs1L7Mk9ubPba_12clap_builder6parser7matches11matched_arg10MatchedArgNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %.loopexit.i, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i
  store i64 %i.r, ptr %i.ab, align 8, !noalias !2166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2166
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2209
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !2209
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !2209, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !noalias !2209, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2209
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !2209
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2209, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2209
  store i64 %i.i, ptr %0, align 8, !alias.scope !2208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2208
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2208
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inTjjENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i
  %i.p = shl nuw nsw i64 %i.e, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull readonly align 8 %i.d, i64 %i.p, i1 false), !noalias !2208
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2208
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inTjjENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inTjjENtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2213)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2214
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2214
  %i.f = load i64, ptr %i.a, align 8, !range !12, !noalias !2214, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !22, !noalias !2214, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2214
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !2214
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2214, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2214
  store i64 %i.i, ptr %0, align 8, !alias.scope !2213
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2213
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2213
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !2213
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2213
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecAjj2_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs1L7Mk9ubPba_12clap_builder4util9any_value8AnyValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
end_hunk_0
