inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable18update_incremental0B9_:bb.a
  br i1 %.not.i9, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !50, !alias.scope !7419, !noundef !12
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit_crit_edge unwind label %bb.aa

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit_crit_edge: ; preds = %bb.z
  %.pre = load ptr, ptr %i.am, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.am, align 8, !nonnull !12, !align !209, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  br label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit_crit_edge, %bb.y
  %i.au = phi ptr [ %.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit_crit_edge ], [ %i.an, %bb.y ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit
  %.sroa.339.sink = phi ptr [ %.sroa.339, %bb.ac ], [ %i.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core5table5state15DeltaTableStateEEB18_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.sink, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.919.sroa.10)
  store i64 %i.aj, ptr %0, align 16
  %.sroa.339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.339, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, i64 56, i1 false)
  br label %common.ret

bb.ac:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.535, i64 56, i1 false)
  br label %bb.ab

bb.ad:                                            ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
  %i.e = alloca [104 x i8], align 8               ; 5 uses
  %i.f = alloca [104 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [104 x i8], align 8               ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [8 x i8], align 8                 ; 12 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [8 x i8], align 8                 ; 9 uses
  %i.t = alloca [96 x i8], align 16               ; 11 uses
  %i.u = alloca [96 x i8], align 16               ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.8.sroa.12.sroa.10.i.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 12 uses
  %i.x = alloca [16 x i8], align 16               ; 12 uses
  %i.y = alloca [96 x i8], align 16               ; 17 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [40 x i8], align 8               ; 5 uses
  %i.ab = alloca [40 x i8], align 8               ; 7 uses
  %i.ac = alloca [17 x i8], align 1               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [96 x i8], align 16              ; 17 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 10 uses
  %i.as = alloca [32 x i8], align 8               ; 8 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [8 x i8], align 8                ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [32 x i8], align 8               ; 8 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [16 x i8], align 8               ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 8 uses
  %i.bq = alloca [96 x i8], align 16              ; 18 uses
  %i.br = alloca [96 x i8], align 8               ; 30 uses
  %i.bs = alloca [96 x i8], align 8               ; 16 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [40 x i8], align 8               ; 8 uses
  %i.bv = alloca [32 x i8], align 8               ; 8 uses
  %i.bw = alloca [17 x i8], align 1               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [96 x i8], align 16              ; 18 uses
  %i.bz = alloca [24 x i8], align 8               ; 12 uses
  %i.ca = alloca [24 x i8], align 8               ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 14 uses
  %i.cc = alloca [96 x i8], align 16              ; 17 uses
  %i.cd = alloca [64 x i8], align 8               ; 5 uses
  %i.ce = alloca [64 x i8], align 8               ; 8 uses
  %i.cf = alloca [96 x i8], align 16              ; 19 uses
  %i.cg = alloca [24 x i8], align 8               ; 5 uses
  %i.ch = alloca [32 x i8], align 8               ; 8 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [16 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 9 uses
  %i.cq = alloca [24 x i8], align 8               ; 7 uses
  %i.cr = alloca [24 x i8], align 8               ; 8 uses
  %i.cs = alloca [96 x i8], align 16              ; 17 uses
  %i.ct = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.9549 = alloca [72 x i8], align 8         ; 8 uses
  %i.cu = alloca [12 x i8], align 4               ; 7 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [16 x i8], align 8               ; 6 uses
  %i.cx = alloca [32 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 5 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [32 x i8], align 8               ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !range !1570, !noundef !12
  switch i8 %i.dd, label %default.unreachable1303 [
    i8 0, label %bb.d
    i8 1, label %bb.bm
    i8 2, label %bb.bn
    i8 3, label %bb.b
    i8 4, label %bb.bz
    i8 5, label %bb.jp
    i8 6, label %bb.c
    i8 7, label %bb.nw
  ]

default.unreachable1303:                          ; preds = %bb.jp, %bb.dd, %bb.cr, %bb.bz, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9549)
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 229 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i32 0, ptr %i.de, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dj = load <2 x ptr>, ptr %i.dh, align 8
  %i.dk = load ptr, ptr %i.dh, align 8, !nonnull !12, !align !209, !noundef !12
  store <2 x ptr> %i.dj, ptr %i.dg, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 218
  %.val233 = load i8, ptr %i.dl, align 2, !range !208, !noundef !12
  %3 = trunc nuw i8 %.val233 to i1
  br i1 %3, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.dm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dn = icmp ult i64 %i.dm, 3
  br i1 %i.dn, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.do = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.dp = icmp ult i8 %i.do, 3
  br i1 %i.dp, label %bb.i, label %bb.g, !prof !7422

bb.g:                                             ; preds = %bb.f
  %i.dq = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE) #54
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i8 [ %i.do, %bb.f ], [ %i.dq, %bb.g ] ; 2 uses
  %i.ds = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.ds, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.k:                                             ; preds = %bb.i
  %i.du = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.dv = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.du, i8 noundef %.sroa.0.0.i)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  br i1 %i.dv, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.i, %bb.l
  %i.dw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1174.a = icmp eq i8 %i.dw, 0
  br i1 %.not1174.a, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.dx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 6
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp samesign ugt i64 %i.dx, 2
  br i1 %i.dz, label %bb.p, label %bb.aa

bb.o:                                             ; preds = %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.p:                                             ; preds = %bb.n
  %i.eb = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 32
  %.val224 = load ptr, ptr %i.ec, align 8, !nonnull !12, !noundef !12
  %i.ed = getelementptr i8, ptr %i.eb, i64 40
  %.val225 = load i64, ptr %i.ed, align 8, !noundef !12
  store i64 3, ptr %i.cy, align 8, !alias.scope !7423
  %.sroa.6529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.val224, ptr %.sroa.6529.0..sroa_idx, align 8, !alias.scope !7423
  %.sroa.8530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %.val225, ptr %.sroa.8530.0..sroa_idx, align 8, !alias.scope !7423
  %i.ee = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0      ; 2 uses
  %i.eg = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !12, !nonnull !12
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cy)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.s:                                             ; preds = %bb.q
  br i1 %i.ej, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  %i.el = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store ptr @191, ptr %i.cv, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr inttoptr (i64 289 to ptr), ptr %i.en, align 8
  store ptr %i.cv, ptr %i.cw, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr @156, ptr %i.eo, align 8
  store i64 1, ptr %i.cx, align 8, !alias.scope !7427, !noalias !7430
  %.sroa.4.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cw, ptr %.sroa.4.0..sroa_idx.i272, align 8, !alias.scope !7427, !noalias !7430
  %.sroa.5.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i273, align 8, !alias.scope !7427, !noalias !7430
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.em, ptr %i.ep, align 8, !alias.scope !7427, !noalias !7430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eb, ptr noundef nonnull %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cx)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %bb.aa

bb.w:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  %i.er = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  store ptr @191, ptr %i.cz, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr inttoptr (i64 289 to ptr), ptr %i.et, align 8
  store ptr %i.cz, ptr %i.da, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr @156, ptr %i.eu, align 8
  store i64 1, ptr %i.db, align 8
  %.sroa.6.0..sroa_idx523 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.da, ptr %.sroa.6.0..sroa_idx523, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx524 = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr %i.es, ptr %.sroa.8.0..sroa_idx524, align 8
  invoke fastcc void @_RNCNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.db)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit356

bb.aa:                                            ; preds = %bb.d, %bb.m, %bb.y, %bb.n, %bb.s, %bb.v
  %i.ex = load ptr, ptr %i.di, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ey = getelementptr i8, ptr %i.ex, i64 24
  %.val234 = load ptr, ptr %i.ey, align 8, !nonnull !12, !noundef !12
  %i.ez = getelementptr inbounds nuw i8, ptr %.val234, i64 88
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !12, !noundef !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 808
  %i.fc = invoke { i64, i32 } @_RNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB5_18TablePropertiesExt31deleted_file_retention_duration(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.fb)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.fd = extractvalue { i64, i32 } %i.fc, 0
  %i.fe = extractvalue { i64, i32 } %i.fc, 1
  %i.ff = mul i64 %i.fd, 1000
  %i.fg = udiv i32 %i.fe, 1000000
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = add i64 %i.ff, %i.fh                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.fj = icmp eq i64 %i.fi, -9223372036854775808
  br i1 %i.fj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = sdiv i64 %i.fi, 1000
  %i.fl = srem i64 %i.fi, 1000                    ; 3 uses
  %.lobit.i.i = ashr i64 %i.fl, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.fk
  %i.fm = icmp slt i64 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 1000, i64 0
  %spec.select.i.i = add nsw i64 %i.fn, %i.fl
  %i.fo = trunc nuw nsw i64 %spec.select.i.i to i32
  %i.fp = mul nuw nsw i32 %i.fo, 1000000
  %i.fq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %i.fp, ptr %i.fr, align 8
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtB7_5MapOkINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1I_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB44_6errors15DeltaTableErrorENtNtB1I_6marker4SendEL_EENCNCNvMs0_NtNtB44_10operations6vacuumNtB6l_13VacuumBuilder18create_vacuum_plan0s0_0EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtB1I_6future6future6Future4pollB44_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aic, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ku unwind label %bb.ks

bb.ku:                                            ; preds = %bb.kt
  %i.aid = load i64, ptr %i.cc, align 16, !range !7395, !noundef !12 ; 3 uses
  %i.aie = icmp eq i64 %i.aid, -9223372036854775710
  br i1 %i.aie, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  store i64 -9223372036854775709, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %common.ret

bb.kw:                                            ; preds = %bb.ku
  %.sroa.3660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.3660.sroa.0.0.copyload = load i64, ptr %.sroa.3660.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3660.sroa.3.0..sroa.3660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.sroa.3660.sroa.3.0.copyload = load i64, ptr %.sroa.3660.sroa.3.0..sroa.3660.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.3660.sroa.5.0..sroa.3660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.3660.sroa.5.0.copyload = load i64, ptr %.sroa.3660.sroa.5.0..sroa.3660.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3660.sroa.7.0..sroa.3660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %.sroa.3660.sroa.7.0.copyload = load i64, ptr %.sroa.3660.sroa.7.0..sroa.3660.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.3660.sroa.9.0..sroa.3660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.3660.sroa.9.0.copyload = load i64, ptr %.sroa.3660.sroa.9.0..sroa.3660.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3660.sroa.11.0..sroa.3660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %.sroa.3660.sroa.11.0.copyload = load i64, ptr %.sroa.3660.sroa.11.0..sroa.3660.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  %.sroa.5661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %.sroa.5661.sroa.0.0.copyload = load i64, ptr %.sroa.5661.0..sroa_idx, align 8
  %.sroa.5661.sroa.2.0..sroa.5661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %.sroa.5661.sroa.2.0.copyload = load i64, ptr %.sroa.5661.sroa.2.0..sroa.5661.0..sroa_idx.sroa_idx, align 16
  %.sroa.5661.sroa.3.0..sroa.5661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %.sroa.5661.sroa.3.0.copyload = load i64, ptr %.sroa.5661.sroa.3.0..sroa.5661.0..sroa_idx.sroa_idx, align 8
  %.sroa.5661.sroa.4.0..sroa.5661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %.sroa.5661.sroa.4.0.copyload = load i64, ptr %.sroa.5661.sroa.4.0..sroa.5661.0..sroa_idx.sroa_idx, align 16
  %.sroa.5661.sroa.5.0..sroa.5661.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %.sroa.5661.sroa.5.0.copyload = load i64, ptr %.sroa.5661.sroa.5.0..sroa.5661.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.experimental.noalias.scope.decl(metadata !7718)
  %.val.i357 = load ptr, ptr %i.aic, align 8, !alias.scope !7718 ; 5 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %.val1.i = load ptr, ptr %i.aif, align 8, !alias.scope !7718, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.aig = load ptr, ptr %.val1.i, align 8, !invariant.load !12, !noalias !7718 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aig, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i357) ]
  invoke void %i.aig(ptr noundef nonnull %.val.i357)
          to label %bb.ky unwind label %bb.la, !noalias !7718

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.aih = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aii = load i64, ptr %i.aih, align 8, !range !378, !invariant.load !12, !noalias !7718 ; 2 uses
  %i.aij = icmp eq i64 %i.aii, 0
  br i1 %i.aij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.aik = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ail = load i64, ptr %i.aik, align 8, !range !490, !invariant.load !12, !noalias !7718
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i357) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i357, i64 noundef range(i64 1, 0) %i.aii, i64 noundef range(i64 1, 536870913) %i.ail) #51, !noalias !7718
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i

bb.la:                                            ; preds = %bb.kx
  %i.aim = landingpad { ptr, i32 }
          cleanup
  %i.ain = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aio = load i64, ptr %i.ain, align 8, !range !378, !invariant.load !12, !noalias !7718 ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 0
  br i1 %i.aip, label %.body.i358, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.air = load i64, ptr %i.aiq, align 8, !range !490, !invariant.load !12, !noalias !7718
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i357, i64 noundef range(i64 1, 0) %i.aio, i64 noundef range(i64 1, 536870913) %i.air) #51, !noalias !7718
  br label %.body.i358

.body.i358:                                       ; preds = %bb.lb, %bb.la
  %i.ais = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ais)
          to label %.body360 unwind label %bb.lc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i: ; preds = %bb.kz, %bb.ky
  %i.ait = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ait)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4l_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB4l_10operations6vacuumNtB6B_13VacuumBuilder18create_vacuum_plan0s0_0EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEEEB4l_.exit unwind label %bb.ld

bb.lc:                                            ; preds = %.body.i358
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ld:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  br label %.body360

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4l_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB4l_10operations6vacuumNtB6B_13VacuumBuilder18create_vacuum_plan0s0_0EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEEEB4l_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i
  %.not.i362 = icmp eq i64 %i.aid, -9223372036854775711
  br i1 %.not.i362, label %bb.lg, label %bb.nr

.body477:                                         ; preds = %bb.rp, %bb.le, %bb.tf, %.body398
  %.pn145 = phi { ptr, i32 } [ %.pn143, %.body398 ], [ %.pn143, %bb.tf ], [ %i.aiy, %bb.le ], [ %i.avt, %bb.rp ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %1, i64 231
  store i8 0, ptr %i.aiw, align 1
  %i.aix = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aix)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bi

bb.le:                                            ; preds = %bb.rq
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %.body477

.body398:                                         ; preds = %bb.nm, %bb.lf, %bb.te, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %.pn143 = phi { ptr, i32 } [ %.pn139.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn139.pn.pn, %bb.te ], [ %i.ajd, %bb.lf ], [ %i.anu, %bb.nm ] ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 230
  store i8 0, ptr %i.aiz, align 2
  %i.aja = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.ajb = load i8, ptr %i.aja, align 1, !range !208, !noundef !12
  %i.ajc = trunc nuw i8 %i.ajb to i1
  br i1 %i.ajc, label %bb.tf, label %.body477

bb.lf:                                            ; preds = %bb.nn
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  br label %.body398

bb.lg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtBL_5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB4l_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB4l_10operations6vacuumNtB6B_13VacuumBuilder18create_vacuum_plan0s0_0EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEEEB4l_.exit
  %i.aje = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i64 %.sroa.3660.sroa.0.0.copyload, ptr %i.aje, align 8
  %.sroa.4904.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i64 %.sroa.3660.sroa.3.0.copyload, ptr %.sroa.4904.0..sroa_idx, align 8
  %.sroa.5905.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 %.sroa.3660.sroa.5.0.copyload, ptr %.sroa.5905.0..sroa_idx, align 8
  %.sroa.6906.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store i64 %.sroa.3660.sroa.7.0.copyload, ptr %.sroa.6906.0..sroa_idx, align 8
  %.sroa.7907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 376
  store i64 %.sroa.3660.sroa.9.0.copyload, ptr %.sroa.7907.0..sroa_idx, align 8
  %.sroa.8908.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i64 %.sroa.3660.sroa.11.0.copyload, ptr %.sroa.8908.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.ajf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ajg = load ptr, ptr %i.ajf, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ajh = getelementptr i8, ptr %i.ajg, i64 24
  %.val = load ptr, ptr %i.ajh, align 8, !nonnull !12, !noundef !12
  %i.aji = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ajj = load ptr, ptr %i.aji, align 8, !nonnull !12, !noundef !12
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 688
  store ptr %i.ajk, ptr %i.aic, align 8
  store i64 0, ptr %i.aif, align 8, !alias.scope !7721
  store ptr inttoptr (i64 8 to ptr), ptr %i.ait, align 8, !alias.scope !7721
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  store i64 0, ptr %i.ajl, align 8, !alias.scope !7721
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 231
  store i8 1, ptr %i.ajm, align 1
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  store i64 0, ptr %i.ajn, align 8, !alias.scope !7724
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ajo, align 8, !alias.scope !7724
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  store i64 0, ptr %i.ajp, align 8, !alias.scope !7724
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 230
  store i8 1, ptr %i.ajq, align 2
  %i.ajr = getelementptr i8, ptr %1, i64 192
  %.val258 = load ptr, ptr %i.ajr, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ajs = getelementptr i8, ptr %1, i64 200
  %.val259 = load i64, ptr %i.ajs, align 8, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %.val259, 48
  %i.ajt = getelementptr inbounds nuw i8, ptr %.val258, i64 %.idx
  %i.aju = icmp eq i64 %.val259, 0
  br i1 %i.aju, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.lg
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aka = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  br label %bb.lh

bb.lh:                                            ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0665.01217 = phi ptr [ %.val258, %.lr.ph ], [ %i.akb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.0665.01217, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  invoke void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstonesNtB2_13TombstoneView4path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0665.01217)
          to label %bb.mi unwind label %bb.mh

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit, %bb.lg
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.akd = load ptr, ptr %i.akc, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 218
  %.val232 = load i8, ptr %i.ake, align 2, !range !208, !noundef !12
  %4 = trunc nuw i8 %.val232 to i1
  br i1 %4, label %bb.li, label %bb.sb

bb.li:                                            ; preds = %._crit_edge
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i8 0, ptr %i.bw, align 1
  %i.akg = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.akh = invoke { ptr, ptr } @_RNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB5_8LogStoreEL_EB1j_12object_storeB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.akf, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.bw)
          to label %bb.lk unwind label %bb.lj     ; 2 uses

bb.lj:                                            ; preds = %bb.li
  %i.aki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.lk:                                            ; preds = %bb.li
  %i.akj = extractvalue { ptr, ptr } %i.akh, 0
  %i.akk = extractvalue { ptr, ptr } %i.akh, 1
  store ptr %i.akj, ptr %i.akg, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.akk, ptr %i.akl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.akm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.akn = icmp ult i64 %i.akm, 3
  br i1 %i.akn, label %bb.ll, label %bb.lu

bb.ll:                                            ; preds = %bb.lk
  %i.ako = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.akp = icmp ult i8 %i.ako, 3
  br i1 %i.akp, label %bb.lo, label %bb.lm, !prof !7422

bb.lm:                                            ; preds = %bb.ll
  %i.akq = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE) #54
          to label %bb.lo unwind label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.akr = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.lo:                                            ; preds = %bb.lm, %bb.ll
  %.sroa.0.0.i366 = phi i8 [ %i.ako, %bb.ll ], [ %i.akq, %bb.lm ] ; 2 uses
  %i.aks = icmp eq i8 %.sroa.0.0.i366, 0
  br i1 %i.aks, label %bb.lu, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.akt = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.aku = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.akt, i8 noundef %.sroa.0.0.i366)
          to label %bb.lr unwind label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.akv = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.lr:                                            ; preds = %bb.lp
  br i1 %i.aku, label %bb.ma, label %bb.lu

bb.ls:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.mf

bb.lt:                                            ; preds = %bb.lu, %bb.lx
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.akw, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  br label %bb.ly

bb.lu:                                            ; preds = %bb.lk, %bb.lr, %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.akx = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  store i64 2, ptr %i.bu, align 8, !alias.scope !7727, !noalias !7730
  %i.aky = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.akx, ptr %i.aky, align 8, !alias.scope !7727, !noalias !7730
  %i.akz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1177.a = icmp eq i8 %i.akz, 0
  br i1 %.not1177.a, label %bb.lv, label %bb.lt

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 48
  store i64 1, ptr %i.bt, align 8, !alias.scope !7732, !noalias !7735
  %.sroa.4.0..sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @199, ptr %.sroa.4.0..sroa_idx.i370, align 8, !alias.scope !7732, !noalias !7735
  %.sroa.5.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i371, align 8, !alias.scope !7732, !noalias !7735
  %i.alb = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.ala, ptr %i.alb, align 8, !alias.scope !7732, !noalias !7735
  %i.alc = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt)
          to label %bb.lx unwind label %bb.lw     ; 0 uses

bb.lw:                                            ; preds = %bb.lv
  %i.ald = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.bu) #52
          to label %bb.ls unwind label %bb.bi

bb.lx:                                            ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.lt

bb.ly:                                            ; preds = %bb.mb, %bb.lt
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.alf = invoke { ptr, ptr } @_RINvMNtCscTw95cGIolY_7tracing4spanNtB3_4Span8in_scopeNCNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtBZ_13VacuumBuilder18create_vacuum_plan0s1_0INtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2E_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4U_5ErrorENtNtB2E_6marker4SendEL_EEEB13_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ale, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.akg)
          to label %bb.md unwind label %bb.mc     ; 2 uses

bb.lz:                                            ; preds = %bb.ma
  %i.alg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.mf

bb.ma:                                            ; preds = %bb.lr
  %i.alh = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 48
  store i64 1, ptr %i.bv, align 8, !alias.scope !7738, !noalias !7741
  %.sroa.4.0..sroa_idx.i372 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @199, ptr %.sroa.4.0..sroa_idx.i372, align 8, !alias.scope !7738, !noalias !7741
  %.sroa.5.0..sroa_idx.i373 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i373, align 8, !alias.scope !7738, !noalias !7741
  %i.alj = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.ali, ptr %i.alj, align 8, !alias.scope !7738, !noalias !7741
  %i.alk = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.alk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.alh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bv)
          to label %bb.mb unwind label %bb.lz

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.ly

bb.mc:                                            ; preds = %bb.ly
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %.body472

bb.md:                                            ; preds = %bb.ly
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.aln = extractvalue { ptr, ptr } %i.alf, 0
  %i.alo = extractvalue { ptr, ptr } %i.alf, 1
  store ptr %i.aln, ptr %i.alm, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 416
  store ptr %i.alo, ptr %i.alp, align 8
  %.val260 = load ptr, ptr %i.ait, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.val261 = load i64, ptr %i.ajl, align 8, !noundef !12
  %i.alq = getelementptr inbounds nuw [24 x i8], ptr %.val260, i64 %.val261
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke fastcc void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetB1n_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.alr, ptr noundef nonnull %.val260, ptr noundef %i.alq)
          to label %bb.qz unwind label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.als = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470: ; preds = %bb.ra, %bb.me, %bb.rf
  %.pn126 = phi { ptr, i32 } [ %i.auv, %bb.rf ], [ %.pn122.pn.pn, %bb.ra ], [ %i.als, %bb.me ]
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val230 = load ptr, ptr %i.alt, align 8
  %i.alu = getelementptr i8, ptr %1, i64 416
  %.val231 = load ptr, ptr %i.alu, align 8, !nonnull !12, !align !209, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val230, ptr nonnull %.val231) #52
          to label %.body472 unwind label %bb.bi

.body472:                                         ; preds = %bb.rx, %bb.ry, %bb.rk, %bb.rj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470, %bb.mc
  %.pn128 = phi { ptr, i32 } [ %i.all, %bb.mc ], [ %.pn126, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470 ], [ %i.ave, %bb.rj ], [ %i.ave, %bb.rk ], [ %i.awh, %bb.rx ], [ %i.awh, %bb.ry ]
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.alv) #52
          to label %bb.mf unwind label %bb.bi

bb.mf:                                            ; preds = %bb.ln, %bb.lz, %bb.ls, %bb.lq, %bb.rl, %.body472
  %.pn130 = phi { ptr, i32 } [ %i.avl, %bb.rl ], [ %.pn128, %.body472 ], [ %i.alg, %bb.lz ], [ %i.akr, %bb.ln ], [ %i.ald, %bb.ls ], [ %i.akv, %bb.lq ] ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7744)
  call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  %i.alx = load ptr, ptr %i.alw, align 8, !alias.scope !7750, !nonnull !12, !noundef !12
  %i.aly = atomicrmw sub ptr %i.alx, i64 1 release, align 8, !noalias !7750
  %i.alz = icmp eq i64 %i.aly, 1
  br i1 %i.alz, label %bb.mg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.mg:                                            ; preds = %bb.mf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.alw) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bi

bb.mh:                                            ; preds = %bb.lh
  %i.ama = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.nq

bb.mi:                                            ; preds = %bb.lh
  %.val262 = load ptr, ptr %i.ajv, align 8, !nonnull !12, !noundef !12
  %.val263 = load i64, ptr %i.ajw, align 8, !noundef !12 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  call void @llvm.experimental.noalias.scope.decl(metadata !7754)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7757
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val263, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc376 unwind label %.loopexit
end_hunk_1
