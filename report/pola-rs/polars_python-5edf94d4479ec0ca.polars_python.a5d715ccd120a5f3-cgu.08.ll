Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs3_NtNtCseeLknQCOKOd_13polars_python6series7buffersNtB7_8PySeries25___pymethod__from_buffer__:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !173075, !noalias !172297
  %i.vq = add i64 %.sroa.662.0.copyload, %.sroa.561.0.copyload, !dbg !173075 ; 2 uses
  %i.vr = lshr i64 %i.vq, 3, !dbg !173076
  %i.vs = and i64 %i.vq, 7, !dbg !173077
  %i.vt = icmp ne i64 %i.vs, 0, !dbg !173078
  %i.vu = zext i1 %i.vt to i64, !dbg !173078
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.vr, %i.vu, !dbg !173078
  %i.vv = inttoptr i64 %.sroa.060.0.copyload to ptr, !dbg !173079
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow3ffi4mmap16bitmap_and_ownerINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB14_5types3any5PyAnyEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.vv, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %.sroa.561.0.copyload, i64 noundef %.sroa.662.0.copyload, ptr noundef nonnull %.val)
          to label %.noexc325.i unwind label %.thread43.i, !dbg !173080, !noalias !172297

.noexc325.i:                                      ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !173081, !noalias !172380
  %i.vw = load i8, ptr %i.f, align 8, !dbg !173082, !range !5005, !noalias !172380, !noundef !4872 ; 2 uses
  %i.vx = icmp eq i8 %i.vw, 42, !dbg !173082
  br i1 %i.vx, label %bb.kd, label %bb.jk, !dbg !173083

bb.jk:                                            ; preds = %.noexc325.i
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1, !dbg !173084
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80, !dbg !173084
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !173085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i, i64 16, i1 false), !dbg !173084, !noalias !172380
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !173085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.515.0..sroa_idx.i.i, i64 79, i1 false), !dbg !173086, !noalias !172380
  store i8 %i.vw, ptr %i.g, align 8, !dbg !173085, !noalias !172380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !173087, !noalias !172380
  call void @llvm.experimental.noalias.scope.decl(metadata !172381), !dbg !173088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !173089, !noalias !172382
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g) #55
          to label %.noexc.i315.i unwind label %bb.jq, !dbg !173089, !noalias !172380

.noexc.i315.i:                                    ; preds = %bb.jk
  %i.vy = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !173090 ; 3 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !dbg !173091, !noalias !172383, !nonnull !4872, !noundef !4872 ; 3 uses
  %i.wa = load i64, ptr %i.vz, align 8, !dbg !173092, !range !5605, !noalias !172383, !noundef !4872
  %i.wb = icmp eq i64 %i.wa, 3, !dbg !173093
  br i1 %i.wb, label %bb.jm, label %bb.jl, !dbg !173093

bb.jl:                                            ; preds = %.noexc.i315.i
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 24, !dbg !173094
  %i.wd = atomicrmw add ptr %i.wc, i64 1 monotonic, align 8, !dbg !173095, !noalias !172383 ; 0 uses
  br label %bb.jm, !dbg !173096

bb.jm:                                            ; preds = %bb.jl, %.noexc.i315.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !173097
  %i.wf = load <2 x i64>, ptr %i.we, align 8, !dbg !173097, !noalias !172383
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !173098
  %i.wh = load atomic i64, ptr %i.wg monotonic, align 8, !dbg !173099, !noalias !172383
  %i.wi = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !173100 ; 5 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !dbg !173100, !noalias !172382, !noundef !4872 ; 4 uses
  %.not.i.i316.i = icmp eq ptr %i.wj, null, !dbg !173100
  br i1 %.not.i.i316.i, label %bb.jr, label %bb.jn, !dbg !173101

bb.jn:                                            ; preds = %bb.jm
  %i.wk = load i64, ptr %i.wj, align 8, !dbg !173102, !range !5605, !noalias !172384, !noundef !4872
  %i.wl = icmp eq i64 %i.wk, 3, !dbg !173103
  br i1 %i.wl, label %bb.jp, label %bb.jo, !dbg !173103

bb.jo:                                            ; preds = %bb.jn
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 24, !dbg !173104
  %i.wn = atomicrmw add ptr %i.wm, i64 1 monotonic, align 8, !dbg !173105, !noalias !172384 ; 0 uses
  br label %bb.jp, !dbg !173106

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.wo = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !173107
  %i.wp = load <2 x i64>, ptr %i.wo, align 8, !dbg !173107, !noalias !172384
  %i.wq = getelementptr inbounds nuw i8, ptr %i.g, i64 88, !dbg !173108
  %i.wr = load atomic i64, ptr %i.wq monotonic, align 8, !dbg !173109, !noalias !172384
  br label %bb.jr, !dbg !173110

bb.jq:                                            ; preds = %bb.jk
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %.body.i313.i, !dbg !173111

.body.i313.i:                                     ; preds = %bb.jt, %bb.jq
  %eh.lpad-body.i314.i = phi { ptr, i32 } [ %i.ws, %bb.jq ], [ %i.wy, %bb.jt ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.g) #56
          to label %.thread30.thread.i unwind label %bb.kc, !dbg !173111, !noalias !172380

bb.jr:                                            ; preds = %bb.jp, %bb.jm
  %.sroa.5.sroa.5.0.i.i317.i = phi i64 [ undef, %bb.jm ], [ %i.wr, %bb.jp ], !dbg !173112
  %i.wt = phi <2 x i64> [ undef, %bb.jm ], [ %i.wp, %bb.jp ], !dbg !173112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !173113, !noalias !172380
  %i.wu = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !173113
  store ptr %i.vz, ptr %i.wu, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  %.sroa.4.0..sroa_idx.i.i320.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !173113
  store <2 x i64> %i.wf, ptr %.sroa.4.0..sroa_idx.i.i320.i, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !173113
  store i64 %i.wh, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  %i.wv = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !173113
  store ptr %i.wj, ptr %i.wv, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  %.sroa.5.0..sroa_idx.i.i321.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72, !dbg !173113
  store <2 x i64> %i.wt, ptr %.sroa.5.0..sroa_idx.i.i321.i, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i323.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88, !dbg !173113
  store i64 %.sroa.5.sroa.5.0.i.i317.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i323.i, align 8, !dbg !173113, !alias.scope !172381, !noalias !172380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !173114, !noalias !172382
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !173115, !noalias !172385
  %i.ww = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 513) 96, i64 noundef range(i64 1, 129) 8) #50, !dbg !173116, !noalias !172385 ; 3 uses
  %i.wx = icmp eq ptr %i.ww, null, !dbg !173117
  br i1 %i.wx, label %bb.js, label %bb.jv, !dbg !173118, !prof !5167

bb.js:                                            ; preds = %bb.jr
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #54
          to label %.noexc23.i.i unwind label %bb.jt, !dbg !173119, !noalias !172380

.noexc23.i.i:                                     ; preds = %bb.js
  unreachable, !dbg !173119

bb.jt:                                            ; preds = %bb.js
  %i.wy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e) #56
          to label %.body.i313.i unwind label %bb.ju, !dbg !173120, !noalias !172380

bb.ju:                                            ; preds = %bb.jt
  %i.wz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173121, !noalias !172380
  unreachable, !dbg !173121

bb.jv:                                            ; preds = %bb.jr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ww, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !dbg !173122, !noalias !172380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !173123, !noalias !172380
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(96) %i.g)
          to label %bb.jx unwind label %bb.jw, !dbg !173124, !noalias !172380

bb.jw:                                            ; preds = %bb.jv
  %i.xa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.vy)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.kb, !dbg !173125, !noalias !172380

bb.jx:                                            ; preds = %bb.jv
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.vy)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit2.i.i.i unwind label %bb.jz, !dbg !173126, !noalias !172380

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.jz, %bb.jw
  %.pn.i.i324.i = phi { ptr, i32 } [ %i.xd, %bb.jz ], [ %i.xa, %bb.jw ] ; 2 uses
  %i.xb = load ptr, ptr %i.wi, align 8, !dbg !173127, !alias.scope !172386, !noalias !172380, !noundef !4872
  %i.xc = icmp eq ptr %i.xb, null, !dbg !173127
  br i1 %i.xc, label %.thread30.thread.i, label %bb.jy, !dbg !173127

bb.jy:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wi)
          to label %.thread30.thread.i unwind label %bb.kb, !dbg !173128, !noalias !172380

bb.jz:                                            ; preds = %bb.jx
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit2.i.i.i: ; preds = %bb.jx
  %i.xe = load ptr, ptr %i.wi, align 8, !dbg !173129, !alias.scope !172387, !noalias !172380, !noundef !4872
  %i.xf = icmp eq ptr %i.xe, null, !dbg !173129
  br i1 %i.xf, label %bb.kf, label %bb.ka, !dbg !173129

bb.ka:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit2.i.i.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wi)
          to label %bb.kf unwind label %.thread43.i, !dbg !173130, !noalias !172297

bb.kb:                                            ; preds = %bb.jy, %bb.jw
  %i.xg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173124, !noalias !172380
  unreachable, !dbg !173124

bb.kc:                                            ; preds = %.body.i313.i
  %i.xh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173131, !noalias !172380
  unreachable, !dbg !173131

bb.kd:                                            ; preds = %.noexc325.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !173132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !173133, !noalias !172380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.xi, i64 72, i1 false), !dbg !173134, !noalias !172380
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !173135 ; 2 uses
  invoke void @_RNvXs2_NtCseeLknQCOKOd_13polars_python5errorNtNtCsbm5zPlkZccl_4pyo33err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PyPolarsErrE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.xj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.ke unwind label %.thread43.i, !dbg !173136, !noalias !172297

.thread.i:                                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !173137, !noalias !172297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.az, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.bj, i64 48, i1 false), !dbg !173137, !noalias !172298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !173138, !noalias !172297
  store ptr %i.az, ptr %i.ax, align 8, !dbg !173138, !noalias !172297
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !173138
  store ptr @_RNvXs5_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !173138, !noalias !172297
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noundef nonnull @591, ptr noundef nonnull %i.ax)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.kn, !dbg !173139, !noalias !172297

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !173133, !noalias !172380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !173111, !noalias !172380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !173140, !noalias !172297
  %i.xk = load <2 x ptr>, ptr %i.xj, align 8, !dbg !173141, !noalias !172297
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !173141
  %.sroa.11.24.copyload = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !173141, !noalias !172391
  %.sroa.14.24..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32, !dbg !173141
  %.sroa.15.24..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 40, !dbg !173141
  %.sroa.15.24.copyload.a = load ptr, ptr %.sroa.15.24..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !dbg !173141, !noalias !172391
  %.sroa.14.24.copyload = load ptr, ptr %.sroa.14.24..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !dbg !173141, !noalias !172391
  %.sroa.16.24..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 48, !dbg !173141
  %.sroa.16.24.copyload = load ptr, ptr %.sroa.16.24..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !dbg !173141, !noalias !172391
  %.sroa.17.24..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56, !dbg !173141
  %.sroa.17.24.copyload = load i64, ptr %.sroa.17.24..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !dbg !173141, !noalias !172391
  %.sroa.1735.24..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 64, !dbg !173141
  %i.xl = load <2 x i32>, ptr %.sroa.1735.24..sroa.6.0..sroa_idx.i.sroa_idx, align 8, !dbg !173141, !noalias !172391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !173142, !noalias !172297
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.be), !dbg !173143
  br label %bb.kv, !dbg !173143

bb.kf:                                            ; preds = %bb.ka, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !173111, !noalias !172380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !173140, !noalias !172297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !173142, !noalias !172297
  br label %bb.jf, !dbg !173144

bb.kg:                                            ; preds = %bb.jf
  call void @llvm.experimental.noalias.scope.decl(metadata !172392), !dbg !173145
  %i.xm = load i64, ptr %i.aw, align 8, !dbg !173146, !range !5363, !alias.scope !172392, !noalias !172393, !noundef !4872
  %.not.i.i = icmp eq i64 %i.xm, 18, !dbg !173146
  br i1 %.not.i.i, label %bb.kl, label %bb.kh, !dbg !173147, !prof !5231

bb.kh:                                            ; preds = %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !173148, !noalias !172394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.aw, i64 72, i1 false), !dbg !173148, !noalias !172393
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 43, ptr noundef nonnull %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @278, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590) #54
          to label %bb.kj unwind label %bb.ki, !dbg !173149, !noalias !172395

bb.ki:                                            ; preds = %bb.kh
  %i.xn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.au) #56
          to label %.thread30.i unwind label %bb.kk, !dbg !173150, !noalias !172395

bb.kj:                                            ; preds = %bb.kh
  unreachable

bb.kk:                                            ; preds = %bb.ki
  %i.xo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173151, !noalias !172395
  unreachable, !dbg !173151

bb.kl:                                            ; preds = %bb.kg
  %i.xp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !173152
  %i.xq = load ptr, ptr %i.xp, align 8, !dbg !173152, !alias.scope !172392, !noalias !172393, !nonnull !4872, !noundef !4872
  %i.xr = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !173152
  %i.xs = load ptr, ptr %i.xr, align 8, !dbg !173152, !alias.scope !172392, !noalias !172393, !nonnull !4872, !align !5241, !noundef !4872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !173153, !noalias !172297
  %i.xt = ptrtoint ptr %i.xs to i64, !dbg !173154
  %i.xu = trunc nuw i8 %.sroa.07.2.i to i1, !dbg !173143
  br i1 %i.xu, label %bb.km, label %bb.kw, !dbg !173143

bb.km:                                            ; preds = %bb.kl
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.be), !dbg !173143
  br label %bb.kw, !dbg !173143

bb.kn:                                            ; preds = %.thread.i
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i, !dbg !173155

.body65.i:                                        ; preds = %bb.kp, %bb.kn
  %eh.lpad-body66.i = phi { ptr, i32 } [ %i.xv, %bb.kn ], [ %i.xy, %bb.kp ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.az) #56
          to label %.thread24.i unwind label %bb.ji, !dbg !173155, !noalias !172297

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseeLknQCOKOd_13polars_python.exit.i: ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !173156, !noalias !172297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !173157, !noalias !172297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !173157, !noalias !172297
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #50, !dbg !173158, !noalias !172396
  %i.xw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 513) 24, i64 noundef range(i64 1, 129) 8) #50, !dbg !173159, !noalias !172396 ; 4 uses
  %i.xx = icmp eq ptr %i.xw, null, !dbg !173160
  br i1 %i.xx, label %bb.ko, label %bb.kr, !dbg !173161, !prof !5167

bb.ko:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseeLknQCOKOd_13polars_python.exit.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc335.i unwind label %bb.kp, !dbg !173162, !noalias !172297

.noexc335.i:                                      ; preds = %bb.ko
  unreachable, !dbg !173162

bb.kp:                                            ; preds = %bb.ko
  %i.xy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMs_NtCsbm5zPlkZccl_4pyo33errNtBO_5PyErr3newNtNtBQ_10exceptions11PyTypeErrorNtNtCsgZ49sUHp3tW_5alloc6string6StringE0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av) #56
          to label %.body65.i unwind label %bb.kq, !dbg !173163, !noalias !172297

bb.kq:                                            ; preds = %bb.kp
  %i.xz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173164, !noalias !172297
  unreachable, !dbg !173164

bb.kr:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECseeLknQCOKOd_13polars_python.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xw, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !173165, !noalias !172297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !173166, !noalias !172297
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.az)
          to label %bb.ks unwind label %bb.jd, !dbg !173155, !noalias !172297

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !173155, !noalias !172297
  %i.ya = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !173167
  %.val.i.i.i.i.i = load i64, ptr %i.ya, align 8, !dbg !173168, !noalias !172297, !noundef !4872
  %i.yb = icmp sgt i64 %.val.i.i.i.i.i, 0, !dbg !173169
  br i1 %i.yb, label %bb.ku, label %bb.kt, !dbg !173170, !prof !5353

bb.kt:                                            ; preds = %bb.ks
  call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val), !dbg !173171
  br label %bb.kv, !dbg !173171

bb.ku:                                            ; preds = %bb.ks
  call void @_Py_DecRef(ptr noundef nonnull %.val) #50, !dbg !173172, !noalias !172297
  br label %bb.kv, !dbg !173173

.thread30.i:                                      ; preds = %bb.ki, %.thread43.i
  %.sroa.07.3.i = phi i8 [ %.sroa.07.2.i, %bb.ki ], [ %.sroa.07.1.ph.i, %.thread43.i ], !dbg !173070
  %.pn62.pn.i = phi { ptr, i32 } [ %i.xn, %bb.ki ], [ %lpad.thr_comm.i, %.thread43.i ] ; 2 uses
  %i.yc = trunc nuw i8 %.sroa.07.3.i to i1, !dbg !173143
  br i1 %i.yc, label %.thread30.thread.i, label %.body.thread, !dbg !173143

.thread24.i:                                      ; preds = %.body65.i, %bb.jg, %bb.jd
  %.pn6229.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.jd ], [ %i.vo, %bb.jg ], [ %eh.lpad-body66.i, %.body65.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types3any5PyAnyEECseeLknQCOKOd_13polars_python(ptr nonnull %.val) #56
          to label %.body.thread unwind label %bb.ji, !dbg !173069, !noalias !172297

.thread30.thread.i:                               ; preds = %.thread30.i, %bb.jy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i, %.body.i313.i
  %.pn62.pn50.i = phi { ptr, i32 } [ %.pn62.pn.i, %.thread30.i ], [ %.pn.i.i324.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %eh.lpad-body.i314.i, %.body.i313.i ], [ %.pn.i.i324.i, %bb.jy ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.be) #56
          to label %.body.thread unwind label %bb.ji, !dbg !173143, !noalias !172297

bb.kv:                                            ; preds = %bb.ke, %bb.kt, %bb.ku
  %.sroa.17.0.ph = phi i64 [ undef, %bb.kt ], [ %.sroa.17.24.copyload, %bb.ke ], [ undef, %bb.ku ]
  %.sroa.16.0.ph = phi ptr [ @205, %bb.kt ], [ %.sroa.16.24.copyload, %bb.ke ], [ @205, %bb.ku ]
  %.sroa.15.0.ph = phi ptr [ %i.xw, %bb.kt ], [ %.sroa.15.24.copyload.a, %bb.ke ], [ %i.xw, %bb.ku ]
  %.sroa.14.0.ph = phi ptr [ null, %bb.kt ], [ %.sroa.14.24.copyload, %bb.ke ], [ null, %bb.ku ]
  %.sroa.11.0.ph = phi i64 [ 1, %bb.kt ], [ %.sroa.11.24.copyload, %bb.ke ], [ 1, %bb.ku ]
  %i.yd = phi <2 x i32> [ <i32 3, i32 undef>, %bb.kt ], [ %i.xl, %bb.ke ], [ <i32 3, i32 undef>, %bb.ku ]
  %i.ye = phi <2 x ptr> [ splat (ptr null), %bb.kt ], [ %i.xk, %bb.ke ], [ splat (ptr null), %bb.ku ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !173143, !noalias !172297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !173174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !172413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !173175
  %i.yf = insertelement <2 x ptr> poison, ptr %.sroa.14.0.ph, i64 0, !dbg !173176
  %i.yg = insertelement <2 x ptr> %i.yf, ptr %.sroa.15.0.ph, i64 1, !dbg !173176
  br label %bb.kx, !dbg !173177

bb.kw:                                            ; preds = %bb.km, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !173143, !noalias !172297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !173174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !172413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !173175
  store i64 0, ptr %i.bf, align 8, !dbg !173178
  %.sroa.9.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !173178
  store ptr %i.xq, ptr %.sroa.9.8..sroa_idx31, align 8, !dbg !173178
  %.sroa.11.8..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !173178
  store i64 %i.xt, ptr %.sroa.11.8..sroa_idx33, align 8, !dbg !173178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !173179, !noalias !172401
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bf), !dbg !173180, !noalias !172403
  %i.yh = load i64, ptr %i.b, align 8, !dbg !173179, !range !4932, !noalias !172401, !noundef !4872
  %i.yi = trunc nuw i64 %i.yh to i1, !dbg !173181
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !173182
  %.sroa.568.8.copyload70 = load ptr, ptr %i.yj, align 8, !dbg !173182, !noalias !172404 ; 2 uses
  br i1 %i.yi, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.ky, !dbg !173181

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.kw
  %.sroa.10.8..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !173183
  %.sroa.10.sroa.0.0.copyload79 = load ptr, ptr %.sroa.10.8..sroa_idx72, align 8, !dbg !173183, !noalias !172404
  %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !173183
  %.sroa.10.sroa.5.0.copyload80 = load i64, ptr %.sroa.10.sroa.5.0..sroa.10.8..sroa_idx72.sroa_idx, align 8, !dbg !173183, !noalias !172404
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !173183
  %i.yk = load <2 x ptr>, ptr %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx72.sroa_idx, align 8, !dbg !173183, !noalias !172404
  %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !173183
  %.sroa.10.sroa.8.0.copyload83 = load ptr, ptr %.sroa.10.sroa.8.0..sroa.10.8..sroa_idx72.sroa_idx, align 8, !dbg !173183, !noalias !172404
  %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !173183
  %.sroa.10.sroa.9.0.copyload84 = load i64, ptr %.sroa.10.sroa.9.0..sroa.10.8..sroa_idx72.sroa_idx, align 8, !dbg !173183, !noalias !172404
  %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx72.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !173183
  %i.yl = load <2 x i32>, ptr %.sroa.10.sroa.10.0..sroa.10.8..sroa_idx72.sroa_idx, align 8, !dbg !173183, !noalias !172404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !173184, !noalias !172401
  %i.ym = insertelement <2 x ptr> poison, ptr %.sroa.568.8.copyload70, i64 0, !dbg !173176
  %i.yn = insertelement <2 x ptr> %i.ym, ptr %.sroa.10.sroa.0.0.copyload79, i64 1, !dbg !173176
  br label %bb.kx, !dbg !173177

bb.kx:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.kv
  %.sroa.10.sroa.8.0 = phi ptr [ %.sroa.16.0.ph, %bb.kv ], [ %.sroa.10.sroa.8.0.copyload83, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %.sroa.10.sroa.5.0 = phi i64 [ %.sroa.11.0.ph, %bb.kv ], [ %.sroa.10.sroa.5.0.copyload80, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %.sroa.10.sroa.9.0 = phi i64 [ %.sroa.17.0.ph, %bb.kv ], [ %.sroa.10.sroa.9.0.copyload84, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %i.yo = phi <2 x i32> [ %i.yd, %bb.kv ], [ %i.yl, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %i.yp = phi <2 x ptr> [ %i.ye, %bb.kv ], [ %i.yn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %i.yq = phi <2 x ptr> [ %i.yg, %bb.kv ], [ %i.yk, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !173176
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !173185
  store <2 x ptr> %i.yp, ptr %i.yr, align 8, !dbg !173185
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !173185
  store i64 %.sroa.10.sroa.5.0, ptr %.sroa.689.0..sroa_idx, align 8, !dbg !173185
  %.sroa.790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !173185
  store <2 x ptr> %i.yq, ptr %.sroa.790.0..sroa_idx, align 8, !dbg !173185
  %.sroa.992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !173185
  store ptr %.sroa.10.sroa.8.0, ptr %.sroa.992.0..sroa_idx, align 8, !dbg !173185
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !173185
  store i64 %.sroa.10.sroa.9.0, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !173185
  %.sroa.1193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !173185
  store <2 x i32> %i.yo, ptr %.sroa.1193.0..sroa_idx, align 8, !dbg !173185
  br label %bb.kz, !dbg !173186

bb.ky:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !173184, !noalias !172401
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !173187
  store ptr %.sroa.568.8.copyload70, ptr %i.ys, align 8, !dbg !173187
  br label %bb.kz, !dbg !173188

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %storemerge = phi i64 [ 0, %bb.ky ], [ 1, %bb.kx ], !dbg !173189
  store i64 %storemerge, ptr %0, align 8, !dbg !173189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !173175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !172412
  br label %bb.la, !dbg !173190

bb.la:                                            ; preds = %bb.b, %bb.lc, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !172406
  ret void, !dbg !173190

bb.lb:                                            ; preds = %bb.j, %bb.g
  store i64 1, ptr %0, align 8, !dbg !173191
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.bj), !dbg !173192
  br label %bb.lc, !dbg !172413

bb.lc:                                            ; preds = %bb.lb, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !172413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !172412
  br label %bb.la, !dbg !172411

.body.thread:                                     ; preds = %bb.ld, %.thread30.thread.i, %.thread24.i, %.thread30.i, %.thread18.i
  %eh.lpad-body97 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ld ], [ %.pn6229.i, %.thread24.i ], [ %.pn62.pn50.i, %.thread30.thread.i ], [ %.pn62.pn.i, %.thread30.i ], [ %eh.lpad-body72.i, %.thread18.i ]
  resume { ptr, i32 } %eh.lpad-body97, !dbg !173193

bb.ld:                                            ; preds = %bb.h, %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.bj)
          to label %.body.thread unwind label %bb.le, !dbg !173194

bb.le:                                            ; preds = %bb.ld
  %i.yt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !173193
  unreachable, !dbg !173193
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries20___pymethod_get_f64__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !173195 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 14 uses
  %i.l = alloca [72 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !173442
  store ptr null, ptr %i.m, align 8, !dbg !173442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !173406
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @673, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.m, i64 noundef 1), !dbg !173406
  %i.n = load i64, ptr %i.l, align 8, !dbg !173443, !range !4932, !noundef !4872
  %i.o = trunc nuw i64 %i.n to i1, !dbg !173444
  %.sink30.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !173444
  %.sink30.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !173444
  %.sink30.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !173444
  %.sink30.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !173444
  %.sink30.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !173444
  %.sink30.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !173444
  br i1 %i.o, label %bb.b, label %bb.c, !dbg !173444

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !173445
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !173446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false), !dbg !173445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !173406
  store i64 1, ptr %0, align 8, !dbg !173446
  br label %bb.aq, !dbg !173447

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !173406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !173448
  store ptr null, ptr %i.k, align 8, !dbg !173448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !173449
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !173450
  %i.r = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !173451 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.s = icmp eq ptr %i.r, null, !dbg !173452
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !173453

bb.d:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !173454 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.t)
          to label %bb.i unwind label %bb.g, !dbg !173455

bb.e:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.k, align 8, !dbg !173456, !alias.scope !173414, !noalias !173415, !noundef !4872
  %i.v = icmp eq ptr %i.u, null, !dbg !173456
  br i1 %i.v, label %bb.j, label %bb.f, !dbg !173456

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.j unwind label %.body.thread, !dbg !173457, !noalias !173415

.body.thread:                                     ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.r, ptr %i.k, align 8, !dbg !173458, !alias.scope !173416, !noalias !173415
  br label %bb.h, !dbg !173459

bb.g:                                             ; preds = %bb.am, %bb.aj, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !173448

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes11Float64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit13.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes11Float64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit13.i ] ; 2 uses
  %.pr = load ptr, ptr %i.k, align 8, !dbg !173459, !alias.scope !173417
  %i.y = icmp eq ptr %.pr, null, !dbg !173459
  br i1 %i.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !173459

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.w, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.at, !dbg !173460

bb.i:                                             ; preds = %bb.d
end_hunk_0
