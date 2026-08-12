inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable18update_incremental0B9_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !50, !alias.scope !7423, !noundef !12
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
define internal fastcc void @_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %.not1173 = icmp eq i8 %.val233, 0
  br i1 %.not1173, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.dn = icmp samesign ult i64 %i.dm, 3
  br i1 %i.dn, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.do = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.dp = icmp ult i8 %i.do, 3
  br i1 %i.dp, label %bb.i, label %bb.g, !prof !7426

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
  %.not1174 = icmp eq i8 %i.dw, 0
  br i1 %.not1174, label %bb.n, label %bb.aa

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
  store i64 3, ptr %i.cy, align 8, !alias.scope !7427
  %.sroa.6529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.val224, ptr %.sroa.6529.0..sroa_idx, align 8, !alias.scope !7427
  %.sroa.8530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %.val225, ptr %.sroa.8530.0..sroa_idx, align 8, !alias.scope !7427
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
  store i64 1, ptr %i.cx, align 8, !alias.scope !7431, !noalias !7434
  %.sroa.4.0..sroa_idx.i272 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cw, ptr %.sroa.4.0..sroa_idx.i272, align 8, !alias.scope !7431, !noalias !7434
  %.sroa.5.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i273, align 8, !alias.scope !7431, !noalias !7434
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.em, ptr %i.ep, align 8, !alias.scope !7431, !noalias !7434
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
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %storemerge.i = phi i64 [ 1, %bb.ac ], [ 0, %bb.ab ]
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
  %.sroa.578.sroa.2.i.i.sroa.9.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.578.sroa.2.i.i.sroa.9.0.copyload = load i64, ptr %.sroa.578.sroa.2.i.i.sroa.9.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 16, !noalias !7460
  %.sroa.578.sroa.2.i.i.sroa.10.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %.sroa.578.sroa.2.i.i.sroa.10.0.copyload = load i64, ptr %.sroa.578.sroa.2.i.i.sroa.10.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !7460
  %.sroa.578.sroa.2.i.i.sroa.11.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.578.sroa.2.i.i.sroa.11.0.copyload = load i64, ptr %.sroa.578.sroa.2.i.i.sroa.11.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 16, !noalias !7460
  %.sroa.578.sroa.2.i.i.sroa.12.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %.sroa.578.sroa.2.i.i.sroa.12.0.copyload = load i64, ptr %.sroa.578.sroa.2.i.i.sroa.12.0..sroa.578.sroa.2.0..sroa.578.0..sroa_idx.sroa_idx.i.i.sroa_idx, align 8, !noalias !7460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !7460
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEEB51_(ptr noalias noundef align 8 dereferenceable(40) %i.zv)
          to label %bb.hm unwind label %bb.hl, !noalias !7464

bb.hl:                                            ; preds = %bb.hk
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.hm:                                            ; preds = %bb.hk
  %.not.i34.i.i = icmp eq i64 %i.zw, -9223372036854775711
  br i1 %.not.i34.i.i, label %bb.hn, label %.sink.split.sink.split

bb.hn:                                            ; preds = %bb.hm
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !noalias !7460, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaa)
          to label %bb.hp unwind label %bb.ho, !noalias !7464

bb.ho:                                            ; preds = %bb.hn
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaa)
          to label %.body36.i.i unwind label %bb.hq, !noalias !7464

bb.hp:                                            ; preds = %bb.hn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aaa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.hr, !noalias !7464

bb.hq:                                            ; preds = %bb.ho
  %i.aac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7464
  unreachable

bb.hr:                                            ; preds = %bb.hp
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i

.body36.i.i:                                      ; preds = %bb.hr, %bb.ho
  %eh.lpad-body37.i.i = phi { ptr, i32 } [ %i.aad, %bb.hr ], [ %i.aab, %bb.ho ]
  %i.aae = load ptr, ptr %i.zz, align 8, !noalias !7460, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  store ptr %.sroa.377.sroa.0.0.copyload.i.i, ptr %i.aae, align 8, !noalias !7464
  %.sroa.3101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store ptr %.sroa.377.sroa.3.0.copyload.i.i, ptr %.sroa.3101.0..sroa_idx.i.i, align 8, !noalias !7464
  %.sroa.4104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %.sroa.377.sroa.5.0.copyload.i.i, ptr %.sroa.4104.0..sroa_idx.i.i, align 8, !noalias !7464
  br label %bb.hf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.hp
  %i.aaf = load ptr, ptr %i.zz, align 8, !noalias !7460, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  store ptr %.sroa.377.sroa.0.0.copyload.i.i, ptr %i.aaf, align 8, !noalias !7464
  %.sroa.3101.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  store ptr %.sroa.377.sroa.3.0.copyload.i.i, ptr %.sroa.3101.0..sroa_idx102.i.i, align 8, !noalias !7464
  %.sroa.4104.0..sroa_idx105.i.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  store i64 %.sroa.377.sroa.5.0.copyload.i.i, ptr %.sroa.4104.0..sroa_idx105.i.i, align 8, !noalias !7464
  br label %.sink.split.sink.split

bb.hs:                                            ; preds = %bb.hj, %bb.go
  %i.aag = phi ptr [ %i.rr, %bb.go ], [ %i.zr, %bb.hj ]
  %i.aah = phi ptr [ %i.rt, %bb.go ], [ %i.zt, %bb.hj ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.go ], [ 4, %bb.hj ]
  store i8 %.sink.i.ph.i, ptr %i.aah, align 8, !noalias !7460
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ci, %bb.hs
  %i.aai = phi ptr [ %i.aag, %bb.hs ], [ %i.lw, %bb.ci ]
  %.sink.i = phi i8 [ 4, %bb.hs ], [ 3, %bb.ci ]
  store i8 %.sink.i, ptr %i.aai, align 8, !noalias !7455
  store i64 -9223372036854775709, ptr %0, align 16
  br label %common.ret

.sink.split.sink.split:                           ; preds = %bb.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.13590.sroa.0.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.0.11319, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.0.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.6.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.6.11328, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.7.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.7.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.7.11337, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.8.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.8.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.8.11346, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.9.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.9.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.9.11355, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.10.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.10.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.10.11364, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.11.0.copyload, %bb.hm ]
  %.sroa.13590.sroa.11.2.ph.ph.ph = phi i64 [ %.sroa.13590.sroa.11.11373, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.2.i.i.sroa.12.0.copyload, %bb.hm ]
  %.sroa.12589.2.ph.ph.ph = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.578.sroa.0.0.copyload.i.i, %bb.hm ]
  %.sroa.11588.2.ph.ph.ph = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.377.sroa.5.0.copyload.i.i, %bb.hm ]
  %.sroa.10587.2.ph.ph.ph = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.377.sroa.3.0.copyload.i.i, %bb.hm ]
  %.sroa.9586.2.ph.ph.ph = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.377.sroa.0.0.copyload.i.i, %bb.hm ]
  %.sroa.0585.0.ph.ph.ph = phi i64 [ -9223372036854775711, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.zw, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.gr, %bb.ct
  %.sink1436 = phi ptr [ %i.xz, %bb.gr ], [ %i.no, %bb.ct ], [ %i.zt, %.sink.split.sink.split ]
  %.ph = phi ptr [ %i.xx, %bb.gr ], [ %i.nh, %bb.ct ], [ %i.zr, %.sink.split.sink.split ]
  %.ph1435 = phi ptr [ %i.xy, %bb.gr ], [ %i.ni, %bb.ct ], [ %i.zs, %.sink.split.sink.split ]
  %.sroa.13590.sroa.0.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.0.9, %bb.gr ], [ %.sroa.13590.sroa.0.11324, %bb.ct ], [ %.sroa.13590.sroa.0.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.6.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.6.9, %bb.gr ], [ %.sroa.13590.sroa.6.11333, %bb.ct ], [ %.sroa.13590.sroa.6.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.7.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.7.9, %bb.gr ], [ %.sroa.13590.sroa.7.11342, %bb.ct ], [ %.sroa.13590.sroa.7.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.8.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.8.9, %bb.gr ], [ %.sroa.13590.sroa.8.11351, %bb.ct ], [ %.sroa.13590.sroa.8.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.9.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.9.9, %bb.gr ], [ %.sroa.13590.sroa.9.11360, %bb.ct ], [ %.sroa.13590.sroa.9.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.10.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.10.9, %bb.gr ], [ %.sroa.13590.sroa.10.11369, %bb.ct ], [ %.sroa.13590.sroa.10.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.13590.sroa.11.2.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.11.9, %bb.gr ], [ %.sroa.13590.sroa.11.11378, %bb.ct ], [ %.sroa.13590.sroa.11.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.12589.2.ph.ph = phi i64 [ %.sroa.17.sroa.0.1.i.i.i, %bb.gr ], [ undef, %bb.ct ], [ %.sroa.12589.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.11588.2.ph.ph = phi i64 [ %.sroa.16.1.i.i.i, %bb.gr ], [ undef, %bb.ct ], [ %.sroa.11588.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.10587.2.ph.ph = phi ptr [ %.sroa.13126.1.i.i.i, %bb.gr ], [ undef, %bb.ct ], [ %.sroa.10587.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.9586.2.ph.ph = phi ptr [ %.sroa.7125.1.i.i.i, %bb.gr ], [ undef, %bb.ct ], [ %.sroa.9586.2.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.0585.0.ph.ph = phi i64 [ %.sroa.0124.1.i.i.i, %bb.gr ], [ -9223372036854775711, %bb.ct ], [ %.sroa.0585.0.ph.ph.ph, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.0.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.0.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.0.11381, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.0.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.6.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.6.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.6.11386, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.6.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.7.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.7.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.7.11391, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.7.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.8.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.8.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.8.11396, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.8.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.9.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.9.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.9.11401, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.9.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.10.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.10.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.10.11406, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.10.2, %.sink.split.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.11.10.ph.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.11.9, %bb.gr ], [ %.sroa.17.sroa.4.i.i.i.sroa.11.11411, %bb.ct ], [ %.sroa.17.sroa.4.i.i.i.sroa.11.2, %.sink.split.sink.split ]
  store i8 1, ptr %.sink1436, align 8, !noalias !7460
  br label %bb.hu

bb.hu:                                            ; preds = %.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i
  %i.aaj = phi ptr [ %i.lw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.ph, %.sink.split ]
  %i.aak = phi ptr [ %i.lx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.ph1435, %.sink.split ]
  %.sroa.13590.sroa.0.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.0.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.6.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.4.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.6.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.7.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.5.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.7.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.8.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.6.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.8.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.9.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.7.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.9.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.10.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.8.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.10.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.13590.sroa.11.2.ph = phi i64 [ %.sroa.3.sroa.5.i.sroa.9.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.13590.sroa.11.2.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.12589.2.ph = phi i64 [ %.sroa.3.sroa.4.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.12589.2.ph.ph, %.sink.split ]
  %.sroa.11588.2.ph = phi i64 [ %.sroa.3.sroa.3.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.11588.2.ph.ph, %.sink.split ]
  %.sroa.10587.2.ph = phi ptr [ %.sroa.3.sroa.2.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.10587.2.ph.ph, %.sink.split ]
  %.sroa.9586.2.ph = phi ptr [ %.sroa.3.sroa.0.0.copyload.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.9586.2.ph.ph, %.sink.split ]
  %.sroa.0585.0.ph = phi i64 [ %i.lz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.0585.0.ph.ph, %.sink.split ] ; 2 uses
  %.sroa.17.sroa.4.i.i.i.sroa.0.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.0.11382, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.0.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.6.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.6.11387, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.6.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.7.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.7.11392, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.7.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.8.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.8.11397, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.8.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.9.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.9.11402, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.9.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.10.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.10.11407, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.10.10.ph.ph, %.sink.split ]
  %.sroa.17.sroa.4.i.i.i.sroa.11.10.ph = phi i64 [ %.sroa.17.sroa.4.i.i.i.sroa.11.11412, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEEB2z_.exit.i ], [ %.sroa.17.sroa.4.i.i.i.sroa.11.10.ph.ph, %.sink.split ]
  store i8 1, ptr %i.aaj, align 8, !noalias !7455
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtNtCs14kWLkQVSKO_14deltalake_core5table5stateNtBL_15DeltaTableState6update0EBP_(ptr noundef nonnull align 8 %i.aak)
          to label %bb.hw unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.hw:                                            ; preds = %bb.hu
  %.not.i299 = icmp eq i64 %.sroa.0585.0.ph, -9223372036854775711
  br i1 %.not.i299, label %bb.hx, label %bb.jh

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call void @llvm.experimental.noalias.scope.decl(metadata !7670)
  call void @llvm.experimental.noalias.scope.decl(metadata !7673)
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.aan = load ptr, ptr %i.aam, align 8, !alias.scope !7673, !noalias !7670, !nonnull !12, !noundef !12
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.aap = load i64, ptr %i.aao, align 8, !alias.scope !7673, !noalias !7670, !noundef !12
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.aar = load ptr, ptr %i.aaq, align 8, !alias.scope !7673, !noalias !7670, !nonnull !12, !noundef !12
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 88
  %i.aat = load ptr, ptr %i.aas, align 8, !noalias !7675, !nonnull !12, !noundef !12
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 552
  store ptr %i.aan, ptr %i.cq, align 8, !alias.scope !7670, !noalias !7673
  %i.aav = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.aap, ptr %i.aav, align 8, !alias.scope !7670, !noalias !7673
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.aau, ptr %i.aaw, align 8, !alias.scope !7670, !noalias !7673
  %i.aax = invoke { ptr, ptr } @_RNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB5_14LogDataHandlerNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq)
          to label %bb.hz unwind label %bb.hy     ; 2 uses

bb.hy:                                            ; preds = %bb.hx
  %i.aay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br label %bb.jf

bb.hz:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %i.aaz = extractvalue { ptr, ptr } %i.aax, 0
  %i.aba = extractvalue { ptr, ptr } %i.aax, 1
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1E_INtNtB6_5boxed3BoxDNtNtNtB1K_6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_ENCNCNvMs0_NtNtB3C_10operations6vacuumNtB51_13VacuumBuilder18create_vacuum_plan00ENCB4T_s_0EE9from_iterB3C_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cr, ptr noundef nonnull %i.aaz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aba)
          to label %bb.ib unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.ib:                                            ; preds = %bb.hz
  %i.abc = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.abd = icmp samesign ult i64 %i.abc, 2
  br i1 %i.abd, label %bb.ic, label %bb.ij

bb.ic:                                            ; preds = %bb.ib
  %i.abe = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.abf = icmp ult i8 %i.abe, 3
  br i1 %i.abf, label %bb.if, label %bb.id, !prof !7426

bb.id:                                            ; preds = %bb.ic
  %i.abg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE) #54
          to label %bb.if unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.abh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.if:                                            ; preds = %bb.id, %bb.ic
  %.sroa.0.0.i302 = phi i8 [ %i.abe, %bb.ic ], [ %i.abg, %bb.id ] ; 2 uses
  %i.abi = icmp eq i8 %.sroa.0.0.i302, 0
  br i1 %i.abi, label %bb.ij, label %bb.ih

bb.ig:                                            ; preds = %bb.ih
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.ih:                                            ; preds = %bb.if
  %i.abk = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.abl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abk, i8 noundef %.sroa.0.0.i302)
          to label %bb.ii unwind label %bb.ig

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.abl, label %bb.iu, label %bb.ij

bb.ij:                                            ; preds = %bb.ib, %bb.if, %bb.ii
  %i.abm = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1175 = icmp eq i8 %i.abm, 0
  br i1 %.not1175, label %bb.ik, label %bb.it

bb.ik:                                            ; preds = %bb.ij
  %i.abn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.abo = icmp ult i64 %i.abn, 6
  call void @llvm.assume(i1 %i.abo)
  %i.abp = icmp samesign ugt i64 %i.abn, 3
  br i1 %i.abp, label %bb.im, label %bb.it

bb.il:                                            ; preds = %bb.im
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.im:                                            ; preds = %bb.ik
  %i.abr = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.abs = getelementptr i8, ptr %i.abr, i64 32
  %.val222 = load ptr, ptr %i.abs, align 8, !nonnull !12, !noundef !12
  %i.abt = getelementptr i8, ptr %i.abr, i64 40
  %.val223 = load i64, ptr %i.abt, align 8, !noundef !12
  store i64 4, ptr %i.cl, align 8, !alias.scope !7676
  %.sroa.6617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %.val222, ptr %.sroa.6617.0..sroa_idx, align 8, !alias.scope !7676
  %.sroa.8618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %.val223, ptr %.sroa.8618.0..sroa_idx, align 8, !alias.scope !7676
  %i.abu = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.in unwind label %bb.il     ; 2 uses

bb.in:                                            ; preds = %bb.im
  %i.abv = extractvalue { ptr, ptr } %i.abu, 0    ; 2 uses
  %i.abw = extractvalue { ptr, ptr } %i.abu, 1    ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 24
  %i.aby = load ptr, ptr %i.abx, align 8, !invariant.load !12, !nonnull !12
  %i.abz = invoke noundef zeroext i1 %i.aby(ptr noundef %i.abv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl)
          to label %bb.ip unwind label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.ip:                                            ; preds = %bb.in
  br i1 %i.abz, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.acb = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.acd = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  store ptr %i.acd, ptr %i.ch, align 8
  %.sroa.5620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5620.0..sroa_idx, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cr, ptr %i.ace, align 8
  %.sroa.5622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5622.0..sroa_idx, align 8
  store ptr @195, ptr %i.ci, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ch, ptr %i.acf, align 8
  store ptr %i.ci, ptr %i.cj, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @156, ptr %i.acg, align 8
  store i64 1, ptr %i.ck, align 8, !alias.scope !7680, !noalias !7683
  %.sroa.4.0..sroa_idx.i311 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i311, align 8, !alias.scope !7680, !noalias !7683
  %.sroa.5.0..sroa_idx.i312 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i312, align 8, !alias.scope !7680, !noalias !7683
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.acc, ptr %i.ach, align 8, !alias.scope !7680, !noalias !7683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abr, ptr noundef nonnull %i.abv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.abw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ck)
          to label %bb.is unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.aci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.jg

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ip, %bb.ik, %bb.ij, %bb.iz
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtBS_3vec3VecBO_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.acj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cg)
          to label %_RINvXs9_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendB14_E6extendINtNtB18_3vec3VecB14_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.je

bb.iu:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.ack = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store ptr %i.acm, ptr %i.cm, align 8
  %.sroa.5610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.5610.0..sroa_idx, align 8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cr, ptr %i.acn, align 8
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5612.0..sroa_idx, align 8
  store ptr @195, ptr %i.cn, align 8
  %i.aco = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cm, ptr %i.aco, align 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.acp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr @156, ptr %i.acp, align 8
  store i64 1, ptr %i.cp, align 8
  %.sroa.6606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %.sroa.6606.0..sroa_idx, align 8
  %.sroa.7607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 1, ptr %.sroa.7607.0..sroa_idx, align 8
  %.sroa.8608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.acl, ptr %.sroa.8608.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ack, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cp)
          to label %.noexc320 unwind label %bb.iy

.noexc320:                                        ; preds = %bb.iu
  %i.acq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !7686
  %i.acr = icmp eq i8 %i.acq, 0
  br i1 %i.acr, label %bb.iv, label %bb.iz

bb.iv:                                            ; preds = %.noexc320
  %i.acs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7686 ; 2 uses
  %i.act = icmp ult i64 %i.acs, 6
  call void @llvm.assume(i1 %i.act)
  %i.acu = icmp samesign ugt i64 %i.acs, 3
  br i1 %i.acu, label %bb.iw, label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  %i.acv = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s_10___CALLSITE, align 8, !noalias !7686, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  %i.acx = load ptr, ptr %i.acw, align 8, !nonnull !12, !noundef !12
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 40
  %i.acz = load i64, ptr %i.acy, align 8, !noundef !12
  store i64 4, ptr %i.g, align 8, !noalias !7686
  %.sroa.3.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.acx, ptr %.sroa.3.0..sroa_idx.i318, align 8, !noalias !7686
  %.sroa.5.0..sroa_idx.i319 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.acz, ptr %.sroa.5.0..sroa_idx.i319, align 8, !noalias !7686
  %i.ada = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc321 unwind label %bb.iy ; 2 uses

.noexc321:                                        ; preds = %bb.iw
  %i.adb = extractvalue { ptr, ptr } %i.ada, 0    ; 2 uses
  %i.adc = extractvalue { ptr, ptr } %i.ada, 1    ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 24
end_hunk_1
begin_hunk_2_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7722)
  %.val.i357 = load ptr, ptr %i.aic, align 8, !alias.scope !7722 ; 5 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %.val1.i = load ptr, ptr %i.aif, align 8, !alias.scope !7722, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.aig = load ptr, ptr %.val1.i, align 8, !invariant.load !12, !noalias !7722 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aig, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i357) ]
  invoke void %i.aig(ptr noundef nonnull %.val.i357)
          to label %bb.ky unwind label %bb.la, !noalias !7722

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %i.aih = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aii = load i64, ptr %i.aih, align 8, !range !378, !invariant.load !12, !noalias !7722 ; 2 uses
  %i.aij = icmp eq i64 %i.aii, 0
  br i1 %i.aij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.aik = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ail = load i64, ptr %i.aik, align 8, !range !490, !invariant.load !12, !noalias !7722
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i357) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i357, i64 noundef range(i64 1, 0) %i.aii, i64 noundef range(i64 1, 536870913) %i.ail) #51, !noalias !7722
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream5MapOkINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB3O_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EENCNCNvMs0_NtNtB3O_10operations6vacuumNtB64_13VacuumBuilder18create_vacuum_plan0s0_0EEB3O_.exit.i

bb.la:                                            ; preds = %bb.kx
  %i.aim = landingpad { ptr, i32 }
          cleanup
  %i.ain = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.aio = load i64, ptr %i.ain, align 8, !range !378, !invariant.load !12, !noalias !7722 ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 0
  br i1 %i.aip, label %.body.i358, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.aiq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.air = load i64, ptr %i.aiq, align 8, !range !490, !invariant.load !12, !noalias !7722
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i357, i64 noundef range(i64 1, 0) %i.aio, i64 noundef range(i64 1, 536870913) %i.air) #51, !noalias !7722
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
  store i64 0, ptr %i.aif, align 8, !alias.scope !7725
  store ptr inttoptr (i64 8 to ptr), ptr %i.ait, align 8, !alias.scope !7725
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  store i64 0, ptr %i.ajl, align 8, !alias.scope !7725
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 231
  store i8 1, ptr %i.ajm, align 1
  %i.ajn = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  store i64 0, ptr %i.ajn, align 8, !alias.scope !7728
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ajo, align 8, !alias.scope !7728
  %i.ajp = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  store i64 0, ptr %i.ajp, align 8, !alias.scope !7728
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
  %.not1176 = icmp eq i8 %.val232, 0
  br i1 %.not1176, label %bb.sb, label %bb.li

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
  %i.akn = icmp samesign ult i64 %i.akm, 3
  br i1 %i.akn, label %bb.ll, label %bb.lu

bb.ll:                                            ; preds = %bb.lk
  %i.ako = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.akp = icmp ult i8 %i.ako, 3
  br i1 %i.akp, label %bb.lo, label %bb.lm, !prof !7426

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
  store i64 2, ptr %i.bu, align 8, !alias.scope !7731, !noalias !7734
  %i.aky = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.akx, ptr %i.aky, align 8, !alias.scope !7731, !noalias !7734
  %i.akz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1177 = icmp eq i8 %i.akz, 0
  br i1 %.not1177, label %bb.lv, label %bb.lt

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 48
  store i64 1, ptr %i.bt, align 8, !alias.scope !7736, !noalias !7739
  %.sroa.4.0..sroa_idx.i370 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @199, ptr %.sroa.4.0..sroa_idx.i370, align 8, !alias.scope !7736, !noalias !7739
  %.sroa.5.0..sroa_idx.i371 = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i371, align 8, !alias.scope !7736, !noalias !7739
  %i.alb = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.ala, ptr %i.alb, align 8, !alias.scope !7736, !noalias !7739
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
  store i64 1, ptr %i.bv, align 8, !alias.scope !7742, !noalias !7745
  %.sroa.4.0..sroa_idx.i372 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr @199, ptr %.sroa.4.0..sroa_idx.i372, align 8, !alias.scope !7742, !noalias !7745
  %.sroa.5.0..sroa_idx.i373 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i373, align 8, !alias.scope !7742, !noalias !7745
  %i.alj = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.ali, ptr %i.alj, align 8, !alias.scope !7742, !noalias !7745
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7748)
  call void @llvm.experimental.noalias.scope.decl(metadata !7751)
  %i.alx = load ptr, ptr %i.alw, align 8, !alias.scope !7754, !nonnull !12, !noundef !12
  %i.aly = atomicrmw sub ptr %i.alx, i64 1 release, align 8, !noalias !7754
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7755)
  call void @llvm.experimental.noalias.scope.decl(metadata !7758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7761
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %.val263, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc376 unwind label %.loopexit

.noexc376:                                        ; preds = %bb.mi
  %i.amb = load i64, ptr %i.b, align 8, !range !49, !noalias !7761, !noundef !12
  %i.amc = trunc nuw i64 %i.amb to i1
  %i.amd = load i64, ptr %i.ajx, align 8, !range !50, !noalias !7761, !noundef !12 ; 3 uses
  br i1 %i.amc, label %bb.mj, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !51

bb.mj:                                            ; preds = %.noexc376
  %i.ame = load i64, ptr %i.ajy, align 8, !noalias !7761
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.amd, i64 %i.ame) #50
          to label %.noexc377 unwind label %.loopexit.split-lp

.noexc377:                                        ; preds = %bb.mj
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc376
  %i.amf = load ptr, ptr %i.ajy, align 8, !noalias !7761, !nonnull !12, !noundef !12 ; 2 uses
  %i.amg = icmp ule i64 %.val263, %i.amd
  call void @llvm.assume(i1 %i.amg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7761
  %.not.i.i.i375 = icmp eq i64 %.val263, 0
  br i1 %.not.i.i.i375, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body477, %bb.rs, %.body360
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %.body360 ], [ %i.avx, %bb.rs ], [ %.pn145, %.body477 ]
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEEB1n_(ptr noalias noundef align 8 dereferenceable(24) %i.aoc) #52
          to label %.body402 unwind label %bb.bi

bb.nv:                                            ; preds = %bb.nw
  %i.aod = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.ra

bb.nw:                                            ; preds = %bb.qz, %bb.a
  %.sroa.11690.sroa.0.1 = phi i64 [ %.sroa.11690.sroa.0.0, %bb.qz ], [ undef, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4nextINtB5_4NextINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1c_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3s_5ErrorENtNtB1c_6marker4SendEL_EEENtNtNtB1c_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bs, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aoe, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.nx unwind label %bb.nv

bb.nx:                                            ; preds = %bb.nw
  %i.aof = load i64, ptr %i.bs, align 8, !range !2178, !noundef !12 ; 4 uses
  %i.aog = icmp eq i64 %i.aof, -9223372036854775806
  br i1 %i.aog, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  store i64 -9223372036854775709, ptr %0, align 16
  br label %common.ret

bb.nz:                                            ; preds = %bb.nx
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.3.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.3.sroa.2.0.copyload = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.3.sroa.3.0.copyload = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.sroa.3.sroa.4.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.3.sroa.5.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %.sroa.3.sroa.6.0.copyload = load i64, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %.sroa.3.sroa.7.0.copyload = load i64, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.3.sroa.8.0.copyload = load i64, ptr %.sroa.3.sroa.8.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 2 uses
  %i.aoh = load <2 x i64>, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.9.0.copyload = load i64, ptr %.sroa.3.sroa.9.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %.sroa.3.sroa.11.0.copyload = load i64, ptr %.sroa.3.sroa.11.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %.not87 = icmp eq i64 %i.aof, -9223372036854775807
  br i1 %.not87, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.aoi = icmp eq i64 %i.aof, -9223372036854775808
  br i1 %i.aoi, label %bb.re, label %bb.oc

bb.ob:                                            ; preds = %bb.nz
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 424
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aoj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit407 unwind label %bb.rf

bb.oc:                                            ; preds = %bb.oa
  store i64 %i.aof, ptr %i.br, align 8
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.sroa.3.sroa.0.0.copyload, ptr %.sroa.4731.0..sroa_idx, align 8
  %.sroa.5732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.3.sroa.2.0.copyload, ptr %.sroa.5732.0..sroa_idx, align 8
  %.sroa.6733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 7 uses
  store i64 %.sroa.3.sroa.3.0.copyload, ptr %.sroa.6733.0..sroa_idx, align 8
  %.sroa.7734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store i64 %.sroa.3.sroa.4.0.copyload, ptr %.sroa.7734.0..sroa_idx, align 8
  %.sroa.8735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store i64 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.8735.0..sroa_idx, align 8
  %.sroa.9736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 7 uses
  store i64 %.sroa.3.sroa.6.0.copyload, ptr %.sroa.9736.0..sroa_idx, align 8
  %.sroa.10737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store i64 %.sroa.3.sroa.7.0.copyload, ptr %.sroa.10737.0..sroa_idx, align 8
  %.sroa.11738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  store i64 %.sroa.3.sroa.8.0.copyload, ptr %.sroa.11738.0..sroa_idx, align 8
  %.sroa.12739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 72 ; 2 uses
  %.sroa.13740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store <2 x i64> %i.aoh, ptr %.sroa.12739.0..sroa_idx, align 8
  %.sroa.14741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 88 ; 2 uses
  store i64 %.sroa.3.sroa.11.0.copyload, ptr %.sroa.14741.0..sroa_idx, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.aol = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsjyY8HP3IvQ6_12object_store4path4PathuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aok, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathE8containsB14_ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.aom = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathE8containsB14_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.oc
  br i1 %i.aol, label %.critedge160, label %bb.of

bb.oe:                                            ; preds = %bb.of
  %i.aon = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.rc

bb.of:                                            ; preds = %_RINvMs2_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathE8containsB14_ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.aop = load ptr, ptr %i.aoo, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.aoq = getelementptr i8, ptr %i.aop, i64 8
  %.val264 = load ptr, ptr %i.aoq, align 8, !nonnull !12, !noundef !12
  %i.aor = getelementptr i8, ptr %i.aop, i64 16
  %.val265 = load i64, ptr %i.aor, align 8, !noundef !12
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum12ok_to_delete(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aot, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aos, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val264, i64 noundef %.val265)
          to label %bb.og unwind label %bb.oe

bb.og:                                            ; preds = %bb.of
  call void @llvm.experimental.noalias.scope.decl(metadata !7790)
  %i.aou = load i64, ptr %i.bq, align 16, !range !55, !alias.scope !7793, !noalias !7790, !noundef !12 ; 2 uses
  %.not.i410 = icmp eq i64 %i.aou, -9223372036854775711
  %i.aov = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.aow = load i8, ptr %i.aov, align 8, !alias.scope !7795 ; 2 uses
  br i1 %.not.i410, label %bb.oh, label %bb.qn

bb.oh:                                            ; preds = %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %bb.oi, label %.critedge160

bb.oi:                                            ; preds = %bb.oh
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aoz = load i64, ptr %i.aoy, align 8, !noundef !12
  %i.apa = load i32, ptr %.sroa.13740.0..sroa_idx, align 8, !range !7437, !alias.scope !7796, !noundef !12 ; 2 uses
  %i.apb = ashr i32 %i.apa, 13                    ; 3 uses
  %i.apc = add nsw i32 %i.apb, -1                 ; 2 uses
  %i.apd = icmp slt i32 %i.apb, 1
  br i1 %i.apd, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.ape = sub nsw i32 1, %i.apb
  %i.apf = udiv i32 %i.ape, 400
  %i.apg = add nuw nsw i32 %i.apf, 1              ; 2 uses
  %i.aph = mul nuw nsw i32 %i.apg, 400
  %i.api = add nsw i32 %i.aph, %i.apc
  %.neg.i.i415 = mul nsw i32 %i.apg, -146097
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %.sroa.05.0.i.i412 = phi i32 [ %.neg.i.i415, %bb.oj ], [ 0, %bb.oi ]
  %.sroa.0.0.i.i413 = phi i32 [ %i.api, %bb.oj ], [ %i.apc, %bb.oi ] ; 2 uses
  %i.apj = sdiv i32 %.sroa.0.0.i.i413, 100        ; 2 uses
  %i.apk = mul nsw i32 %.sroa.0.0.i.i413, 1461
  %i.apl = ashr i32 %i.apk, 2
  %i.apm = ashr i32 %i.apj, 2
  %i.apn = lshr i32 %i.apa, 4
  %i.apo = and i32 %i.apn, 511
  %i.app = getelementptr inbounds nuw i8, ptr %i.br, i64 84
  %i.apq = load i32, ptr %i.app, align 4, !alias.scope !7796, !noundef !12
  %i.apr = zext i32 %i.apq to i64
  %i.aps = add nuw nsw i32 %i.apo, -719163
  %i.apt = add nsw i32 %i.aps, %.sroa.05.0.i.i412
  %i.apu = sub nsw i32 %i.apt, %i.apj
  %i.apv = add nsw i32 %i.apu, %i.apl
  %narrow.i414 = add nsw i32 %i.apv, %i.apm
  %i.apw = sext i32 %narrow.i414 to i64
  %i.apx = mul nsw i64 %i.apw, 86400
  %i.apy = add nsw i64 %i.apx, %i.apr
  %i.apz = load i32, ptr %.sroa.14741.0..sroa_idx, align 8, !alias.scope !7796, !noundef !12
  %i.aqa = udiv i32 %i.apz, 1000000
  %i.aqb = zext nneg i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val256 = load i64, ptr %i.aqc, align 8, !noundef !12 ; 3 uses
  %i.aqd = getelementptr i8, ptr %1, i64 24
  %.val257 = load i32, ptr %i.aqd, align 8        ; 4 uses
  %i.aqe = icmp slt i64 %.val256, 0
  br i1 %i.aqe, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.aqf = icmp sgt i32 %.val257, 0               ; 2 uses
  %i.aqg = zext i1 %i.aqf to i64
  %.sroa.01.0.i = add nsw i64 %.val256, %i.aqg
  %i.aqh = add nsw i32 %.val257, -1000000000
  %spec.select.i = select i1 %i.aqf, i32 %i.aqh, i32 %.val257
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %.sroa.03.0.i = phi i32 [ %spec.select.i, %bb.ol ], [ %.val257, %bb.ok ]
  %.sroa.0.1.in.i = phi i64 [ %.sroa.01.0.i, %bb.ol ], [ %.val256, %bb.ok ]
  %.sroa.0.1.i = mul i64 %.sroa.0.1.in.i, 1000
  %i.aqi = sdiv i32 %.sroa.03.0.i, 1000000
  %i.aqj = sext i32 %i.aqi to i64
  %i.aqk = add i64 %.sroa.0.1.i, %i.aqj
  %.neg1183 = mul nsw i64 %i.apy, -1000
  %.neg1184 = sub i64 %i.aoz, %i.aqb
  %i.aql = add i64 %.neg1184, %.neg1183
  %i.aqm = icmp slt i64 %i.aql, %i.aqk
  %i.aqn = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aqo = icmp samesign ult i64 %i.aqn, 2        ; 2 uses
  br i1 %i.aqm, label %bb.pq, label %bb.on

bb.on:                                            ; preds = %bb.om
  br i1 %i.aqo, label %bb.oo, label %bb.ov

bb.oo:                                            ; preds = %bb.on
  %i.aqp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aqq = icmp ult i8 %i.aqp, 3
  br i1 %i.aqq, label %bb.or, label %bb.op, !prof !7426

bb.op:                                            ; preds = %bb.oo
  %i.aqr = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE) #54
          to label %bb.or unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.or:                                            ; preds = %bb.op, %bb.oo
  %.sroa.0.0.i418 = phi i8 [ %i.aqp, %bb.oo ], [ %i.aqr, %bb.op ] ; 2 uses
  %i.aqt = icmp eq i8 %.sroa.0.0.i418, 0
  br i1 %i.aqt, label %bb.ov, label %bb.ot

bb.os:                                            ; preds = %bb.ot
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.ot:                                            ; preds = %bb.or
  %i.aqv = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.aqw = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aqv, i8 noundef %.sroa.0.0.i418)
          to label %bb.ou unwind label %bb.os

bb.ou:                                            ; preds = %bb.ot
  br i1 %i.aqw, label %bb.pj, label %bb.ov

bb.ov:                                            ; preds = %bb.on, %bb.or, %bb.ou
  %i.aqx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1178 = icmp eq i8 %i.aqx, 0
  br i1 %.not1178, label %bb.ow, label %bb.pf

bb.ow:                                            ; preds = %bb.ov
  %i.aqy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aqz = icmp ult i64 %i.aqy, 6
  call void @llvm.assume(i1 %i.aqz)
  %i.ara = icmp samesign ugt i64 %i.aqy, 3
  br i1 %i.ara, label %bb.oy, label %bb.pf

bb.ox:                                            ; preds = %bb.oy
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.oy:                                            ; preds = %bb.ow
  %i.arc = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.ard = getelementptr i8, ptr %i.arc, i64 32
  %.val220 = load ptr, ptr %i.ard, align 8, !nonnull !12, !noundef !12
  %i.are = getelementptr i8, ptr %i.arc, i64 40
  %.val221 = load i64, ptr %i.are, align 8, !noundef !12
  store i64 4, ptr %i.az, align 8, !alias.scope !7799
  %.sroa.6780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.val220, ptr %.sroa.6780.0..sroa_idx, align 8, !alias.scope !7799
  %.sroa.8781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.val221, ptr %.sroa.8781.0..sroa_idx, align 8, !alias.scope !7799
  %i.arf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.oz unwind label %bb.ox     ; 2 uses

bb.oz:                                            ; preds = %bb.oy
  %i.arg = extractvalue { ptr, ptr } %i.arf, 0    ; 2 uses
  %i.arh = extractvalue { ptr, ptr } %i.arf, 1    ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 24
  %i.arj = load ptr, ptr %i.ari, align 8, !invariant.load !12, !nonnull !12
  %i.ark = invoke noundef zeroext i1 %i.arj(ptr noundef %i.arg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.pb unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.arl = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.pb:                                            ; preds = %bb.oz
  br i1 %i.ark, label %bb.pc, label %bb.pf

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.arm = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.br, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.av, ptr %i.au, align 8
  %.sroa.5783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5783.0..sroa_idx, align 8
  store ptr @200, ptr %i.aw, align 8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.au, ptr %i.aro, align 8
  store ptr %i.aw, ptr %i.ax, align 8
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr @156, ptr %i.arp, align 8
  store i64 1, ptr %i.ay, align 8, !alias.scope !7803, !noalias !7806
  %.sroa.4.0..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx.i426, align 8, !alias.scope !7803, !noalias !7806
  %.sroa.5.0..sroa_idx.i427 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i427, align 8, !alias.scope !7803, !noalias !7806
  %i.arq = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.arn, ptr %i.arq, align 8, !alias.scope !7803, !noalias !7806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.arc, ptr noundef nonnull %i.arg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.arh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay)
          to label %bb.pe unwind label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.arr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.rc

bb.pe:                                            ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pb, %bb.ow, %bb.ov, %bb.pl
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  %i.art = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.aru = load i64, ptr %i.art, align 8, !alias.scope !7809, !noalias !7814, !noundef !12 ; 3 uses
  %i.arv = load i64, ptr %i.ars, align 8, !range !378, !alias.scope !7809, !noalias !7814, !noundef !12
  %i.arw = icmp eq i64 %i.aru, %i.arv
  br i1 %i.arw, label %bb.pg, label %bb.pm

bb.pg:                                            ; preds = %bb.pf
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ars)
          to label %bb.pm unwind label %bb.ph, !noalias !7814

bb.ph:                                            ; preds = %bb.pg
  %i.arx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #52
          to label %.body428 unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.ary = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.pj:                                            ; preds = %bb.ou
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.arz = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s2_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr %i.br, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr %i.bb, ptr %i.ba, align 8
  %.sroa.5775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5775.0..sroa_idx, align 8
  store ptr @200, ptr %i.bc, align 8
  %i.asb = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ba, ptr %i.asb, align 8
  store ptr %i.bc, ptr %i.bd, align 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @156, ptr %i.asc, align 8
  store i64 1, ptr %i.be, align 8
  %.sroa.6771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %.sroa.6771.0..sroa_idx, align 8
  %.sroa.7772.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 1, ptr %.sroa.7772.0..sroa_idx, align 8
  %.sroa.8773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.asa, ptr %.sroa.8773.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s5_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.pl unwind label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.asd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.rc

bb.pl:                                            ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
end_hunk_3
begin_hunk_4_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.auu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470 unwind label %bb.bi

bb.rb:                                            ; preds = %.body428, %bb.po, %bb.rc
  %.pn117.pn1171 = phi { ptr, i32 } [ %.pn117.pn.ph, %bb.rc ], [ %i.arx, %.body428 ], [ %i.aso, %bb.po ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6733.0..sroa_idx) #52
          to label %bb.rd unwind label %bb.bi

bb.rc:                                            ; preds = %bb.qk, %bb.pv, %bb.pt, %bb.pk, %bb.od, %bb.os, %bb.oq, %bb.pa, %bb.pd, %bb.ox, %bb.qd, %bb.qg, %bb.qa, %bb.oe
  %.pn117.pn.ph = phi { ptr, i32 } [ %i.atb, %bb.pv ], [ %i.asz, %bb.pt ], [ %i.arb, %bb.ox ], [ %i.arl, %bb.pa ], [ %i.arr, %bb.pd ], [ %i.aon, %bb.oe ], [ %i.aom, %bb.od ], [ %i.asd, %bb.pk ], [ %i.ati, %bb.qa ], [ %i.aqs, %bb.oq ], [ %i.ats, %bb.qd ], [ %i.aqu, %bb.os ], [ %i.aty, %bb.qg ], [ %i.aud, %bb.qk ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.br) #52
          to label %bb.rb unwind label %bb.bi

bb.rd:                                            ; preds = %bb.rb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %.sroa.9736.0..sroa_idx) #52
          to label %.body465 unwind label %bb.bi

bb.re:                                            ; preds = %bb.oa
  %.sroa.10797.sroa.0.0.extract.trunc842 = trunc i64 %.sroa.3.sroa.0.0.copyload to i8
  %.sroa.10797.sroa.10.0.extract.shift848 = lshr i64 %.sroa.3.sroa.0.0.copyload, 8
  %.sroa.10797.sroa.10.0.extract.trunc849 = trunc nuw i64 %.sroa.10797.sroa.10.0.extract.shift848 to i56
  br label %bb.qo

bb.rf:                                            ; preds = %bb.qo, %bb.ob
  %i.auv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit470

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit451: ; preds = %bb.qo
  %i.auw = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val228 = load ptr, ptr %i.auw, align 8        ; 5 uses
  %i.aux = getelementptr i8, ptr %1, i64 416
  %.val229 = load ptr, ptr %i.aux, align 8, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.auy = load ptr, ptr %.val229, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i471 = icmp eq ptr %i.auy, null
  br i1 %.not.i.i471, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit451
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val228) ]
  invoke void %i.auy(ptr noundef nonnull %.val228)
          to label %bb.rh unwind label %bb.rj

bb.rh:                                            ; preds = %bb.rg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit451
  %i.auz = getelementptr inbounds nuw i8, ptr %.val229, i64 8
  %i.ava = load i64, ptr %i.auz, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.avb = icmp eq i64 %i.ava, 0
  br i1 %i.avb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.avc = getelementptr inbounds nuw i8, ptr %.val229, i64 16
  %i.avd = load i64, ptr %i.avc, align 8, !range !490, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val228) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val228, i64 noundef range(i64 1, 0) %i.ava, i64 noundef range(i64 1, 536870913) %i.avd) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.rj:                                            ; preds = %bb.rg
  %i.ave = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.val229, i64 8
  %i.avg = load i64, ptr %i.avf, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.avh = icmp eq i64 %i.avg, 0
  br i1 %i.avh, label %.body472, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.avi = getelementptr inbounds nuw i8, ptr %.val229, i64 16
  %i.avj = load i64, ptr %i.avi, align 8, !range !490, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val228, i64 noundef range(i64 1, 0) %i.avg, i64 noundef range(i64 1, 536870913) %i.avj) #51
  br label %.body472

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ri, %bb.rh
  %i.avk = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.avk)
          to label %bb.rm unwind label %bb.rl

bb.rl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit485, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.avl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mf

bb.rm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.avm = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7839)
  call void @llvm.experimental.noalias.scope.decl(metadata !7842)
  %i.avn = load ptr, ptr %i.avm, align 8, !alias.scope !7845, !nonnull !12, !noundef !12
  %i.avo = atomicrmw sub ptr %i.avn, i64 1 release, align 8, !noalias !7845
  %i.avp = icmp eq i64 %i.avo, 1
  br i1 %i.avp, label %bb.rn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit475

bb.rn:                                            ; preds = %bb.rm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.avm) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit475 unwind label %bb.ro

bb.ro:                                            ; preds = %bb.sa, %bb.rn
  %i.avq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit400: ; preds = %bb.nn
  %i.avr = getelementptr inbounds nuw i8, ptr %1, i64 230
  store i8 0, ptr %i.avr, align 2
  %i.avs = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avs)
          to label %bb.rq unwind label %bb.rp

bb.rp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit400
  %i.avt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avs)
          to label %.body477 unwind label %bb.rr

bb.rq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit400
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.avs)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.le

bb.rr:                                            ; preds = %bb.rp
  %i.avu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.rq
  %i.avv = getelementptr inbounds nuw i8, ptr %1, i64 231
  store i8 0, ptr %i.avv, align 1
  %i.avw = getelementptr inbounds nuw i8, ptr %1, i64 344
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.avw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit480 unwind label %bb.rs

bb.rs:                                            ; preds = %bb.ta, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit
  %i.avx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit

bb.rt:                                            ; preds = %bb.tc, %bb.nt
  %i.avy = landingpad { ptr, i32 }
          cleanup
  br label %.body402

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit407: ; preds = %bb.ob
  %i.avz = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val226 = load ptr, ptr %i.avz, align 8        ; 5 uses
  %i.awa = getelementptr i8, ptr %1, i64 416
  %.val227 = load ptr, ptr %i.awa, align 8, !nonnull !12, !align !209, !noundef !12 ; 5 uses
  %i.awb = load ptr, ptr %.val227, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i481 = icmp eq ptr %i.awb, null
  br i1 %.not.i.i481, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit407
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val226) ]
  invoke void %i.awb(ptr noundef nonnull %.val226)
          to label %bb.rv unwind label %bb.rx

bb.rv:                                            ; preds = %bb.ru, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit407
  %i.awc = getelementptr inbounds nuw i8, ptr %.val227, i64 8
  %i.awd = load i64, ptr %i.awc, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.awe = icmp eq i64 %i.awd, 0
  br i1 %i.awe, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit485, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.awf = getelementptr inbounds nuw i8, ptr %.val227, i64 16
  %i.awg = load i64, ptr %i.awf, align 8, !range !490, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val226) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val226, i64 noundef range(i64 1, 0) %i.awd, i64 noundef range(i64 1, 536870913) %i.awg) #51
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit485

bb.rx:                                            ; preds = %bb.ru
  %i.awh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.val227, i64 8
  %i.awj = load i64, ptr %i.awi, align 8, !range !378, !invariant.load !12 ; 2 uses
  %i.awk = icmp eq i64 %i.awj, 0
  br i1 %i.awk, label %.body472, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.awl = getelementptr inbounds nuw i8, ptr %.val227, i64 16
  %i.awm = load i64, ptr %i.awl, align 8, !range !490, !invariant.load !12
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val226, i64 noundef range(i64 1, 0) %i.awj, i64 noundef range(i64 1, 536870913) %i.awm) #51
  br label %.body472

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit485: ; preds = %bb.rw, %bb.rv
  %i.awn = getelementptr inbounds nuw i8, ptr %1, i64 296
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.awn)
          to label %bb.rz unwind label %bb.rl

bb.rz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2K_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit485
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7846)
  call void @llvm.experimental.noalias.scope.decl(metadata !7849)
  %i.awp = load ptr, ptr %i.awo, align 8, !alias.scope !7852, !nonnull !12, !noundef !12
  %i.awq = atomicrmw sub ptr %i.awp, i64 1 release, align 8, !noalias !7852
  %i.awr = icmp eq i64 %i.awq, 1
  br i1 %i.awr, label %bb.sa, label %bb.sb

bb.sa:                                            ; preds = %bb.rz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.awo) #54
          to label %bb.sb unwind label %bb.ro

bb.sb:                                            ; preds = %._crit_edge, %bb.sa, %bb.rz
  %i.aws = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.awt = icmp samesign ult i64 %i.aws, 3
  br i1 %i.awt, label %bb.sc, label %bb.sj

bb.sc:                                            ; preds = %bb.sb
  %i.awu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.awv = icmp ult i8 %i.awu, 3
  br i1 %i.awv, label %bb.sf, label %bb.sd, !prof !7426

bb.sd:                                            ; preds = %bb.sc
  %i.aww = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE) #54
          to label %bb.sf unwind label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.awx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.sf:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.0.0.i489 = phi i8 [ %i.awu, %bb.sc ], [ %i.aww, %bb.sd ] ; 2 uses
  %i.awy = icmp eq i8 %.sroa.0.0.i489, 0
  br i1 %i.awy, label %bb.sj, label %bb.sh

bb.sg:                                            ; preds = %bb.sh
  %i.awz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.sh:                                            ; preds = %bb.sf
  %i.axa = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.axb = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axa, i8 noundef %.sroa.0.0.i489)
          to label %bb.si unwind label %bb.sg

bb.si:                                            ; preds = %bb.sh
  br i1 %i.axb, label %bb.sv, label %bb.sj

bb.sj:                                            ; preds = %bb.sb, %bb.sf, %bb.si
  %i.axc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1180 = icmp eq i8 %i.axc, 0
  br i1 %.not1180, label %bb.sk, label %bb.st

bb.sk:                                            ; preds = %bb.sj
  %i.axd = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.axe = icmp ult i64 %i.axd, 6
  call void @llvm.assume(i1 %i.axe)
  %i.axf = icmp samesign ugt i64 %i.axd, 2
  br i1 %i.axf, label %bb.sm, label %bb.st

bb.sl:                                            ; preds = %bb.sm
  %i.axg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.sm:                                            ; preds = %bb.sk
  %i.axh = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.axi = getelementptr i8, ptr %i.axh, i64 32
  %.val216 = load ptr, ptr %i.axi, align 8, !nonnull !12, !noundef !12
  %i.axj = getelementptr i8, ptr %i.axh, i64 40
  %.val217 = load i64, ptr %i.axj, align 8, !noundef !12
  store i64 3, ptr %i.ao, align 8, !alias.scope !7853
  %.sroa.6794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.val216, ptr %.sroa.6794.0..sroa_idx, align 8, !alias.scope !7853
  %.sroa.8795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.val217, ptr %.sroa.8795.0..sroa_idx, align 8, !alias.scope !7853
  %i.axk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.sn unwind label %bb.sl     ; 2 uses

bb.sn:                                            ; preds = %bb.sm
  %i.axl = extractvalue { ptr, ptr } %i.axk, 0    ; 2 uses
  %i.axm = extractvalue { ptr, ptr } %i.axk, 1    ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.axo = load ptr, ptr %i.axn, align 8, !invariant.load !12, !nonnull !12
  %i.axp = invoke noundef zeroext i1 %i.axo(ptr noundef %i.axl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
          to label %bb.sp unwind label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.axq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.sp:                                            ; preds = %bb.sn
  br i1 %i.axp, label %bb.sq, label %bb.st

bb.sq:                                            ; preds = %bb.sp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.axr = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @202, ptr %i.al, align 8
  %i.axt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 59 to ptr), ptr %i.axt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.axu = getelementptr i8, ptr %1, i64 264
  %.val269 = load i64, ptr %i.axu, align 8, !noundef !12 ; 2 uses
  %i.axv = icmp ult i64 %.val269, 384307168202282326
  call void @llvm.assume(i1 %i.axv)
  %i.axw = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 %.val269, ptr %i.ak, align 8
  store ptr %i.al, ptr %i.am, align 8
  %i.axx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @156, ptr %i.axx, align 8
  %i.axy = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.axw, ptr %i.axy, align 8
  %i.axz = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @203, ptr %i.axz, align 8
  %i.aya = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ak, ptr %i.aya, align 8
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr @204, ptr %i.ayb, align 8
  store i64 1, ptr %i.an, align 8, !alias.scope !7857, !noalias !7860
  %.sroa.4.0..sroa_idx.i496 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i496, align 8, !alias.scope !7857, !noalias !7860
  %.sroa.5.0..sroa_idx.i497 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i497, align 8, !alias.scope !7857, !noalias !7860
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.axs, ptr %i.ayc, align 8, !alias.scope !7857, !noalias !7860
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axh, ptr noundef nonnull %i.axl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %bb.ss unwind label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.ss:                                            ; preds = %bb.sq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.st

bb.st:                                            ; preds = %bb.ss, %bb.sp, %bb.sk, %bb.sj, %bb.sx
  %i.aye = getelementptr inbounds nuw i8, ptr %1, i64 231 ; 2 uses
  store i8 0, ptr %i.aye, align 1
  %i.ayf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.0.0.copyload = load i64, ptr %i.ayf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ayg = getelementptr inbounds nuw i8, ptr %1, i64 230
  store i8 0, ptr %i.ayg, align 2
  %i.ayh = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.01236.0.copyload = load i64, ptr %i.ayh, align 8
  %.sroa.41237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.41237.0.copyload = load i64, ptr %.sroa.41237.0..sroa_idx, align 8
  %.sroa.51238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.51238.0.copyload = load i64, ptr %.sroa.51238.0..sroa_idx, align 8
  %i.ayi = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ayj = load i8, ptr %i.ayi, align 4, !range !208, !noundef !12
  %.val254 = load i64, ptr %1, align 8, !noundef !12 ; 3 uses
  %i.ayk = getelementptr i8, ptr %1, i64 8
  %.val255 = load i32, ptr %i.ayk, align 8        ; 4 uses
  %i.ayl = icmp slt i64 %.val254, 0
  br i1 %i.ayl, label %bb.su, label %bb.sy

bb.su:                                            ; preds = %bb.st
  %i.aym = icmp sgt i32 %.val255, 0               ; 2 uses
  %i.ayn = zext i1 %i.aym to i64
  %.sroa.01.0.i501 = add nsw i64 %.val254, %i.ayn
  %i.ayo = add nsw i32 %.val255, -1000000000
  %spec.select.i502 = select i1 %i.aym, i32 %i.ayo, i32 %.val255
  br label %bb.sy

bb.sv:                                            ; preds = %bb.si
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ayp = load ptr, ptr @_RNvNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB9_13VacuumBuilder18create_vacuum_plan0s3_10___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @202, ptr %i.aq, align 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr inttoptr (i64 59 to ptr), ptr %i.ayr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ays = getelementptr i8, ptr %1, i64 264
  %.val268 = load i64, ptr %i.ays, align 8, !noundef !12 ; 2 uses
  %i.ayt = icmp ult i64 %.val268, 384307168202282326
  call void @llvm.assume(i1 %i.ayt)
  %i.ayu = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 %.val268, ptr %i.ap, align 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @156, ptr %i.ayv, align 8
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ayu, ptr %i.ayw, align 8
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @203, ptr %i.ayx, align 8
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.ap, ptr %i.ayy, align 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr @204, ptr %i.ayz, align 8
  store i64 1, ptr %i.as, align 8
  %.sroa.7787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %.sroa.7787.0..sroa_idx, align 8
  %.sroa.8788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 3, ptr %.sroa.8788.0..sroa_idx, align 8
  %.sroa.9789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
end_hunk_4
begin_hunk_5_@_RNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB7_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
bb.ex:                                            ; preds = %.noexc348
  %i.qv = add i16 %.sroa.06.0.i33.i.i.i343, -1
  %i.qw = and i16 %i.qv, %.sroa.06.0.i33.i.i.i343 ; 2 uses
  %.not.i.not.i.i.i344 = icmp eq i16 %i.qw, 0
  br i1 %.not.i.not.i.i.i344, label %._crit_edge.i.i.i345, label %.lr.ph.i.i.i342

bb.ey:                                            ; preds = %._crit_edge.i.i.i345
  %i.qx = add i64 %.sroa.9.0.i.i.i.i337, 16       ; 2 uses
  %i.qy = add i64 %.sroa.01.0.i.i.i.i339, %i.qx
  br label %bb.ew

select.unfold.i346:                               ; preds = %bb.eu, %._crit_edge.i.i.i345
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1020, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #56
          to label %.noexc349 unwind label %.loopexit.split-lp840.loopexit.split-lp

.noexc349:                                        ; preds = %select.unfold.i346
  unreachable

.loopexit839:                                     ; preds = %.lr.ph.i.i.i342
  %lpad.loopexit841 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

.loopexit.split-lp840.loopexit:                   ; preds = %bb.ev
  %lpad.loopexit845 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

.loopexit.split-lp840.loopexit.split-lp:          ; preds = %select.unfold.i346
  %lpad.loopexit.split-lp846 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.ez:                                            ; preds = %.noexc348
  %i.qz = load i64, ptr %i.od, align 8, !alias.scope !8978, !noalias !8983, !noundef !12
  %i.ra = icmp eq i64 %i.qz, 0
  br i1 %i.ra, label %select.unfold.i359, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rb = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.op)
          to label %.noexc360 unwind label %.loopexit.split-lp836.loopexit ; 2 uses

.noexc360:                                        ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !8987)
  call void @llvm.experimental.noalias.scope.decl(metadata !8990)
  %i.rc = lshr i64 %i.rb, 57
  %i.rd = trunc nuw nsw i64 %i.rc to i8
  %i.re = load i64, ptr %i.of, align 8, !alias.scope !8993, !noalias !8994, !noundef !12 ; 2 uses
  %i.rf = load ptr, ptr %i.mi, align 8, !alias.scope !8993, !noalias !8994, !nonnull !12, !noundef !12 ; 2 uses
  %i.rg = insertelement <16 x i8> poison, i8 %i.rd, i64 0
  %i.rh = shufflevector <16 x i8> %i.rg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fd, %.noexc360
  %.sroa.9.0.i.i.i.i350 = phi i64 [ 0, %.noexc360 ], [ %i.ry, %bb.fd ]
  %.pn.i.i.i.i351 = phi i64 [ %i.rb, %.noexc360 ], [ %i.rz, %bb.fd ]
  %.sroa.01.0.i.i.i.i352 = and i64 %.pn.i.i.i.i351, %i.re ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.sroa.01.0.i.i.i.i352
  %.sroa.0.0.copyload.i26.i.i.i353 = load <16 x i8>, ptr %i.ri, align 1, !noalias !8997 ; 2 uses
  %i.rj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i353, %i.rh
  %i.rk = bitcast <16 x i1> %i.rj to i16          ; 2 uses
  %.not.i.not32.i.i.i354 = icmp eq i16 %i.rk, 0
  br i1 %.not.i.not32.i.i.i354, label %._crit_edge.i.i.i358, label %.lr.ph.i.i.i355

.lr.ph.i.i.i355:                                  ; preds = %bb.fb, %bb.fc
  %.sroa.06.0.i33.i.i.i356 = phi i16 [ %i.rx, %bb.fc ], [ %i.rk, %bb.fb ] ; 3 uses
  %i.rl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i356, i1 true)
  %i.rm = zext nneg i16 %i.rl to i64
  %i.rn = add i64 %.sroa.01.0.i.i.i.i352, %i.rm
  %i.ro = and i64 %i.rn, %i.re
  %i.rp = sub nsw i64 0, %i.ro
  %i.rq = getelementptr inbounds [32 x i8], ptr %i.rf, i64 %i.rp ; 3 uses
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 -32
  %i.rs = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentRBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.op, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.rr)
          to label %.noexc361 unwind label %.loopexit835

.noexc361:                                        ; preds = %.lr.ph.i.i.i355
  br i1 %i.rs, label %bb.fe, label %bb.fc, !prof !105

._crit_edge.i.i.i358:                             ; preds = %bb.fc, %bb.fb
  %i.rt = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i353, splat (i8 -1)
  %i.ru = bitcast <16 x i1> %i.rt to i16
  %i.rv = icmp eq i16 %i.ru, 0
  br i1 %i.rv, label %bb.fd, label %select.unfold.i359, !prof !51

bb.fc:                                            ; preds = %.noexc361
  %i.rw = add i16 %.sroa.06.0.i33.i.i.i356, -1
  %i.rx = and i16 %i.rw, %.sroa.06.0.i33.i.i.i356 ; 2 uses
  %.not.i.not.i.i.i357 = icmp eq i16 %i.rx, 0
  br i1 %.not.i.not.i.i.i357, label %._crit_edge.i.i.i358, label %.lr.ph.i.i.i355

bb.fd:                                            ; preds = %._crit_edge.i.i.i358
  %i.ry = add i64 %.sroa.9.0.i.i.i.i350, 16       ; 2 uses
  %i.rz = add i64 %.sroa.01.0.i.i.i.i352, %i.ry
  br label %bb.fb

select.unfold.i359:                               ; preds = %bb.ez, %._crit_edge.i.i.i358
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1020, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @362) #56
          to label %.noexc362 unwind label %.loopexit.split-lp836.loopexit.split-lp

.noexc362:                                        ; preds = %select.unfold.i359
  unreachable

.loopexit835:                                     ; preds = %.lr.ph.i.i.i355
  %lpad.loopexit837 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

.loopexit.split-lp836.loopexit:                   ; preds = %bb.fa
  %lpad.loopexit849 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

.loopexit.split-lp836.loopexit.split-lp:          ; preds = %select.unfold.i359
  %lpad.loopexit.split-lp850 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.fe:                                            ; preds = %.noexc361
  %i.sa = getelementptr i8, ptr %i.qp, i64 -8
  %.val226 = load i64, ptr %i.sa, align 8, !noundef !12 ; 2 uses
  %i.sb = getelementptr i8, ptr %i.rq, i64 -8
  %.val228 = load i64, ptr %i.sb, align 8, !noundef !12
  %i.sc = icmp eq i64 %.val226, %.val228
  br i1 %i.sc, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.fe
  %i.sd = getelementptr i8, ptr %i.rq, i64 -16
  %.val227 = load ptr, ptr %i.sd, align 8, !nonnull !12, !noundef !12
  %i.se = getelementptr i8, ptr %i.qp, i64 -16
  %.val225 = load ptr, ptr %i.se, align 8, !nonnull !12, !noundef !12
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val225, ptr nonnull readonly %.val227, i64 %.val226)
  %i.sf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.sf, label %bb.fm, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.fe, %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  %i.sg = invoke fastcc noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_EINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexRB13_E5indexCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @363)
          to label %bb.fg unwind label %bb.ff

bb.ff:                                            ; preds = %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fg:                                            ; preds = %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.si = invoke fastcc noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_EINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexB13_E5indexCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.op, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364)
          to label %bb.fj unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fj
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.bz, ptr %i.bx, align 8
  %.sroa.5627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5627.0..sroa_idx, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.sg, ptr %i.sl, align 8
  %.sroa.5629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5629.0..sroa_idx, align 8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.si, ptr %i.sm, align 8
  %.sroa.5631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5631.0..sroa_idx, align 8
  invoke fastcc void @_RNvNtCs6Po7BT7Nknu_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.by, ptr noundef nonnull @365, ptr noundef nonnull %i.bx)
          to label %bb.fl unwind label %bb.fi

bb.fk:                                            ; preds = %bb.ff, %bb.fh, %bb.fi
  %.pn151 = phi { ptr, i32 } [ %i.sh, %bb.ff ], [ %i.sk, %bb.fi ], [ %i.sj, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  br label %.loopexit.split-lp840

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.by, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  %i.sn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 -9223372036854775722, ptr %i.sn, align 16
  store i64 1, ptr %i.x, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core5table7columns10ConstraintEEB1j_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core5table7columns10ConstraintEEB1j_.exit: ; preds = %bb.it, %bb.hh, %bb.fl
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 745 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 1, !range !208, !noundef !12
  %i.sq = trunc nuw i8 %i.sp to i1
  br i1 %i.sq, label %bb.pd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs14kWLkQVSKO_14deltalake_core.exit

bb.fm:                                            ; preds = %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.sr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ss = icmp samesign ult i64 %i.sr, 4
  br i1 %i.ss, label %bb.fn, label %bb.fu

bb.fn:                                            ; preds = %bb.fm
  %i.st = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.su = icmp ult i8 %i.st, 3
  br i1 %i.su, label %bb.fq, label %bb.fo, !prof !7426

bb.fo:                                            ; preds = %bb.fn
  %i.sv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE) #54
          to label %bb.fq unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.fq:                                            ; preds = %bb.fo, %bb.fn
  %.sroa.0.0.i367 = phi i8 [ %i.st, %bb.fn ], [ %i.sv, %bb.fo ] ; 2 uses
  %i.sx = icmp eq i8 %.sroa.0.0.i367, 0
  br i1 %i.sx, label %bb.fu, label %bb.fs

bb.fr:                                            ; preds = %bb.fs
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.fs:                                            ; preds = %bb.fq
  %i.sz = load ptr, ptr @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  %i.ta = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sz, i8 noundef %.sroa.0.0.i367)
          to label %bb.ft unwind label %bb.fr

bb.ft:                                            ; preds = %bb.fs
  br i1 %i.ta, label %bb.gh, label %bb.fu

bb.fu:                                            ; preds = %bb.fm, %bb.fq, %bb.ft
  %i.tb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.tb, 0
  br i1 %.not, label %bb.fv, label %.backedge

bb.fv:                                            ; preds = %bb.fu
  %i.tc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.td = icmp ult i64 %i.tc, 6
  call void @llvm.assume(i1 %i.td)
  %i.te = icmp samesign ugt i64 %i.tc, 1
  br i1 %i.te, label %bb.fx, label %.backedge

bb.fw:                                            ; preds = %bb.fx
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.fx:                                            ; preds = %bb.fv
  %i.tg = load ptr, ptr @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12 ; 3 uses
  %i.th = getelementptr i8, ptr %i.tg, i64 32
  %.val282 = load ptr, ptr %i.th, align 8, !nonnull !12, !noundef !12
  %i.ti = getelementptr i8, ptr %i.tg, i64 40
  %.val283 = load i64, ptr %i.ti, align 8, !noundef !12
  store i64 2, ptr %i.bs, align 8, !alias.scope !9000
  store ptr %.val282, ptr %.sroa.6646.0..sroa_idx, align 8, !alias.scope !9000
  store i64 %.val283, ptr %.sroa.8647.0..sroa_idx, align 8, !alias.scope !9000
  %i.tj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fy unwind label %bb.fw     ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  %i.tk = extractvalue { ptr, ptr } %i.tj, 0      ; 2 uses
  %i.tl = extractvalue { ptr, ptr } %i.tj, 1      ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !invariant.load !12, !nonnull !12
  %i.to = invoke noundef zeroext i1 %i.tn(ptr noundef %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bs)
          to label %bb.ga unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp840

bb.ga:                                            ; preds = %bb.fy
  br i1 %i.to, label %bb.gb, label %.backedge

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.tq = load ptr, ptr @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.tr = invoke fastcc noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_EINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexB13_E5indexCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.op, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366)
          to label %bb.gd unwind label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gd:                                            ; preds = %bb.gb
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %i.bz, ptr %i.bo, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5649.0..sroa_idx, align 8
  store ptr %i.tr, ptr %i.oj, align 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5651.0..sroa_idx, align 8
  store ptr @367, ptr %i.bp, align 8
  store ptr %i.bo, ptr %i.ok, align 8
  store ptr %i.bp, ptr %i.bq, align 8
  store ptr @156, ptr %i.ol, align 8
  store i64 1, ptr %i.br, align 8, !alias.scope !9004, !noalias !9007
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i374, align 8, !alias.scope !9004, !noalias !9007
  store i64 1, ptr %.sroa.5.0..sroa_idx.i375, align 8, !alias.scope !9004, !noalias !9007
  store ptr %i.tt, ptr %i.om, align 8, !alias.scope !9004, !noalias !9007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tg, ptr noundef nonnull %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %bb.gf unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %.backedge

.backedge:                                        ; preds = %bb.gf, %bb.ga, %bb.fv, %bb.fu, %bb.gl
  br label %bb.ej

bb.gg:                                            ; preds = %bb.ge, %bb.gc
  %.pn157.pn = phi { ptr, i32 } [ %i.tu, %bb.ge ], [ %i.ts, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %.loopexit.split-lp840

bb.gh:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.tv = load ptr, ptr @_RNvNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future010___CALLSITE, align 8, !nonnull !12, !align !209, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.tw = invoke fastcc noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringB14_EINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexB13_E5indexCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.op, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.gm

bb.gj:                                            ; preds = %bb.gh
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.bz, ptr %i.bt, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5639.0..sroa_idx, align 8
  store ptr %i.tw, ptr %i.og, align 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5641.0..sroa_idx, align 8
  store ptr @367, ptr %i.bu, align 8
  store ptr %i.bt, ptr %i.oh, align 8
  store ptr %i.bu, ptr %i.bv, align 8
  store ptr @156, ptr %i.oi, align 8
  store i64 1, ptr %i.bw, align 8
  store ptr %i.bv, ptr %.sroa.7635.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.8636.0..sroa_idx, align 8
  store ptr %i.ty, ptr %.sroa.9637.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations11constraintsNtB9_17ConstraintBuilderNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0s3_0Bd_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.bw)
          to label %bb.gl unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.backedge

bb.gm:                                            ; preds = %bb.gk, %bb.gi
  %.pn164.pn = phi { ptr, i32 } [ %i.tz, %bb.gk ], [ %i.tx, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %.loopexit.split-lp840

.loopexit852:                                     ; preds = %.lr.ph.i.i.i
  %lpad.loopexit854 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp853

.loopexit.split-lp853.loopexit:                   ; preds = %bb.ee
  %lpad.loopexit857 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp853

.loopexit.split-lp853.loopexit.split-lp:          ; preds = %select.unfold.i
  %lpad.loopexit.split-lp858 = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_RNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema6schemaNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeNtB5_13StructTypeExt14get_invariants:bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %.sroa.7134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.5.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit133, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  store i64 -9223372036854775771, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs14kWLkQVSKO_14deltalake_core.exit127 unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body124, %bb.cz, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ko, %bb.cz ], [ %i.da, %bb.b ], [ %.pn67, %.body124 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit133
  %i.dc = phi i64 [ %i.bf, %.lr.ph ], [ %i.ks, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit133 ] ; 2 uses
  %i.dd = add nsw i64 %i.dc, -1                   ; 3 uses
  store i64 %i.dd, ptr %i.be, align 8
  %i.de = load i64, ptr %i.aw, align 8, !range !378, !noundef !12
  %i.df = icmp samesign ult i64 %i.dd, %i.de
  call void @llvm.assume(i1 %i.df)
  %i.dg = load ptr, ptr %i.bh, align 8, !nonnull !12, !noundef !12
  %i.dh = icmp samesign ult i64 %i.dc, 76861433640456467
  call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [120 x i8], ptr %i.dg, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %i.di, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.as, ptr noundef nonnull align 8 dereferenceable(96) %i.bi, i64 96, i1 false)
  %i.dj = load i8, ptr %i.bj, align 8, !range !358, !noundef !12
  switch i8 %i.dj, label %bb.e [
    i8 1, label %bb.j
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs14kWLkQVSKO_14deltalake_core.exit127: ; preds = %._crit_edge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema6schema9InvariantEEB1l_.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

bb.e:                                             ; preds = %bb.bm, %bb.aj, %bb.ae, %bb.d
  %i.dk = load i64, ptr %i.cu, align 8, !alias.scope !13422, !noalias !13425, !noundef !12
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @665, i64 noundef 16)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !13427)
  call void @llvm.experimental.noalias.scope.decl(metadata !13430)
  %i.dn = lshr i64 %i.dm, 57
  %i.do = trunc nuw nsw i64 %i.dn to i8
  %i.dp = load i64, ptr %i.cw, align 8, !alias.scope !13433, !noalias !13434, !noundef !12 ; 2 uses
  %i.dq = load ptr, ptr %i.ct, align 8, !alias.scope !13433, !noalias !13434, !nonnull !12, !noundef !12 ; 2 uses
  %i.dr = insertelement <16 x i8> poison, i8 %i.do, i64 0
  %i.ds = shufflevector <16 x i8> %i.dr, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc ], [ %i.ej, %bb.i ]
  %.pn.i.i.i = phi i64 [ %i.dm, %.noexc ], [ %i.ek, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.dp   ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.dt, align 1, !noalias !13437 ; 2 uses
  %i.du = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.ds
  %i.dv = bitcast <16 x i1> %i.du to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ei, %bb.h ], [ %i.dv, %bb.g ] ; 3 uses
  %i.dw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = add i64 %.sroa.01.0.i.i.i, %i.dx
  %i.dz = and i64 %i.dy, %i.dp
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr inbounds [56 x i8], ptr %i.dq, i64 %i.ea ; 6 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -56
  %i.ed = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) @665, i64 noundef range(i64 16, 27) 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ec)
          to label %.noexc70 unwind label %.loopexit

.noexc70:                                         ; preds = %.lr.ph.i.i
  br i1 %i.ed, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit, label %bb.h, !prof !105

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.ee = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %i.eg = icmp eq i16 %i.ef, 0
  br i1 %i.eg, label %bb.i, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.thread, !prof !51

bb.h:                                             ; preds = %.noexc70
  %i.eh = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ei = and i16 %i.eh, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ej = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ek = add i64 %.sroa.01.0.i.i.i, %i.ej
  br label %bb.g

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.el = load ptr, ptr %i.bk, align 8, !nonnull !12, !noundef !12
  %i.em = load i64, ptr %i.bl, align 8, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.el, ptr %i.r, align 8, !noalias !13443
  store i64 %i.em, ptr %i.cl, align 8, !noalias !13443
  store ptr @536, ptr %i.q, align 8, !noalias !13443
  store i64 7, ptr %i.cm, align 8, !noalias !13443
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.k, label %.split.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13443
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 7, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %bb.k
  %i.eo = load i64, ptr %i.o, align 8, !range !49, !noalias !13443, !noundef !12
  %i.ep = trunc nuw i64 %i.eo to i1
  %i.eq = load i64, ptr %i.co, align 8, !range !50, !noalias !13443, !noundef !12 ; 3 uses
  br i1 %i.ep, label %bb.l, label %bb.m, !prof !51

.split.i:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13443
  store ptr %i.r, ptr %i.p, align 8, !noalias !13443
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !13443
  store ptr %i.q, ptr %i.cn, align 8, !noalias !13443
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !13443
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noundef nonnull @377, ptr noundef nonnull %i.p)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit

.noexc72:                                         ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13443
  br label %bb.s

bb.l:                                             ; preds = %.noexc71
  %i.er = load i64, ptr %i.cp, align 8, !noalias !13443
  br label %.invoke

bb.m:                                             ; preds = %.noexc71
  %i.es = load ptr, ptr %i.cp, align 8, !noalias !13443, !nonnull !12, !noundef !12 ; 2 uses
  %i.et = icmp samesign ugt i64 %i.eq, 6
  call void @llvm.assume(i1 %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.es, ptr noundef nonnull align 1 dereferenceable(7) @536, i64 7, i1 false), !noalias !13440
  store i64 %i.eq, ptr %i.ap, align 8, !alias.scope !13440, !noalias !13446
  store ptr %i.es, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !13440, !noalias !13446
  store i64 7, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !13440, !noalias !13446
  br label %bb.s

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.eu = load ptr, ptr %i.bt, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !12
  %i.ez = getelementptr inbounds nuw [128 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.ew, ptr %i.aq, align 8
  store ptr %i.ez, ptr %i.cd, align 8
  store ptr %i.a, ptr %i.ce, align 8
  store ptr %i.at, ptr %i.cf, align 8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesB12_B1n_ENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema6schemaNtB1p_10StructTypeNtB4y_13StructTypeExt14get_invariantss0_0EE9from_iterB4E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aq)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.fa = load ptr, ptr %i.bk, align 8, !nonnull !12, !noundef !12
  %i.fb = load i64, ptr %i.bl, align 8, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.fa, ptr %i.n, align 8, !noalias !13450
  store i64 %i.fb, ptr %i.bm, align 8, !noalias !13450
  store ptr @663, ptr %i.m, align 8, !noalias !13450
  store i64 3, ptr %i.bn, align 8, !noalias !13450
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.p, label %.split.i74

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13450
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %bb.p
  %i.fd = load i64, ptr %i.k, align 8, !range !49, !noalias !13450, !noundef !12
  %i.fe = trunc nuw i64 %i.fd to i1
  %i.ff = load i64, ptr %i.bp, align 8, !range !50, !noalias !13450, !noundef !12 ; 3 uses
  br i1 %i.fe, label %bb.q, label %bb.r, !prof !51

.split.i74:                                       ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13450
  store ptr %i.n, ptr %i.l, align 8, !noalias !13450
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx.i75, align 8, !noalias !13450
  store ptr %i.m, ptr %i.bo, align 8, !noalias !13450
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i76, align 8, !noalias !13450
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @377, ptr noundef nonnull %i.l)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %.split.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13450
  br label %bb.ak

bb.q:                                             ; preds = %.noexc79
  %i.fg = load i64, ptr %i.bq, align 8, !noalias !13450
  br label %.invoke

bb.r:                                             ; preds = %.noexc79
  %i.fh = load ptr, ptr %i.bq, align 8, !noalias !13450, !nonnull !12, !noundef !12 ; 2 uses
  %i.fi = icmp samesign ugt i64 %i.ff, 2
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fh, ptr noundef nonnull align 1 dereferenceable(3) @663, i64 3, i1 false), !noalias !13447
  store i64 %i.ff, ptr %i.ak, align 8, !alias.scope !13447, !noalias !13453
  store ptr %i.fh, ptr %.sroa.4.0..sroa_idx.i77, align 8, !alias.scope !13447, !noalias !13453
  store i64 3, ptr %.sroa.6.0..sroa_idx.i78, align 8, !alias.scope !13447, !noalias !13453
  br label %bb.ak

.body83:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bs, %bb.bk, %bb.au, %bb.ac, %bb.co, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit, %.body104, %.body87, %.body
  %.pn61 = phi { ptr, i32 } [ %.pn, %.body104 ], [ %.pn59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCseqDwI8vvjGQ_10serde_json3map3MapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBL_5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit ], [ %.pn59, %bb.co ], [ %.pn55, %.body ], [ %.pn53, %.body87 ], [ %i.ie, %bb.bk ], [ %i.fy, %bb.ac ], [ %i.gz, %bb.au ], [ %i.ix, %bb.bs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit193, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.as) #52
          to label %bb.cr unwind label %bb.ag

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit.split-lp.loopexit:                      ; preds = %.split.i93, %bb.ax, %.split.i74, %bb.p, %.split.i, %bb.k, %bb.f, %.thread, %bb.bp, %bb.ai, %bb.n
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.s:                                             ; preds = %bb.m, %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.t unwind label %.loopexit205

.body:                                            ; preds = %.loopexit205, %.loopexit.split-lp206, %bb.x, %bb.af
  %.pn55 = phi { ptr, i32 } [ %i.fr, %bb.x ], [ %i.gd, %bb.af ], [ %lpad.loopexit207, %.loopexit205 ], [ %lpad.loopexit.split-lp208, %.loopexit.split-lp206 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an) #52
          to label %.body83 unwind label %bb.ag

.loopexit205:                                     ; preds = %bb.s
  %lpad.loopexit207 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp206:                            ; preds = %bb.u
  %lpad.loopexit.split-lp208 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.s
  %i.fj = load i64, ptr %i.v, align 8, !range !49, !noundef !12
  %i.fk = trunc nuw i64 %i.fj to i1
  %i.fl = load i64, ptr %i.cq, align 8, !range !50, !noundef !12 ; 2 uses
  br i1 %i.fk, label %bb.u, label %bb.v, !prof !51

bb.u:                                             ; preds = %bb.t
  %i.fm = load i64, ptr %i.cr, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fl, i64 %i.fm) #50
          to label %bb.ah unwind label %.loopexit.split-lp206

bb.v:                                             ; preds = %bb.t
  %i.fn = load ptr, ptr %i.cr, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i64 %i.fl, ptr %i.am, align 8
  store ptr %i.fn, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.fo = load ptr, ptr %i.bt, align 8, !nonnull !12, !noundef !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fp)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  call void @llvm.experimental.noalias.scope.decl(metadata !13457)
  call void @llvm.experimental.noalias.scope.decl(metadata !13459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.am, i64 24, i1 false), !alias.scope !13462, !noalias !13469
  %i.fq = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.aa unwind label %bb.y, !noalias !13461 ; 2 uses

bb.x:                                             ; preds = %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #52
          to label %.body unwind label %bb.z, !noalias !13461

bb.y:                                             ; preds = %bb.w
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.al) #52
          to label %bb.x unwind label %bb.z, !noalias !13470

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13461
  unreachable

bb.aa:                                            ; preds = %bb.w
  %i.ft = extractvalue { i64, i64 } %i.fq, 0
  %i.fu = extractvalue { i64, i64 } %i.fq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !alias.scope !13470, !noalias !13459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !13469, !noalias !13457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !13471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cs, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  store i64 %i.ft, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %i.fu, ptr %.sroa.7134.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.fv = load i64, ptr %i.be, align 8, !alias.scope !13472, !noalias !13475, !noundef !12 ; 3 uses
  %i.fw = load i64, ptr %i.aw, align 8, !range !378, !alias.scope !13472, !noalias !13475, !noundef !12
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.ae unwind label %bb.ac, !noalias !13475

bb.ac:                                            ; preds = %bb.ab
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ao) #52
          to label %.body83 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.ga = load ptr, ptr %i.bh, align 8, !alias.scope !13472, !noalias !13475, !nonnull !12, !noundef !12
  %i.gb = getelementptr inbounds nuw [120 x i8], ptr %i.ga, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.gb, ptr noundef nonnull align 8 dereferenceable(120) %i.ao, i64 120, i1 false)
  %i.gc = add i64 %i.fv, 1
  store i64 %i.gc, ptr %i.be, align 8, !alias.scope !13472, !noalias !13475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.e

bb.af:                                            ; preds = %bb.v
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #52
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %.body116, %.body124, %.body120, %bb.cr, %bb.co, %bb.bo, %bb.bn, %.body104, %.body87, %bb.af, %.body, %.body83
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ah:                                            ; preds = %bb.bc, %bb.am, %bb.u
  unreachable

bb.ai:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.gf = load ptr, ptr %i.cg, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.gg = load i64, ptr %i.ar, align 8, !range !378, !noundef !12
  %i.gh = load i64, ptr %i.ch, align 8, !noundef !12 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, 76861433640456466
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [120 x i8], ptr %i.gf, i64 %i.gh
  store ptr %i.gf, ptr %i.w, align 8
  store i64 %i.gg, ptr %i.ci, align 8
  store ptr %i.gf, ptr %i.cj, align 8
  store ptr %i.gj, ptr %i.ck, align 8
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecTNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.e

bb.ak:                                            ; preds = %bb.r, %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.al unwind label %.loopexit196

.body87:                                          ; preds = %.loopexit196, %.loopexit.split-lp197, %bb.ap, %bb.bo
  %.pn53 = phi { ptr, i32 } [ %i.gs, %bb.ap ], [ %i.ik, %bb.bo ], [ %lpad.loopexit198, %.loopexit196 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp197 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #52
          to label %.body83 unwind label %bb.ag

.loopexit196:                                     ; preds = %bb.ak
  %lpad.loopexit198 = landingpad { ptr, i32 }
          cleanup
  br label %.body87

.loopexit.split-lp197:                            ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.al:                                            ; preds = %bb.ak
  %i.gk = load i64, ptr %i.u, align 8, !range !49, !noundef !12
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = load i64, ptr %i.br, align 8, !range !50, !noundef !12 ; 2 uses
  br i1 %i.gl, label %bb.am, label %bb.an, !prof !51

bb.am:                                            ; preds = %bb.al
  %i.gn = load i64, ptr %i.bs, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gm, i64 %i.gn) #50
          to label %bb.ah unwind label %.loopexit.split-lp197

bb.an:                                            ; preds = %bb.al
  %i.go = load ptr, ptr %i.bs, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 %i.gm, ptr %i.ah, align 8
  store ptr %i.go, ptr %.sroa.434.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.gp = load ptr, ptr %i.bt, align 8, !nonnull !12, !noundef !12
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gq)
          to label %bb.ao unwind label %bb.bo

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !13477)
  call void @llvm.experimental.noalias.scope.decl(metadata !13480)
  call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !alias.scope !13485, !noalias !13492
  %i.gr = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.as unwind label %bb.aq, !noalias !13484 ; 2 uses

bb.ap:                                            ; preds = %bb.aq
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #52
          to label %.body87 unwind label %bb.ar, !noalias !13484

bb.aq:                                            ; preds = %bb.ao
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ag) #52
          to label %bb.ap unwind label %bb.ar, !noalias !13493

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13484
  unreachable

bb.as:                                            ; preds = %bb.ao
  %i.gu = extractvalue { i64, i64 } %i.gr, 0
  %i.gv = extractvalue { i64, i64 } %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0135, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !alias.scope !13493, !noalias !13482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0135.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !13492, !noalias !13480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0135.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !13494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0135, i64 72, i1 false)
  store i64 %i.gu, ptr %.sroa.6136.0..sroa_idx, align 8
  store i64 %i.gv, ptr %.sroa.7137.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.8138.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0135)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.gw = load i64, ptr %i.be, align 8, !alias.scope !13495, !noalias !13498, !noundef !12 ; 3 uses
  %i.gx = load i64, ptr %i.aw, align 8, !range !378, !alias.scope !13495, !noalias !13498, !noundef !12
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.aw unwind label %bb.au, !noalias !13498

bb.au:                                            ; preds = %bb.at
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.aj) #52
          to label %.body83 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.hb = load ptr, ptr %i.bh, align 8, !alias.scope !13495, !noalias !13498, !nonnull !12, !noundef !12
  %i.hc = getelementptr inbounds nuw [120 x i8], ptr %i.hb, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.hc, ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 120, i1 false)
  %i.hd = add i64 %i.gw, 1
  store i64 %i.hd, ptr %i.be, align 8, !alias.scope !13495, !noalias !13498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.he = load ptr, ptr %i.bk, align 8, !nonnull !12, !noundef !12
  %i.hf = load i64, ptr %i.bl, align 8, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.he, ptr %i.h, align 8, !noalias !13503
  store i64 %i.hf, ptr %i.bv, align 8, !noalias !13503
  store ptr @664, ptr %i.g, align 8, !noalias !13503
  store i64 5, ptr %i.bw, align 8, !noalias !13503
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %bb.ax, label %.split.i93

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13503
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit

.noexc98:                                         ; preds = %bb.ax
  %i.hh = load i64, ptr %i.e, align 8, !range !49, !noalias !13503, !noundef !12
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = load i64, ptr %i.by, align 8, !range !50, !noalias !13503, !noundef !12 ; 3 uses
  br i1 %i.hi, label %bb.ay, label %bb.az, !prof !51

.split.i93:                                       ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13503
  store ptr %i.h, ptr %i.f, align 8, !noalias !13503
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.44.0..sroa_idx.i94, align 8, !noalias !13503
  store ptr %i.g, ptr %i.bx, align 8, !noalias !13503
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.48.0..sroa_idx.i95, align 8, !noalias !13503
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull @377, ptr noundef nonnull %i.f)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %.split.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13503
  br label %bb.ba

bb.ay:                                            ; preds = %.noexc98
  %i.hk = load i64, ptr %i.bz, align 8, !noalias !13503
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.q, %bb.ay
  %i.hl = phi i64 [ %i.hj, %bb.ay ], [ %i.ff, %bb.q ], [ %i.eq, %bb.l ]
  %i.hm = phi i64 [ %i.hk, %bb.ay ], [ %i.fg, %bb.q ], [ %i.er, %bb.l ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hl, i64 %i.hm) #50
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %.noexc98
  %i.hn = load ptr, ptr %i.bz, align 8, !noalias !13503, !nonnull !12, !noundef !12 ; 2 uses
  %i.ho = icmp samesign ugt i64 %i.hj, 4
  call void @llvm.assume(i1 %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.hn, ptr noundef nonnull align 1 dereferenceable(5) @664, i64 5, i1 false), !noalias !13500
  store i64 %i.hj, ptr %i.af, align 8, !alias.scope !13500, !noalias !13506
  store ptr %i.hn, ptr %.sroa.4.0..sroa_idx.i96, align 8, !alias.scope !13500, !noalias !13506
  store i64 5, ptr %.sroa.6.0..sroa_idx.i97, align 8, !alias.scope !13500, !noalias !13506
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.noexc99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bb unwind label %.loopexit200

.body104:                                         ; preds = %.loopexit200, %.loopexit.split-lp201, %bb.bf, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.hx, %bb.bf ], [ %i.ij, %bb.bn ], [ %lpad.loopexit202, %.loopexit200 ], [ %lpad.loopexit.split-lp203, %.loopexit.split-lp201 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad) #52
          to label %.body83 unwind label %bb.ag

.loopexit200:                                     ; preds = %bb.ba
  %lpad.loopexit202 = landingpad { ptr, i32 }
          cleanup
  br label %.body104

.loopexit.split-lp201:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %.body104

bb.bb:                                            ; preds = %bb.ba
  %i.hp = load i64, ptr %i.t, align 8, !range !49, !noundef !12
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = load i64, ptr %i.ca, align 8, !range !50, !noundef !12 ; 2 uses
  br i1 %i.hq, label %bb.bc, label %bb.bd, !prof !51

bb.bc:                                            ; preds = %bb.bb
  %i.hs = load i64, ptr %i.cb, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hr, i64 %i.hs) #50
          to label %bb.ah unwind label %.loopexit.split-lp201

bb.bd:                                            ; preds = %bb.bb
  %i.ht = load ptr, ptr %i.cb, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.hr, ptr %i.ac, align 8
  store ptr %i.ht, ptr %.sroa.437.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.538.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.hu = load ptr, ptr %i.bt, align 8, !nonnull !12, !noundef !12
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hv)
          to label %bb.be unwind label %bb.bn

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !13507)
  call void @llvm.experimental.noalias.scope.decl(metadata !13510)
  call void @llvm.experimental.noalias.scope.decl(metadata !13512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !13515, !noalias !13522
  %i.hw = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.bi unwind label %bb.bg, !noalias !13514 ; 2 uses

bb.bf:                                            ; preds = %bb.bg
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #52
          to label %.body104 unwind label %bb.bh, !noalias !13514

bb.bg:                                            ; preds = %bb.be
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ab) #52
          to label %bb.bf unwind label %bb.bh, !noalias !13523

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !13514
  unreachable

bb.bi:                                            ; preds = %bb.be
  %i.hz = extractvalue { i64, i64 } %i.hw, 0
  %i.ia = extractvalue { i64, i64 } %i.hw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0140, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !13523, !noalias !13512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0140.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !13522, !noalias !13510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0140.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !13524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0140, i64 72, i1 false)
  store i64 %i.hz, ptr %.sroa.6141.0..sroa_idx, align 8
  store i64 %i.ia, ptr %.sroa.7142.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.8143.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0140)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ib = load i64, ptr %i.be, align 8, !alias.scope !13525, !noalias !13528, !noundef !12 ; 3 uses
  %i.ic = load i64, ptr %i.aw, align 8, !range !378, !alias.scope !13525, !noalias !13528, !noundef !12
  %i.id = icmp eq i64 %i.ib, %i.ic
  br i1 %i.id, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE8grow_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.bm unwind label %bb.bk, !noalias !13528

bb.bk:                                            ; preds = %bb.bj
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ae) #52
          to label %.body83 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bm:                                            ; preds = %bb.bj, %bb.bi
  %i.ig = load ptr, ptr %i.bh, align 8, !alias.scope !13525, !noalias !13528, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw [120 x i8], ptr %i.ig, i64 %i.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ih, ptr noundef nonnull align 8 dereferenceable(120) %i.ae, i64 120, i1 false)
  %i.ii = add i64 %i.ib, 1
  store i64 %i.ii, ptr %i.be, align 8, !alias.scope !13525, !noalias !13528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.e

bb.bn:                                            ; preds = %bb.bd
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #52
          to label %.body104 unwind label %bb.ag

bb.bo:                                            ; preds = %bb.an
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah) #52
          to label %.body87 unwind label %bb.ag

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc70
  %i.il = getelementptr inbounds i8, ptr %i.eb, i64 -32
  %i.im = load i8, ptr %i.il, align 8, !range !2808, !noundef !12
  %i.in = icmp eq i8 %i.im, 7
  br i1 %i.in, label %bb.bp, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.bp:                                            ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.io = getelementptr i8, ptr %i.eb, i64 -16
  %i.ip = load ptr, ptr %i.io, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.eb, i64 -8
  %i.ir = load i64, ptr %i.iq, align 8, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.ip, ptr %i.s, align 8
  store i64 %i.ir, ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.ip, ptr %i.cx, align 8
  store i64 %i.ir, ptr %i.cy, align 8
  invoke void @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.s)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.is = load i8, ptr %i.z, align 8, !range !1527, !noundef !12
  %i.it = icmp eq i8 %i.is, 6
  br i1 %i.it, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.iu = getelementptr i8, ptr %i.eb, i64 -16
  %i.iv = getelementptr i8, ptr %i.eb, i64 -8
  %i.iw = load ptr, ptr %.sroa.5.0..sroa_idx162, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %.val = load ptr, ptr %i.iu, align 8, !nonnull !12, !noundef !12
  %.val69 = load i64, ptr %i.iv, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13530
  store ptr %i.iw, ptr %i.c, align 8, !noalias !13530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13530
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.val69, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bt unwind label %bb.bs, !noalias !13534

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %.body83 unwind label %bb.by, !noalias !13534

bb.bt:                                            ; preds = %bb.br
  %i.iy = load i64, ptr %i.b, align 8, !range !49, !noalias !13530, !noundef !12
  %i.iz = trunc nuw i64 %i.iy to i1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !range !50, !noalias !13530, !noundef !12 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.iz, label %bb.bu, label %bb.bv, !prof !51

bb.bu:                                            ; preds = %bb.bt
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !13530
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.jb, i64 %i.jd) #50
end_hunk_6
