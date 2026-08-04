begin_hunk_0_@_RNCNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner00B7_:bb.a
  %i.e = tail call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d), !dbg !143318
  %i.f = load ptr, ptr %1, align 8, !dbg !143319, !nonnull !11, !noundef !11 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !dbg !143319, !range !680, !noundef !11
  %i.h = zext i1 %i.e to i8, !dbg !143319
  %i.i = or i8 %i.g, %i.h, !dbg !143319
  store i8 %i.i, ptr %i.f, align 1, !dbg !143319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !143320
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !143321
  %i.k = load ptr, ptr %i.j, align 8, !dbg !143321, !nonnull !11, !align !155, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !143322
  %i.m = load ptr, ptr %i.l, align 8, !dbg !143322, !nonnull !11, !noundef !11
  call void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull dereferenceable(4) %i.m), !dbg !143320
  %i.n = load i64, ptr %i.a, align 8, !dbg !143323, !range !699, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.n, 18, !dbg !143323
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !143325
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !dbg !143325
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !143326 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !143327

bb.b:                                             ; preds = %bb.a
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !143328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.717.0..sroa_idx, i64 48, i1 false), !dbg !143328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !143329
  br label %bb.d, !dbg !143330

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !143331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !143329
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.q, i64 12, i1 false), !dbg !143332
  br label %bb.d, !dbg !143330

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !143326
  store <2 x ptr> %i.p, ptr %i.r, align 8, !dbg !143326
  store i64 %i.n, ptr %0, align 8, !dbg !143326
  ret void, !dbg !143330
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNCNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue11into_static0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !143333 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !143338
  %i.d = load i8, ptr %i.c, align 1, !dbg !143338, !range !6399, !noundef !11
  %i.e = icmp eq i8 %i.d, -40, !dbg !143355
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !143355

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #36, !dbg !143356
  br label %bb.d, !dbg !143356

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !143357
  br label %bb.d, !dbg !143360

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !143361
  store i64 1, ptr %i.a, align 8, !dbg !143361
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !143361
  store i64 1, ptr %i.f, align 8, !dbg !143361
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !143361 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !143361
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !143364, !noalias !143378
  %i.h = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 369) 40, i64 noundef range(i64 8, 17) 8) #37, !dbg !143381, !noalias !143378 ; 3 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !143382
  br i1 %i.i, label %bb.e, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !143383, !prof !31

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #33
          to label %.noexc unwind label %bb.f, !dbg !143384

.noexc:                                           ; preds = %bb.e
  unreachable, !dbg !143384

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 39, !dbg !143385
  %i.l = load i8, ptr %i.k, align 1, !dbg !143385, !range !6399, !alias.scope !143395, !noundef !11
  %i.m = icmp eq i8 %i.l, -40, !dbg !143408
  br i1 %i.m, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECskY9G75ZWc4U_11polars_expr.exit, !dbg !143408, !prof !31

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.h, !dbg !143409

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !143410
  unreachable, !dbg !143410

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.j, !dbg !143410

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !dbg !143411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !143413
  ret ptr %i.h, !dbg !143414
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !143415 {
bb.a:
  %.sroa.03157 = alloca [23 x i8], align 1        ; 5 uses
  %.sroa.03149 = alloca [23 x i8], align 1        ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [112 x i8], align 16              ; 21 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 16 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [72 x i8], align 8                ; 15 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 16               ; 10 uses
  %i.q = alloca [96 x i8], align 16               ; 18 uses
  %i.r = alloca [320 x i8], align 16              ; 17 uses
  %i.s = alloca [80 x i8], align 16               ; 4 uses
  %i.t = alloca [208 x i8], align 16              ; 12 uses
  %i.u = alloca [320 x i8], align 16              ; 18 uses
  %i.v = alloca [80 x i8], align 16               ; 4 uses
  %i.w = alloca [288 x i8], align 16              ; 11 uses
  %i.x = alloca [80 x i8], align 8                ; 7 uses
  %i.y = alloca [64 x i8], align 16               ; 4 uses
  %i.z = alloca [80 x i8], align 16               ; 4 uses
  %i.aa = alloca [80 x i8], align 16              ; 4 uses
  %i.ab = alloca [304 x i8], align 16             ; 16 uses
  %i.ac = alloca [80 x i8], align 8               ; 7 uses
  %i.ad = alloca [64 x i8], align 16              ; 4 uses
  %i.ae = alloca [80 x i8], align 16              ; 4 uses
  %i.af = alloca [80 x i8], align 16              ; 4 uses
  %i.ag = alloca [320 x i8], align 16             ; 17 uses
  %i.ah = alloca [80 x i8], align 16              ; 4 uses
  %i.ai = alloca [144 x i8], align 16             ; 9 uses
  %i.aj = alloca [16 x i8], align 16              ; 4 uses
  %i.ak = alloca [80 x i8], align 16              ; 4 uses
  %i.al = alloca [224 x i8], align 16             ; 14 uses
  %i.am = alloca [240 x i8], align 16             ; 11 uses
  %i.an = alloca [56 x i8], align 8               ; 7 uses
  %i.ao = alloca [144 x i8], align 16             ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %i.aq = alloca [80 x i8], align 16              ; 5 uses
  %i.ar = alloca [144 x i8], align 16             ; 10 uses
  %i.as = alloca [80 x i8], align 16              ; 4 uses
  %i.at = alloca [192 x i8], align 16             ; 10 uses
  %i.au = alloca [272 x i8], align 16             ; 9 uses
  %i.av = alloca [208 x i8], align 16             ; 12 uses
  %i.aw = alloca [192 x i8], align 16             ; 13 uses
  %i.ax = alloca [272 x i8], align 16             ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 5 uses
  %i.az = alloca [80 x i8], align 16              ; 4 uses
  %i.ba = alloca [96 x i8], align 16              ; 8 uses
  %i.bb = alloca [80 x i8], align 16              ; 4 uses
  %i.bc = alloca [192 x i8], align 16             ; 7 uses
  %i.bd = alloca [288 x i8], align 16             ; 15 uses
  %i.be = alloca [80 x i8], align 16              ; 4 uses
  %i.bf = alloca [256 x i8], align 16             ; 7 uses
  %i.bg = alloca [352 x i8], align 16             ; 15 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [72 x i8], align 8               ; 8 uses
  %i.bj = alloca [80 x i8], align 16              ; 4 uses
  %i.bk = alloca [368 x i8], align 16             ; 23 uses
  %i.bl = alloca [80 x i8], align 16              ; 4 uses
  %i.bm = alloca [160 x i8], align 16             ; 7 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [144 x i8], align 16             ; 5 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 7 uses
  %i.br = alloca [16 x i8], align 8               ; 6 uses
  %i.bs = alloca [80 x i8], align 16              ; 7 uses
  %i.bt = alloca [16 x i8], align 8               ; 10 uses
  %i.bu = alloca [72 x i8], align 8               ; 8 uses
  %i.bv = alloca [16 x i8], align 16              ; 10 uses
  %i.bw = alloca [144 x i8], align 16             ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [72 x i8], align 8               ; 8 uses
  %i.cb = alloca [72 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 10 uses
  %i.cd = alloca [72 x i8], align 8               ; 8 uses
  %i.ce = alloca [16 x i8], align 8               ; 10 uses
  %i.cf = alloca [144 x i8], align 16             ; 4 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [112 x i8], align 16             ; 4 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6560 = alloca [24 x i8], align 8         ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [80 x i8], align 16              ; 8 uses
  %i.co = alloca [112 x i8], align 16             ; 26 uses
  %i.cp = alloca [24 x i8], align 8               ; 9 uses
  %i.cq = alloca [144 x i8], align 16             ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 5 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.03106 = alloca [224 x i8], align 16      ; 5 uses
  %i.ct = alloca [40 x i8], align 8               ; 6 uses
  %i.cu = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6541 = alloca [24 x i8], align 8         ; 6 uses
  %i.cv = alloca [8 x i8], align 8                ; 11 uses
  %i.cw = alloca [48 x i8], align 16              ; 4 uses
  %i.cx = alloca [24 x i8], align 8               ; 6 uses
  %i.cy = alloca [48 x i8], align 16              ; 5 uses
  %i.cz = alloca [64 x i8], align 8               ; 7 uses
  %i.da = alloca [72 x i8], align 8               ; 8 uses
  %i.db = alloca [16 x i8], align 8               ; 10 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [80 x i8], align 16              ; 9 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [80 x i8], align 16              ; 8 uses
  %i.dg = alloca [24 x i8], align 8               ; 11 uses
  %i.dh = alloca [144 x i8], align 16             ; 4 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [16 x i8], align 8               ; 6 uses
  %i.dk = alloca [8 x i8], align 8                ; 11 uses
  %i.dl = alloca [72 x i8], align 8               ; 8 uses
  %i.dm = alloca [16 x i8], align 8               ; 8 uses
  %i.dn = alloca [48 x i8], align 16              ; 4 uses
  %i.do = alloca [24 x i8], align 8               ; 6 uses
  %i.dp = alloca [48 x i8], align 16              ; 5 uses
  %i.dq = alloca [64 x i8], align 8               ; 7 uses
  %i.dr = alloca [72 x i8], align 8               ; 7 uses
  %i.ds = alloca [72 x i8], align 8               ; 8 uses
  %i.dt = alloca [16 x i8], align 8               ; 10 uses
  %i.du = alloca [16 x i8], align 8               ; 6 uses
  %i.dv = alloca [80 x i8], align 16              ; 9 uses
  %i.dw = alloca [16 x i8], align 8               ; 6 uses
  %i.dx = alloca [80 x i8], align 16              ; 11 uses
  %i.dy = alloca [1 x i8], align 1                ; 6 uses
  %i.dz = alloca [16 x i8], align 8               ; 4 uses
  %i.ea = alloca [144 x i8], align 16             ; 4 uses
  %i.eb = alloca [16 x i8], align 8               ; 5 uses
  %i.ec = alloca [24 x i8], align 8               ; 5 uses
  %i.ed = alloca [72 x i8], align 8               ; 4 uses
  %i.ee = alloca [72 x i8], align 8               ; 8 uses
  %i.ef = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6438 = alloca [24 x i8], align 8         ; 6 uses
  %i.eg = alloca [24 x i8], align 8               ; 7 uses
  %i.eh = alloca [16 x i8], align 8               ; 6 uses
  %i.ei = alloca [80 x i8], align 16              ; 8 uses
  %i.ej = alloca [72 x i8], align 8               ; 19 uses
  %i.ek = alloca [24 x i8], align 8               ; 11 uses
  %i.el = alloca [72 x i8], align 8               ; 9 uses
  %i.em = alloca [72 x i8], align 8               ; 8 uses
  %i.en = alloca [16 x i8], align 8               ; 9 uses
  %i.eo = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6407 = alloca [24 x i8], align 8         ; 6 uses
  %i.ep = alloca [24 x i8], align 8               ; 7 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [80 x i8], align 16              ; 8 uses
  %i.es = alloca [72 x i8], align 8               ; 19 uses
  %i.et = alloca [24 x i8], align 8               ; 11 uses
  %i.eu = alloca [144 x i8], align 16             ; 4 uses
  %i.ev = alloca [16 x i8], align 8               ; 5 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [16 x i8], align 8               ; 6 uses
  %i.ey = alloca [72 x i8], align 8               ; 8 uses
  %i.ez = alloca [72 x i8], align 8               ; 8 uses
  %i.fa = alloca [16 x i8], align 8               ; 10 uses
  %i.fb = alloca [72 x i8], align 8               ; 8 uses
  %i.fc = alloca [16 x i8], align 8               ; 10 uses
  %i.fd = alloca [144 x i8], align 16             ; 4 uses
  %i.fe = alloca [48 x i8], align 16              ; 5 uses
  %i.ff = alloca [16 x i8], align 8               ; 5 uses
  %i.fg = alloca [72 x i8], align 8               ; 8 uses
  %i.fh = alloca [48 x i8], align 16              ; 14 uses
  %i.fi = alloca [40 x i8], align 8               ; 4 uses
  %i.fj = alloca [72 x i8], align 8               ; 8 uses
  %i.fk = alloca [72 x i8], align 8               ; 8 uses
  %i.fl = alloca [16 x i8], align 8               ; 9 uses
  %i.fm = alloca [112 x i8], align 16             ; 22 uses
  %i.fn = alloca [24 x i8], align 8               ; 7 uses
  %i.fo = alloca [48 x i8], align 16              ; 4 uses
  %i.fp = alloca [24 x i8], align 8               ; 6 uses
  %i.fq = alloca [80 x i8], align 16              ; 6 uses
  %i.fr = alloca [16 x i8], align 8               ; 6 uses
  %i.fs = alloca [80 x i8], align 16              ; 12 uses
  %i.ft = alloca [72 x i8], align 8               ; 8 uses
  %i.fu = alloca [16 x i8], align 16              ; 10 uses
  %i.fv = alloca [112 x i8], align 16             ; 25 uses
  %i.fw = alloca [24 x i8], align 8               ; 9 uses
  %i.fx = alloca [16 x i8], align 8               ; 6 uses
  %i.fy = alloca [72 x i8], align 8               ; 8 uses
  %i.fz = alloca [16 x i8], align 16              ; 10 uses
  %i.ga = alloca [24 x i8], align 8               ; 10 uses
  %i.gb = alloca [144 x i8], align 16             ; 4 uses
  %i.gc = alloca [16 x i8], align 8               ; 5 uses
  %i.gd = alloca [16 x i8], align 8               ; 6 uses
  %i.ge = alloca [72 x i8], align 8               ; 8 uses
  %i.gf = alloca [72 x i8], align 8               ; 8 uses
  %i.gg = alloca [16 x i8], align 8               ; 7 uses
  %i.gh = alloca [64 x i8], align 8               ; 4 uses
  %i.gi = alloca [144 x i8], align 16             ; 5 uses
  %i.gj = alloca [24 x i8], align 8               ; 5 uses
  %i.gk = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.03032 = alloca [208 x i8], align 16      ; 5 uses
  %i.gl = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.6223 = alloca [24 x i8], align 8         ; 6 uses
  %i.gm = alloca [72 x i8], align 8               ; 8 uses
  %i.gn = alloca [16 x i8], align 8               ; 10 uses
  %i.go = alloca [64 x i8], align 8               ; 18 uses
  %i.gp = alloca [24 x i8], align 8               ; 11 uses
  %i.gq = alloca [144 x i8], align 16             ; 4 uses
  %i.gr = alloca [16 x i8], align 8               ; 5 uses
  %i.gs = alloca [16 x i8], align 8               ; 6 uses
  %i.gt = alloca [72 x i8], align 8               ; 8 uses
  %i.gu = alloca [72 x i8], align 8               ; 8 uses
  %i.gv = alloca [16 x i8], align 8               ; 7 uses
  %i.gw = alloca [144 x i8], align 16             ; 4 uses
  %i.gx = alloca [16 x i8], align 8               ; 5 uses
  %i.gy = alloca [72 x i8], align 8               ; 8 uses
  %i.gz = alloca [144 x i8], align 16             ; 4 uses
  %i.ha = alloca [24 x i8], align 8               ; 6 uses
  %i.hb = alloca [256 x i8], align 16             ; 6 uses
  %i.hc = alloca [16 x i8], align 8               ; 6 uses
  %i.hd = alloca [80 x i8], align 16              ; 7 uses
  %i.he = alloca [24 x i8], align 8               ; 14 uses
  %i.hf = alloca [16 x i8], align 8               ; 6 uses
  %i.hg = alloca [144 x i8], align 16             ; 4 uses
  %i.hh = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.03014 = alloca [168 x i8], align 16      ; 5 uses
  %i.hi = alloca [24 x i8], align 8               ; 10 uses
  %i.hj = alloca [144 x i8], align 16             ; 4 uses
  %i.hk = alloca [16 x i8], align 8               ; 5 uses
  %i.hl = alloca [16 x i8], align 8               ; 6 uses
  %i.hm = alloca [72 x i8], align 8               ; 8 uses
  %i.hn = alloca [72 x i8], align 8               ; 8 uses
  %i.ho = alloca [16 x i8], align 8               ; 7 uses
  %i.hp = alloca [16 x i8], align 8               ; 6 uses
  %i.hq = alloca [80 x i8], align 16              ; 8 uses
  %i.hr = alloca [144 x i8], align 16             ; 4 uses
  %i.hs = alloca [96 x i8], align 16              ; 5 uses
  %i.ht = alloca [240 x i8], align 16             ; 5 uses
  %i.hu = alloca [96 x i8], align 16              ; 20 uses
  %i.hv = alloca [24 x i8], align 8               ; 7 uses
  %i.hw = alloca [16 x i8], align 8               ; 5 uses
  %i.hx = alloca [24 x i8], align 8               ; 2 uses
  %i.hy = alloca [24 x i8], align 8               ; 4 uses
  %i.hz = alloca [144 x i8], align 16             ; 6 uses
  %i.ia = alloca [24 x i8], align 8               ; 5 uses
  %i.ib = alloca [24 x i8], align 8               ; 5 uses
  %i.ic = alloca [24 x i8], align 8               ; 4 uses
  %i.id = alloca [24 x i8], align 8               ; 13 uses
  %i.ie = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.684 = alloca [24 x i8], align 8          ; 6 uses
  %i.if = alloca [24 x i8], align 8               ; 7 uses
  %i.ig = alloca [144 x i8], align 16             ; 7 uses
  %i.ih = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.675.sroa.0 = alloca [16 x i8], align 8   ; 5 uses
  %.sroa.675.sroa.7 = alloca [12 x i8], align 4   ; 5 uses
  %.sroa.777 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.769.sroa.0 = alloca [16 x i8], align 8   ; 6 uses
  %.sroa.769.sroa.9 = alloca [12 x i8], align 4   ; 6 uses
  %.sroa.663.sroa.0 = alloca [16 x i8], align 8   ; 7 uses
  %.sroa.663.sroa.8 = alloca [12 x i8], align 4   ; 7 uses
  %i.ii = alloca [32 x i8], align 8               ; 11 uses
  %i.ij = alloca [1 x i8], align 1                ; 6 uses
  %i.ik = alloca [72 x i8], align 8               ; 8 uses
  %i.il = alloca [16 x i8], align 16              ; 10 uses
  %i.im = alloca [16 x i8], align 8               ; 6 uses
  %i.in = alloca [80 x i8], align 16              ; 8 uses
  %i.io = alloca [24 x i8], align 8               ; 11 uses
  %.sroa.029 = alloca [224 x i8], align 16        ; 5 uses
  %i.ip = alloca [144 x i8], align 16             ; 4 uses
  %i.iq = alloca [72 x i8], align 8               ; 8 uses
  %i.ir = alloca [16 x i8], align 8               ; 6 uses
  %i.is = alloca [72 x i8], align 8               ; 8 uses
  %i.it = alloca [16 x i8], align 16              ; 9 uses
  %i.iu = alloca [16 x i8], align 8               ; 6 uses
  %i.iv = alloca [80 x i8], align 16              ; 8 uses
  %.sroa.104 = alloca [15 x i8], align 1          ; 14 uses
  %.sroa.108 = alloca [6 x i8], align 2           ; 13 uses
  %.sroa.151 = alloca [16 x i8], align 8          ; 6 uses
  %i.iw = load ptr, ptr %1, align 8, !dbg !143416, !nonnull !11, !align !155, !noundef !11 ; 85 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !143417
  %i.iy = load i64, ptr %i.ix, align 8, !dbg !143417, !noundef !11 ; 50 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !143418 ; 16 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !143436 ; 16 uses
  %i.jb = load i64, ptr %i.ja, align 8, !dbg !143436, !noundef !11
  %i.jc = icmp ult i64 %i.iy, %i.jb, !dbg !143437
  br i1 %i.jc, label %bb.c, label %bb.b, !dbg !143437, !prof !19115

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #38, !dbg !143442
  unreachable, !dbg !143442

bb.c:                                             ; preds = %bb.a
  %i.jd = load ptr, ptr %i.iz, align 8, !dbg !143418, !nonnull !11, !noundef !11
  %i.je = getelementptr inbounds nuw [144 x i8], ptr %i.jd, i64 %i.iy, !dbg !143445 ; 82 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.151), !dbg !143446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !143448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !143448
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 112, !dbg !143448 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 16, !dbg !143448, !range !15646, !noalias !143455, !noundef !11 ; 3 uses
  %i.jh = icmp ne i64 %i.jg, -9223372036854775791, !dbg !143448
  tail call void @llvm.assume(i1 %i.jh), !dbg !143448
  %i.ji = xor i64 %i.jg, -9223372036854775808, !dbg !143448
  %i.jj = icmp slt i64 %i.jg, 0, !dbg !143448
  %i.jk = select i1 %i.jj, i64 %i.ji, i64 17, !dbg !143448
  switch i64 %i.jk, label %bb.d [
    i64 0, label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.p
    i64 11, label %bb.q
    i64 12, label %bb.r
    i64 13, label %bb.s
    i64 14, label %bb.w
    i64 15, label %bb.x
    i64 16, label %bb.y
    i64 17, label %bb.z
    i64 18, label %bb.aa
    i64 19, label %bb.ab
    i64 20, label %bb.ac
    i64 21, label %bb.ad
  ], !dbg !143448

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !143458

bb.e:                                             ; preds = %bb.c
  %i.jl = load i64, ptr %i.je, align 16, !dbg !143460, !noalias !143455, !noundef !11 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 8, !dbg !143466
  %i.jn = load i8, ptr %i.jm, align 8, !dbg !143466, !range !680, !noalias !143455, !noundef !11
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 9, !dbg !143466
  %i.jp = load i8, ptr %i.jo, align 1, !dbg !143466, !range !680, !noalias !143455, !noundef !11
  %.sroa.0.sroa.0.0.extract.trunc2785 = trunc i64 %i.jl to i8, !dbg !143472
  %.sroa.0.sroa.46.0.extract.shift2880 = lshr i64 %i.jl, 8, !dbg !143472
  %.sroa.0.sroa.46.0.extract.trunc2881 = trunc nuw i64 %.sroa.0.sroa.46.0.extract.shift2880 to i56, !dbg !143472
  br label %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.thread, !dbg !143473

bb.f:                                             ; preds = %bb.c
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 23, !dbg !143474
  %i.jr = load i8, ptr %i.jq, align 1, !dbg !143474, !range !6399, !noalias !143455, !noundef !11
  %i.js = icmp eq i8 %i.jr, -40, !dbg !143490
  br i1 %i.js, label %bb.ae, label %bb.af, !dbg !143490

bb.g:                                             ; preds = %bb.c
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 23, !dbg !143491
  %i.ju = load i8, ptr %i.jt, align 1, !dbg !143491, !range !6399, !noalias !143455, !noundef !11
  %i.jv = icmp eq i8 %i.ju, -40, !dbg !143498
  br i1 %i.jv, label %bb.ah, label %bb.ai, !dbg !143498

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !143499, !noalias !143455
  call fastcc void @_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.je) #39, !dbg !143499
  %.sroa.0.0.copyload1762 = load i64, ptr %i.q, align 16, !dbg !143501 ; 2 uses
  %.sroa.0.sroa.0.0.extract.trunc2799 = trunc i64 %.sroa.0.0.copyload1762 to i8, !dbg !143501
  %.sroa.0.sroa.46.0.extract.shift2900 = lshr i64 %.sroa.0.0.copyload1762, 8, !dbg !143501
  %.sroa.0.sroa.46.0.extract.trunc2901 = trunc nuw i64 %.sroa.0.sroa.46.0.extract.shift2900 to i56, !dbg !143501
  %.sroa.46.0..sroa_idx1791 = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !143501
  %.sroa.46.0.copyload1792 = load i64, ptr %.sroa.46.0..sroa_idx1791, align 8, !dbg !143501 ; 3 uses
  %.sroa.46.sroa.0.0.extract.trunc2437 = trunc i64 %.sroa.46.0.copyload1792 to i8, !dbg !143501
  %.sroa.46.sroa.45.0.extract.shift2518 = lshr i64 %.sroa.46.0.copyload1792, 8, !dbg !143501
  %.sroa.46.sroa.45.0.extract.trunc2519 = trunc i64 %.sroa.46.sroa.45.0.extract.shift2518 to i8, !dbg !143501
  %.sroa.46.sroa.47.0.extract.shift2634 = lshr i64 %.sroa.46.0.copyload1792, 16, !dbg !143501
  %.sroa.46.sroa.47.0.extract.trunc2635 = trunc nuw i64 %.sroa.46.sroa.47.0.extract.shift2634 to i48, !dbg !143501
  %.sroa.64.0..sroa_idx1849 = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !143501
  %.sroa.64.0.copyload1850 = load i64, ptr %.sroa.64.0..sroa_idx1849, align 16, !dbg !143501 ; 3 uses
  %.sroa.64.sroa.0.0.extract.trunc2189 = trunc i64 %.sroa.64.0.copyload1850 to i8, !dbg !143501
  %.sroa.64.sroa.39.0.extract.shift2251 = lshr i64 %.sroa.64.0.copyload1850, 8, !dbg !143501
  %.sroa.64.sroa.39.0.extract.trunc2252 = trunc i64 %.sroa.64.sroa.39.0.extract.shift2251 to i8, !dbg !143501
  %.sroa.64.sroa.41.0.extract.shift2338 = lshr i64 %.sroa.64.0.copyload1850, 16, !dbg !143501
  %.sroa.64.sroa.41.0.extract.trunc2339 = trunc nuw i64 %.sroa.64.sroa.41.0.extract.shift2338 to i48, !dbg !143501
  %.sroa.78.0..sroa_idx1898 = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !143501
  %.sroa.78.0.copyload1899 = load i64, ptr %.sroa.78.0..sroa_idx1898, align 8, !dbg !143501
  %.sroa.90.0..sroa_idx1920 = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !143501
  %.sroa.90.0.copyload1921 = load i32, ptr %.sroa.90.0..sroa_idx1920, align 16, !dbg !143501
  %.sroa.92.0..sroa_idx1945 = getelementptr inbounds nuw i8, ptr %i.q, i64 36, !dbg !143501
  %.sroa.92.0.copyload1946 = load i64, ptr %.sroa.92.0..sroa_idx1945, align 4, !dbg !143501
  %.sroa.94.0..sroa_idx1970 = getelementptr inbounds nuw i8, ptr %i.q, i64 44, !dbg !143501
  %.sroa.94.0.copyload1971 = load i32, ptr %.sroa.94.0..sroa_idx1970, align 4, !dbg !143501
  %.sroa.941987.0..sroa_idx1996 = getelementptr inbounds nuw i8, ptr %i.q, i64 48, !dbg !143501
end_hunk_0
begin_hunk_1_@_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !143971
  %i.qc = load ptr, ptr %i.qb, align 8, !dbg !143971, !nonnull !11, !align !155, !noundef !11 ; 3 uses
  call void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.fb, i64 noundef %.sroa.0.sroa.0.0.insert.insert2772, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qc, ptr noalias noundef nonnull dereferenceable(4) %i.py), !dbg !143970
  %i.qd = load i64, ptr %i.fb, align 8, !dbg !143972, !range !699, !noundef !11 ; 2 uses
  %.not1373 = icmp eq i64 %i.qd, 18, !dbg !143972
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8, !dbg !143973
  %i.qf = load ptr, ptr %i.qe, align 8, !dbg !143973 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.fb, i64 16, !dbg !143973
  %i.qh = load ptr, ptr %i.qg, align 8, !dbg !143973 ; 2 uses
  br i1 %.not1373, label %bb.jq, label %bb.jo, !dbg !143974

bb.bq:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !dbg !143975
  %.sroa.0.sroa.46.0.insert.ext2920 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !143975
  %.sroa.0.sroa.46.0.insert.shift2921 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2920, 8, !dbg !143975
  %.sroa.0.sroa.0.0.insert.ext2813 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !143975
  %.sroa.0.sroa.0.0.insert.insert2815 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2921, %.sroa.0.sroa.0.0.insert.ext2813, !dbg !143975
  store i64 %.sroa.0.sroa.0.0.insert.insert2815, ptr %i.et, align 8, !dbg !143975
  %.sroa.46.0..sroa_idx1803 = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !143975 ; 2 uses
  %.sroa.46.sroa.47.0.insert.ext2654 = zext i48 %.sroa.46.sroa.47.sroa.0.03194 to i64, !dbg !143975
  %.sroa.46.sroa.47.0.insert.shift2655 = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext2654, 16, !dbg !143975
  %.sroa.46.sroa.45.0.insert.ext2538 = zext i8 %.sroa.46.sroa.45.03196 to i64, !dbg !143975
  %.sroa.46.sroa.45.0.insert.shift2539 = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext2538, 8, !dbg !143975
  %.sroa.46.sroa.45.0.insert.insert2541 = or disjoint i64 %.sroa.46.sroa.47.0.insert.shift2655, %.sroa.46.sroa.45.0.insert.shift2539, !dbg !143975
  %.sroa.46.sroa.0.0.insert.ext2451 = zext i8 %.sroa.46.sroa.0.03198 to i64, !dbg !143975
  %.sroa.46.sroa.0.0.insert.insert2453 = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert2541, %.sroa.46.sroa.0.0.insert.ext2451, !dbg !143975
  store i64 %.sroa.46.sroa.0.0.insert.insert2453, ptr %.sroa.46.0..sroa_idx1803, align 8, !dbg !143975
  %.sroa.64.0..sroa_idx1861 = getelementptr inbounds nuw i8, ptr %i.et, i64 16, !dbg !143975 ; 2 uses
  %.sroa.64.sroa.41.0.insert.ext2358 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !143975
  %.sroa.64.sroa.41.0.insert.shift2359 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2358, 16, !dbg !143975
  %.sroa.64.sroa.39.0.insert.ext2271 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !143975
  %.sroa.64.sroa.39.0.insert.shift2272 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2271, 8, !dbg !143975
  %.sroa.64.sroa.39.0.insert.insert2274 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2359, %.sroa.64.sroa.39.0.insert.shift2272, !dbg !143975
  %.sroa.64.sroa.0.0.insert.ext2203 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !143975
  %.sroa.64.sroa.0.0.insert.insert2205 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2274, %.sroa.64.sroa.0.0.insert.ext2203, !dbg !143975
  store i64 %.sroa.64.sroa.0.0.insert.insert2205, ptr %.sroa.64.0..sroa_idx1861, align 8, !dbg !143975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !dbg !143976
  store i64 %.sroa.78.03307, ptr %i.es, align 8, !dbg !143976
  %.sroa.90.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !143976
  store i32 %.sroa.90.03305, ptr %.sroa.90.24..sroa_idx, align 8, !dbg !143976
  %.sroa.92.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 12, !dbg !143976
  store i64 %.sroa.92.03303, ptr %.sroa.92.24..sroa_idx, align 4, !dbg !143976
  %.sroa.94.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 20, !dbg !143976
  store i32 %.sroa.94.03301, ptr %.sroa.94.24..sroa_idx, align 4, !dbg !143976
  %.sroa.941987.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 24, !dbg !143976
  store i64 %.sroa.941987.03299, ptr %.sroa.941987.24..sroa_idx, align 8, !dbg !143976
  %.sroa.98.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 32, !dbg !143976
  store i8 %.sroa.98.03297, ptr %.sroa.98.24..sroa_idx, align 8, !dbg !143976
  %.sroa.104.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 33, !dbg !143976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104.24..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104, i64 15, i1 false), !dbg !143976
  %.sroa.1042041.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 48, !dbg !143976
  store <2 x i32> %i.nr, ptr %.sroa.1042041.24..sroa_idx, align 8, !dbg !143976
  %.sroa.106.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 56, !dbg !143976
  store i8 %.sroa.106.03291, ptr %.sroa.106.24..sroa_idx, align 8, !dbg !143976
  %.sroa.107.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 57, !dbg !143976
  store i8 %.sroa.107.03289, ptr %.sroa.107.24..sroa_idx, align 1, !dbg !143976
  %.sroa.108.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 58, !dbg !143976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108.24..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108, i64 6, i1 false), !dbg !143976
  %.sroa.1082132.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 64, !dbg !143976
  store i64 %.sroa.1082132.03287, ptr %.sroa.1082132.24..sroa_idx, align 8, !dbg !143976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !dbg !143977
  %i.qi = load i64, ptr %i.ja, align 8, !dbg !143979, !noundef !11
  %i.qj = icmp ult i64 %i.iy, %i.qi, !dbg !143985
  br i1 %i.qj, label %bb.km, label %bb.kl, !dbg !143985, !prof !19115

bb.br:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !dbg !143989
  %.sroa.0.sroa.46.0.insert.ext2924 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !143989
  %.sroa.0.sroa.46.0.insert.shift2925 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2924, 8, !dbg !143989
  %.sroa.0.sroa.0.0.insert.ext2816 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !143989
  %.sroa.0.sroa.0.0.insert.insert2818 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2925, %.sroa.0.sroa.0.0.insert.ext2816, !dbg !143989
  store i64 %.sroa.0.sroa.0.0.insert.insert2818, ptr %i.ek, align 8, !dbg !143989
  %.sroa.46.0..sroa_idx1805 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8, !dbg !143989 ; 2 uses
  %.sroa.46.sroa.47.0.insert.ext2658 = zext i48 %.sroa.46.sroa.47.sroa.0.03194 to i64, !dbg !143989
  %.sroa.46.sroa.47.0.insert.shift2659 = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext2658, 16, !dbg !143989
  %.sroa.46.sroa.45.0.insert.ext2542 = zext i8 %.sroa.46.sroa.45.03196 to i64, !dbg !143989
  %.sroa.46.sroa.45.0.insert.shift2543 = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext2542, 8, !dbg !143989
  %.sroa.46.sroa.45.0.insert.insert2545 = or disjoint i64 %.sroa.46.sroa.47.0.insert.shift2659, %.sroa.46.sroa.45.0.insert.shift2543, !dbg !143989
  %.sroa.46.sroa.0.0.insert.ext2454 = zext i8 %.sroa.46.sroa.0.03198 to i64, !dbg !143989
  %.sroa.46.sroa.0.0.insert.insert2456 = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert2545, %.sroa.46.sroa.0.0.insert.ext2454, !dbg !143989
  store i64 %.sroa.46.sroa.0.0.insert.insert2456, ptr %.sroa.46.0..sroa_idx1805, align 8, !dbg !143989
  %.sroa.64.0..sroa_idx1863 = getelementptr inbounds nuw i8, ptr %i.ek, i64 16, !dbg !143989 ; 2 uses
  %.sroa.64.sroa.41.0.insert.ext2362 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !143989
  %.sroa.64.sroa.41.0.insert.shift2363 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2362, 16, !dbg !143989
  %.sroa.64.sroa.39.0.insert.ext2275 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !143989
  %.sroa.64.sroa.39.0.insert.shift2276 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2275, 8, !dbg !143989
  %.sroa.64.sroa.39.0.insert.insert2278 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2363, %.sroa.64.sroa.39.0.insert.shift2276, !dbg !143989
  %.sroa.64.sroa.0.0.insert.ext2206 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !143989
  %.sroa.64.sroa.0.0.insert.insert2208 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2278, %.sroa.64.sroa.0.0.insert.ext2206, !dbg !143989
  store i64 %.sroa.64.sroa.0.0.insert.insert2208, ptr %.sroa.64.0..sroa_idx1863, align 8, !dbg !143989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !dbg !143990
  store i64 %.sroa.78.03307, ptr %i.ej, align 8, !dbg !143990
  %.sroa.90.24..sroa_idx1928 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8, !dbg !143990
  store i32 %.sroa.90.03305, ptr %.sroa.90.24..sroa_idx1928, align 8, !dbg !143990
  %.sroa.92.24..sroa_idx1953 = getelementptr inbounds nuw i8, ptr %i.ej, i64 12, !dbg !143990
  store i64 %.sroa.92.03303, ptr %.sroa.92.24..sroa_idx1953, align 4, !dbg !143990
  %.sroa.94.24..sroa_idx1978 = getelementptr inbounds nuw i8, ptr %i.ej, i64 20, !dbg !143990
  store i32 %.sroa.94.03301, ptr %.sroa.94.24..sroa_idx1978, align 4, !dbg !143990
  %.sroa.941987.24..sroa_idx2000 = getelementptr inbounds nuw i8, ptr %i.ej, i64 24, !dbg !143990
  store i64 %.sroa.941987.03299, ptr %.sroa.941987.24..sroa_idx2000, align 8, !dbg !143990
  %.sroa.98.24..sroa_idx2020 = getelementptr inbounds nuw i8, ptr %i.ej, i64 32, !dbg !143990
  store i8 %.sroa.98.03297, ptr %.sroa.98.24..sroa_idx2020, align 8, !dbg !143990
  %.sroa.104.24..sroa_idx2036 = getelementptr inbounds nuw i8, ptr %i.ej, i64 33, !dbg !143990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104.24..sroa_idx2036, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104, i64 15, i1 false), !dbg !143990
  %.sroa.1042041.24..sroa_idx2052 = getelementptr inbounds nuw i8, ptr %i.ej, i64 48, !dbg !143990
  store <2 x i32> %i.nr, ptr %.sroa.1042041.24..sroa_idx2052, align 8, !dbg !143990
  %.sroa.106.24..sroa_idx2092 = getelementptr inbounds nuw i8, ptr %i.ej, i64 56, !dbg !143990
  store i8 %.sroa.106.03291, ptr %.sroa.106.24..sroa_idx2092, align 8, !dbg !143990
  %.sroa.107.24..sroa_idx2112 = getelementptr inbounds nuw i8, ptr %i.ej, i64 57, !dbg !143990
  store i8 %.sroa.107.03289, ptr %.sroa.107.24..sroa_idx2112, align 1, !dbg !143990
  %.sroa.108.24..sroa_idx2127 = getelementptr inbounds nuw i8, ptr %i.ej, i64 58, !dbg !143990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108.24..sroa_idx2127, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108, i64 6, i1 false), !dbg !143990
  %.sroa.1082132.24..sroa_idx2143 = getelementptr inbounds nuw i8, ptr %i.ej, i64 64, !dbg !143990
  store i64 %.sroa.1082132.03287, ptr %.sroa.1082132.24..sroa_idx2143, align 8, !dbg !143990
  %i.qk = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw)
          to label %bb.md unwind label %bb.mc, !dbg !143991

bb.bs:                                            ; preds = %bb.bc
  %.sroa.64.sroa.41.0.insert.ext2392 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !143993
  %.sroa.64.sroa.41.0.insert.shift2393 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2392, 16, !dbg !143993
  %.sroa.64.sroa.39.0.insert.ext2305 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !143993
  %.sroa.64.sroa.39.0.insert.shift2306 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2305, 8, !dbg !143993
  %.sroa.64.sroa.39.0.insert.insert2308 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2393, %.sroa.64.sroa.39.0.insert.shift2306, !dbg !143993
  %.sroa.64.sroa.0.0.insert.ext2225 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !143993
  %.sroa.64.sroa.0.0.insert.insert2227 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2308, %.sroa.64.sroa.0.0.insert.ext2225, !dbg !143993 ; 3 uses
  %.sroa.0.sroa.46.0.insert.ext2954 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !143994
  %.sroa.0.sroa.46.0.insert.shift2955 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2954, 8, !dbg !143994
  %.sroa.0.sroa.0.0.insert.ext2835 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !143994
  %.sroa.0.sroa.0.0.insert.insert2837 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2955, %.sroa.0.sroa.0.0.insert.ext2835, !dbg !143994
  store i64 %.sroa.0.sroa.0.0.insert.insert2837, ptr %i.dz, align 8, !dbg !143994
  %.sroa.46.0..sroa_idx1827 = getelementptr inbounds nuw i8, ptr %i.dz, i64 8, !dbg !143994
  %.sroa.46.sroa.47.0.insert.ext2688 = zext i48 %.sroa.46.sroa.47.sroa.0.03194 to i64, !dbg !143994
  %.sroa.46.sroa.47.0.insert.shift2689 = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext2688, 16, !dbg !143994
  %.sroa.46.sroa.45.0.insert.ext2572 = zext i8 %.sroa.46.sroa.45.03196 to i64, !dbg !143994
  %.sroa.46.sroa.45.0.insert.shift2573 = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext2572, 8, !dbg !143994
  %.sroa.46.sroa.45.0.insert.insert2575 = or disjoint i64 %.sroa.46.sroa.47.0.insert.shift2689, %.sroa.46.sroa.45.0.insert.shift2573, !dbg !143994
  %.sroa.46.sroa.0.0.insert.ext2473 = zext i8 %.sroa.46.sroa.0.03198 to i64, !dbg !143994
  %.sroa.46.sroa.0.0.insert.insert2475 = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert2575, %.sroa.46.sroa.0.0.insert.ext2473, !dbg !143994
  store i64 %.sroa.46.sroa.0.0.insert.insert2475, ptr %.sroa.46.0..sroa_idx1827, align 8, !dbg !143994
  %i.ql = call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw), !dbg !143995
  %i.qm = call noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %.sroa.78.03307, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw), !dbg !143997
  %i.qn = call noundef zeroext i1 @_RNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr10properties7general18is_elementwise_rec(i64 noundef %.sroa.78.03307, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw), !dbg !143999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !dbg !144001
  store i8 0, ptr %i.dy, align 1, !dbg !144003
  %i.qo = load i64, ptr %i.ja, align 8, !dbg !144004, !noundef !11
  %i.qp = icmp ult i64 %.sroa.78.03307, %i.qo, !dbg !144011
  br i1 %i.qp, label %bb.ni, label %.sink.split, !dbg !144011, !prof !19115

bb.bt:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !dbg !144015
  %.sroa.0.sroa.46.0.insert.ext2928 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !144015
  %.sroa.0.sroa.46.0.insert.shift2929 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2928, 8, !dbg !144015
  %.sroa.0.sroa.0.0.insert.ext2819 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !144015
  %.sroa.0.sroa.0.0.insert.insert2821 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2929, %.sroa.0.sroa.0.0.insert.ext2819, !dbg !144015
  store i64 %.sroa.0.sroa.0.0.insert.insert2821, ptr %i.dg, align 8, !dbg !144015
  %.sroa.46.0..sroa_idx1807 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !144015 ; 2 uses
  %.sroa.46.sroa.47.0.insert.ext2662 = zext i48 %.sroa.46.sroa.47.sroa.0.03194 to i64, !dbg !144015
  %.sroa.46.sroa.47.0.insert.shift2663 = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext2662, 16, !dbg !144015
  %.sroa.46.sroa.45.0.insert.ext2546 = zext i8 %.sroa.46.sroa.45.03196 to i64, !dbg !144015
  %.sroa.46.sroa.45.0.insert.shift2547 = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext2546, 8, !dbg !144015
  %.sroa.46.sroa.45.0.insert.insert2549 = or disjoint i64 %.sroa.46.sroa.47.0.insert.shift2663, %.sroa.46.sroa.45.0.insert.shift2547, !dbg !144015
  %.sroa.46.sroa.0.0.insert.ext2457 = zext i8 %.sroa.46.sroa.0.03198 to i64, !dbg !144015
  %.sroa.46.sroa.0.0.insert.insert2459 = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert2549, %.sroa.46.sroa.0.0.insert.ext2457, !dbg !144015
  store i64 %.sroa.46.sroa.0.0.insert.insert2459, ptr %.sroa.46.0..sroa_idx1807, align 8, !dbg !144015
  %.sroa.64.0..sroa_idx1865 = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !144015 ; 2 uses
  %.sroa.64.sroa.41.0.insert.ext2366 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !144015
  %.sroa.64.sroa.41.0.insert.shift2367 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2366, 16, !dbg !144015
  %.sroa.64.sroa.39.0.insert.ext2279 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !144015
  %.sroa.64.sroa.39.0.insert.shift2280 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2279, 8, !dbg !144015
  %.sroa.64.sroa.39.0.insert.insert2282 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2367, %.sroa.64.sroa.39.0.insert.shift2280, !dbg !144015
  %.sroa.64.sroa.0.0.insert.ext2209 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !144015
  %.sroa.64.sroa.0.0.insert.insert2211 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2282, %.sroa.64.sroa.0.0.insert.ext2209, !dbg !144015
  store i64 %.sroa.64.sroa.0.0.insert.insert2211, ptr %.sroa.64.0..sroa_idx1865, align 8, !dbg !144015
  %i.qq = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw)
          to label %bb.pk unwind label %bb.pj, !dbg !144016

.thread:                                          ; preds = %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, %bb.bc
  %.sroa.0.sroa.46.sroa.0.031903361 = phi i56 [ %.sroa.0.sroa.46.sroa.0.03190, %bb.bc ], [ %.sroa.0.sroa.46.0.extract.trunc2895, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.0.sroa.0.031923360 = phi i8 [ %.sroa.0.sroa.0.03192, %bb.bc ], [ %.sroa.0.sroa.0.0.extract.trunc2795, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.46.sroa.47.sroa.0.031943359 = phi i48 [ %.sroa.46.sroa.47.sroa.0.03194, %bb.bc ], [ %.sroa.46.sroa.47.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.46.sroa.45.031963358 = phi i8 [ %.sroa.46.sroa.45.03196, %bb.bc ], [ %.sroa.46.sroa.45.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.46.sroa.0.031983357 = phi i8 [ %.sroa.46.sroa.0.03198, %bb.bc ], [ %.sroa.46.sroa.0.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.64.sroa.41.sroa.0.032003356 = phi i48 [ %.sroa.64.sroa.41.sroa.0.03200, %bb.bc ], [ %.sroa.64.sroa.41.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.64.sroa.39.032023355 = phi i8 [ %.sroa.64.sroa.39.03202, %bb.bc ], [ %.sroa.64.sroa.39.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.64.sroa.0.032043354 = phi i8 [ %.sroa.64.sroa.0.03204, %bb.bc ], [ %.sroa.64.sroa.0.0.extract.trunc, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.110.032063349 = phi ptr [ %.sroa.110.03206, %bb.bc ], [ %.sroa.110.0.copyload2156, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.1512179.032793347.off16 = phi i16 [ %.sroa.1512179.03279.off16, %bb.bc ], [ %extract.t3739, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.1512179.032793347.off32 = phi i8 [ %.sroa.1512179.03279.off32, %bb.bc ], [ %extract.t3743, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ]
  %.sroa.1222169.032813346 = phi i64 [ %.sroa.1222169.03281, %bb.bc ], [ %.sroa.1222169.112.copyload2175.fr, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.122.032833345 = phi i16 [ %.sroa.122.03283, %bb.bc ], [ %.sroa.122.0.copyload2168, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.120.032853344 = phi i48 [ %.sroa.120.03285, %bb.bc ], [ %.sroa.120.0.copyload2162, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.1082132.032873343 = phi i64 [ %.sroa.1082132.03287, %bb.bc ], [ %.sroa.1082132.0.copyload2138, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.107.032893342 = phi i8 [ %.sroa.107.03289, %bb.bc ], [ %.sroa.107.0.copyload2107, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.106.032913341 = phi i8 [ %.sroa.106.03291, %bb.bc ], [ %.sroa.106.0.copyload2087, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.98.032973338 = phi i8 [ %.sroa.98.03297, %bb.bc ], [ %.sroa.98.0.copyload2015, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.941987.032993337 = phi i64 [ %.sroa.941987.03299, %bb.bc ], [ %.sroa.941987.0.copyload1993, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.94.033013336 = phi i32 [ %.sroa.94.03301, %bb.bc ], [ %.sroa.94.0.copyload1967, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.92.033033335 = phi i64 [ %.sroa.92.03303, %bb.bc ], [ %.sroa.92.0.copyload1942, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.90.033053334 = phi i32 [ %.sroa.90.03305, %bb.bc ], [ %.sroa.90.0.copyload1917, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.78.033073333 = phi i64 [ %.sroa.78.03307, %bb.bc ], [ %.sroa.78.0.copyload1895, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %i.qr = phi <2 x i32> [ %i.nr, %bb.bc ], [ %i.nm, %_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan5plans5aexprNtB5_5AExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit ] ; 3 uses
  %.sroa.0.sroa.46.0.insert.ext2882 = zext i56 %.sroa.0.sroa.46.sroa.0.031903361 to i64, !dbg !144018
  %.sroa.0.sroa.46.0.insert.shift2883 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2882, 8, !dbg !144018
  %.sroa.0.sroa.0.0.insert.ext2786 = zext i8 %.sroa.0.sroa.0.031923360 to i64, !dbg !144018
  %.sroa.0.sroa.0.0.insert.insert2788 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2883, %.sroa.0.sroa.0.0.insert.ext2786, !dbg !144018 ; 3 uses
  %.sroa.46.sroa.47.0.insert.ext = zext i48 %.sroa.46.sroa.47.sroa.0.031943359 to i64, !dbg !144018
  %.sroa.46.sroa.47.0.insert.shift = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext, 16, !dbg !144018
  %.sroa.46.sroa.45.0.insert.ext = zext i8 %.sroa.46.sroa.45.031963358 to i64, !dbg !144018
  %.sroa.46.sroa.45.0.insert.shift = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext, 8, !dbg !144018
  %.sroa.46.sroa.45.0.insert.insert = or disjoint i64 %.sroa.46.sroa.45.0.insert.shift, %.sroa.46.sroa.47.0.insert.shift, !dbg !144018
  %.sroa.46.sroa.0.0.insert.ext = zext i8 %.sroa.46.sroa.0.031983357 to i64, !dbg !144018
  %.sroa.46.sroa.0.0.insert.insert = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert, %.sroa.46.sroa.0.0.insert.ext, !dbg !144018 ; 3 uses
  %.sroa.64.sroa.41.0.insert.ext = zext i48 %.sroa.64.sroa.41.sroa.0.032003356 to i64, !dbg !144018
  %.sroa.64.sroa.41.0.insert.shift = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext, 16, !dbg !144018
  %.sroa.64.sroa.39.0.insert.ext = zext i8 %.sroa.64.sroa.39.032023355 to i64, !dbg !144018
  %.sroa.64.sroa.39.0.insert.shift = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext, 8, !dbg !144018
  %.sroa.64.sroa.39.0.insert.insert = or disjoint i64 %.sroa.64.sroa.39.0.insert.shift, %.sroa.64.sroa.41.0.insert.shift, !dbg !144018
  %.sroa.64.sroa.0.0.insert.ext = zext i8 %.sroa.64.sroa.0.032043354 to i64, !dbg !144018
  %.sroa.64.sroa.0.0.insert.insert = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert, %.sroa.64.sroa.0.0.insert.ext, !dbg !144018 ; 3 uses
  switch i8 %.sroa.0.sroa.0.031923360, label %bb.ri [
    i8 40, label %bb.rj
    i8 41, label %bb.rj
    i8 43, label %bb.rk
    i8 44, label %bb.rk
  ], !dbg !143845

bb.bu:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io), !dbg !144019
  %.sroa.0.sroa.46.0.insert.ext2932 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !144019
  %.sroa.0.sroa.46.0.insert.shift2933 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2932, 8, !dbg !144019
  %.sroa.0.sroa.0.0.insert.ext2822 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !144019
  %.sroa.0.sroa.0.0.insert.insert2824 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2933, %.sroa.0.sroa.0.0.insert.ext2822, !dbg !144019
  store i64 %.sroa.0.sroa.0.0.insert.insert2824, ptr %i.io, align 8, !dbg !144019
  %.sroa.46.0..sroa_idx1809 = getelementptr inbounds nuw i8, ptr %i.io, i64 8, !dbg !144019 ; 3 uses
  %.sroa.46.sroa.47.0.insert.ext2666 = zext i48 %.sroa.46.sroa.47.sroa.0.03194 to i64, !dbg !144019
  %.sroa.46.sroa.47.0.insert.shift2667 = shl nuw i64 %.sroa.46.sroa.47.0.insert.ext2666, 16, !dbg !144019
  %.sroa.46.sroa.45.0.insert.ext2550 = zext i8 %.sroa.46.sroa.45.03196 to i64, !dbg !144019
  %.sroa.46.sroa.45.0.insert.shift2551 = shl nuw nsw i64 %.sroa.46.sroa.45.0.insert.ext2550, 8, !dbg !144019
  %.sroa.46.sroa.45.0.insert.insert2553 = or disjoint i64 %.sroa.46.sroa.47.0.insert.shift2667, %.sroa.46.sroa.45.0.insert.shift2551, !dbg !144019
  %.sroa.46.sroa.0.0.insert.ext2460 = zext i8 %.sroa.46.sroa.0.03198 to i64, !dbg !144019
  %.sroa.46.sroa.0.0.insert.insert2462 = or disjoint i64 %.sroa.46.sroa.45.0.insert.insert2553, %.sroa.46.sroa.0.0.insert.ext2460, !dbg !144019
  store i64 %.sroa.46.sroa.0.0.insert.insert2462, ptr %.sroa.46.0..sroa_idx1809, align 8, !dbg !144019
  %.sroa.64.0..sroa_idx1867 = getelementptr inbounds nuw i8, ptr %i.io, i64 16, !dbg !144019 ; 3 uses
  %.sroa.64.sroa.41.0.insert.ext2370 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !144019
  %.sroa.64.sroa.41.0.insert.shift2371 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2370, 16, !dbg !144019
  %.sroa.64.sroa.39.0.insert.ext2283 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !144019
  %.sroa.64.sroa.39.0.insert.shift2284 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2283, 8, !dbg !144019
  %.sroa.64.sroa.39.0.insert.insert2286 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2371, %.sroa.64.sroa.39.0.insert.shift2284, !dbg !144019
  %.sroa.64.sroa.0.0.insert.ext2212 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !144019
  %.sroa.64.sroa.0.0.insert.insert2214 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2286, %.sroa.64.sroa.0.0.insert.ext2212, !dbg !144019
  store i64 %.sroa.64.sroa.0.0.insert.insert2214, ptr %.sroa.64.0..sroa_idx1867, align 8, !dbg !144019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in), !dbg !144020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im), !dbg !144022
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !144023
  %i.qt = load ptr, ptr %i.qs, align 8, !dbg !144023, !nonnull !11, !align !155, !noundef !11 ; 4 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !dbg !144024, !nonnull !11, !noundef !11
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16, !dbg !144030
  store ptr %i.iw, ptr %i.im, align 8, !dbg !144031
  %i.qw = getelementptr inbounds nuw i8, ptr %i.im, i64 8, !dbg !144031
  store ptr %i.qv, ptr %i.qw, align 8, !dbg !144031
  invoke void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.bj, ptr noundef nonnull align 16 %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.im)
          to label %bb.uy unwind label %bb.ux, !dbg !144036

bb.bv:                                            ; preds = %bb.bc
  %.sroa.0.sroa.46.0.insert.ext2860 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !144037
  %.sroa.0.sroa.46.0.insert.shift2861 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2860, 8, !dbg !144037
  %.sroa.0.sroa.0.0.insert.ext2773 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !144037
  %.sroa.0.sroa.0.0.insert.insert2775 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2861, %.sroa.0.sroa.0.0.insert.ext2773, !dbg !144037
  %.sroa.64.sroa.41.0.insert.ext2406 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !144038
  %.sroa.64.sroa.41.0.insert.shift2407 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2406, 16, !dbg !144038
  %.sroa.64.sroa.39.0.insert.ext2319 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !144038
  %.sroa.64.sroa.39.0.insert.shift2320 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2319, 8, !dbg !144038
  %.sroa.64.sroa.39.0.insert.insert2322 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2407, %.sroa.64.sroa.39.0.insert.shift2320, !dbg !144038
  %.sroa.64.sroa.0.0.insert.ext2234 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !144038
  %.sroa.64.sroa.0.0.insert.insert2236 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2322, %.sroa.64.sroa.0.0.insert.ext2234, !dbg !144038
  %i.qx = ptrtoint ptr %.sroa.110.03206 to i64, !dbg !144039
  %.sroa.110.0.extract.trunc = trunc i64 %i.qx to i8, !dbg !144039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv), !dbg !144040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu), !dbg !144042
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !144043
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !144043, !nonnull !11, !align !155, !noundef !11 ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !dbg !144044, !nonnull !11, !noundef !11
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16, !dbg !144049
  store ptr %i.iw, ptr %i.iu, align 8, !dbg !144050
  %i.rc = getelementptr inbounds nuw i8, ptr %i.iu, i64 8, !dbg !144050
  store ptr %i.rb, ptr %i.rc, align 8, !dbg !144050
  call void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.bl, ptr noundef nonnull align 16 %i.je, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.iu), !dbg !144051
  %i.rd = load i8, ptr %i.bl, align 16, !dbg !144052, !range !118, !noundef !11 ; 2 uses
  %i.re = icmp eq i8 %i.rd, 31, !dbg !144052
  br i1 %i.re, label %bb.xr, label %bb.xs, !dbg !144055

bb.bw:                                            ; preds = %bb.bc
  %.sroa.0.sroa.46.0.insert.ext2864 = zext i56 %.sroa.0.sroa.46.sroa.0.03190 to i64, !dbg !144056
  %.sroa.0.sroa.46.0.insert.shift2865 = shl nuw i64 %.sroa.0.sroa.46.0.insert.ext2864, 8, !dbg !144056
  %.sroa.0.sroa.0.0.insert.ext2776 = zext i8 %.sroa.0.sroa.0.03192 to i64, !dbg !144056
  %.sroa.0.sroa.0.0.insert.insert2778 = or disjoint i64 %.sroa.0.sroa.46.0.insert.shift2865, %.sroa.0.sroa.0.0.insert.ext2776, !dbg !144056
  %.sroa.64.sroa.41.0.insert.ext2396 = zext i48 %.sroa.64.sroa.41.sroa.0.03200 to i64, !dbg !144057
  %.sroa.64.sroa.41.0.insert.shift2397 = shl nuw i64 %.sroa.64.sroa.41.0.insert.ext2396, 16, !dbg !144057
  %.sroa.64.sroa.39.0.insert.ext2309 = zext i8 %.sroa.64.sroa.39.03202 to i64, !dbg !144057
  %.sroa.64.sroa.39.0.insert.shift2310 = shl nuw nsw i64 %.sroa.64.sroa.39.0.insert.ext2309, 8, !dbg !144057
  %.sroa.64.sroa.39.0.insert.insert2312 = or disjoint i64 %.sroa.64.sroa.41.0.insert.shift2397, %.sroa.64.sroa.39.0.insert.shift2310, !dbg !144057
  %.sroa.64.sroa.0.0.insert.ext2228 = zext i8 %.sroa.64.sroa.0.03204 to i64, !dbg !144057
  %.sroa.64.sroa.0.0.insert.insert2230 = or disjoint i64 %.sroa.64.sroa.39.0.insert.insert2312, %.sroa.64.sroa.0.0.insert.ext2228, !dbg !144057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !144057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !dbg !144059
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !144060
  %i.rg = load ptr, ptr %i.rf, align 8, !dbg !144060, !nonnull !11, !align !155, !noundef !11 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !144061
  %i.ri = load ptr, ptr %i.rh, align 8, !dbg !144061, !nonnull !11, !noundef !11 ; 3 uses
  call void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.cd, i64 noundef %.sroa.0.sroa.0.0.insert.insert2778, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.rg, ptr noalias noundef nonnull dereferenceable(4) %i.ri), !dbg !144059
  %i.rj = load i64, ptr %i.cd, align 8, !dbg !144062, !range !699, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.rj, 18, !dbg !144062
  %i.rk = getelementptr inbounds nuw i8, ptr %i.cd, i64 8, !dbg !144063
  %i.rl = load ptr, ptr %i.rk, align 8, !dbg !144063 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.cd, i64 16, !dbg !144063
  %i.rn = load ptr, ptr %i.rm, align 8, !dbg !144063 ; 2 uses
  br i1 %.not, label %bb.yn, label %bb.ym, !dbg !144064

bb.bx:                                            ; preds = %bb.be
  %i.ro = load ptr, ptr %i.iz, align 8, !dbg !144065, !nonnull !11, !noundef !11
  %i.rp = getelementptr inbounds nuw [144 x i8], ptr %i.ro, i64 %i.iy, !dbg !144074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !dbg !144075
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !144076
  %i.rr = load ptr, ptr %i.rq, align 8, !dbg !144076, !nonnull !11, !align !155, !noundef !11
  %i.rs = load ptr, ptr %i.rr, align 8, !dbg !144077, !nonnull !11, !noundef !11
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16, !dbg !144082
  store ptr %i.iw, ptr %i.hf, align 8, !dbg !144083
  %i.ru = getelementptr inbounds nuw i8, ptr %i.hf, i64 8, !dbg !144083
  store ptr %i.rt, ptr %i.ru, align 8, !dbg !144083
  call void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.bb, ptr noundef nonnull align 16 %i.rp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hf), !dbg !144084
  %i.rv = load i8, ptr %i.bb, align 16, !dbg !144085, !range !118, !noundef !11 ; 2 uses
  %i.rw = icmp eq i8 %i.rv, 31, !dbg !144085
  br i1 %i.rw, label %bb.bz, label %bb.ca, !dbg !144087

.body1454.thread3841:                             ; preds = %bb.lr, %bb.lz
  %lpad.thr_comm3839 = landingpad { ptr, i32 }
          cleanup
  br label %.thread3366, !dbg !143749

.body1454:                                        ; preds = %bb.mz, %bb.ng
  %lpad.thr_comm.split-lp3840 = landingpad { ptr, i32 }
          cleanup
  br label %.thread3371, !dbg !143749

.sink.split:                                      ; preds = %bb.be, %bb.ni, %bb.bs, %bb.bj
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #33, !dbg !144088
  unreachable

bb.by:                                            ; preds = %bb.ty, %bb.tq, %bb.sz, %bb.st, %bb.sg, %bb.rr, %bb.rm, %bb.pq, %bb.pl, %bb.nm, %bb.me, %bb.lg, %bb.kl, %bb.jd, %bb.dx, %bb.ck
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !144090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.rx, i64 72, i1 false), !dbg !144091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !144092
  br label %.thread3377, !dbg !144093

bb.ca:                                            ; preds = %bb.bx
  %.sroa.5849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 1, !dbg !144095
  %.sroa.43019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 17, !dbg !144096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !144096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.43019.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5849.0..sroa_idx, i64 79, i1 false), !dbg !144086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !144092
  store i64 1, ptr %i.ba, align 16, !dbg !144096
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !144096
  store i64 1, ptr %i.ry, align 8, !dbg !144096
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !144096
  store i8 %i.rv, ptr %i.rz, align 16, !dbg !144096
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !144100, !noalias !144108
  %i.sa = call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 369) 96, i64 noundef range(i64 8, 17) 16) #37, !dbg !144111, !noalias !144108 ; 3 uses
  %i.sb = icmp eq ptr %i.sa, null, !dbg !144112
  br i1 %i.sb, label %bb.cb, label %bb.ce, !dbg !144113, !prof !31

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #33
          to label %.noexc unwind label %bb.cc, !dbg !144114

.noexc:                                           ; preds = %bb.cb
  unreachable, !dbg !144114

bb.cc:                                            ; preds = %bb.cb
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCskY9G75ZWc4U_11polars_expr11expressions7element11ElementExprEEB1p_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.ba) #34
          to label %common.resume unwind label %bb.cd, !dbg !144115

bb.cd:                                            ; preds = %bb.cc
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !144116
  unreachable, !dbg !144116

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.sa, ptr noundef nonnull align 16 dereferenceable(96) %i.ba, i64 96, i1 false), !dbg !144117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !144119
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144120
  store ptr %i.sa, ptr %i.se, align 8, !dbg !144120
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !144120
  store ptr @56, ptr %i.sf, align 8, !dbg !144120
  store i64 18, ptr %0, align 8, !dbg !144120
  br label %.thread3377, !dbg !144121
end_hunk_1
begin_hunk_2_@_RNCNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner0B5_:bb.a
bb.qq:                                            ; preds = %bb.qp
  %.sroa.03106.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03106, i64 144, !dbg !146795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.03106.144..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %i.df, i64 80, i1 false), !dbg !146736
  %i.asd = load i8, ptr %i.aqt, align 1, !dbg !146801, !range !680, !noundef !11
  %.sroa.73109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256, !dbg !146802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !146802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.73109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !dbg !146795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %.sroa.03106, ptr noundef nonnull align 16 dereferenceable(144) %i.cq, i64 144, i1 false), !dbg !146795, !alias.scope !146805, !noalias !146809
  %i.ase = zext i1 %i.qq to i8, !dbg !146795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !146813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !146813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !146813
  store i64 1, ptr %i.w, align 16, !dbg !146802
  %i.asf = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !146802
  store i64 1, ptr %i.asf, align 8, !dbg !146802
  %i.asg = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !146802 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.asg, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.03106, i64 224, i1 false), !dbg !146802
  %.sroa.53107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240, !dbg !146802
  store ptr %i.asa, ptr %.sroa.53107.0..sroa_idx, align 16, !dbg !146802
  %.sroa.63108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 248, !dbg !146802
  store ptr %i.asb, ptr %.sroa.63108.0..sroa_idx, align 8, !dbg !146802
  %.sroa.83110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 280, !dbg !146802
  store i8 %i.ase, ptr %.sroa.83110.0..sroa_idx, align 8, !dbg !146802
  %.sroa.93111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 281, !dbg !146802
  store i8 %i.asd, ptr %.sroa.93111.0..sroa_idx, align 1, !dbg !146802
  %i.ash = invoke fastcc noundef ptr @_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit(i64 noundef 16, i64 noundef 288)
          to label %bb.qt unwind label %bb.qr, !dbg !146814, !noalias !146817 ; 2 uses

bb.qr:                                            ; preds = %bb.qq
  %i.asi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskY9G75ZWc4U_11polars_expr11expressions10structeval14StructEvalExprEBM_(ptr noalias noundef nonnull align 16 dereferenceable(272) %i.asg)
          to label %.body1443 unwind label %bb.qs, !dbg !146820

bb.qs:                                            ; preds = %bb.qr
  %i.asj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !146823
  unreachable, !dbg !146823

bb.qt:                                            ; preds = %bb.qq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.ash, ptr noundef nonnull align 16 dereferenceable(288) %i.w, i64 288, i1 false), !dbg !146824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !146826
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03106), !dbg !146827
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !146828
  store ptr %i.ash, ptr %i.ask, align 8, !dbg !146828
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !146828
  store ptr @73, ptr %i.asl, align 8, !dbg !146828
  store i64 18, ptr %0, align 8, !dbg !146828
  call void @llvm.experimental.noalias.scope.decl(metadata !146829), !dbg !146740
  call void @llvm.experimental.noalias.scope.decl(metadata !146832), !dbg !146835
  %i.asm = load ptr, ptr %i.cv, align 8, !dbg !146837, !alias.scope !146841, !nonnull !11, !noundef !11
  %i.asn = atomicrmw sub ptr %i.asm, i64 1 release, align 8, !dbg !146842, !noalias !146841
  %i.aso = icmp eq i64 %i.asn, 1, !dbg !146845
  br i1 %i.aso, label %bb.qu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1663, !dbg !146845

bb.qu:                                            ; preds = %bb.qt
  fence acquire, !dbg !146846
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cv) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1663 unwind label %bb.qb, !dbg !146848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1663: ; preds = %bb.qt, %bb.qu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !146740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !146664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !146660
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(80) %i.dd)
          to label %bb.qv unwind label %bb.pt, !dbg !146639

bb.qv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !146639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !146621
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.dg), !dbg !146547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !146547
  br label %.thread3377, !dbg !146547

bb.qw:                                            ; preds = %bb.qp
  %i.asp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEEB1z_(ptr noalias noundef align 8 dereferenceable(24) %i.cr) #34
          to label %bb.qx unwind label %bb.db, !dbg !146813

bb.qx:                                            ; preds = %bb.qw
  %i.asq = atomicrmw sub ptr %i.asa, i64 1 release, align 8, !dbg !146849, !noalias !146854
  %i.asr = icmp eq i64 %i.asq, 1, !dbg !146859
  br i1 %i.asr, label %bb.qy, label %.body1443, !dbg !146859

bb.qy:                                            ; preds = %bb.qx
  fence acquire, !dbg !146860
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs) #36
          to label %.body1443 unwind label %bb.db, !dbg !146862

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1660: ; preds = %bb.qn, %bb.qo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !146740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !146664
  call void @llvm.experimental.noalias.scope.decl(metadata !146863), !dbg !146660
  call void @llvm.experimental.noalias.scope.decl(metadata !146866), !dbg !146869
  %i.ass = load ptr, ptr %i.db, align 8, !dbg !146871, !alias.scope !146875, !nonnull !11, !noundef !11
  %i.ast = atomicrmw sub ptr %i.ass, i64 1 release, align 8, !dbg !146876, !noalias !146875
  %i.asu = icmp eq i64 %i.ast, 1, !dbg !146879
  br i1 %i.asu, label %bb.qz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1667, !dbg !146879

bb.qz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1660
  fence acquire, !dbg !146880
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.db) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1667 unwind label %bb.px, !dbg !146882

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1667: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEECskY9G75ZWc4U_11polars_expr.exit1660, %bb.qz, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !146660
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(80) %i.dd)
          to label %bb.rd unwind label %bb.pt, !dbg !146639

bb.ra:                                            ; preds = %bb.qc
  %i.asv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.cx, i64 23, !dbg !146883
  %i.asx = load i8, ptr %i.asw, align 1, !dbg !146883, !range !6399, !alias.scope !146890, !noundef !11
  %i.asy = icmp eq i8 %i.asx, -40, !dbg !146899
  br i1 %i.asy, label %bb.rb, label %.thread3562, !dbg !146899, !prof !31

bb.rb:                                            ; preds = %bb.ra
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx)
          to label %.thread3562 unwind label %bb.db, !dbg !146900

.thread3562:                                      ; preds = %bb.ra, %bb.rb, %bb.qd, %.thread3583
  %.pn13283569 = phi { ptr, i32 } [ %lpad.thr_comm3581, %.thread3583 ], [ %i.ard, %bb.qd ], [ %i.asv, %bb.rb ], [ %i.asv, %bb.ra ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(64) %i.cz) #34
          to label %.thread3575.thread unwind label %bb.db, !dbg !146664

.thread3575.thread:                               ; preds = %bb.qh, %.thread3562, %.thread3555, %.thread3575
  %.pn1328.pn3560 = phi { ptr, i32 } [ %i.arc, %.thread3555 ], [ %.pn1328.pn, %.thread3575 ], [ %i.ark, %bb.qh ], [ %.pn13283569, %.thread3562 ] ; 2 uses
  %.sroa.0657.33559 = phi i8 [ 1, %.thread3555 ], [ %.sroa.0657.3, %.thread3575 ], [ 1, %bb.qh ], [ 1, %.thread3562 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !146901), !dbg !146660
  call void @llvm.experimental.noalias.scope.decl(metadata !146904), !dbg !146907
  %i.asz = load ptr, ptr %i.db, align 8, !dbg !146909, !alias.scope !146913, !nonnull !11, !noundef !11
  %i.ata = atomicrmw sub ptr %i.asz, i64 1 release, align 8, !dbg !146914, !noalias !146913
  %i.atb = icmp eq i64 %i.ata, 1, !dbg !146917
  br i1 %i.atb, label %bb.rc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1671, !dbg !146917

bb.rc:                                            ; preds = %.thread3575.thread
  fence acquire, !dbg !146918
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.db) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1671 unwind label %bb.db, !dbg !146920

bb.rd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1667, %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !146639
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(80) %i.df)
          to label %bb.re unwind label %bb.pj, !dbg !146621

bb.re:                                            ; preds = %bb.rd, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !146621
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECskY9G75ZWc4U_11polars_expr.exit1676 unwind label %bb.rf, !dbg !146921

bb.rf:                                            ; preds = %bb.re
  %i.atc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %common.resume unwind label %bb.rg, !dbg !146923

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREECskY9G75ZWc4U_11polars_expr.exit1676: ; preds = %bb.re
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg), !dbg !146925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !146547
  br label %.thread3377, !dbg !144093

bb.rg:                                            ; preds = %bb.rf
  %i.atd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !146921
  unreachable, !dbg !146921

bb.rh:                                            ; preds = %bb.ps
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(80) %i.df) #34
          to label %bb.pi unwind label %bb.db, !dbg !146621

bb.ri:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !146927
  store i64 %.sroa.1222169.032813346, ptr %i.cp, align 8, !dbg !146927
  %.sroa.151.112..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !146927 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151, i64 16, i1 false), !dbg !146927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !dbg !146928
  store i64 %.sroa.0.sroa.0.0.insert.insert2788, ptr %i.co, align 16, !dbg !146928
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8, !dbg !146928
  store i64 %.sroa.46.sroa.0.0.insert.insert, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !146928
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16, !dbg !146928
  store i64 %.sroa.64.sroa.0.0.insert.insert, ptr %.sroa.64.0..sroa_idx, align 16, !dbg !146928
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !146928
  store i64 %.sroa.78.033073333, ptr %.sroa.78.0..sroa_idx, align 8, !dbg !146928
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32, !dbg !146928
  store i32 %.sroa.90.033053334, ptr %.sroa.90.0..sroa_idx, align 16, !dbg !146928
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 36, !dbg !146928
  store i64 %.sroa.92.033033335, ptr %.sroa.92.0..sroa_idx, align 4, !dbg !146928
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 44, !dbg !146928
  store i32 %.sroa.94.033013336, ptr %.sroa.94.0..sroa_idx, align 4, !dbg !146928
  %.sroa.941987.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 48, !dbg !146928
  store i64 %.sroa.941987.032993337, ptr %.sroa.941987.0..sroa_idx, align 16, !dbg !146928
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56, !dbg !146928
  store i8 %.sroa.98.032973338, ptr %.sroa.98.0..sroa_idx, align 8, !dbg !146928
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 57, !dbg !146928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104, i64 15, i1 false), !dbg !146928
  %.sroa.1042041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 72, !dbg !146928
  store <2 x i32> %i.qr, ptr %.sroa.1042041.0..sroa_idx, align 8, !dbg !146928
  %.sroa.106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 80, !dbg !146928
  store i8 %.sroa.106.032913341, ptr %.sroa.106.0..sroa_idx, align 16, !dbg !146928
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 81, !dbg !146928
  store i8 %.sroa.107.032893342, ptr %.sroa.107.0..sroa_idx, align 1, !dbg !146928
  %.sroa.108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 82, !dbg !146928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108, i64 6, i1 false), !dbg !146928
  %.sroa.1082132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 88, !dbg !146928
  store i64 %.sroa.1082132.032873343, ptr %.sroa.1082132.0..sroa_idx, align 8, !dbg !146928
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 96, !dbg !146928
  store ptr %.sroa.110.032063349, ptr %.sroa.110.0..sroa_idx, align 16, !dbg !146928
  %.sroa.120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 104, !dbg !146928
  store i48 %.sroa.120.032853344, ptr %.sroa.120.0..sroa_idx, align 8, !dbg !146928
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 110, !dbg !146928
  store i16 %.sroa.122.032833345, ptr %.sroa.122.0..sroa_idx, align 2, !dbg !146928
  %i.ate = invoke noundef zeroext i1 @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6scalar12is_scalar_ae(i64 noundef %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.iw)
          to label %bb.tp unwind label %bb.to, !dbg !146929

bb.rj:                                            ; preds = %.thread, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !dbg !146931
  store i64 %.sroa.1222169.032813346, ptr %i.fw, align 8, !dbg !146931
  %.sroa.151.112..sroa_idx2176 = getelementptr inbounds nuw i8, ptr %i.fw, i64 8, !dbg !146931 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151.112..sroa_idx2176, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151, i64 16, i1 false), !dbg !146931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !dbg !146932
  store i64 %.sroa.0.sroa.0.0.insert.insert2788, ptr %i.fv, align 16, !dbg !146932
  %.sroa.46.0..sroa_idx1783 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8, !dbg !146932
  store i64 %.sroa.46.sroa.0.0.insert.insert, ptr %.sroa.46.0..sroa_idx1783, align 8, !dbg !146932
  %.sroa.64.0..sroa_idx1841 = getelementptr inbounds nuw i8, ptr %i.fv, i64 16, !dbg !146932
  store i64 %.sroa.64.sroa.0.0.insert.insert, ptr %.sroa.64.0..sroa_idx1841, align 16, !dbg !146932
  %.sroa.78.0..sroa_idx1890 = getelementptr inbounds nuw i8, ptr %i.fv, i64 24, !dbg !146932
  store i64 %.sroa.78.033073333, ptr %.sroa.78.0..sroa_idx1890, align 8, !dbg !146932
  %.sroa.90.0..sroa_idx1912 = getelementptr inbounds nuw i8, ptr %i.fv, i64 32, !dbg !146932
  store i32 %.sroa.90.033053334, ptr %.sroa.90.0..sroa_idx1912, align 16, !dbg !146932
  %.sroa.92.0..sroa_idx1937 = getelementptr inbounds nuw i8, ptr %i.fv, i64 36, !dbg !146932
  store i64 %.sroa.92.033033335, ptr %.sroa.92.0..sroa_idx1937, align 4, !dbg !146932
  %.sroa.94.0..sroa_idx1962 = getelementptr inbounds nuw i8, ptr %i.fv, i64 44, !dbg !146932
  store i32 %.sroa.94.033013336, ptr %.sroa.94.0..sroa_idx1962, align 4, !dbg !146932
  %.sroa.941987.0..sroa_idx1988 = getelementptr inbounds nuw i8, ptr %i.fv, i64 48, !dbg !146932
  store i64 %.sroa.941987.032993337, ptr %.sroa.941987.0..sroa_idx1988, align 16, !dbg !146932
  %.sroa.98.0..sroa_idx2010 = getelementptr inbounds nuw i8, ptr %i.fv, i64 56, !dbg !146932
  store i8 %.sroa.98.032973338, ptr %.sroa.98.0..sroa_idx2010, align 8, !dbg !146932
  %.sroa.104.0..sroa_idx2031 = getelementptr inbounds nuw i8, ptr %i.fv, i64 57, !dbg !146932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104.0..sroa_idx2031, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104, i64 15, i1 false), !dbg !146932
  %.sroa.1042041.0..sroa_idx2042 = getelementptr inbounds nuw i8, ptr %i.fv, i64 72, !dbg !146932
  store <2 x i32> %i.qr, ptr %.sroa.1042041.0..sroa_idx2042, align 8, !dbg !146932
  %.sroa.106.0..sroa_idx2082 = getelementptr inbounds nuw i8, ptr %i.fv, i64 80, !dbg !146932
  store i8 %.sroa.106.032913341, ptr %.sroa.106.0..sroa_idx2082, align 16, !dbg !146932
  %.sroa.107.0..sroa_idx2102 = getelementptr inbounds nuw i8, ptr %i.fv, i64 81, !dbg !146932
  store i8 %.sroa.107.032893342, ptr %.sroa.107.0..sroa_idx2102, align 1, !dbg !146932
  %.sroa.108.0..sroa_idx2122 = getelementptr inbounds nuw i8, ptr %i.fv, i64 82, !dbg !146932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108.0..sroa_idx2122, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108, i64 6, i1 false), !dbg !146932
  %.sroa.1082132.0..sroa_idx2133 = getelementptr inbounds nuw i8, ptr %i.fv, i64 88, !dbg !146932
  store i64 %.sroa.1082132.032873343, ptr %.sroa.1082132.0..sroa_idx2133, align 8, !dbg !146932
  %.sroa.110.0..sroa_idx2151 = getelementptr inbounds nuw i8, ptr %i.fv, i64 96, !dbg !146932
  store ptr %.sroa.110.032063349, ptr %.sroa.110.0..sroa_idx2151, align 16, !dbg !146932
  %.sroa.120.0..sroa_idx2157 = getelementptr inbounds nuw i8, ptr %i.fv, i64 104, !dbg !146932
  store i48 %.sroa.120.032853344, ptr %.sroa.120.0..sroa_idx2157, align 8, !dbg !146932
  %.sroa.122.0..sroa_idx2163 = getelementptr inbounds nuw i8, ptr %i.fv, i64 110, !dbg !146932
  store i16 %.sroa.122.032833345, ptr %.sroa.122.0..sroa_idx2163, align 2, !dbg !146932
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !dbg !146933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !dbg !146935
  %i.atf = getelementptr inbounds nuw i8, ptr %i.fw, i64 16, !dbg !146936
  %i.atg = load i64, ptr %i.atf, align 8, !dbg !146936, !noundef !11
  %.not1304 = icmp eq i64 %i.atg, 0, !dbg !146942
  br i1 %.not1304, label %bb.rm, label %bb.rl, !dbg !146942

bb.rk:                                            ; preds = %.thread, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !dbg !146947
  store i64 %.sroa.1222169.032813346, ptr %i.fn, align 8, !dbg !146947
  %.sroa.151.112..sroa_idx2177 = getelementptr inbounds nuw i8, ptr %i.fn, i64 8, !dbg !146947 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151.112..sroa_idx2177, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.151, i64 16, i1 false), !dbg !146947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !dbg !146948
  store i64 %.sroa.0.sroa.0.0.insert.insert2788, ptr %i.fm, align 16, !dbg !146948
  %.sroa.46.0..sroa_idx1785 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8, !dbg !146948
  store i64 %.sroa.46.sroa.0.0.insert.insert, ptr %.sroa.46.0..sroa_idx1785, align 8, !dbg !146948
  %.sroa.64.0..sroa_idx1843 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16, !dbg !146948
  store i64 %.sroa.64.sroa.0.0.insert.insert, ptr %.sroa.64.0..sroa_idx1843, align 16, !dbg !146948
  %.sroa.78.0..sroa_idx1892 = getelementptr inbounds nuw i8, ptr %i.fm, i64 24, !dbg !146948
  store i64 %.sroa.78.033073333, ptr %.sroa.78.0..sroa_idx1892, align 8, !dbg !146948
  %.sroa.90.0..sroa_idx1914 = getelementptr inbounds nuw i8, ptr %i.fm, i64 32, !dbg !146948
  store i32 %.sroa.90.033053334, ptr %.sroa.90.0..sroa_idx1914, align 16, !dbg !146948
  %.sroa.92.0..sroa_idx1939 = getelementptr inbounds nuw i8, ptr %i.fm, i64 36, !dbg !146948
  store i64 %.sroa.92.033033335, ptr %.sroa.92.0..sroa_idx1939, align 4, !dbg !146948
  %.sroa.94.0..sroa_idx1964 = getelementptr inbounds nuw i8, ptr %i.fm, i64 44, !dbg !146948
  store i32 %.sroa.94.033013336, ptr %.sroa.94.0..sroa_idx1964, align 4, !dbg !146948
  %.sroa.941987.0..sroa_idx1990 = getelementptr inbounds nuw i8, ptr %i.fm, i64 48, !dbg !146948
  store i64 %.sroa.941987.032993337, ptr %.sroa.941987.0..sroa_idx1990, align 16, !dbg !146948
  %.sroa.98.0..sroa_idx2012 = getelementptr inbounds nuw i8, ptr %i.fm, i64 56, !dbg !146948
  store i8 %.sroa.98.032973338, ptr %.sroa.98.0..sroa_idx2012, align 8, !dbg !146948
  %.sroa.104.0..sroa_idx2032 = getelementptr inbounds nuw i8, ptr %i.fm, i64 57, !dbg !146948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104.0..sroa_idx2032, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.104, i64 15, i1 false), !dbg !146948
  %.sroa.1042041.0..sroa_idx2044 = getelementptr inbounds nuw i8, ptr %i.fm, i64 72, !dbg !146948
  store <2 x i32> %i.qr, ptr %.sroa.1042041.0..sroa_idx2044, align 8, !dbg !146948
  %.sroa.106.0..sroa_idx2084 = getelementptr inbounds nuw i8, ptr %i.fm, i64 80, !dbg !146948
  store i8 %.sroa.106.032913341, ptr %.sroa.106.0..sroa_idx2084, align 16, !dbg !146948
  %.sroa.107.0..sroa_idx2104 = getelementptr inbounds nuw i8, ptr %i.fm, i64 81, !dbg !146948
  store i8 %.sroa.107.032893342, ptr %.sroa.107.0..sroa_idx2104, align 1, !dbg !146948
  %.sroa.108.0..sroa_idx2123 = getelementptr inbounds nuw i8, ptr %i.fm, i64 82, !dbg !146948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108.0..sroa_idx2123, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.108, i64 6, i1 false), !dbg !146948
  %.sroa.1082132.0..sroa_idx2135 = getelementptr inbounds nuw i8, ptr %i.fm, i64 88, !dbg !146948
  store i64 %.sroa.1082132.032873343, ptr %.sroa.1082132.0..sroa_idx2135, align 8, !dbg !146948
  %.sroa.110.0..sroa_idx2153 = getelementptr inbounds nuw i8, ptr %i.fm, i64 96, !dbg !146948
  store ptr %.sroa.110.032063349, ptr %.sroa.110.0..sroa_idx2153, align 16, !dbg !146948
  %.sroa.120.0..sroa_idx2159 = getelementptr inbounds nuw i8, ptr %i.fm, i64 104, !dbg !146948
  store i48 %.sroa.120.032853344, ptr %.sroa.120.0..sroa_idx2159, align 8, !dbg !146948
  %.sroa.122.0..sroa_idx2165 = getelementptr inbounds nuw i8, ptr %i.fm, i64 110, !dbg !146948
  store i16 %.sroa.122.032833345, ptr %.sroa.122.0..sroa_idx2165, align 2, !dbg !146948
  %i.ath = getelementptr inbounds nuw i8, ptr %i.fn, i64 16, !dbg !146949 ; 2 uses
  %i.ati = load i64, ptr %i.ath, align 8, !dbg !146949, !noundef !11 ; 2 uses
  %i.atj = icmp ult i64 %i.ati, 82351536043346213, !dbg !146953
  call void @llvm.assume(i1 %i.atj), !dbg !146955
  %i.atk = icmp eq i64 %i.ati, 2, !dbg !146956
  br i1 %i.atk, label %bb.ss, label %bb.st, !dbg !146956, !prof !19115

bb.rl:                                            ; preds = %bb.rj
  %i.atl = load ptr, ptr %.sroa.151.112..sroa_idx2176, align 8, !dbg !146957, !nonnull !11, !noundef !11
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 96, !dbg !146966
  %i.atn = load i64, ptr %i.atm, align 16, !dbg !146966, !noundef !11
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !146972
  %i.atp = load ptr, ptr %i.ato, align 8, !dbg !146972, !nonnull !11, !align !155, !noundef !11 ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !146973
  %i.atr = load ptr, ptr %i.atq, align 8, !dbg !146973, !nonnull !11, !noundef !11 ; 2 uses
  invoke void @_RNvNtCskY9G75ZWc4U_11polars_expr7planner26create_physical_expr_inner(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ft, i64 noundef %i.atn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.atp, ptr noalias noundef nonnull dereferenceable(4) %i.atr)
          to label %bb.ro unwind label %bb.rn, !dbg !146935

bb.rm:                                            ; preds = %bb.rj
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #33
          to label %bb.by unwind label %bb.rn, !dbg !146942

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1684: ; preds = %bb.sp, %bb.sq, %bb.sj, %bb.rn
  %.pn1309 = phi { ptr, i32 } [ %i.ats, %bb.rn ], [ %i.avf, %bb.sj ], [ %.pn1306.pn.ph, %bb.sq ], [ %.pn1306.pn.ph, %bb.sp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr14IRFunctionExprECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(112) %i.fv) #34
          to label %bb.sm unwind label %bb.db, !dbg !146974

bb.rn:                                            ; preds = %bb.rw, %bb.rm, %bb.rl
  %i.ats = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1684

bb.ro:                                            ; preds = %bb.rl
  %i.att = load i64, ptr %i.ft, align 8, !dbg !146975, !range !699, !noundef !11 ; 2 uses
  %.not1305 = icmp eq i64 %i.att, 18, !dbg !146975
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8, !dbg !146976
  %i.atv = load ptr, ptr %i.atu, align 8, !dbg !146976 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16, !dbg !146976
  %i.atx = load ptr, ptr %i.atw, align 8, !dbg !146976 ; 2 uses
  br i1 %.not1305, label %bb.rq, label %bb.rp, !dbg !146977

bb.rp:                                            ; preds = %bb.ro
  %.sroa.7968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 24, !dbg !146978
  %.sroa.4972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !146979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4972.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7968.0..sroa_idx, i64 48, i1 false), !dbg !146978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !dbg !146985
  store i64 %i.att, ptr %0, align 8, !dbg !146979
  %.sroa.2970.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !146979
  store ptr %i.atv, ptr %.sroa.2970.0..sroa_idx, align 8, !dbg !146979
  %.sroa.3971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !146979
  store ptr %i.atx, ptr %.sroa.3971.0..sroa_idx, align 8, !dbg !146979
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1678, !dbg !146986

bb.rq:                                            ; preds = %bb.ro
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !dbg !146985
  store ptr %i.atv, ptr %i.fu, align 16, !dbg !146988
  %i.aty = getelementptr inbounds nuw i8, ptr %i.fu, i64 8, !dbg !146988
  store ptr %i.atx, ptr %i.aty, align 8, !dbg !146988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !dbg !146991
  %i.atz = load i64, ptr %i.ja, align 8, !dbg !146993, !noundef !11
  %i.aua = icmp ult i64 %i.iy, %i.atz, !dbg !146999
  br i1 %i.aua, label %bb.rs, label %bb.rr, !dbg !146999, !prof !19115

bb.rr:                                            ; preds = %bb.rq
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #33
          to label %bb.by unwind label %bb.rt, !dbg !147003

bb.rs:                                            ; preds = %bb.rq
  %i.aub = load ptr, ptr %i.iz, align 8, !dbg !147005, !nonnull !11, !noundef !11
  %i.auc = getelementptr inbounds nuw [144 x i8], ptr %i.aub, i64 %i.iy, !dbg !147014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !dbg !147015
  %i.aud = load ptr, ptr %i.atp, align 8, !dbg !147016, !nonnull !11, !noundef !11
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 16, !dbg !147022
  store ptr %i.iw, ptr %i.fr, align 8, !dbg !147023
  %i.auf = getelementptr inbounds nuw i8, ptr %i.fr, i64 8, !dbg !147023
  store ptr %i.aue, ptr %i.auf, align 8, !dbg !147023
  invoke void @_RNvMs_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr6schemaNtB6_5AExpr8to_field(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.aq, ptr noundef nonnull align 16 %i.auc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fr)
          to label %bb.ru unwind label %bb.rt, !dbg !147024

bb.rt:                                            ; preds = %bb.rs, %bb.rr
  %i.aug = landingpad { ptr, i32 }
          cleanup
  br label %bb.sp

bb.ru:                                            ; preds = %bb.rs
  %i.auh = load i8, ptr %i.aq, align 16, !dbg !147025, !range !118, !noundef !11 ; 2 uses
  %i.aui = icmp eq i8 %i.auh, 31, !dbg !147025
  br i1 %i.aui, label %bb.rv, label %bb.rx, !dbg !147027

bb.rv:                                            ; preds = %bb.ru
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !147028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.auj, i64 72, i1 false), !dbg !147029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !dbg !147030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !dbg !147031
  call void @llvm.experimental.noalias.scope.decl(metadata !147032), !dbg !147035
  call void @llvm.experimental.noalias.scope.decl(metadata !147036), !dbg !147039
  %i.auk = load ptr, ptr %i.fu, align 16, !dbg !147041, !alias.scope !147045, !nonnull !11, !noundef !11
  %i.aul = atomicrmw sub ptr %i.auk, i64 1 release, align 8, !dbg !147046, !noalias !147045
  %i.aum = icmp eq i64 %i.aul, 1, !dbg !147049
  br i1 %i.aum, label %bb.rw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1678, !dbg !147049

bb.rw:                                            ; preds = %bb.rv
  fence acquire, !dbg !147050
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fu) #36
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtCskY9G75ZWc4U_11polars_expr11expressions12PhysicalExprEL_EEB1j_.exit1678 unwind label %bb.rn, !dbg !147052

bb.rx:                                            ; preds = %bb.ru
  %.sroa.5974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !147053
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 1, !dbg !147054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4299.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5974.0..sroa_idx, i64 79, i1 false), !dbg !147026
  store i8 %i.auh, ptr %i.fs, align 16, !dbg !147054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !dbg !147030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !dbg !147057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !dbg !147059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !147060
  %i.aun = getelementptr inbounds nuw i8, ptr %i.fs, i64 71, !dbg !147064
  %i.auo = load i8, ptr %i.aun, align 1, !dbg !147064, !range !6399, !noundef !11
  %i.aup = icmp eq i8 %i.auo, -40, !dbg !147071
  br i1 %i.aup, label %bb.ry, label %bb.rz, !dbg !147071

bb.ry:                                            ; preds = %bb.rx
  %i.auq = getelementptr inbounds nuw i8, ptr %i.fs, i64 48, !dbg !147060
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.auq)
          to label %bb.sa unwind label %.thread3599, !dbg !147072

bb.rz:                                            ; preds = %bb.rx
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !147073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 16 dereferenceable(24) %i.aur, i64 24, i1 false), !dbg !147073
  br label %bb.sa, !dbg !147075

.thread3599:                                      ; preds = %bb.ry, %bb.sg
  %i.aus = landingpad { ptr, i32 }
          cleanup
  br label %.thread3595, !dbg !147031

bb.sa:                                            ; preds = %bb.ry, %bb.rz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !147076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !147077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !dbg !147078
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.fo, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @75)
          to label %bb.sd unwind label %bb.sb, !dbg !147079

bb.sb:                                            ; preds = %bb.sa
  %i.aut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.fp, i64 23, !dbg !147080
  %i.auv = load i8, ptr %i.auu, align 1, !dbg !147080, !range !6399, !alias.scope !147087, !noundef !11
  %i.auw = icmp eq i8 %i.auv, -40, !dbg !147096
  br i1 %i.auw, label %bb.sc, label %.thread3595, !dbg !147096, !prof !31

bb.sc:                                            ; preds = %bb.sb
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.thread3595 unwind label %bb.db, !dbg !147097

bb.sd:                                            ; preds = %bb.sa
  %i.aux = getelementptr inbounds nuw i8, ptr %i.fq, i64 48, !dbg !147098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aux, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false), !dbg !147098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fq, ptr noundef nonnull align 16 dereferenceable(48) %i.fo, i64 48, i1 false), !dbg !147098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !dbg !147100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !dbg !147100
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(80) %i.fs)
          to label %bb.sf unwind label %bb.se, !dbg !147101

bb.se:                                            ; preds = %bb.sd
  %i.auy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.fs, ptr noundef nonnull align 16 dereferenceable(80) %i.fq, i64 80, i1 false), !dbg !147101
  br label %.thread3595, !dbg !147100

bb.sf:                                            ; preds = %bb.sd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.fs, ptr noundef nonnull align 16 dereferenceable(80) %i.fq, i64 80, i1 false), !dbg !147101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !dbg !147100
  %i.auz = load i8, ptr %i.fv, align 16, !dbg !147102, !range !18321, !noundef !11
  switch i8 %i.auz, label %bb.sg [
    i8 40, label %bb.si
    i8 41, label %bb.sh
  ], !dbg !147103, !prof !134628

bb.sg:                                            ; preds = %bb.sf
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #33
          to label %bb.by unwind label %.thread3599, !dbg !147104

bb.sh:                                            ; preds = %bb.sf
  br label %bb.si, !dbg !147105

bb.si:                                            ; preds = %bb.sh, %bb.sf
end_hunk_2
