inline.NumInlined: 6560
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB33_5ErrorEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00NCB40_s5_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake:bb.a
  %i.km = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_0010___CALLSITE, align 8, !noalias !10595, !nonnull !4, !align !90, !noundef !4 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !10524, !nonnull !4, !noundef !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !10524, !noundef !4
  store i64 1, ptr %i.b, align 8, !noalias !10595
  store ptr %i.ko, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !10595
  store i64 %i.kq, ptr %.sroa.5.0..sroa_idx.i108.i, align 8, !noalias !10595
  %i.kr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc110.i unwind label %bb.df, !noalias !10524 ; 2 uses

.noexc110.i:                                      ; preds = %bb.dd
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 2 uses
  %i.kt = extractvalue { ptr, ptr } %i.kr, 1      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !invariant.load !4, !noalias !10524, !nonnull !4
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #57
          to label %.noexc111.i unwind label %bb.df, !noalias !10524, !inline_history !10598

.noexc111.i:                                      ; preds = %.noexc110.i
  br i1 %i.kw, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %.noexc111.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.km, ptr noundef nonnull %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.dg unwind label %bb.df, !noalias !10524

bb.df:                                            ; preds = %bb.de, %.noexc110.i, %bb.dd, %bb.db
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10524
  br label %bb.dk

bb.dg:                                            ; preds = %bb.de, %.noexc111.i, %bb.dc, %.noexc109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10524
  br label %bb.da

bb.dh:                                            ; preds = %bb.dk, %bb.di
  %.pn33.i = phi { ptr, i32 } [ %i.ky, %bb.di ], [ %.pn30.pn.i, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10524
  br label %.body88.i

bb.di:                                            ; preds = %bb.da
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10524
  br label %bb.dv

bb.dk:                                            ; preds = %bb.df, %bb.cy, %bb.cv, %bb.cs, %bb.cn, %bb.cl
  %.pn30.pn.i = phi { ptr, i32 } [ %i.kx, %bb.df ], [ %i.js, %bb.cs ], [ %i.jk, %bb.cl ], [ %i.kf, %bb.cy ], [ %i.kc, %bb.cv ], [ %i.jm, %bb.cn ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.z) #51
          to label %bb.dh unwind label %bb.cc, !noalias !10524

bb.dl:                                            ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #53, !noalias !10524
  unreachable

bb.dm:                                            ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #53, !noalias !10524
  unreachable

bb.dn:                                            ; preds = %bb.b
  call void @_RNvXs0_NtNtCs8CRAYtH5WmW_12futures_util6stream4iterINtB5_4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.kz = load i64, ptr %i.ac, align 8, !range !1129, !noundef !4 ; 2 uses
  switch i64 %i.kz, label %bb.dp [
    i64 -9223372036854775806, label %bb.du
    i64 -9223372036854775807, label %.loopexit
  ]

bb.do:                                            ; preds = %bb.ds, %bb.dt
  %i.la = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %1, align 8, !noalias !10599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.433, i64 120, i1 false)
  br label %common.resume

bb.dp:                                            ; preds = %bb.dn
  store i64 %i.kz, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_0INtB4_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2Y_5ErrorEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %.sroa.433, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.ab)
  %i.lb = load i64, ptr %1, align 8, !range !10, !noalias !10599, !noundef !4
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ld = load i8, ptr %i.ah, align 8, !range !239, !noalias !10599, !noundef !4
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.dr, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12

bb.dr:                                            ; preds = %bb.dq
  %i.lf = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !10602, !noalias !10599, !noundef !4
  %.not.i.i.i14 = icmp eq i64 %i.lf, -9223372036854775808
  br i1 %.not.i.i.i14, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ag)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12 unwind label %bb.do

bb.dt:                                            ; preds = %bb.dr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.ai)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12 unwind label %bb.do

_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12: ; preds = %bb.dq, %bb.dp, %bb.ds, %bb.dt
  store i64 1, ptr %1, align 8, !noalias !10599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ag, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.433, i64 120, i1 false)
  br label %.backedge

.loopexit:                                        ; preds = %bb.dn, %bb.dw
  %.sroa.0.0 = phi i64 [ -9223372036854775790, %bb.dw ], [ -9223372036854775789, %bb.dn ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  br label %bb.dx

bb.du:                                            ; preds = %bb.dn
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.dx

bb.dv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i87.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string8CapturesECs7p2uQeJxui2_9deltalake.exit.i, %bb.dj
  %i.lg = phi i64 [ -9223372036854775789, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsonPGffhQyS_5regex5regex6string8CapturesECs7p2uQeJxui2_9deltalake.exit.i ], [ -9223372036854775789, %bb.dj ], [ %.sroa.043.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.043.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.644.i, i64 24, i1 false)
  store i8 1, ptr %i.ah, align 8, !noalias !10524
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.644.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 0, ptr %1, align 8, !noalias !10605
  %.not9 = icmp eq i64 %i.lg, -9223372036854775789
  br i1 %.not9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB1s_5ErrorEEECs7p2uQeJxui2_9deltalake.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB1s_5ErrorEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB1s_5ErrorEEECs7p2uQeJxui2_9deltalake.exit, %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00EE3setCs7p2uQeJxui2_9deltalake.exit12
  %.be = xor i1 %i.bl, true
  br label %bb.b

bb.dx:                                            ; preds = %bb.du, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB33_5ErrorEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s5_00NCB40_s5_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !10, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXs0_NtNtCs8CRAYtH5WmW_12futures_util6stream4iterINtB5_4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.i = add i64 %i.g, %i.b                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.g
  %narrow = select i1 %i.h, i1 %i.j, i1 false
  %.sroa.02.0 = zext i1 %narrow to i64
  %.sroa.43.0 = select i1 %i.h, i64 %i.i, i64 undef
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.43.0, ptr %i.l, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10filter_mapINtB5_9FilterMapINtNtB9_4once4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB1G_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB3x_yEEE5build0ENCNCB1D_s_00NCB1D_s_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.435 = alloca [144 x i8], align 16        ; 3 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.2.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %.pre = load i128, ptr %1, align 16, !range !10608
  %extract.t56 = trunc nuw i128 %.pre to i1
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit21, %bb.a
  %.off0 = phi i1 [ %extract.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit21 ], [ %extract.t56, %bb.a ] ; 2 uses
  br i1 %.off0, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 16, !range !239, !noalias !10609, !noundef !4
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Cs7p2uQeJxui2_9deltalake.exit
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #53, !noalias !10609
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #53, !noalias !10609
  unreachable

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  %3 = load <2 x i64>, ptr %i.h, align 16
  %.sroa.524.0.copyload26.a = load i64, ptr %i.h, align 16 ; 2 uses
  store i8 1, ptr %i.g, align 16, !noalias !10609
  %i.j = icmp eq i64 %.sroa.524.0.copyload26.a, 4
  br i1 %i.j, label %7, label %bb.k

bb.f:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs8CRAYtH5WmW_12futures_util6stream4onceINtB4_4OnceNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB12_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2T_yEEE5build0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.b, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.k = load i64, ptr %i.e, align 16, !range !1247, !noundef !4 ; 2 uses
  switch i64 %i.k, label %bb.g [
    i64 5, label %4
    i64 4, label %.loopexit
  ]

4:                                                ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %5, align 16
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false)
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx7, align 16
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx9, align 8
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtBH_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2x_yEEE5builds_0INtB4_6FnMut1IB2x_INtNtB2B_6result6ResultB27_NtNtBN_6errors15DeltaTableErrorEEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %.sroa.435, ptr noalias noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(128) %i.a)
  %i.l = load i128, ptr %1, align 16, !range !10608, !noalias !10612, !noundef !4
  %i.m = icmp eq i128 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i8, ptr %i.g, align 16, !range !239, !noalias !10612, !noundef !4
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.i, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16

bb.i:                                             ; preds = %bb.h
  %i.p = load i64, ptr %i.h, align 16, !range !243, !alias.scope !10615, !noalias !10612, !noundef !4
  %i.q = icmp eq i64 %i.p, 3
  br i1 %i.q, label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1s_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.f)
          to label %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16 unwind label %common.resume

common.resume:                                    ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i128 1, ptr %1, align 16, !noalias !10612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.f, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.435, i64 144, i1 false)
  resume { ptr, i32 } %i.r

_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16: ; preds = %bb.i, %bb.h, %bb.g, %bb.j
  store i128 1, ptr %1, align 16, !noalias !10612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.f, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.435, i64 144, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit21

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit21: ; preds = %bb.k, %_RNvMs5_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinQINtNtB7_6option6OptionNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB18_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlIBG_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBG_yEEE5builds_00EE3setCs7p2uQeJxui2_9deltalake.exit16
  %extract.t = xor i1 %.off0, true
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.l
  %6 = phi <2 x i64> [ %3, %bb.l ], [ <i64 3, i64 undef>, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %6, ptr %.sroa.5.0..sroa_idx, align 16
  br label %bb.m

7:                                                ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Cs7p2uQeJxui2_9deltalake.exit
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 4, ptr %8, align 16
  br label %bb.m

bb.k:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB6_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEEE5builds_00Cs7p2uQeJxui2_9deltalake.exit
  store i128 0, ptr %1, align 16, !noalias !10618
  %.not13 = icmp eq i64 %.sroa.524.0.copyload26.a, 3
  br i1 %.not13, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlIBH_INtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIBH_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEECs7p2uQeJxui2_9deltalake.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.f, i64 112, i1 false)
  br label %.loopexit

bb.m:                                             ; preds = %4, %7, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB30_8Snapshot12commit_infos0s0_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([912 x i8]) align 8 captures(none) dereferenceable(912) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 3 uses
  %.sroa.55 = alloca [904 x i8], align 8          ; 4 uses
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtCs8CRAYtH5WmW_12futures_util6stream4iterINtB5_4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !3, !noundef !4 ; 3 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775807
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  call void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtBJ_8Snapshot12commit_infos0s0_0INtB4_6FnMut1NtCsjyY8HP3IvQ6_12object_store10ObjectMetaE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([904 x i8]) align 8 captures(address) dereferenceable(904) %.sroa.55, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ 1, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(904) %.sroa.55.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(904) %.sroa.55, i64 904, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB30_8Snapshot12commit_infos0s0_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs0_NtNtCs8CRAYtH5WmW_12futures_util6stream4iterINtB5_4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hintCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns7MapOkFnNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00EEB2W_9poll_nextB5U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2s_5ErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i64, ptr %i.d, align 8, !range !1129, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %i.f, -9223372036854775806
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  call void @_RNvXsb_NtCs8CRAYtH5WmW_12futures_util3fnsINtB5_7MapOkFnNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00EINtB5_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2z_5ErrorEE8call_mutBZ_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.b)
  %.sroa.04.0.copyload = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload, %bb.d ], [ -9223372036854775789, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4b_5ErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns7MapOkFnNCNCNvNtCs7p2uQeJxui2_9deltalake5utils10delete_dir00EEB2W_9size_hintB5U_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9size_hintCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4h_6errors15DeltaTableErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns7MapOkFnNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6V_13RawDeltaTable18get_add_file_sizes000EEB2W_9poll_nextB6V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 3 uses
  %i.b = alloca [96 x i8], align 16               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3 = alloca [88 x i8], align 8            ; 2 uses
  %i.d = alloca [96 x i8], align 16               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtBL_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB2y_6errors15DeltaTableErrorENtNtBL_6marker4SendEL_EENtB5_9TryStream13try_poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.f = load i64, ptr %i.d, align 16, !range !10621, !noundef !4 ; 3 uses
  %i.g = icmp eq i64 %i.f, -9223372036854775709
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775709, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i64 %i.f, -9223372036854775710
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.f, ptr %i.b, align 16
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3, i64 88, i1 false)
  call void @_RNvXsb_NtCs8CRAYtH5WmW_12futures_util3fnsINtB5_7MapOkFnNCNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB13_13RawDeltaTable18get_add_file_sizes000EINtB5_6FnMut1INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB37_6errors15DeltaTableErrorEE8call_mutB13_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.b)
  %.sroa.04.0.copyload = load i64, ptr %i.a, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload, %bb.d ], [ -9223372036854775710, %bb.c ]
  store i64 %.sroa.04.0, ptr %0, align 16
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 5 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !90, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !90, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10625)
  %i.f = load ptr, ptr %.val1, align 8, !alias.scope !10625, !noalias !10628, !nonnull !4, !align !90, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %2, i64 328, i1 false), !noalias !10633
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !10625, !noalias !10628, !nonnull !4, !align !90, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10625, !noalias !10628, !nonnull !4, !align !90, !noundef !4
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.b, !noalias !10634

common.resume.i:                                  ; preds = %bb.f, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #44, !noalias !10633
  br label %common.resume.i

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10632
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #44, !noalias !10633
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !10634 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10635)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.l, label %bb.c, label %bb.e

end_hunk_0
