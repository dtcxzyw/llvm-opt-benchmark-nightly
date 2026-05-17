inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files10find_files00B9_:bb.a
  %i.ul = load i8, ptr %i.uk, align 1, !range !178, !noundef !4
  %i.um = trunc nuw i8 %i.ul to i1
  br i1 %i.um, label %bb.kr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92: ; preds = %.invoke, %bb.kz, %bb.kr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit81, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.aw, i64 96, i1 false)
  br label %common.ret

bb.kr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit78
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16276)
  call void @llvm.experimental.noalias.scope.decl(metadata !16279)
  %i.uo = load ptr, ptr %i.un, align 16, !alias.scope !16282, !nonnull !4, !noundef !4
  %i.up = atomicrmw sub ptr %i.uo, i64 1 release, align 8, !noalias !16282
  %i.uq = icmp eq i64 %i.up, 1
  br i1 %i.uq, label %.invoke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94: ; preds = %bb.lc, %bb.ld, %bb.la, %bb.lb, %bb.kt, %bb.ku, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit, %bb.ky, %bb.ks, %bb.kq
  %.pn47 = phi { ptr, i32 } [ %i.ur, %bb.ks ], [ %i.ug, %bb.kt ], [ %i.uw, %bb.ky ], [ %i.uw, %bb.la ], [ %.pn44.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ug, %bb.kq ], [ %i.ug, %bb.ku ], [ %i.uw, %bb.lb ], [ %.pn44.pn, %bb.ld ], [ %.pn44.pn, %bb.lc ]
  store i8 2, ptr %i.bk, align 8
  resume { ptr, i32 } %.pn47

bb.ks:                                            ; preds = %.invoke
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

bb.kt:                                            ; preds = %bb.kq
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16283)
  call void @llvm.experimental.noalias.scope.decl(metadata !16286)
  %i.ut = load ptr, ptr %i.us, align 16, !alias.scope !16289, !nonnull !4, !noundef !4
  %i.uu = atomicrmw sub ptr %i.ut, i64 1 release, align 8, !noalias !16289
  %i.uv = icmp eq i64 %i.uu, 1
  br i1 %i.uv, label %bb.ku, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

bb.ku:                                            ; preds = %bb.kt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.us) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94 unwind label %bb.t

bb.kv:                                            ; preds = %bb.kn, %bb.kg
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.kn ], [ %.pn5, %bb.kg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files9FindFilesEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.az) #48
          to label %bb.kw unwind label %bb.t

bb.kw:                                            ; preds = %bb.js, %bb.jz, %bb.g, %bb.kv
  %.pn12.pn = phi { ptr, i32 } [ %.pn9.pn, %bb.kv ], [ %i.tt, %bb.jz ], [ %i.tn, %bb.js ], [ %i.bv, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.c

bb.kx:                                            ; preds = %bb.ka
  %.sroa.3194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.3194.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.6191, i64 64, i1 false)
  %.sroa.2193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3190, i64 24, i1 false)
  store i64 %.sroa.0182.1217, ptr %i.aw, align 16, !alias.scope !16290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.jl

bb.ky:                                            ; preds = %bb.jm
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.uy = load i8, ptr %i.ux, align 1, !range !178, !noundef !4
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.la, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit81: ; preds = %bb.jl, %bb.jm
  %i.va = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.vb = load i8, ptr %i.va, align 1, !range !178, !noundef !4
  %i.vc = trunc nuw i8 %i.vb to i1
  br i1 %i.vc, label %bb.kz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92

bb.kz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit81
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16294)
  call void @llvm.experimental.noalias.scope.decl(metadata !16297)
  %i.ve = load ptr, ptr %i.vd, align 16, !alias.scope !16300, !nonnull !4, !noundef !4
  %i.vf = atomicrmw sub ptr %i.ve, i64 1 release, align 8, !noalias !16300
  %i.vg = icmp eq i64 %i.vf, 1
  br i1 %i.vg, label %.invoke, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92

.invoke:                                          ; preds = %bb.kz, %bb.kr
  %i.vh = phi ptr [ %i.un, %bb.kr ], [ %i.vd, %bb.kz ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vh) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit92 unwind label %bb.ks

bb.la:                                            ; preds = %bb.ky
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16301)
  call void @llvm.experimental.noalias.scope.decl(metadata !16304)
  %i.vj = load ptr, ptr %i.vi, align 16, !alias.scope !16307, !nonnull !4, !noundef !4
  %i.vk = atomicrmw sub ptr %i.vj, i64 1 release, align 8, !noalias !16307
  %i.vl = icmp eq i64 %i.vk, 1
  br i1 %i.vl, label %bb.lb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

bb.lb:                                            ; preds = %bb.la
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vi) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94 unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 281
  %i.vn = load i8, ptr %i.vm, align 1, !range !178, !noundef !4
  %i.vo = trunc nuw i8 %i.vn to i1
  br i1 %i.vo, label %bb.lc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

bb.lc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16308)
  call void @llvm.experimental.noalias.scope.decl(metadata !16311)
  %i.vq = load ptr, ptr %i.vp, align 16, !alias.scope !16314, !nonnull !4, !noundef !4
  %i.vr = atomicrmw sub ptr %i.vq, i64 1 release, align 8, !noalias !16314
  %i.vs = icmp eq i64 %i.vr, 1
  br i1 %i.vs, label %bb.ld, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94

bb.ld:                                            ; preds = %bb.lc
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.vp) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit94 unwind label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00B9_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [304 x i8], align 16              ; 11 uses
  %i.i = alloca [296 x i8], align 8               ; 8 uses
  %i.j = alloca [96 x i8], align 16               ; 32 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.8351 = alloca [24 x i8], align 8         ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3344 = alloca [24 x i8], align 8         ; 3 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [384 x i8], align 8               ; 5 uses
  %i.s = alloca [448 x i8], align 8               ; 4 uses
  %i.t = alloca [448 x i8], align 8               ; 8 uses
  %.sroa.8319 = alloca [40 x i8], align 8         ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 10 uses
  %i.v = alloca [112 x i8], align 16              ; 6 uses
  %i.w = alloca [112 x i8], align 16              ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.8295 = alloca [40 x i8], align 8         ; 3 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %i.aa = alloca [56 x i8], align 8               ; 8 uses
  %.sroa.5289 = alloca [48 x i8], align 16        ; 2 uses
  %.sroa.3288 = alloca [104 x i8], align 8        ; 3 uses
  %i.ab = alloca [160 x i8], align 16             ; 8 uses
  %i.ac = alloca [40 x i8], align 8               ; 5 uses
  %i.ad = alloca [112 x i8], align 16             ; 5 uses
  %i.ae = alloca [112 x i8], align 16             ; 6 uses
  %i.af = alloca [240 x i8], align 16             ; 13 uses
  %i.ag = alloca [240 x i8], align 16             ; 6 uses
  %i.ah = alloca [240 x i8], align 16             ; 6 uses
  %i.ai = alloca [240 x i8], align 16             ; 6 uses
  %.sroa.0284 = alloca [584 x i8], align 16       ; 8 uses
  %i.aj = alloca [160 x i8], align 8              ; 13 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.8260 = alloca [24 x i8], align 8         ; 3 uses
  %i.al = alloca [48 x i8], align 8               ; 5 uses
  %i.am = alloca [64 x i8], align 8               ; 5 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [96 x i8], align 16              ; 8 uses
  %i.aq = alloca [96 x i8], align 16              ; 9 uses
  %.sroa.9226 = alloca [40 x i8], align 8         ; 3 uses
  %i.ar = alloca [40 x i8], align 8               ; 14 uses
  %i.as = alloca [96 x i8], align 16              ; 8 uses
  %i.at = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.7214 = alloca [72 x i8], align 8         ; 4 uses
  %.sroa.11207 = alloca [72 x i8], align 8        ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !range !2678, !noundef !4
  switch i8 %i.av, label %default.unreachable434 [
    i8 0, label %bb.b
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

default.unreachable434:                           ; preds = %.noexc, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 297
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 302
  store i8 0, ptr %3, align 2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 301
  store i8 0, ptr %4, align 1
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ay = load ptr, ptr %i.ax, align 16, !nonnull !4, !align !18, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = invoke { ptr, ptr } @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB4_13EagerSnapshot10file_views(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay, ptr noundef nonnull %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @310, ptr noundef null)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0284)
  br label %bb.cs

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  br label %bb.et

bb.e:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit191

bb.f:                                             ; preds = %bb.b
  %i.bc = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.ba, 1      ; 2 uses
  %i.be = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @647)
          to label %bb.i unwind label %bb.g, !noalias !16315 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNCNvNtNtB3O_16delta_datafusion10find_files15find_files_scan000EEB3O_(ptr nonnull %i.bc, ptr nonnull readonly align 8 dereferenceable(40) %i.bd) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit191 unwind label %bb.h, !noalias !16322

bb.h:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !16315
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.bh = extractvalue { i64, i64 } %i.be, 0
  %i.bi = extractvalue { i64, i64 } %i.be, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.bc, ptr %i.bj, align 16
  %.sroa.8199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.bd, ptr %.sroa.8199.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false)
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.bh, ptr %.sroa.10200.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %i.bi, ptr %.sroa.11.0..sroa_idx, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

bb.k:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #52
  unreachable

.loopexit:                                        ; preds = %.noexc117, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11207)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4l_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNCNvNtNtB4l_16delta_datafusion10find_files15find_files_scan000EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB2w_6string6StringNtNtNtB4j_6models7actions3AddEEEB4l_(ptr noalias noundef align 8 dereferenceable(64) %i.bk) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB2l_.exit191 unwind label %bb.bv

bb.m:                                             ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11207)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.837.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %.sroa.539.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.842.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br label %.noexc117

.noexc117:                                        ; preds = %bb.o, %bb.m
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtNtB9_10try_stream11into_stream10IntoStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1V_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4h_6errors15DeltaTableErrorENtNtB1V_6marker4SendEL_EEEINtNtBb_3fns7MapOkFnNCNCNCNvNtNtB4h_16delta_datafusion10find_files15find_files_scan000EEB2W_9poll_nextB4h_(ptr noalias noundef nonnull sret([304 x i8]) align 16 captures(none) dereferenceable(304) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.noexc117
  %i.bn = load i64, ptr %i.h, align 16, !range !1127, !noalias !16328, !noundef !4
  switch i64 %i.bn, label %default.unreachable434 [
    i64 3, label %.thread
    i64 2, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ]

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

bb.n:                                             ; preds = %.noexc
  %i.bo = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @647)
          to label %.thread361 unwind label %.loopexit.split-lp ; 2 uses

.thread361:                                       ; preds = %bb.n
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  %.sroa.9203.8.copyload = load i64, ptr %i.bl, align 16, !alias.scope !16330, !noalias !16331
  %.sroa.10206.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.sroa.10206.8.copyload = load i64, ptr %.sroa.10206.8..sroa_idx, align 8, !alias.scope !16330, !noalias !16331
  %.sroa.11207.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11207, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11207.8..sroa_idx, i64 32, i1 false), !alias.scope !16330, !noalias !16331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false), !noalias !16332
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx.i, align 16, !alias.scope !16326, !noalias !16332
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %i.bq, ptr %.sroa.553.0..sroa_idx.i, align 8, !alias.scope !16326, !noalias !16332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.o:                                             ; preds = %.noexc
  %.sroa.736.0.copyload.i = load i64, ptr %.sroa.736.0..sroa_idx.i, align 16, !noalias !16328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !16328
  store i64 %.sroa.736.0.copyload.i, ptr %.sroa.539.0..sroa_idx40.i, align 8, !noalias !16328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.842.0..sroa_idx43.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.837.0..sroa_idx.i, i64 264, i1 false), !noalias !16328
  invoke void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtB3q_6option6OptionB4a_EEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(296) %i.i)
          to label %.noexc117 unwind label %.loopexit

bb.p:                                             ; preds = %.noexc
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.736.0..sroa_idx.i, align 16, !noalias !16328
  %.sroa.0201.0.copyload202 = load i64, ptr %i.br, align 16, !noalias !16333 ; 2 uses
  %.sroa.9203.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.9203.0.copyload205 = load i64, ptr %.sroa.9203.0..sroa_idx204, align 8, !noalias !16333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11207, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.837.0..sroa_idx.i, i64 72, i1 false), !noalias !16333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bs = icmp eq i64 %.sroa.0201.0.copyload202, -9223372036854775710
  br i1 %i.bs, label %bb.q, label %bb.r

common.ret:                                       ; preds = %bb.fz, %bb.ev, %bb.cu, %bb.q
  %.sink = phi i8 [ 1, %bb.fz ], [ 5, %bb.ev ], [ 4, %bb.cu ], [ 3, %bb.q ]
  store i8 %.sink, ptr %i.au, align 8
  ret void

bb.q:                                             ; preds = %.thread, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11207)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.r:                                             ; preds = %.thread361, %bb.p
  %.sroa.0201.1367 = phi i64 [ -9223372036854775711, %.thread361 ], [ %.sroa.0201.0.copyload202, %bb.p ] ; 2 uses
  %.sroa.9203.1366 = phi i64 [ %.sroa.9203.8.copyload, %.thread361 ], [ %.sroa.9203.0.copyload205, %bb.p ] ; 2 uses
  %.sroa.10206.1365 = phi i64 [ %.sroa.10206.8.copyload, %.thread361 ], [ %.sroa.7.0.copyload.i, %bb.p ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7214, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11207, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11207)
  call void @llvm.experimental.noalias.scope.decl(metadata !16334)
  %.val.i = load ptr, ptr %i.bk, align 16, !alias.scope !16334 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val1.i = load ptr, ptr %i.bt, align 8, !alias.scope !16334, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.bu = load ptr, ptr %.val1.i, align 8, !invariant.load !4, !noalias !16334 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.bu(ptr noundef nonnull %.val.i)
          to label %bb.t unwind label %bb.v, !noalias !16334

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !16, !invariant.load !4, !noalias !16334 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNCNvNtNtB3O_16delta_datafusion10find_files15find_files_scan000EEB3O_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !3, !invariant.load !4, !noalias !16334
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #42, !noalias !16334
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNCNvNtNtB3O_16delta_datafusion10find_files15find_files_scan000EEB3O_.exit.i

bb.v:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !16, !invariant.load !4, !noalias !16334 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.qx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit546: ; preds = %bb.rb, %bb.rc, %bb.qx, %bb.qu
  %.pn255 = phi { ptr, i32 } [ %i.alv, %bb.qx ], [ %i.alh, %bb.qu ], [ %i.alh, %bb.rc ], [ %i.alh, %bb.rb ] ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.alu = load i64, ptr %i.alt, align 16, !range !768, !noundef !4
  %.not257 = icmp eq i64 %i.alu, -9223372036854775807
  br i1 %.not257, label %bb.mm, label %bb.rd

bb.qx:                                            ; preds = %bb.qw
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit546

bb.qy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 589
  %i.alx = load i8, ptr %i.alw, align 1, !range !178, !noundef !4
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %bb.ra, %bb.qy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit
  store i8 0, ptr %i.all, align 4
  br label %bb.mo

bb.ra:                                            ; preds = %bb.qy
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.alo)
          to label %bb.qz unwind label %bb.mn

bb.rb:                                            ; preds = %bb.qu
  %i.alz = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ama = load i64, ptr %i.alz, align 16, !range !59, !alias.scope !18524, !noundef !4
  %i.amb = icmp eq i64 %i.ama, 37
  br i1 %i.amb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit546, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.alz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit546 unwind label %bb.z

bb.rd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit546
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 589
  %i.amd = load i8, ptr %i.amc, align 1, !range !178, !noundef !4
  %i.ame = trunc nuw i8 %i.amd to i1
  br i1 %i.ame, label %bb.re, label %bb.mm

bb.re:                                            ; preds = %bb.rd
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.alt) #48
          to label %bb.mm unwind label %bb.z

bb.rf:                                            ; preds = %.body525
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 640
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amf) #48
          to label %.body403 unwind label %bb.z

bb.rg:                                            ; preds = %.body403
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.amg) #48
          to label %.body538 unwind label %bb.z

bb.rh:                                            ; preds = %bb.pc
  %i.amh = getelementptr inbounds nuw i8, ptr %1, i64 587
  %i.ami = load i8, ptr %i.amh, align 1, !range !178, !noundef !4
  %i.amj = trunc nuw i8 %i.ami to i1
  br i1 %i.amj, label %bb.ri, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit548

bb.ri:                                            ; preds = %bb.rh
  %i.amk = atomicrmw sub ptr %i.aiy, i64 1 release, align 8, !noalias !18527
  %i.aml = icmp eq i64 %i.amk, 1
  br i1 %i.aml, label %bb.rj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit548

bb.rj:                                            ; preds = %bb.ri
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aix) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EECs14kWLkQVSKO_14deltalake_core.exit548 unwind label %bb.z

bb.rk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs14kWLkQVSKO_14deltalake_core.exit364
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18532)
  call void @llvm.experimental.noalias.scope.decl(metadata !18535)
  %i.amn = load ptr, ptr %i.amm, align 8, !alias.scope !18538, !nonnull !4, !noundef !4
  %i.amo = atomicrmw sub ptr %i.amn, i64 1 release, align 8, !noalias !18538
  %i.amp = icmp eq i64 %i.amo, 1
  br i1 %i.amp, label %bb.rl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit550

bb.rl:                                            ; preds = %bb.rk
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.amm) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit550 unwind label %bb.z

bb.rm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit550
  %i.amq = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18539)
  call void @llvm.experimental.noalias.scope.decl(metadata !18542)
  %i.amr = load ptr, ptr %i.amq, align 16, !alias.scope !18545, !nonnull !4, !noundef !4
  %i.ams = atomicrmw sub ptr %i.amr, i64 1 release, align 8, !noalias !18545
  %i.amt = icmp eq i64 %i.ams, 1
  br i1 %i.amt, label %bb.rn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit552

bb.rn:                                            ; preds = %bb.rm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.amq) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit552 unwind label %bb.z

bb.ro:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit369
  %i.amu = getelementptr inbounds nuw i8, ptr %1, i64 512
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.amu) #48
          to label %bb.aa unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit372: ; preds = %bb.fs, %bb.ft
  %i.amv = getelementptr inbounds nuw i8, ptr %1, i64 588
  %i.amw = load i8, ptr %i.amv, align 4, !range !178, !noundef !4
  %i.amx = trunc nuw i8 %i.amw to i1
  br i1 %i.amx, label %bb.rp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit554

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit554: ; preds = %bb.rp, %bb.rq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit372
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.amz = load i64, ptr %i.amy, align 16, !range !768, !noundef !4
  %.not254 = icmp eq i64 %i.amz, -9223372036854775807
  br i1 %.not254, label %bb.mm, label %bb.rr

bb.rp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit372
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.anb = load i64, ptr %i.ana, align 16, !range !59, !alias.scope !18546, !noundef !4
  %i.anc = icmp eq i64 %i.anb, 37
  br i1 %i.anc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit554, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.ana)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit554 unwind label %bb.z

bb.rr:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core.exit554
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 589
  %i.ane = load i8, ptr %i.and, align 1, !range !178, !noundef !4
  %i.anf = trunc nuw i8 %i.ane to i1
  br i1 %i.anf, label %bb.rs, label %bb.mm

bb.rs:                                            ; preds = %bb.rr
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider15DeltaScanConfigEBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.amy) #48
          to label %bb.mm unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_20TableProviderBuilder5build0Bb_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 6 uses
  %i.c = alloca [96 x i8], align 16               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [168 x i8], align 8               ; 22 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = alloca [168 x i8], align 8               ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [168 x i8], align 8               ; 5 uses
  %i.k = alloca [168 x i8], align 8               ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [128 x i8], align 16              ; 18 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [168 x i8], align 8               ; 5 uses
  %i.p = alloca [168 x i8], align 8               ; 5 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [168 x i8], align 8               ; 8 uses
  %.sroa.8264 = alloca [40 x i8], align 8         ; 7 uses
  %i.s = alloca [168 x i8], align 8               ; 16 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 13 uses
  %i.x = alloca [88 x i8], align 8                ; 15 uses
  %i.y = alloca [88 x i8], align 8                ; 13 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [96 x i8], align 16              ; 8 uses
  %i.ab = alloca [8 x i8], align 8                ; 10 uses
  %i.ac = alloca [88 x i8], align 8               ; 15 uses
  %.sroa.3 = alloca [88 x i8], align 8            ; 3 uses
  %i.ad = alloca [96 x i8], align 16              ; 7 uses
  %i.ae = alloca [72 x i8], align 8               ; 5 uses
  %.sroa.9237 = alloca [72 x i8], align 8         ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 14 uses
  %i.ag = alloca [40 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8, !range !1165, !noundef !4
  switch i8 %i.ak, label %default.unreachable370 [
    i8 0, label %bb.c
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.b
  ]

default.unreachable370:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9237)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 841 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 845 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 846 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.16.0.copyload = load ptr, ptr %.sroa.16.0..sroa_idx, align 8 ; 3 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %.sroa.14.0..sroa_idx, align 8
  store <2 x ptr> %i.ap, ptr %i.ao, align 8
  store i8 1, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i64 %.sroa.9.0.copyload, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %.sroa.10.0.copyload, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.sroa.16.0.copyload, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %1, i64 208
  store ptr %.sroa.17.0.copyload, ptr %i.at, align 8
  store i8 1, ptr %i.am, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false)
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.al, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.0..sroa_idx, i64 56, i1 false)
  %.not.i = icmp eq ptr %.sroa.16.0.copyload, null
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18549)
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.17.0.copyload, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !3, !invariant.load !4, !noalias !18552
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = and i64 %i.ba, -16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.16.0.copyload, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18556)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.17.0.copyload, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !invariant.load !4, !alias.scope !18556, !noalias !18559, !nonnull !4
  %i.bg = invoke noundef nonnull align 8 ptr %i.bf(ptr noundef nonnull %i.bd) #51
          to label %.noexc unwind label %bb.e, !inline_history !18561

.noexc:                                           ; preds = %bb.d
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !18562, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 291
  %i.bj = load i8, ptr %i.bi, align 1, !range !178, !noalias !18562, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 294
  %i.bl = load i8, ptr %i.bk, align 2, !range !178, !noalias !18562, !noundef !4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %.noexc, %bb.c
  %.sink6.i = phi i8 [ %i.bj, %.noexc ], [ 1, %bb.c ]
  %.sink.i = phi i8 [ %i.bl, %.noexc ], [ 1, %bb.c ]
  store i64 -9223372036854775808, ptr %i.ax, align 8, !alias.scope !18549, !noalias !18563
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 1, ptr %i.bn, align 8, !alias.scope !18549, !noalias !18563
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 353
  store i8 %.sink6.i, ptr %i.bo, align 1, !alias.scope !18549, !noalias !18563
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 354
  store i8 %.sink.i, ptr %i.bp, align 2, !alias.scope !18549, !noalias !18563
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr null, ptr %i.bq, align 8, !alias.scope !18549, !noalias !18563
  store i8 1, ptr %i.al, align 1
  %i.br = load i64, ptr %i.au, align 8, !range !17, !noundef !4
  %.not = icmp eq i64 %i.br, -9223372036854775808
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.am, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i8 0, ptr %i.al, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false)
  invoke void @_RINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB6_15DeltaScanConfig21with_file_column_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringEBa_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.bs = load i64, ptr %i.aq, align 8, !range !1069, !noundef !4 ; 3 uses
  %.not20 = icmp eq i64 %i.bs, 2
  br i1 %.not20, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 1, ptr %i.al, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.h

bb.k:                                             ; preds = %bb.v, %bb.i
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %bb.v ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 841
  %i.bv = load i8, ptr %i.bu, align 1, !range !178, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.fb, label %bb.w

bb.l:                                             ; preds = %bb.h
  store i8 0, ptr %i.an, align 2
  %i.bx = load ptr, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  store i64 %i.bs, ptr %i.af, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.bx, ptr %i.by, align 8
  br label %bb.al

bb.m:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.ao, align 8, !alias.scope !18564, !noundef !4
  %.not.i109 = icmp eq ptr %i.bz, null
  br i1 %.not.i109, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB2_16DeltaTableConfigNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ae)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18567
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 80, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc111 unwind label %bb.t

.noexc111:                                        ; preds = %bb.o
  %i.ca = load i64, ptr %i.d, align 8, !range !58, !noalias !18567, !noundef !4
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !17, !noalias !18567, !noundef !4 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.p, label %bb.u, !prof !52

bb.p:                                             ; preds = %.noexc111
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !18567
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cd, i64 %i.cf) #50
          to label %.noexc112 unwind label %bb.t

.noexc112:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ch = trunc nuw i64 %.sroa.0.0.copyload to i1
  %spec.select3.i = select i1 %i.ch, i64 %.sroa.8.0.copyload, i64 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9237, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %.sroa.0.0.copyload, ptr %i.ci, align 8
  %.sroa.8236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %spec.select3.i, ptr %.sroa.8236.0..sroa_idx, align 8
  %.sroa.9237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9237.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9237, i64 72, i1 false)
  %.sroa.10238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.ao, ptr %.sroa.10238.0..sroa_idx, align 8
  %.sroa.11239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 456
  store ptr @310, ptr %.sroa.11239.0..sroa_idx, align 8
  %.sroa.13241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 832
  store i8 0, ptr %.sroa.13241.0..sroa_idx, align 8
  br label %bb.aa

bb.s:                                             ; preds = %bb.fq, %bb.fj, %bb.fd, %bb.dy, %bb.dw, %bb.at, %bb.fn, %bb.fk, %bb.ff, %bb.fb, %.body146, %bb.ef, %.body194, %bb.dm, %bb.cj, %bb.bt, %.body125, %.body131, %.body135, %bb.z
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

.body:                                            ; preds = %bb.ai, %bb.ag, %bb.z, %bb.q
  %.pn26 = phi { ptr, i32 } [ %i.cg, %bb.q ], [ %i.cv, %bb.z ], [ %i.dk, %bb.ai ], [ %i.dd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9237)
  br label %bb.v

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.noexc111
  %i.cl = load ptr, ptr %i.ce, align 8, !noalias !18567, !nonnull !4, !noundef !4 ; 2 uses
  %i.cm = icmp ugt i64 %i.cd, 79
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.cl, ptr noundef nonnull readonly align 1 dereferenceable(80) @423, i64 range(i64 0, -9223372036854775808) 80, i1 false), !noalias !18577
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 7, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.cd, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cl, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 80, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.e, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next15SnapshotWrapperEBO_.exit: ; preds = %bb.ch, %bb.cf, %bb.cg, %bb.ci, %bb.dv, %bb.ej, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 841 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !range !178, !noundef !4
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.em, label %bb.ek

bb.v:                                             ; preds = %.thread, %.body, %.body146, %bb.ei, %bb.t
  %.pn81 = phi { ptr, i32 } [ %i.iq, %bb.ei ], [ %.pn76.pn, %.body146 ], [ %.pn57.pn, %.thread ], [ %i.ck, %bb.t ], [ %.pn26, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.k

bb.w:                                             ; preds = %bb.e, %bb.fb, %bb.en, %bb.k
  %.pn84 = phi { ptr, i32 } [ %i.iw, %bb.en ], [ %.pn81.pn, %bb.fb ], [ %.pn81.pn, %bb.k ], [ %i.bm, %bb.e ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 841
end_hunk_1
begin_hunk_2_@_RNCNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB7_12MergeBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 2713
  %i.jo = load i8, ptr %i.jn, align 1, !range !178, !noundef !4
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 2727
  store i8 0, ptr %i.jp, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 2256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16305, ptr noundef nonnull align 16 dereferenceable(24) %i.jq, i64 24, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 2280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17306, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2714
  %i.jt = load i8, ptr %i.js, align 2, !range !178, !noundef !4
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 2392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13302, ptr noundef nonnull align 8 dereferenceable(24) %i.ju, i64 24, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14303, ptr noundef nonnull align 16 dereferenceable(24) %i.jv, i64 24, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store <4 x i8> zeroinitializer, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 2440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15304, ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10299, ptr noundef nonnull align 16 dereferenceable(16) %i.iw, i64 16, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 1776 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 16, !alias.scope !25373, !noundef !4
  %.not.i133 = icmp eq ptr %i.jz, null
  %..i = select i1 %.not.i133, ptr null, ptr %i.jy
  call void @llvm.experimental.noalias.scope.decl(metadata !25376)
  call void @llvm.experimental.noalias.scope.decl(metadata !25379)
  %.sroa.0287.2016..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0287, i64 2016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0287.2016..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %i.bd, i64 112, i1 false), !alias.scope !25381, !noalias !25383
  %.sroa.0287.1680..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0287, i64 1680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %.sroa.0287.1680..sroa_idx, ptr noundef nonnull align 16 dereferenceable(336) %i.bc, i64 336, i1 false), !alias.scope !25396, !noalias !25397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2160) %.sroa.0296, ptr noundef nonnull align 16 dereferenceable(2160) %.sroa.0287, i64 2160, i1 false), !alias.scope !25398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %.sroa.11300, ptr noundef nonnull align 16 dereferenceable(296) %.sroa.11291, i64 296, i1 false), !alias.scope !25398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0287)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11291)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2160) %i.gl, ptr noundef nonnull align 16 dereferenceable(2160) %.sroa.0296, i64 2160, i1 false)
  %.sroa.8297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4896
  store ptr %.val95, ptr %.sroa.8297.0..sroa_idx, align 16
  %.sroa.9298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4904
  store ptr %.val96, ptr %.sroa.9298.0..sroa_idx, align 8
  %.sroa.10299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10299.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10299, i64 16, i1 false)
  %.sroa.11300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %.sroa.11300.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(296) %.sroa.11300, i64 296, i1 false)
  %.sroa.12301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12301, i64 88, i1 false)
  %.sroa.13302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13302.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13302, i64 24, i1 false)
  %.sroa.14303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14303.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14303, i64 24, i1 false)
  %.sroa.15304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15304.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15304, i64 24, i1 false)
  %.sroa.16305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16305.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16305, i64 24, i1 false)
  %.sroa.17306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17306.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.17306, i64 24, i1 false)
  %.sroa.18307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5432
  store ptr %..i, ptr %.sroa.18307.0..sroa_idx, align 8
  %.sroa.20309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5480
  store i8 %i.jm, ptr %.sroa.20309.0..sroa_idx, align 8
  %.sroa.21310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5481
  store i8 %i.jo, ptr %.sroa.21310.0..sroa_idx, align 1
  %.sroa.22311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5482
  store i8 %i.jt, ptr %.sroa.22311.0..sroa_idx, align 2
  %.sroa.23312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5483
  store i8 0, ptr %.sroa.23312.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9315)
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 2736
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5329)
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 5483
  br label %bb.cv

bb.cl:                                            ; preds = %bb.gb, %.body144
  %.pn42 = phi { ptr, i32 } [ %i.sz, %bb.gb ], [ %eh.lpad-body145, %.body144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10299)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11300)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12301)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13302)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14303)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15304)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16305)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17306)
  br label %bb.co

bb.cm:                                            ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider25update_datafusion_session.exit
  %.sroa.8280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2283.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.8280.0..sroa_idx281, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.experimental.noalias.scope.decl(metadata !25402)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.iz, ptr %i.kc, align 16, !alias.scope !25405
  store i64 4, ptr %i.aw, align 16, !alias.scope !25407, !noalias !25402
  br label %bb.cn

bb.cn:                                            ; preds = %bb.hj, %bb.gi, %bb.cm
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 2720 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 16, !range !178, !noundef !4
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.hl, label %bb.hk

bb.co:                                            ; preds = %bb.hh, %bb.ci, %bb.cl
  %.pn44.pn = phi { ptr, i32 } [ %i.iy, %bb.ci ], [ %.pn42, %bb.cl ], [ %.pn40, %bb.hh ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 2720
  %i.kh = load i8, ptr %i.kg, align 16, !range !178, !noundef !4
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.kj, label %bb.hm

bb.cp:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.6276.16..sroa_idx277 = getelementptr inbounds nuw i8, ptr %.sroa.6276, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6276.16..sroa_idx277, ptr noundef nonnull align 16 dereferenceable(96) %i.kj, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.kk, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6276.16..sroa_idx277, i64 96, i1 false)
  store i64 4, ptr %i.aw, align 16, !alias.scope !25408, !noalias !25411
  br label %bb.al

bb.cq:                                            ; preds = %bb.bq
  %.sroa.2274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2274.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3272, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25413)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.0.0.i, ptr %i.kl, align 16, !alias.scope !25416
  store i64 4, ptr %i.aw, align 16, !alias.scope !25418, !noalias !25413
  br label %bb.al

bb.cr:                                            ; preds = %bb.ea, %bb.dz
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body144

.body144:                                         ; preds = %bb.fx, %bb.cr
  %i.kn = phi ptr [ %i.ko, %bb.cr ], [ %i.pf, %bb.fx ]
  %eh.lpad-body145 = phi { ptr, i32 } [ %i.km, %bb.cr ], [ %.pn22.i, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9315)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0EBO_(ptr noundef nonnull align 16 %i.kn) #48
          to label %bb.cl unwind label %bb.ao

bb.cs:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0296)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10299)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11300)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12301)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13302)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14303)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15304)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16305)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17306)
  %.phi.trans.insert349 = getelementptr inbounds nuw i8, ptr %1, i64 5483
  %.pre350 = load i8, ptr %.phi.trans.insert349, align 1, !range !1779, !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9315)
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 2736 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5329)
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 5483 ; 3 uses
  switch i8 %.pre350, label %default.unreachable375 [
    i8 0, label %bb.cv
    i8 1, label %bb.dz
    i8 2, label %bb.ea
    i8 3, label %bb.ct
    i8 4, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.eb

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !25419
  br label %bb.er

bb.cv:                                            ; preds = %.thread377, %bb.cs
  %i.kq = phi ptr [ %i.kb, %.thread377 ], [ %i.kp, %bb.cs ] ; 6 uses
  %i.kr = phi ptr [ %i.ka, %.thread377 ], [ %i.ko, %bb.cs ] ; 7 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 5497
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 5496
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 5488
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 5486
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 5484 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 5485 ; 3 uses
  store i32 16842752, ptr %i.ku, align 4, !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25419
  store i8 1, ptr %3, align 1, !noalias !25419
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 4752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ae, ptr noundef nonnull align 16 dereferenceable(112) %i.kw, i64 112, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25419
  store i8 1, ptr %4, align 8, !noalias !25419
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 4416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ad, ptr noundef nonnull align 16 dereferenceable(336) %i.kx, i64 336, i1 false), !noalias !25419
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 4928 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 4896
  %i.la = getelementptr i8, ptr %1, i64 4936      ; 2 uses
  %i.lb = load <2 x ptr>, ptr %i.kz, align 16, !noalias !25419
  store <2 x ptr> %i.lb, ptr %i.ky, align 16, !noalias !25419
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 4944 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 4864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.lc, ptr noundef nonnull align 16 dereferenceable(32) %i.ld, i64 32, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !25419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1680) %i.ac, ptr noundef nonnull align 16 dereferenceable(1680) %i.kr, i64 1680, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25419
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 4976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ab, ptr noundef nonnull align 16 dereferenceable(248) %i.le, i64 248, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25419
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 5224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %i.lf, i64 88, i1 false), !noalias !25419
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 5481
  %i.lh = load i8, ptr %i.lg, align 1, !range !178, !noalias !25419, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25419
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 5384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.li, i64 24, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25419
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 5408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 16 dereferenceable(24) %i.lj, i64 24, i1 false), !noalias !25419
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 5482
  %i.ll = load i8, ptr %i.lk, align 2, !range !178, !noalias !25419, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25419
  store <8 x i8> splat (i8 1), ptr %i.ks, align 16, !noalias !25419
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 5312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 16 dereferenceable(24) %i.lm, i64 24, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25419
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 5336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i64 24, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25419
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 5360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 16 dereferenceable(24) %i.lo, i64 24, i1 false), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 4912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.lp, i64 16, i1 false), !noalias !25419
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 5432
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !25419, !align !18, !noundef !4
  %i.ls = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !25419
  %i.lt = icmp ult i64 %i.ls, 3
  br i1 %i.lt, label %bb.cw, label %bb.df

bb.cw:                                            ; preds = %bb.cv
  %i.lu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute010___CALLSITE, i64 16) monotonic, align 8, !noalias !25419 ; 2 uses
  %i.lv = icmp ult i8 %i.lu, 3
  br i1 %i.lv, label %bb.cz, label %bb.cx, !prof !11936

bb.cx:                                            ; preds = %bb.cw
  %i.lw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute010___CALLSITE) #47
          to label %bb.cz unwind label %bb.cy, !noalias !25423

bb.cy:                                            ; preds = %bb.cx
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %.sroa.0.0.i.i = phi i8 [ %i.lu, %bb.cw ], [ %i.lw, %bb.cx ] ; 2 uses
  %i.ly = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ly, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lz = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute010___CALLSITE, align 8, !noalias !25419, !nonnull !4, !align !18, !noundef !4
  %i.ma = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lz, i8 noundef %.sroa.0.0.i.i)
          to label %bb.dc unwind label %bb.db, !noalias !25423

bb.db:                                            ; preds = %bb.da
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dc:                                            ; preds = %bb.da
  br i1 %i.ma, label %bb.dn, label %bb.df

bb.dd:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25419
  br label %bb.dy

bb.de:                                            ; preds = %bb.dl, %bb.df
  store i8 1, ptr %i.ku, align 4, !noalias !25419
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 5440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.mc, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !25419
  br label %bb.dt

bb.df:                                            ; preds = %bb.dc, %bb.cz, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !25419
  %i.md = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute010___CALLSITE, align 8, !noalias !25419, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  store i64 2, ptr %i.o, align 8, !alias.scope !25424, !noalias !25427
  %i.me = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.md, ptr %i.me, align 8, !alias.scope !25424, !noalias !25427
  %i.mf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !25419
  %.not.i139 = icmp eq i8 %i.mf, 0
  br i1 %.not.i139, label %bb.dg, label %bb.de

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25419
  %i.mg = getelementptr i8, ptr %1, i64 4968
  %.val31.i = load ptr, ptr %i.mg, align 8, !noalias !25419, !nonnull !4, !noundef !4
  %i.mh = getelementptr inbounds nuw i8, ptr %.val31.i, i64 88
  %i.mi = load ptr, ptr %i.mh, align 8, !noalias !25423, !nonnull !4, !noundef !4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1224
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !25423, !noundef !4
  store i64 %i.mk, ptr %i.l, align 8, !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !25419
  %.val25.i = load ptr, ptr %i.ky, align 16, !noalias !25419, !nonnull !4, !noundef !4
  %.val26.i = load ptr, ptr %i.la, align 8, !noalias !25419, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.val26.i, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !range !3, !invariant.load !4, !noalias !25423
  %i.mn = add nsw i64 %i.mm, -1
  %i.mo = and i64 %i.mn, -16
  %i.mp = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %.val26.i, i64 144
  %i.ms = load ptr, ptr %i.mr, align 8, !invariant.load !4, !noalias !25423, !nonnull !4
  %i.mt = invoke noundef nonnull align 8 ptr %i.ms(ptr noundef nonnull %i.mq)
          to label %bb.di unwind label %bb.dh, !noalias !25423

bb.dh:                                            ; preds = %bb.dg
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 48
  store ptr %i.mt, ptr %i.j, align 8, !noalias !25419
  store ptr %i.j, ptr %i.k, align 8, !noalias !25419
  store ptr @239, ptr %i.m, align 8, !noalias !25419
  %i.mw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @240, ptr %i.mw, align 8, !noalias !25419
  %i.mx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.mx, align 8, !noalias !25419
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @235, ptr %i.my, align 8, !noalias !25419
  %i.mz = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.k, ptr %i.mz, align 8, !noalias !25419
  %i.na = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @463, ptr %i.na, align 8, !noalias !25419
  store i64 1, ptr %i.n, align 8, !alias.scope !25429, !noalias !25432
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !25429, !noalias !25432
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !25429, !noalias !25432
  %i.nb = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.mv, ptr %i.nb, align 8, !alias.scope !25429, !noalias !25432
  %i.nc = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.dl unwind label %bb.dk, !noalias !25423 ; 0 uses

bb.dj:                                            ; preds = %bb.dk, %bb.dh
  %.pn.i140 = phi { ptr, i32 } [ %i.nd, %bb.dk ], [ %i.mu, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25419
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.o) #48
          to label %bb.dd unwind label %bb.dm, !noalias !25423

bb.dk:                                            ; preds = %bb.di
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dl:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !25419
  br label %bb.de

bb.dm:                                            ; preds = %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fn, %bb.fl, %bb.fj, %bb.fh, %bb.ff, %bb.fd, %bb.fb, %bb.fa, %bb.es, %.body.i138, %bb.dj
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !25423
  unreachable

bb.dn:                                            ; preds = %bb.dc
  %i.nf = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute010___CALLSITE, align 8, !noalias !25419, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !25419
  %i.ng = getelementptr i8, ptr %1, i64 4968
  %.val30.i = load ptr, ptr %i.ng, align 8, !noalias !25419, !nonnull !4, !noundef !4
  %i.nh = getelementptr inbounds nuw i8, ptr %.val30.i, i64 88
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !25423, !nonnull !4, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 1224
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !25423, !noundef !4
  store i64 %i.nk, ptr %i.r, align 8, !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !25419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25419
  %.val.i141 = load ptr, ptr %i.ky, align 16, !noalias !25419, !nonnull !4, !noundef !4
  %.val24.i = load ptr, ptr %i.la, align 8, !noalias !25419, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16
  %i.nm = load i64, ptr %i.nl, align 8, !range !3, !invariant.load !4, !noalias !25423
  %i.nn = add nsw i64 %i.nm, -1
  %i.no = and i64 %i.nn, -16
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i141, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %.val24.i, i64 144
  %i.ns = load ptr, ptr %i.nr, align 8, !invariant.load !4, !noalias !25423, !nonnull !4
  %i.nt = invoke noundef nonnull align 8 ptr %i.ns(ptr noundef nonnull %i.nq)
          to label %bb.dp unwind label %bb.do, !noalias !25423

bb.do:                                            ; preds = %bb.dn
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nf, i64 48
  store ptr %i.nt, ptr %i.p, align 8, !noalias !25419
  store ptr %i.p, ptr %i.q, align 8, !noalias !25419
  store ptr @239, ptr %i.s, align 8, !noalias !25419
  %i.nw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @240, ptr %i.nw, align 8, !noalias !25419
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.r, ptr %i.nx, align 8, !noalias !25419
  %i.ny = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @235, ptr %i.ny, align 8, !noalias !25419
  %i.nz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.q, ptr %i.nz, align 8, !noalias !25419
end_hunk_2
begin_hunk_3_@_RNCNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core10operations5mergeNtB7_12MergeBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
bb.ez:                                            ; preds = %bb.fa, %bb.dx
  store i8 0, ptr %i.pb, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !25419
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 5484
  %i.rg = load i8, ptr %i.rf, align 4, !range !178, !noalias !25419, !noundef !4
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.fb, label %bb.dy

bb.fa:                                            ; preds = %bb.dx
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00EBQ_(ptr noundef nonnull align 16 %i.i) #48
          to label %bb.ez unwind label %bb.dm, !noalias !25423

bb.fb:                                            ; preds = %bb.ez
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 5440
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ri) #48
          to label %bb.dy unwind label %bb.dm, !noalias !25423

bb.fc:                                            ; preds = %bb.fd, %bb.dy
  store i8 0, ptr %i.ph, align 2, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25419
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 5487 ; 2 uses
  %i.rk = load i8, ptr %i.rj, align 1, !range !178, !noalias !25419, !noundef !4
  %i.rl = trunc nuw i8 %i.rk to i1
  br i1 %i.rl, label %bb.ff, label %bb.fe

bb.fd:                                            ; preds = %bb.dy
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.v) #48
          to label %bb.fc unwind label %bb.dm, !noalias !25423

bb.fe:                                            ; preds = %bb.ff, %bb.fc
  store i8 0, ptr %i.rj, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25419
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 5488 ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 16, !range !178, !noalias !25419, !noundef !4
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %bb.fh, label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.w) #48
          to label %bb.fe unwind label %bb.dm, !noalias !25423

bb.fg:                                            ; preds = %bb.fh, %bb.fe
  store i8 0, ptr %i.rm, align 16, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25419
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 5489 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !range !178, !noalias !25419, !noundef !4
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.fj, label %bb.fi

bb.fh:                                            ; preds = %bb.fe
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge20MergeOperationConfigEEB1j_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #48
          to label %bb.fg unwind label %bb.dm, !noalias !25423

bb.fi:                                            ; preds = %bb.fj, %bb.fg
  store i8 0, ptr %i.rp, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25419
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 5490 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 2, !range !178, !noalias !25419, !noundef !4
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.fl, label %bb.fk

bb.fj:                                            ; preds = %bb.fg
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y) #48
          to label %bb.fi unwind label %bb.dm, !noalias !25423

bb.fk:                                            ; preds = %bb.fl, %bb.fi
  store i8 0, ptr %i.rs, align 2, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25419
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 5491 ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !range !178, !noalias !25419, !noundef !4
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fi
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z) #48
          to label %bb.fk unwind label %bb.dm, !noalias !25423

bb.fm:                                            ; preds = %bb.fn, %bb.fk
  store i8 0, ptr %i.rv, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25419
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 5492 ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 4, !range !178, !noalias !25419, !noundef !4
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = load i64, ptr %i.ab, align 8, !range !1069, !noalias !25419
  %i.sc = icmp ne i64 %i.sb, 2
  %or.cond.not.i = select i1 %i.sa, i1 %i.sc, i1 false
  br i1 %or.cond.not.i, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.fn:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_(ptr noalias noundef align 8 dereferenceable(88) %i.aa) #48
          to label %bb.fm unwind label %bb.dm, !noalias !25423

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.fo, %bb.fm
  store i8 0, ptr %i.ry, align 4, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25419
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 5493 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !range !178, !noalias !25419, !noundef !4
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.fq, label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(248) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.dm, !noalias !25423

bb.fp:                                            ; preds = %bb.fq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i
  store i8 0, ptr %i.sd, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25419
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 5494 ; 2 uses
  %i.sh = load i8, ptr %i.sg, align 2, !range !178, !noalias !25419, !noundef !4
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.fs, label %bb.fr

bb.fq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(1680) %i.ac) #48
          to label %bb.fp unwind label %bb.dm, !noalias !25423

bb.fr:                                            ; preds = %bb.fs, %bb.fp
  store i8 0, ptr %i.sg, align 2, !noalias !25419
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 5495 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !range !178, !noalias !25419, !noundef !4
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.ft, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i

bb.fs:                                            ; preds = %bb.fp
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 4944
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.sm) #48
          to label %bb.fr unwind label %bb.dm, !noalias !25423

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i: ; preds = %bb.fu, %bb.ft, %bb.fr
  store i8 0, ptr %i.sj, align 1, !noalias !25419
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 5496 ; 2 uses
  %i.so = load i8, ptr %i.sn, align 8, !range !178, !noalias !25419, !noundef !4
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.fw, label %bb.fv

bb.ft:                                            ; preds = %bb.fr
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 4928 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25463)
  call void @llvm.experimental.noalias.scope.decl(metadata !25466)
  %i.sr = load ptr, ptr %i.sq, align 16, !alias.scope !25469, !noalias !25419, !nonnull !4, !noundef !4
  %i.ss = atomicrmw sub ptr %i.sr, i64 1 release, align 8, !noalias !25470
  %i.st = icmp eq i64 %i.ss, 1
  br i1 %i.st, label %bb.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.sq) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i unwind label %bb.dm, !noalias !25423

bb.fv:                                            ; preds = %bb.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i
  store i8 0, ptr %i.sn, align 8, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25419
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 5497 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !range !178, !noalias !25419, !noundef !4
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %bb.fy, label %bb.fx

bb.fw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(336) %i.ad) #48
          to label %bb.fv unwind label %bb.dm, !noalias !25423

bb.fx:                                            ; preds = %bb.fy, %bb.fv
  store i8 0, ptr %i.su, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25419
  store i8 2, ptr %i.pe, align 1, !noalias !25419
  br label %.body144

bb.fy:                                            ; preds = %bb.fv
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionEBM_(ptr noalias noundef align 16 dereferenceable(112) %i.ae) #48
          to label %bb.fx unwind label %bb.dm, !noalias !25423

bb.fz:                                            ; preds = %bb.eu, %bb.em
  %i.sx = phi ptr [ %i.pk, %bb.em ], [ %i.qw, %bb.eu ]
  %.sink.i136.ph = phi i8 [ 3, %bb.em ], [ 4, %bb.eu ]
  store i8 %.sink.i136.ph, ptr %i.sx, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5329)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9315)
  store i64 5, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10299)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11300)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12301)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13302)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14303)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15304)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16305)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17306)
  br label %common.ret

bb.ga:                                            ; preds = %bb.ex, %bb.eq
  store i8 0, ptr %i.qt, align 4, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 5486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25419
  store <8 x i8> zeroinitializer, ptr %i.sy, align 2, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25419
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 5494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25419
  store <4 x i8> zeroinitializer, ptr %5, align 2, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9315, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5329, i64 136, i1 false), !noalias !25471
  store i8 1, ptr %i.qq, align 1, !noalias !25419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5329)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.2318, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9315, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9315)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute0EBO_(ptr noundef nonnull align 16 %i.qr)
          to label %bb.gc unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.gc:                                            ; preds = %bb.ga
  %i.ta = trunc nuw i64 %.sroa.0327.0 to i1
  br i1 %i.ta, label %bb.gi, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 2732
  store i8 1, ptr %i.tb, align 4
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 2872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2318, i64 32, i1 false)
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.2318, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.qr, ptr noundef nonnull align 8 dereferenceable(104) %i.td, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10299)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11300)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12301)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13302)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14303)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15304)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16305)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17306)
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 1776
  %i.tf = load ptr, ptr %i.te, align 16, !noundef !4 ; 3 uses
  %.not34 = icmp eq ptr %i.tf, null
  br i1 %.not34, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit154, label %bb.ge

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit154: ; preds = %bb.gt, %bb.gu, %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 2733
  store i8 0, ptr %i.tg, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.ti = load ptr, ptr %i.th, align 16, !nonnull !4, !noundef !4
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 1800
  %i.tk = load ptr, ptr %i.tj, align 8, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 2732 ; 2 uses
  store i8 0, ptr %i.tl, align 4
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 2872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.tm, i64 32, i1 false)
  invoke void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable14new_with_state(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ay, ptr noundef nonnull %i.ti, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.tk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ax)
          to label %bb.gx unwind label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 1784
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 2722
  store i8 0, ptr %i.to, align 2
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 2840
  %i.tq = load ptr, ptr %i.tn, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  store ptr %i.tf, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %1, i64 2848
  store ptr %i.tq, ptr %i.tr, align 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tt = load i64, ptr %i.ts, align 8, !range !3, !invariant.load !4
  %i.tu = add nsw i64 %i.tt, -1
  %i.tv = and i64 %i.tu, -16
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 1792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 16 dereferenceable(16) %i.tz, i64 16, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.ub = load ptr, ptr %i.ua, align 8, !invariant.load !4, !nonnull !4
  %i.uc = invoke { ptr, ptr } %i.ub(ptr noundef nonnull %i.tx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ty, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.bb)
          to label %bb.gg unwind label %bb.gf     ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %i.ud = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %.body149

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ue = extractvalue { ptr, ptr } %i.uc, 0
  %i.uf = extractvalue { ptr, ptr } %i.uc, 1
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 2856
  store ptr %i.ue, ptr %i.ug, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 2864
  store ptr %i.uf, ptr %i.uh, align 16
  br label %bb.gk

.body149:                                         ; preds = %bb.gs, %bb.gr, %bb.gj, %bb.gf
  %.pn36 = phi { ptr, i32 } [ %i.uz, %bb.gr ], [ %i.un, %bb.gj ], [ %i.uz, %bb.gs ], [ %i.ud, %bb.gf ] ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 2840 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25472)
  call void @llvm.experimental.noalias.scope.decl(metadata !25475)
  %i.uj = load ptr, ptr %i.ui, align 8, !alias.scope !25478, !nonnull !4, !noundef !4
  %i.uk = atomicrmw sub ptr %i.uj, i64 1 release, align 8, !noalias !25478
  %i.ul = icmp eq i64 %i.uk, 1
  br i1 %i.ul, label %bb.gh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit

bb.gh:                                            ; preds = %.body149
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ui) #47
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEB1j_.exit unwind label %bb.ao

bb.gi:                                            ; preds = %bb.gc
  %.sroa.2318.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2318, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.um, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2318.16..sroa_idx, i64 96, i1 false)
  store i64 4, ptr %i.aw, align 16, !alias.scope !25479, !noalias !25482
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0296)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10299)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11300)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12301)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13302)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14303)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15304)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16305)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17306)
  br label %bb.cn

bb.gj:                                            ; preds = %bb.gk
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.val91 = load ptr, ptr %i.up, align 8
  %i.uo = getelementptr i8, ptr %1, i64 2864
  %.val92 = load ptr, ptr %i.uo, align 16, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_(ptr %.val91, ptr nonnull %.val92) #48
          to label %.body149 unwind label %bb.ao

bb.gk:                                            ; preds = %bb.a, %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 2856 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollB2g_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.up, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gl unwind label %bb.gj

bb.gl:                                            ; preds = %bb.gk
  %i.uq = load i64, ptr %i.ba, align 16, !range !1116, !noundef !4 ; 3 uses
  %i.ur = icmp eq i64 %i.uq, -9223372036854775710
  br i1 %i.ur, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 5, ptr %0, align 16
  br label %common.ret

bb.gn:                                            ; preds = %bb.gl
  %.sroa.3324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3324, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3324.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.val89 = load ptr, ptr %i.up, align 8          ; 5 uses
  %i.us = getelementptr i8, ptr %1, i64 2864
  %.val90 = load ptr, ptr %i.us, align 16, !nonnull !4, !align !18, !noundef !4 ; 5 uses
  %i.ut = load ptr, ptr %.val90, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i148 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i148, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val89) ]
  invoke void %i.ut(ptr noundef nonnull %.val89)
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.uu = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  %i.uv = load i64, ptr %i.uu, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.uw = icmp eq i64 %i.uv, 0
  br i1 %i.uw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ux = getelementptr inbounds nuw i8, ptr %.val90, i64 16
  %i.uy = load i64, ptr %i.ux, align 8, !range !3, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val89) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef range(i64 1, 0) %i.uv, i64 noundef range(i64 1, 536870913) %i.uy) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit

bb.gr:                                            ; preds = %bb.go
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  %i.vb = load i64, ptr %i.va, align 8, !range !16, !invariant.load !4 ; 2 uses
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %.body149, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.vd = getelementptr inbounds nuw i8, ptr %.val90, i64 16
  %i.ve = load i64, ptr %i.vd, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val89, i64 noundef range(i64 1, 0) %i.vb, i64 noundef range(i64 1, 536870913) %i.ve) #42
  br label %.body149

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit: ; preds = %bb.gq, %bb.gp
  %.not.i151 = icmp eq i64 %i.uq, -9223372036854775711
  br i1 %.not.i151, label %bb.gt, label %bb.hf

end_hunk_3
