Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.11?download=true
inline.NumInlined: 10475
inline.NumDeleted: 2844
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion18to_datafusion_expr:bb.a
  %.pn110 = phi { ptr, i32 } [ %i.gb, %bb.bm ], [ %i.fs, %bb.bi ], [ %i.gc, %bb.bn ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #54
          to label %common.resume unwind label %bb.be

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i146, %bb.bk, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit132
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body147

bb.bj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit132
  %i.ft = load i64, ptr %i.u, align 8, !range !34, !noundef !30
  %i.fu = trunc nuw i64 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !range !31, !noundef !30 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.fu, label %bb.bk, label %bb.bl, !prof !33

bb.bk:                                            ; preds = %bb.bj
  %i.fy = load i64, ptr %i.fx, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fw, i64 %i.fy) #55
          to label %bb.bf unwind label %bb.bi

bb.bl:                                            ; preds = %bb.bj
  %i.fz = load ptr, ptr %i.fx, align 8, !nonnull !30, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.fw, ptr %i.af, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.fz, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 0, ptr %.sroa.556.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.ag, ptr %i.ae, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.460.0..sroa_idx, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.af, ptr %i.ga, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @4, ptr noundef nonnull %i.ae)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit144 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af) #54
          to label %.body147 unwind label %bb.be

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit144: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i146 unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit144
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body147 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i146: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit144
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149 unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit152 unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit152: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.gg, align 8
  store i64 37, ptr %0, align 16
  br label %bb.ac

.body156:                                         ; preds = %bb.bw, %bb.br, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.gq, %bb.bv ], [ %i.gh, %bb.br ], [ %i.gr, %bb.bw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #54
          to label %common.resume unwind label %bb.be

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155, %bb.bt, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit135
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.bs:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit135
  %i.gi = load i64, ptr %i.t, align 8, !range !34, !noundef !30
  %i.gj = trunc nuw i64 %i.gi to i1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !range !31, !noundef !30 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.gj, label %bb.bt, label %bb.bu, !prof !33

bb.bt:                                            ; preds = %bb.bs
  %i.gn = load i64, ptr %i.gm, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gl, i64 %i.gn) #55
          to label %bb.bf unwind label %bb.br

bb.bu:                                            ; preds = %bb.bs
  %i.go = load ptr, ptr %i.gm, align 8, !nonnull !30, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.gl, ptr %i.ab, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.go, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.571.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.gp, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noundef nonnull @4, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #54
          to label %.body156 unwind label %bb.be

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155 unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body156 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit153
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158 unwind label %bb.br

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit161 unwind label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit161: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit158
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.231.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.gv, align 8
  store i64 37, ptr %0, align 16
  br label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion20to_datafusion_scalar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.48 = alloca [6 x i8], align 2            ; 3 uses
  %i.e = alloca [64 x i8], align 16               ; 14 uses
  %.sroa.651.sroa.13 = alloca [6 x i8], align 2   ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 16               ; 9 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [80 x i8], align 8                ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 16               ; 14 uses
  %.sroa.623.sroa.13 = alloca [6 x i8], align 2   ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = load i64, ptr %1, align 16, !range !108, !noundef !30 ; 2 uses
  %i.r = xor i64 %i.q, -9223372036854775808
  %i.s = icmp slt i64 %i.q, 0
  %i.t = select i1 %i.s, i64 %i.r, i64 16
  switch i64 %i.t, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noundef !30
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !30
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i16, ptr %i.y, align 8, !noundef !30
  %i.aa = zext i16 %i.z to i32
  br label %bb.t

bb.f:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !noundef !30
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !30
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !30
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  %.sroa.0129.0.copyload = load i32, ptr %i.p, align 8 ; 3 uses
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4130.0.copyload = load i32, ptr %.sroa.4130.0..sroa_idx, align 4
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5131.0.copyload = load i64, ptr %.sroa.5131.0..sroa_idx, align 8
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6132.0.copyload = load i64, ptr %.sroa.6132.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc117 = trunc i32 %.sroa.0129.0.copyload to i8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift121346 = lshr i32 %.sroa.0129.0.copyload, 8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc122 = trunc i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift121346 to i8
  %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift112 = lshr i32 %.sroa.0129.0.copyload, 16
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !range !39, !noundef !30
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !30
  %i.am = tail call { ptr, i64 } @_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 3) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = tail call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offseteECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, i64 noundef %i.ao)
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = ptrtoint ptr %i.as to i64
  br label %bb.t

bb.l:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !30
  br label %bb.t

bb.m:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !noundef !30
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
  %.sroa.0125.0.copyload = load i32, ptr %i.o, align 8 ; 3 uses
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4126.0.copyload = load i32, ptr %.sroa.4126.0..sroa_idx, align 4
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5127.0.copyload = load i64, ptr %.sroa.5127.0..sroa_idx, align 8
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6128.0.copyload = load i64, ptr %.sroa.6128.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc118 = trunc i32 %.sroa.0125.0.copyload to i8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift123345 = lshr i32 %.sroa.0125.0.copyload, 8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc124 = trunc i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift123345 to i8
  %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift114 = lshr i32 %.sroa.0125.0.copyload, 16
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = load i64, ptr %i.az, align 16
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load i64, ptr %.sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i8, ptr %i.ba, align 16, !noundef !30
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !30
  br label %bb.t

bb.p:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs4_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_conversionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeINtB5_13TryFromKernelRNtNtB9_6schema8DataTypeE15try_from_kernel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.be)
  %i.bf = load i64, ptr %i.f, align 8, !range !106, !noundef !30
  %.not342 = icmp eq i64 %i.bf, -9223372036854775788
  br i1 %.not342, label %bb.y, label %bb.u

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !nonnull !30, !noundef !30 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !30
  %i.bk = getelementptr inbounds nuw [96 x i8], ptr %i.bh, i64 %i.bj
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion20to_datafusion_scalar0ENtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4m_5error10ArrowErrorENCINvXso_B53_IB51_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB4i_EB5N_EINtNtNtB4_6traits7collect12FromIteratorIB51_B4i_B5N_EE9from_iterBQ_E0B6w_EB2z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bk)
  %i.bl = load i64, ptr %i.m, align 8, !range !106, !noundef !30 ; 2 uses
  %.not = icmp eq i64 %i.bl, -9223372036854775788
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %.not, label %bb.ag, label %bb.af

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bn = load i64, ptr %i.c, align 8, !range !34, !noundef !30
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !31, !noundef !30 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.ap, label %bb.aq, !prof !33

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 33, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bs = load i64, ptr %i.d, align 8, !range !34, !noundef !30
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !31, !noundef !30 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.ar, label %bb.as, !prof !33

bb.t:                                             ; preds = %bb.al, %bb.ac, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0 = phi i8 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ac, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc122, %bb.i ], [ undef, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc124, %bb.n ], [ 0, %bb.o ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc120, %bb.ac ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc, %bb.al ]
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc117, %bb.i ], [ %i.aj, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc118, %bb.n ], [ 1, %bb.o ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc116, %bb.ac ], [ %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc, %bb.al ]
  %.sroa.16.sroa.0.sroa.0.sroa.17.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.aa, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift112, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift114, %bb.n ], [ 0, %bb.o ], [ %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift110, %bb.ac ], [ %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift, %bb.al ]
  %.sroa.16.sroa.0.sroa.18.0 = phi i32 [ %i.v, %bb.c ], [ 0, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ %i.ae, %bb.g ], [ 0, %bb.h ], [ %.sroa.4130.0.copyload, %bb.i ], [ undef, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ %i.ax, %bb.m ], [ %.sroa.4126.0.copyload, %bb.n ], [ 0, %bb.o ], [ %.sroa.5322.0.copyload, %bb.ac ], [ %.sroa.5245.0.copyload, %bb.al ]
  %.sroa.16.sroa.26.0 = phi i64 [ undef, %bb.c ], [ %i.x, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ %i.ag, %bb.h ], [ %.sroa.5131.0.copyload, %bb.i ], [ undef, %bb.j ], [ %i.al, %bb.k ], [ %i.av, %bb.l ], [ undef, %bb.m ], [ %.sroa.5127.0.copyload, %bb.n ], [ 0, %bb.o ], [ %.sroa.6323.0.copyload, %bb.ac ], [ %.sroa.6246.0.copyload, %bb.al ]
  %.sroa.4873.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ undef, %bb.o ], [ %.sroa.13312.0.copyload, %bb.ac ], [ %.sroa.13.0.copyload, %bb.al ]
  %.sroa.47.0 = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %i.bd, %bb.o ], [ %.sroa.10327.0.copyload, %bb.ac ], [ %.sroa.10250.0.copyload, %bb.al ]
  %.sroa.46.0 = phi i8 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %i.bb, %bb.o ], [ %.sroa.9326.0.copyload, %bb.ac ], [ %.sroa.9249.0.copyload, %bb.al ]
  %.sroa.43.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.j ], [ %i.ao, %bb.k ], [ undef, %bb.l ], [ undef, %bb.m ], [ undef, %bb.n ], [ %3, %bb.o ], [ %.sroa.8325.0.copyload, %bb.ac ], [ %.sroa.8248.0.copyload, %bb.al ]
  %.sroa.40.0 = phi i64 [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ %.sroa.6132.0.copyload, %bb.i ], [ undef, %bb.j ], [ %i.at, %bb.k ], [ 0, %bb.l ], [ undef, %bb.m ], [ %.sroa.6128.0.copyload, %bb.n ], [ %2, %bb.o ], [ %.sroa.7324.0.copyload, %bb.ac ], [ %.sroa.7247.0.copyload, %bb.al ]
  %.sroa.057.0 = phi i128 [ 13, %bb.c ], [ 14, %bb.d ], [ 12, %bb.e ], [ 11, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 19, %bb.i ], [ 3, %bb.j ], [ 39, %bb.k ], [ 39, %bb.l ], [ 31, %bb.m ], [ 22, %bb.n ], [ 9, %bb.o ], [ %i.cf, %bb.ac ], [ %i.df, %bb.al ]
  store i128 %.sroa.057.0, ptr %0, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.insert.ext = zext i8 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0 to i32
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.insert.shift = shl nuw nsw i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.insert.ext, 8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0 to i32
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.insert.shift, %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.ext
  %.sroa.16.sroa.0.sroa.0.sroa.17.0.insert.shift = shl nuw i32 %.sroa.16.sroa.0.sroa.0.sroa.17.0, 16
  %.sroa.16.sroa.0.sroa.0.sroa.0.0.insert.insert = or disjoint i32 %.sroa.16.sroa.0.sroa.0.sroa.17.0.insert.shift, %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.insert.insert
  store i32 %.sroa.16.sroa.0.sroa.0.sroa.0.0.insert.insert, ptr %.sroa.16.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.16.sroa.0.sroa.18.0, ptr %.sroa.16.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx.sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.sroa.26.0, ptr %.sroa.16.0..sroa_idx.sroa_idx78, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.40.0, ptr %.sroa.40.0..sroa_idx, align 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.43.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.46.0, ptr %.sroa.46.0..sroa_idx, align 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.47.0, ptr %.sroa.47.0..sroa_idx, align 1
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.48, i64 6, i1 false)
  %.sroa.4873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.4873.0, ptr %.sroa.4873.0..sroa_idx, align 8
  br label %bb.am

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !29752
  %i.bx = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4481) 32, i64 noundef range(i64 1, 17) 8) #48, !noalias !29752 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #55
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #54
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.ao, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.w ], [ %i.ce, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %i.cb, align 16
  %.sroa.2299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bx, ptr %.sroa.2299.0..sroa_idx, align 8
  %.sroa.3300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @104, ptr %.sroa.3300.0..sroa_idx, align 16
  store i128 50, ptr %0, align 16
  br label %bb.ad

bb.y:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.6275.0.copyload = load i64, ptr %.sroa.6275.0..sroa_idx, align 8
  %i.cd = load <2 x ptr>, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.cd, ptr %i.g, align 16
  %.sroa.5287.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.6275.0.copyload, ptr %.sroa.5287.0..sroa_idx.a, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsf_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueINtNtCsbvkFyIu7lgC_4core7convert7TryFromRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeE8try_from(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #54
          to label %common.resume unwind label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cf = load i128, ptr %i.e, align 16, !range !138, !noundef !30 ; 2 uses
  %i.cg = icmp eq i128 %i.cf, 50
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0321.0.copyload = load i32, ptr %i.ch, align 16 ; 4 uses
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.5322.0.copyload = load i32, ptr %.sroa.5322.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6323.0.copyload = load i64, ptr %.sroa.6323.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7324.0.copyload = load i64, ptr %.sroa.7324.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8325.0.copyload = load i64, ptr %.sroa.8325.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.9326.0.copyload = load i8, ptr %.sroa.9326.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 49
  %.sroa.10327.0.copyload = load i8, ptr %.sroa.10327.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.651.sroa.13, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11328.0..sroa_idx, i64 6, i1 false)
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.8336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8336.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.651.sroa.13, i64 6, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0321.0.copyload, ptr %i.ci, align 16
  %.sroa.2330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5322.0.copyload, ptr %.sroa.2330.0..sroa_idx, align 4
  %.sroa.3331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6323.0.copyload, ptr %.sroa.3331.0..sroa_idx, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7324.0.copyload, ptr %.sroa.4332.0..sroa_idx, align 16
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8325.0.copyload, ptr %.sroa.5333.0..sroa_idx, align 8
  %.sroa.6334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.9326.0.copyload, ptr %.sroa.6334.0..sroa_idx, align 16
  %.sroa.7335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.10327.0.copyload, ptr %.sroa.7335.0..sroa_idx, align 1
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.sroa.13)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %.sroa.13312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.13312.0.copyload = load i64, ptr %.sroa.13312.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc116 = trunc i32 %.sroa.0321.0.copyload to i8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift119344 = lshr i32 %.sroa.0321.0.copyload, 8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc120 = trunc i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift119344 to i8
  %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift110 = lshr i32 %.sroa.0321.0.copyload, 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.48, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.651.sroa.13, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.sroa.13)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.ad:                                            ; preds = %bb.ab, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE3newCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.am

bb.ae:                                            ; preds = %bb.ao, %bb.z
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.af:                                            ; preds = %bb.q
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.bl, ptr %i.b, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ck, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.an

bb.ag:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load i64, ptr %i.cn, align 16, !noundef !30
  %i.cp = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.co
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion20to_datafusion_scalarENtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4t_5error15DataFusionErrorENCINvXso_B5n_IB5l_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB4p_EB67_EINtNtNtB4_6traits7collect12FromIteratorIB5l_B4p_B67_EE9from_iterBQ_E0B6V_EB2H_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.l, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cp)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load i64, ptr %i.l, align 8, !range !122, !noundef !30 ; 2 uses
  %.not340 = icmp eq i64 %i.cq, 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0207.0.copyload = load i64, ptr %i.cr, align 8 ; 3 uses
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5208.0.copyload = load ptr, ptr %.sroa.5208.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.6209.0.copyload = load i64, ptr %.sroa.6209.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not340, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.8219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8219.0.copyload = load i64, ptr %.sroa.8219.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cq, ptr %i.cs, align 16
  %.sroa.2221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0207.0.copyload, ptr %.sroa.2221.0..sroa_idx, align 8
  %.sroa.3222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.5208.0.copyload, ptr %.sroa.3222.0..sroa_idx, align 16
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6209.0.copyload, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8219.0.copyload, ptr %.sroa.5224.0..sroa_idx, align 16
  store i128 50, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n)
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !30, !noundef !30 ; 3 uses
  %i.cv = load i64, ptr %i.n, align 8, !range !37, !noundef !30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !30 ; 2 uses
  %i.cy = icmp ult i64 %i.cx, 82351536043346213
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [112 x i8], ptr %i.cu, i64 %i.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5208.0.copyload) ]
  %i.da = icmp ult i64 %.sroa.6209.0.copyload, 144115188075855872
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [64 x i8], ptr %.sroa.5208.0.copyload, i64 %.sroa.6209.0.copyload
  %i.dc = icmp sgt i64 %.sroa.0207.0.copyload, -1
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.experimental.noalias.scope.decl(metadata !29753)
  call void @llvm.experimental.noalias.scope.decl(metadata !29754)
  call void @llvm.experimental.noalias.scope.decl(metadata !29755)
  call void @llvm.experimental.noalias.scope.decl(metadata !29756)
  store ptr %i.cu, ptr %i.i, align 8, !alias.scope !29757, !noalias !29758
  %.sroa.4347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cu, ptr %.sroa.4347.0..sroa_idx, align 8, !alias.scope !29757, !noalias !29758
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !29757, !noalias !29758
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.cz, ptr %.sroa.6348.0..sroa_idx, align 8, !alias.scope !29757, !noalias !29758
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.5208.0.copyload, ptr %i.dd, align 8, !alias.scope !29759, !noalias !29760
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.5208.0.copyload, ptr %.sroa.4350.0..sroa_idx, align 8, !alias.scope !29759, !noalias !29760
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %.sroa.0207.0.copyload, ptr %.sroa.5351.0..sroa_idx, align 8, !alias.scope !29759, !noalias !29760
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.db, ptr %.sroa.6352.0..sroa_idx, align 8, !alias.scope !29759, !noalias !29760
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !alias.scope !29761, !noalias !29762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5227.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4229.0..sroa_idx, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.5230.0..sroa_idx, align 8
  call fastcc void @_RINvXsj_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB6_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEIBY_NtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEENtB6_8SpecFold9spec_foldNtNtB2A_14struct_builder19ScalarStructBuilderNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion20to_datafusion_scalars_0EB4O_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.i, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCsjhHCjzi9uUI_17datafusion_common6scalar14struct_builderNtB2_19ScalarStructBuilder5build(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.df = load i128, ptr %i.k, align 16, !range !138, !noundef !30 ; 2 uses
  %i.dg = icmp eq i128 %i.df, 50
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0244.0.copyload = load i32, ptr %i.dh, align 16 ; 4 uses
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.5245.0.copyload = load i32, ptr %.sroa.5245.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6246.0.copyload = load i64, ptr %.sroa.6246.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7247.0.copyload = load i64, ptr %.sroa.7247.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.8248.0.copyload = load i64, ptr %.sroa.8248.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.9249.0.copyload = load i8, ptr %.sroa.9249.0..sroa_idx, align 16 ; 2 uses
  %.sroa.10250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %.sroa.10250.0.copyload = load i8, ptr %.sroa.10250.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.623.sroa.13, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11251.0..sroa_idx, i64 6, i1 false)
  br i1 %i.dg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.8259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8259.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.623.sroa.13, i64 6, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0244.0.copyload, ptr %i.di, align 16
  %.sroa.2253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.5245.0.copyload, ptr %.sroa.2253.0..sroa_idx, align 4
  %.sroa.3254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6246.0.copyload, ptr %.sroa.3254.0..sroa_idx, align 8
  %.sroa.4255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7247.0.copyload, ptr %.sroa.4255.0..sroa_idx, align 16
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8248.0.copyload, ptr %.sroa.5256.0..sroa_idx, align 8
  %.sroa.6257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.9249.0.copyload, ptr %.sroa.6257.0..sroa_idx, align 16
  %.sroa.7258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %.sroa.10250.0.copyload, ptr %.sroa.7258.0..sroa_idx, align 1
  store i128 50, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.13)
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.0244.0.copyload to i8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift341 = lshr i32 %.sroa.0244.0.copyload, 8
  %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.trunc = trunc i32 %.sroa.16.sroa.0.sroa.0.sroa.0.sroa.16.0.extract.shift341 to i8
  %.sroa.16.sroa.0.sroa.0.sroa.17.0.extract.shift = lshr i32 %.sroa.0244.0.copyload, 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.48, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.623.sroa.13, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.t

bb.am:                                            ; preds = %bb.ad, %bb.an, %bb.aq, %bb.as, %bb.t
  ret void

bb.an:                                            ; preds = %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.am

bb.ao:                                            ; preds = %bb.ag
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #54
          to label %common.resume unwind label %bb.ae

bb.ap:                                            ; preds = %bb.r
  %i.dj = load i64, ptr %i.br, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.dj) #55
  unreachable

bb.aq:                                            ; preds = %bb.r
  %i.dk = load ptr, ptr %i.br, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.dl = icmp samesign ugt i64 %i.bq, 34
  tail call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.dk, ptr noundef nonnull align 1 dereferenceable(35) @105, i64 35, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.dm, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dk, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 35, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i128 50, ptr %0, align 16
  br label %bb.am

bb.ar:                                            ; preds = %bb.s
  %i.dn = load i64, ptr %i.bw, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.dn) #55
  unreachable

bb.as:                                            ; preds = %bb.s
  %i.do = load ptr, ptr %i.bw, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.dp = icmp samesign ugt i64 %i.bv, 32
  tail call void @llvm.assume(i1 %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.do, ptr noundef nonnull align 1 dereferenceable(33) @106, i64 33, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %i.dq, align 16
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bv, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.do, ptr %.sroa.430.sroa.4.0..sroa.430.0..sroa_idx.sroa_idx, align 16
  %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 33, ptr %.sroa.430.sroa.5.0..sroa.430.0..sroa_idx.sroa_idx, align 8
  store i128 50, ptr %0, align 16
  br label %bb.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29767)
  %i.a = load i64, ptr %0, align 8, !range !116, !alias.scope !29766, !noalias !29767, !noundef !30 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 25         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !116, !alias.scope !29767, !noalias !29766, !noundef !30 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 25
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvXs5_NtCs8ulvy0Wg6Ot_12delta_kernel14table_featuresNtB5_12TableFeatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.d, 25
  br i1 %i.j, label %bb.c, label %_RNvXs5_NtCs8ulvy0Wg6Ot_12delta_kernel14table_featuresNtB5_12TableFeatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !29766, !noalias !29767, !noundef !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !29767, !noalias !29766, !noundef !30
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs5_NtCs8ulvy0Wg6Ot_12delta_kernel14table_featuresNtB5_12TableFeatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !29767, !noalias !29766, !nonnull !30, !noundef !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !29766, !noalias !29767, !nonnull !30, !noundef !30
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.l), !noalias !29768
  %i.t = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs5_NtCs8ulvy0Wg6Ot_12delta_kernel14table_featuresNtB5_12TableFeatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs5_NtCs8ulvy0Wg6Ot_12delta_kernel14table_featuresNtB5_12TableFeatureNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.t, %bb.d ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_data15ArrowEngineDataNtB2_3Any7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @110, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB2_8VecDequeTNtNtB6_6string6StringjEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.p, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.q = load i64, ptr %i.l, align 8, !range !34, !noundef !30
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !31, !noundef !30 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.r, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #55
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !30, !noundef !30
  %i.x = icmp ule i64 %i.p, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 %i.t, ptr %i.n, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.w, ptr %i.aa, align 8
  %.val.i = load i64, ptr %1, align 8, !alias.scope !29788, !noalias !29789 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.ab, align 8, !alias.scope !29788, !noalias !29789
  %i.ac = invoke { i64, i64 } @_RINvNtNtCsbvkFyIu7lgC_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs14kWLkQVSKO_14deltalake_core(i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 2 uses
  %i.af = sub i64 %i.ae, %i.ad                    ; 3 uses
  %i.ag = icmp eq i64 %i.ae, %i.ad
  br i1 %i.ag, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ah = add i64 %i.ad, %.val2.i                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.ah, %.val.i
  %i.ai = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.0.0.i.i = sub nuw i64 %i.ah, %i.ai       ; 4 uses
  %i.aj = sub i64 %.val.i, %.sroa.0.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.aj, %i.af
  br i1 %.not11.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = sub nuw i64 %i.af, %i.aj
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.al = add i64 %.sroa.0.0.i.i, %i.af
  br label %bb.g

bb.f:                                             ; preds = %bb.x, %bb.p, %bb.j, %bb.g, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.f
end_hunk_0
begin_hunk_1_@_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au) #57
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.ax = load i8, ptr %i.aw, align 1, !range !39, !noundef !30
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.az = load i8, ptr %i.ay, align 1, !range !39, !noundef !30
  %i.ba = icmp eq i8 %i.ax, %i.az
  br label %bb.o

bb.o:                                             ; preds = %.split, %bb.b, %bb.d, %bb.f, %bb.i, %bb.j, %bb.k, %bb.m, %bb.e, %bb.h, %bb.n
  %.sroa.0.0 = phi i1 [ %i.ba, %bb.n ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #57
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !30 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !30
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !30, !noundef !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !30, !noundef !30
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.r, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25AlterTypeAddValuePositionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !30 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !34, !noundef !30
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %i.a to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !30 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !30
  %i.i = icmp eq i64 %i.f, %i.h                   ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.l, %bb.h, %bb.j, %bb.d, %bb.f, %bb.e, %bb.a, %bb.m, %bb.i
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.d ], [ false, %bb.j ], [ %i.ae, %bb.m ], [ %i.s, %bb.h ], [ %i.ad, %bb.l ], [ false, %bb.f ], [ %i.t, %bb.i ], [ false, %bb.a ], [ false, %bb.e ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.j, label %bb.c

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !30, !noundef !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !30, !noundef !30
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f)
  %i.n = icmp eq i32 %bcmp, 0
  br i1 %i.n, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !range !121, !noundef !30 ; 2 uses
  %.not = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i32, ptr %i.q, align 8, !range !121, !noundef !30 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp eq i32 %i.p, %i.r
  br label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %i.r, 1114112
  br label %bb.c

bb.j:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !30, !noundef !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !30, !noundef !30
  %bcmp7 = tail call i32 @bcmp(ptr nonnull %i.x, ptr nonnull %i.v, i64 %i.f)
  %i.y = icmp eq i32 %bcmp7, 0
  br i1 %i.y, label %bb.k, label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !range !121, !noundef !30 ; 2 uses
  %.not8 = icmp eq i32 %i.aa, 1114112
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !range !121, !noundef !30 ; 2 uses
  br i1 %.not8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br label %bb.c

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %i.ac, 1114112
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !39, !noundef !30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !39, !noundef !30
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !30, !noundef !30
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !30, !noundef !30
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.i) #57
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !30 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !30
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !30, !noundef !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !30, !noundef !30
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.s, ptr noundef nonnull %i.q, i64 noundef %i.l)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine10arrow_data15ArrowEngineDataNtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #22 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @404, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine10arrow_data15ArrowEngineDataNtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #22 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @404, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine10arrow_data15ArrowEngineDataNtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #22 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @404, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine10arrow_data15ArrowEngineDataNtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @405, i64 49 }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filter9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB21_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB3R_6errors15DeltaTableErrorENtNtB21_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadybENCNCNvNtNtB3R_10operations6vacuum15get_stale_files00ENtB5_9TryStream13try_poll_nextB3R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.9.sroa.12.i = alloca [40 x i8], align 8  ; 8 uses
  %.sroa.7.sroa.5.i = alloca [40 x i8], align 16  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30640)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.350.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.h = load i8, ptr %i.f, align 8, !range !67, !alias.scope !30640, !noalias !30641, !noundef !30 ; 3 uses
  %.not.i = icmp eq i8 %i.h, 3
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !30642)
  store i8 2, ptr %i.f, align 8, !alias.scope !30643, !noalias !30641
  %.not.i.i = icmp eq i8 %i.h, 2
  br i1 %.not.i.i, label %bb.d, label %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @304, i64 noundef 29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #59, !noalias !30644
  unreachable

_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.i = trunc nuw i8 %i.h to i1
  store i8 3, ptr %i.f, align 8, !alias.scope !30640, !noalias !30641
  %.sroa.06.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !30640, !noalias !30641 ; 3 uses
  br i1 %i.i, label %bb.s, label %bb.q

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30645
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB2A_6errors15DeltaTableErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextB2A_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !30639
  %i.j = load i64, ptr %i.c, align 16, !range !139, !noalias !30645, !noundef !30 ; 2 uses
  switch i64 %i.j, label %bb.i [
    i64 -9223372036854775709, label %bb.f
    i64 -9223372036854775710, label %bb.g
    i64 -9223372036854775711, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30645
  store i64 -9223372036854775709, ptr %0, align 16, !alias.scope !30639, !noalias !30646
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.u, %bb.g
  %.sroa.7.sroa.0.0.i = phi i64 [ undef, %bb.g ], [ %.sroa.06.0.copyload.i, %bb.u ], [ -9223372036854775808, %bb.s ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775710, %bb.g ], [ -9223372036854775711, %bb.u ], [ -9223372036854775710, %bb.s ]
  store i64 %.sroa.0.0.i, ptr %0, align 16, !alias.scope !30639, !noalias !30646
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !30639, !noalias !30646
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7.sroa.5.i, i64 40, i1 false), !noalias !30646
  br label %_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB3R_6errors15DeltaTableErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNCNvNtNtB3R_10operations6vacuum15get_stale_files00EB2u_9poll_nextB3R_.exit

bb.i:                                             ; preds = %bb.e
  %.sroa.724.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !30645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.12.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.744.0..sroa_idx.i, i64 40, i1 false), !noalias !30645
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.663.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i, i64 40, i1 false), !noalias !30646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30645
  %.sroa.562.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.562.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.12.i, i64 40, i1 false), !noalias !30646
  store i64 %i.j, ptr %0, align 16, !alias.scope !30639, !noalias !30646
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.724.sroa.0.0.copyload.i, ptr %.sroa.461.0..sroa_idx.i, align 8, !alias.scope !30639, !noalias !30646
  br label %bb.p

bb.j:                                             ; preds = %bb.e
  %.sroa.043.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !30645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.12.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.744.0..sroa_idx.i, i64 40, i1 false), !noalias !30645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30645
  store i64 %.sroa.043.0.copyload.i, ptr %i.b, align 8, !noalias !30645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.350.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.sroa.12.i, i64 40, i1 false), !noalias !30645
  %.val73.i = load ptr, ptr %i.e, align 8, !alias.scope !30640, !noalias !30641 ; 2 uses
  %i.k = invoke { i64, i64 } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView18deletion_timestamp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
          to label %bb.l unwind label %bb.n, !noalias !30639 ; 2 uses

bb.k:                                             ; preds = %bb.m
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !30641
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEBQ_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.m = extractvalue { i64, i64 } %i.k, 0
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = extractvalue { i64, i64 } %i.k, 1
  %.sroa.0.0.i.i = select i1 %i.n, i64 %i.o, i64 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73.i) ]
  %i.p = load i64, ptr %.val73.i, align 8, !noalias !30647, !noundef !30
  %i.q = icmp slt i64 %.sroa.0.0.i.i, %i.p
  %i.r = zext i1 %i.q to i8
  store i8 %i.r, ptr %i.f, align 8, !alias.scope !30640, !noalias !30641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !30645
  %i.s = load i64, ptr %1, align 8, !range !31, !alias.scope !30648, !noalias !30641, !noundef !30
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit.i unwind label %bb.k, !noalias !30639

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit.i: ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !30641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30645
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.i)
  br label %.backedge

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEBQ_.exit.i: ; preds = %bb.t, %bb.n, %bb.k
  %.pn69.i = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.l, %bb.k ], [ %i.u, %bb.n ]
  resume { ptr, i32 } %.pn69.i

bb.n:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEBQ_.exit.i unwind label %bb.o, !noalias !30639

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56, !noalias !30639
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.i)
  br label %_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB3R_6errors15DeltaTableErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNCNvNtNtB3R_10operations6vacuum15get_stale_files00EB2u_9poll_nextB3R_.exit

bb.q:                                             ; preds = %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.w = icmp eq i64 %.sroa.06.0.copyload.i, -9223372036854775808
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit76.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit76.i unwind label %bb.t, !noalias !30639

bb.s:                                             ; preds = %_RNvXs1_NtNtCs8CRAYtH5WmW_12futures_util6future5readyINtB5_5ReadybENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 -9223372036854775808, ptr %1, align 8, !alias.scope !30640, !noalias !30641
  %.not71.i = icmp eq i64 %.sroa.06.0.copyload.i, -9223372036854775808
  br i1 %.not71.i, label %bb.h, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775808, ptr %1, align 8, !alias.scope !30640, !noalias !30641
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEBQ_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit76.i: ; preds = %bb.r, %bb.q
  store i64 -9223372036854775808, ptr %1, align 8, !alias.scope !30640, !noalias !30641
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit76.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1c_.exit.i
  br label %bb.b

bb.u:                                             ; preds = %bb.s
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.7.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, i64 40, i1 false), !noalias !30641
  br label %bb.h

_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNtNtB3R_6errors15DeltaTableErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNCNvNtNtB3R_10operations6vacuum15get_stale_files00EB2u_9poll_nextB3R_.exit: ; preds = %bb.h, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtBL_3zip3ZipINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB1Y_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3M_6errors15DeltaTableErrorENtNtB1Y_6marker4SendEL_EEINtNtBN_4iter4IterINtNtNtNtB1Y_4iter7sources6repeat6RepeatTINtNtB2u_4sync3ArcNtCseo6ZV82fEK1_3url3UrlEIB6R_INtNtCs2HSpDNxY7OE_9hashbrown3set7HashSetNtNtB2u_6string6StringEEEEEENCNCNCNvNtNtB3M_10operations6delete7execute00s1_0ENtB5_9TryStream13try_poll_nextB3M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias noundef align 16 dereferenceable(160) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.3.i = alloca [104 x i8], align 8         ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
end_hunk_1
begin_hunk_2_@_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan20partition_statisticsCs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #54
          to label %common.resume unwind label %bb.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.k, %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.w, %bb.e ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.z, align 8
  store i64 3, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.i:                                             ; preds = %bb.k, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.j:                                             ; preds = %_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaCs14kWLkQVSKO_14deltalake_core.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !34136
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
          to label %common.resume unwind label %bb.i

bb.l:                                             ; preds = %_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.ae = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !34137
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit27

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #58
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit27

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan27gather_filters_for_pushdownCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(880) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !30, !noundef !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1_NtCs2xb0BKvnu80_21datafusion_datasource4sinkNtB5_12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.f, %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.g, %bb.b ], [ %i.n, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %3) #54
          to label %common.resume unwind label %bb.k

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !30, !noundef !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !30
  invoke void @_RNvMs5_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_17FilterDescription15all_unsupported(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #54
          to label %.body unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  ret void

bb.k:                                             ; preds = %bb.d, %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan28handle_child_pushdown_resultCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(416) %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(880) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource4sink12DataSinkExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(416) %0) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !30, !noundef !30 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @1739, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1740, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @1739, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #24 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !62, !alias.scope !34140, !noundef !30 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit [
    i64 1, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !34140, !nonnull !30, !noundef !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !34140, !nonnull !30, !align !35, !noundef !30
  br label %_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ @490, %bb.c ], [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1741, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #22 {
bb.a:
  ret { ptr, i64 } { ptr @1739, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #22 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1742, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher10write_i128Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i128 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34143
  store i128 %1, ptr %i.a, align 16, !noalias !34143
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34143
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher10write_u128Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i128 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 %1, ptr %i.a, align 16
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34146
  store i64 %1, ptr %i.a, align 8, !noalias !34146
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34146
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34149
  store i64 %1, ptr %i.a, align 8, !noalias !34149
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34149
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_i8Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i8 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34152
  store i8 %1, ptr %i.a, align 1, !noalias !34152
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34152
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i8 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i16Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i16 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34155
  store i16 %1, ptr %i.a, align 2, !noalias !34155
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34155
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i32Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34158
  store i32 %1, ptr %i.a, align 4, !noalias !34158
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34158
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_i64Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34161
  store i64 %1, ptr %i.a, align 8, !noalias !34161
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34161
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u16Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i16 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %1, ptr %i.a, align 2
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u32Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCslWI3gPmPTFt_20datafusion_functions8datetime7planner23DatetimeFunctionPlannerNtNtCs8VI8w5SIoU4_15datafusion_expr7planner11ExprPlanner24plan_compound_identifierCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable_or_null(56) %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
.split16:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34174
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 75, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !34174
  %i.g = load i64, ptr %i.a, align 8, !range !34, !noalias !34174, !noundef !30
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !31, !noalias !34174, !noundef !30 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.a, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.a:                                             ; preds = %.split16
  %i.l = load i64, ptr %i.k, align 8, !noalias !34174
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #55, !noalias !34174
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split16
  %i.m = load ptr, ptr %i.k, align 8, !noalias !34174, !nonnull !30, !noundef !30 ; 2 uses
  %i.n = icmp ugt i64 %i.j, 74
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(75) @1743, i64 range(i64 0, -9223372036854775808) 75, i1 false), !noalias !34175
  store i64 %i.j, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx26, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 75, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

end_hunk_2
