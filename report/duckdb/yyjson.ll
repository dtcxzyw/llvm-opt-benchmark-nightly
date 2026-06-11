inline.NumInlined: 31
inline.NumDeleted: 2
begin_hunk_0_@_ZN13duckdb_yyjson22yyjson_mut_merge_patchEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valES3_:bb.a
_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit71: ; preds = %bb.o, %bb.p
  %.sink = phi ptr [ %i.bk, %bb.p ], [ %i.ax, %bb.o ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i109, i64 16
  store ptr %.sink, ptr %i.bl, align 8, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %.0.i109, ptr %i.bm, align 8, !tbaa !85
  store ptr %i.ax, ptr %i.ab, align 8, !tbaa !81
  %i.bn = and i64 %i.az, 255
  %i.bo = and i64 %i.az, -256
  %i.bp = add i64 %i.bo, 256
  %i.bq = or disjoint i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.l, align 8, !tbaa !79
  br label %bb.q

bb.q:                                             ; preds = %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit71, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_getnEPNS_14yyjson_mut_valEPKcm.exit102
  %i.br = add nuw nsw i64 %.056212, 1             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.058210, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !85
  %exitcond.not = icmp eq i64 %i.br, %i.s
  br i1 %exitcond.not, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i.i91, !llvm.loop !151

_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i: ; preds = %bb.q, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit87, %.thread127
  %.055.sroa.phi114132173 = phi ptr [ %.sroa.5, %.thread127 ], [ %.055.sroa.gep115, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit87 ], [ %.055.sroa.gep115, %bb.q ]
  %.055133171 = phi ptr [ %.sroa.0, %.thread127 ], [ %1, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit87 ], [ %1, %bb.q ]
  %i.bw = load i64, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp eq i64 %i.bx, 7
  br i1 %i.by, label %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit

_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i
  %i.bz = lshr i64 %i.bw, 8                       ; 2 uses
  %.not67 = icmp eq i64 %i.bz, 0
  br i1 %.not67, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !81
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85 ; 3 uses
  %.not68 = icmp eq ptr %i.cf, null
  br i1 %.not68, label %.lr.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !85
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.r
  %i.ci = phi ptr [ %i.ch, %bb.s ], [ null, %bb.r ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.ad
  %.1220 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.ad ]
  %.057219 = phi ptr [ %i.ci, %.lr.ph ], [ %i.eg, %bb.ad ] ; 3 uses
  %.160218 = phi ptr [ %i.cf, %.lr.ph ], [ %i.ee, %bb.ad ] ; 4 uses
  %i.ck = load i64, ptr %.057219, align 8, !tbaa !79
  %i.cl = and i64 %i.ck, 7
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not199 = icmp eq ptr %.160218, null
  br i1 %.not199, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = tail call fastcc noundef ptr @_ZN13duckdb_yyjsonL30unsafe_yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE(ptr noundef %0, ptr noundef nonnull readonly %.160218)
  br label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113

_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113: ; preds = %bb.u, %bb.v
  %.0.i112 = phi ptr [ %i.cn, %bb.v ], [ null, %bb.u ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.160218, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !81 ; 2 uses
  %i.cq = load i64, ptr %.160218, align 8, !tbaa !79
  %i.cr = lshr i64 %i.cq, 8                       ; 2 uses
  %i.cs = load i64, ptr %.055133171, align 8, !tbaa !79 ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %i.cu = icmp eq i64 %i.ct, 7
  br i1 %i.cu, label %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit.i, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77

_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit.i: ; preds = %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113
  %i.cv = lshr i64 %i.cs, 8                       ; 2 uses
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = icmp ne ptr %i.cp, null
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %bb.w, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77, !prof !121

bb.w:                                             ; preds = %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit.i
  %i.cz = load ptr, ptr %.055.sroa.phi114132173, align 8, !tbaa !81
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge
  %.in226 = phi i64 [ %i.cv, %bb.w ], [ %i.da, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge ]
  %.pn227 = phi ptr [ %i.cz, %bb.w ], [ %.011.i217, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge ]
  %.pn.i214.pn.in = getelementptr inbounds nuw i8, ptr %.pn227, i64 16
  %.pn.i214.pn = load ptr, ptr %.pn.i214.pn.in, align 8, !tbaa !85
  %.011.i217.in = getelementptr inbounds nuw i8, ptr %.pn.i214.pn, i64 16
  %.011.i217 = load ptr, ptr %.011.i217.in, align 8, !tbaa !85 ; 4 uses
  %i.da = add nsw i64 %.in226, -1                 ; 2 uses
  %i.db = load i64, ptr %.011.i217, align 8, !tbaa !79
  %i.dc = lshr i64 %i.db, 8
  %i.dd = icmp eq i64 %i.dc, %i.cr
  br i1 %i.dd, label %bb.y, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %.011.i217, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !81
  %bcmp.i103 = tail call i32 @bcmp(ptr %i.df, ptr nonnull %i.cp, i64 %i.cr)
  %i.dg = icmp eq i32 %bcmp.i103, 0
  br i1 %i.dg, label %bb.z, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge: ; preds = %bb.y, %bb.x
  %.not.i89 = icmp eq i64 %i.da, 0
  br i1 %.not.i89, label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77, label %bb.x, !llvm.loop !145

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i217, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !85
  br label %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77

_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77: ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge, %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit.i, %bb.z
  %.1.i88 = phi ptr [ %i.di, %bb.z ], [ null, %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit113 ], [ null, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit.i ], [ null, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit104.backedge ]
  %i.dj = tail call noundef ptr @_ZN13duckdb_yyjson22yyjson_mut_merge_patchEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valES3_(ptr noundef nonnull %0, ptr noundef %.1.i88, ptr noundef nonnull %.057219) ; 3 uses
  %i.dk = load i64, ptr %i.l, align 8, !tbaa !79  ; 4 uses
  %i.dl = and i64 %i.dk, 7
  %i.dm = icmp ne i64 %i.dl, 7
  %.not.i83 = icmp eq ptr %.0.i112, null
  %or.cond200 = or i1 %.not.i83, %i.dm
  br i1 %or.cond200, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit, label %bb.aa, !prof !135

bb.aa:                                            ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77
  %i.dn = load i64, ptr %.0.i112, align 8, !tbaa !79
  %i.do = and i64 %i.dn, 7
  %i.dp = icmp eq i64 %i.do, 5
  %i.dq = icmp ne ptr %i.dj, null
  %spec.select.i = and i1 %i.dq, %i.dp
  br i1 %spec.select.i, label %bb.ab, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit, !prof !121

bb.ab:                                            ; preds = %bb.aa
  %.not.i73 = icmp ult i64 %i.dk, 256
  br i1 %.not.i73, label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.cj, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !85
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !85
  store ptr %.0.i112, ptr %i.du, align 8, !tbaa !85
  br label %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit

_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit: ; preds = %bb.ab, %bb.ac
  %.sink232 = phi ptr [ %i.dv, %bb.ac ], [ %.0.i112, %bb.ab ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %.sink232, ptr %i.dw, align 8, !tbaa !85
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i112, i64 16
  store ptr %i.dj, ptr %i.dx, align 8, !tbaa !85
  store ptr %.0.i112, ptr %i.cj, align 8, !tbaa !81
  %i.dy = and i64 %i.dk, 255
  %i.dz = and i64 %i.dk, -256
  %i.ea = add i64 %i.dz, 256
  %i.eb = or disjoint i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.l, align 8, !tbaa !79
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN13duckdb_yyjsonL18yyjson_mut_obj_addEPNS_14yyjson_mut_valES1_S1_.exit, %bb.t
  %i.ec = add nuw nsw i64 %.1220, 1               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.057219, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !85 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !85
  %exitcond231.not = icmp eq i64 %i.ec, %i.bz
  br i1 %exitcond231.not, label %_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit, label %bb.t, !llvm.loop !152

_ZN13duckdb_yyjson23yyjson_mut_val_mut_copyEPNS_14yyjson_mut_docEPNS_14yyjson_mut_valE.exit: ; preds = %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit, %bb.n, %bb.ad, %bb.aa, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit, %bb.f, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i, %bb.d, %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ null, %_ZN13duckdb_yyjsonL21unsafe_yyjson_mut_valEPNS_14yyjson_mut_docEm.exit.i ], [ %i.l, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit.i ], [ null, %bb.a ], [ null, %bb.f ], [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ null, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit77 ], [ %i.l, %_ZN13duckdb_yyjsonL19yyjson_mut_obj_sizeEPNS_14yyjson_mut_valE.exit ], [ %i.l, %bb.ad ], [ null, %bb.aa ], [ null, %bb.n ], [ null, %_ZN13duckdb_yyjsonL17yyjson_mut_is_objEPNS_14yyjson_mut_valE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 34 uses
  %5 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 29 uses
  %6 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 20 uses
  %i.b = alloca i32, align 4                      ; 34 uses
  %7 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 29 uses
  %8 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 20 uses
  %i.c = alloca i32, align 4                      ; 34 uses
  %9 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 29 uses
  %10 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 20 uses
  %i.d = alloca i32, align 4                      ; 34 uses
  %11 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 29 uses
  %12 = alloca %"struct.duckdb_yyjson::bigint", align 8 ; 20 uses
  %i.e = alloca ptr, align 8                      ; 137 uses
  %i.f = alloca ptr, align 8                      ; 30 uses
  %i.g = alloca ptr, align 8                      ; 54 uses
  %i.h = alloca ptr, align 8                      ; 171 uses
  %i.i = alloca ptr, align 8                      ; 30 uses
  %i.j = alloca ptr, align 8                      ; 54 uses
  %13 = alloca %"struct.duckdb_yyjson::yyjson_read_err", align 8 ; 51 uses
  %i.k = alloca ptr, align 8                      ; 7 uses
  %14 = alloca %"struct.duckdb_yyjson::yyjson_alc", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  %.not = icmp eq ptr %4, null                    ; 49 uses
  %spec.store.select = select i1 %.not, ptr %13, ptr %4 ; 27 uses
  %.not152 = icmp eq ptr %3, null
  br i1 %.not152, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload54 = load ptr, ptr %3, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.8.0.copyload58 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.865.0.copyload66 = load ptr, ptr %.sroa.865.0..sroa_idx, align 8, !tbaa !9
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.15.0.copyload79 = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.15.0 = phi ptr [ %.sroa.15.0.copyload79, %bb.b ], [ null, %bb.a ] ; 43 uses
  %.sroa.865.0 = phi ptr [ %.sroa.865.0.copyload66, %bb.b ], [ @_ZN13duckdb_yyjsonL12default_freeEPvS0_, %bb.a ] ; 22 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload58, %bb.b ], [ @_ZN13duckdb_yyjsonL15default_reallocEPvS0_mm, %bb.a ] ; 21 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload54, %bb.b ], [ @_ZN13duckdb_yyjsonL14default_mallocEPvm, %bb.a ] ; 6 uses
  %.not153 = icmp eq ptr %0, null
  br i1 %.not153, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %spec.store.select.sroa.sel1472.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1472.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1472.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1472.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1475.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1475.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1475.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.26, ptr %spec.store.select.sroa.sel1475.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 1, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.bum

bb.e:                                             ; preds = %bb.c
  %.not154 = icmp eq i64 %1, 0
  br i1 %.not154, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  %spec.store.select.sroa.sel1466.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1466.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1466.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1466.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1469.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1469.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1469.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.27, ptr %spec.store.select.sroa.sel1469.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 1, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.bum

bb.g:                                             ; preds = %bb.e
  %i.l = and i32 %2, 1
  %.not3501 = icmp eq i32 %i.l, 0                 ; 4 uses
  br i1 %.not3501, label %bb.i, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %1
  store ptr %0, ptr %i.k, align 8, !tbaa !92
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.n = icmp ugt i64 %1, -6
  br i1 %i.n, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  %spec.store.select.sroa.sel1436.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1436.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1436.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1436.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1439.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1439.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1439.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %spec.store.select.sroa.sel1439.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 2, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.bum

bb.k:                                             ; preds = %bb.i
  %i.o = add nuw i64 %1, 4
  %i.p = tail call noundef ptr %.sroa.0.0(ptr noundef %.sroa.15.0, i64 noundef %i.o) ; 6 uses
  %.not155 = icmp eq ptr %i.p, null
  br i1 %.not155, label %bb.l, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.k
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1433.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1433.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1433.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.28, ptr %spec.store.select.sroa.sel1433.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 2, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.bum

bb.m:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1 ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %0, i64 %1, i1 false)
  store i32 0, ptr %i.q, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %i.r = phi ptr [ null, %bb.h ], [ %i.p, %bb.m ] ; 2 uses
  %.promoted = phi ptr [ %0, %bb.h ], [ %i.p, %bb.m ] ; 56 uses
  %.0 = phi ptr [ %i.m, %bb.h ], [ %i.q, %bb.m ]  ; 30 uses
  %i.s = load i8, ptr %.promoted, align 1, !tbaa !81 ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !81    ; 2 uses
  %i.w = and i8 %i.v, 33
  %.not3502 = icmp eq i8 %i.w, 0
  br i1 %.not3502, label %bb.w, label %bb.o, !prof !24

bb.o:                                             ; preds = %bb.n
  %i.x = and i32 %2, 8
  %.not3503 = icmp eq i32 %i.x, 0
  br i1 %.not3503, label %bb.s, label %bb.p, !prof !24

bb.p:                                             ; preds = %bb.o
  %i.y = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.k)
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !92  ; 2 uses
  br i1 %i.y, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = ptrtoint ptr %.promoted to i64
  %i.ab = sub i64 %i.z, %i.aa
  %spec.store.select.sroa.sel1442.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1442.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1442.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.ab, ptr %spec.store.select.sroa.sel1442.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1445.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1445.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1445.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.29, ptr %spec.store.select.sroa.sel1445.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 8, ptr %spec.store.select, align 8, !tbaa !156
  br i1 %.not3501, label %bb.r, label %bb.bum, !prof !137

bb.r:                                             ; preds = %bb.q
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.promoted)
  br label %bb.bum

bb.s:                                             ; preds = %bb.o
  %i.ac = and i8 %i.v, 1
  %.not3504 = icmp eq i8 %i.ac, 0
  br i1 %.not3504, label %bb.t, label %.preheader4201, !prof !7

.preheader4201:                                   ; preds = %bb.s, %.preheader4201
  %i.ad = phi ptr [ %i.ae, %.preheader4201 ], [ %.promoted, %bb.s ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %i.aj = and i8 %i.ai, 1
  %.not3505 = icmp eq i8 %i.aj, 0
  br i1 %.not3505, label %.loopexit4202, label %.preheader4201, !llvm.loop !157

.loopexit4202:                                    ; preds = %.preheader4201
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %.loopexit4202, %bb.s, %bb.p
  %i.ak = phi ptr [ %i.ae, %.loopexit4202 ], [ %.promoted, %bb.s ], [ %.pre, %bb.p ] ; 3 uses
  %.not156 = icmp ult ptr %i.ak, %.0
  br i1 %.not156, label %._crit_edge6674, label %bb.u, !prof !24

._crit_edge6674:                                  ; preds = %bb.t
  %.pre6675 = load i8, ptr %i.ak, align 1, !tbaa !81
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %spec.store.select.sroa.sel1460.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1460.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1460.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 0, ptr %spec.store.select.sroa.sel1460.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %spec.store.select.sroa.sel1463.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1463.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1463.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.30, ptr %spec.store.select.sroa.sel1463.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  store i32 3, ptr %spec.store.select, align 8, !tbaa !156
  br i1 %.not3501, label %bb.v, label %bb.bum, !prof !137

bb.v:                                             ; preds = %bb.u
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.promoted)
  br label %bb.bum

bb.w:                                             ; preds = %._crit_edge6674, %bb.n
  %i.al = phi i8 [ %.pre6675, %._crit_edge6674 ], [ %i.s, %bb.n ]
  %i.am = phi ptr [ %i.ak, %._crit_edge6674 ], [ %.promoted, %bb.n ] ; 11 uses
  %i.an = and i8 %i.al, -33
  %.not3506.not = icmp eq i8 %i.an, 91
  br i1 %.not3506.not, label %bb.x, label %bb.btt, !prof !24

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 9 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.at = and i8 %i.as, 1
  %.not3507 = icmp eq i8 %i.at, 0
  br i1 %.not3507, label %bb.akq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !81
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = and i8 %i.ay, 1
  %.not3508 = icmp eq i8 %i.az, 0
  br i1 %.not3508, label %bb.akq, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.am, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.ba = and i32 %2, 2
  %.not3748 = icmp eq i32 %i.ba, 0                ; 2 uses
  %i.bb = ptrtoint ptr %.0 to i64                 ; 9 uses
  %i.bc = ptrtoint ptr %i.am to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = lshr i64 %i.bd, 4
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846967)
  %i.bg = add nuw nsw i64 %i.bf, 8
  %i.bh = select i1 %.not3748, i64 %i.bg, i64 24, !prof !24 ; 6 uses
  %i.bi = shl nuw i64 %i.bh, 4
  %i.bj = tail call noundef ptr %.sroa.0.0(ptr noundef %.sroa.15.0, i64 noundef %i.bi), !inline_history !158 ; 8 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.akm, label %.thread, !prof !7

.thread:                                          ; preds = %bb.z
  %i.bk = getelementptr [16 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = getelementptr i8, ptr %i.bk, i64 -32    ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 10 uses
  %i.bn = and i32 %2, 160
  %.not8525 = icmp eq i32 %i.bn, 0
  %i.bo = and i32 %2, 160
  %i.bp = icmp ne i32 %i.bo, 0                    ; 12 uses
  store ptr null, ptr %i.j, align 8, !tbaa !92
  %.in3750 = and i32 %2, 64
  %.not3751 = icmp eq i32 %.in3750, 0             ; 9 uses
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !92
  %i.bq = load i8, ptr %i.am, align 1, !tbaa !81
  %i.br = icmp eq i8 %i.bq, 123
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread
  store i64 7, ptr %i.bm, align 8, !tbaa !79
  store i64 0, ptr %i.bs, align 8, !tbaa !81
  %i.bt = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.bu = icmp eq i8 %i.bt, 10
  br i1 %i.bu, label %.preheader4198.sink.split, label %.preheader4198

bb.ab:                                            ; preds = %.thread
  store i64 6, ptr %i.bm, align 8, !tbaa !79
  store i64 0, ptr %i.bs, align 8, !tbaa !81
  %i.bv = load i8, ptr %i.ao, align 1, !tbaa !81
  %i.bw = icmp eq i8 %i.bv, 10
  br i1 %i.bw, label %.preheader4135.sink.split, label %.preheader4135

.loopexit4137:                                    ; preds = %bb.aia, %._crit_edge4923
  %.pn.i = phi ptr [ %.promoted4939, %._crit_edge4923 ], [ %i.dsx, %bb.aia ]
  %.0528.i = phi ptr [ %.3531.i.ph, %._crit_edge4923 ], [ %.23551.i, %bb.aia ] ; 4 uses
  %.0492.i = phi ptr [ %.3495.i.ph, %._crit_edge4923 ], [ %.23515.i, %bb.aia ]
  %.0466.i = phi ptr [ %.3469.i.ph, %._crit_edge4923 ], [ %.23489.i, %bb.aia ] ; 2 uses
  %.0449.i = phi ptr [ %.3452.i.ph, %._crit_edge4923 ], [ %.23.i, %bb.aia ] ; 4 uses
  %.0441.i = phi i64 [ %.1442.i.ph, %._crit_edge4923 ], [ %i.che, %bb.aia ]
  %.0440.i = phi i64 [ %.2.i.ph, %._crit_edge4923 ], [ %.14.i, %bb.aia ] ; 4 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  store ptr %storemerge.i, ptr %i.h, align 8, !tbaa !92
  %i.bx = shl i64 %.0441.i, 8
  %i.by = add i64 %i.bx, 256
  %i.bz = load i64, ptr %.0528.i, align 8, !tbaa !79
  %i.ca = and i64 %i.bz, 255
  %i.cb = or disjoint i64 %i.ca, %i.by
  store i64 %i.cb, ptr %.0528.i, align 8, !tbaa !79
  %i.cc = getelementptr inbounds nuw i8, ptr %.0492.i, i64 16 ; 3 uses
  %.not616.i = icmp ult ptr %i.cc, %.0466.i
  br i1 %.not616.i, label %bb.ad, label %bb.ac, !prof !24

bb.ac:                                            ; preds = %.loopexit4137
  %i.cd = lshr i64 %.0440.i, 1
  %i.ce = add i64 %i.cd, %.0440.i                 ; 3 uses
  %i.cf = shl i64 %.0440.i, 4
  %i.cg = shl i64 %i.ce, 4
  %i.ch = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.0449.i, i64 noundef %i.cf, i64 noundef %i.cg), !inline_history !158 ; 5 uses
  %.not617.i = icmp eq ptr %i.ch, null
  %.pre6737 = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  br i1 %.not617.i, label %bb.akm, label %.thread3250

.thread3250:                                      ; preds = %bb.ac
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = ptrtoint ptr %.0449.i to i64            ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = ptrtoint ptr %.0528.i to i64
  %i.cn = sub i64 %i.cm, %i.cj
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr [16 x i8], ptr %i.ch, i64 %i.ce
  %i.cq = getelementptr i8, ptr %i.cp, i64 -32
  br label %bb.ad

bb.ad:                                            ; preds = %.thread3250, %.loopexit4137
  %i.cr = phi ptr [ %.pre6737, %.thread3250 ], [ %storemerge.i, %.loopexit4137 ] ; 3 uses
  %.2530.i = phi ptr [ %i.co, %.thread3250 ], [ %.0528.i, %.loopexit4137 ]
  %.2494.i = phi ptr [ %i.cl, %.thread3250 ], [ %i.cc, %.loopexit4137 ] ; 7 uses
  %.2468.i = phi ptr [ %i.cq, %.thread3250 ], [ %.0466.i, %.loopexit4137 ] ; 2 uses
  %.2451.i = phi ptr [ %i.ch, %.thread3250 ], [ %.0449.i, %.loopexit4137 ] ; 2 uses
  %.1.i = phi i64 [ %i.ce, %.thread3250 ], [ %.0440.i, %.loopexit4137 ] ; 2 uses
  store i64 6, ptr %.2494.i, align 8, !tbaa !79
  %i.cs = ptrtoint ptr %.2494.i to i64
  %i.ct = ptrtoint ptr %.2530.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.2494.i, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !81
  %i.cw = load i8, ptr %i.cr, align 1, !tbaa !81
  %i.cx = icmp eq i8 %i.cw, 10
  br i1 %i.cx, label %bb.ae, label %.preheader4135

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  br label %.preheader4135.sink.split

.preheader4135.sink.split:                        ; preds = %bb.ab, %bb.qe, %._crit_edge4917, %bb.ae
  %.sink10583 = phi ptr [ %i.cy, %bb.ae ], [ %i.cce, %bb.qe ], [ %i.ccc, %._crit_edge4917 ], [ %i.au, %bb.ab ] ; 2 uses
  %.3531.i.ph.ph = phi ptr [ %.2494.i, %bb.ae ], [ %.16544.i.ph, %bb.qe ], [ %.16544.i.ph, %._crit_edge4917 ], [ %i.bm, %bb.ab ]
  %.3495.i.ph.ph = phi ptr [ %.2494.i, %bb.ae ], [ %.16508.i.ph, %bb.qe ], [ %.16508.i.ph, %._crit_edge4917 ], [ %i.bm, %bb.ab ]
  %.3469.i.ph.ph = phi ptr [ %.2468.i, %bb.ae ], [ %.16482.i.ph, %bb.qe ], [ %.16482.i.ph, %._crit_edge4917 ], [ %i.bl, %bb.ab ]
  %.3452.i.ph.ph = phi ptr [ %.2451.i, %bb.ae ], [ %.16465.i.ph, %bb.qe ], [ %.16465.i.ph, %._crit_edge4917 ], [ %i.bj, %bb.ab ]
  %.1442.i.ph.ph = phi i64 [ 0, %bb.ae ], [ %.2443.i.ph, %bb.qe ], [ %.2443.i.ph, %._crit_edge4917 ], [ 0, %bb.ab ]
  %.2.i.ph.ph = phi i64 [ %.1.i, %bb.ae ], [ %.9.i.ph, %bb.qe ], [ %.9.i.ph, %._crit_edge4917 ], [ %i.bh, %bb.ab ]
  store ptr %.sink10583, ptr %i.h, align 8, !tbaa !92
  br label %.preheader4135

.preheader4135:                                   ; preds = %.preheader4135.sink.split, %bb.ad, %bb.ab
  %.promoted49196704 = phi ptr [ %i.cr, %bb.ad ], [ %i.ao, %bb.ab ], [ %.sink10583, %.preheader4135.sink.split ]
  %.3531.i.ph = phi ptr [ %.2494.i, %bb.ad ], [ %i.bm, %bb.ab ], [ %.3531.i.ph.ph, %.preheader4135.sink.split ] ; 16 uses
  %.3495.i.ph = phi ptr [ %.2494.i, %bb.ad ], [ %i.bm, %bb.ab ], [ %.3495.i.ph.ph, %.preheader4135.sink.split ] ; 10 uses
  %.3469.i.ph = phi ptr [ %.2468.i, %bb.ad ], [ %i.bl, %bb.ab ], [ %.3469.i.ph.ph, %.preheader4135.sink.split ] ; 16 uses
  %.3452.i.ph = phi ptr [ %.2451.i, %bb.ad ], [ %i.bj, %bb.ab ], [ %.3452.i.ph.ph, %.preheader4135.sink.split ] ; 33 uses
  %.1442.i.ph = phi i64 [ 0, %bb.ad ], [ 0, %bb.ab ], [ %.1442.i.ph.ph, %.preheader4135.sink.split ] ; 10 uses
  %.2.i.ph = phi i64 [ %.1.i, %bb.ad ], [ %i.bh, %bb.ab ], [ %.2.i.ph.ph, %.preheader4135.sink.split ] ; 28 uses
  %i.cz = and i32 %2, 16
  %.not3925 = icmp eq i32 %i.cz, 0                ; 7 uses
  %i.da = and i32 %2, 8
  %.not3926 = icmp eq i32 %i.da, 0
  br label %.backedge4138

.backedge4138:                                    ; preds = %.backedge4138.backedge, %.preheader4135
  %.promoted4919 = phi ptr [ %.promoted49196704, %.preheader4135 ], [ %.promoted4919.be, %.backedge4138.backedge ] ; 3 uses
  %.sroa.01.0.copyload.i6124920 = load i16, ptr %.promoted4919, align 1 ; 2 uses
  %i.db = icmp eq i16 %.sroa.01.0.copyload.i6124920, 8224
  br i1 %i.db, label %.lr.ph4922, label %._crit_edge4923, !prof !159

.lr.ph4922:                                       ; preds = %.backedge4138, %bb.at
  %i.dc = phi ptr [ %i.eh, %bb.at ], [ %.promoted4919, %.backedge4138 ] ; 31 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  store ptr %i.dd, ptr %i.h, align 8, !tbaa !92
  %.sroa.01.0.copyload.i585 = load i16, ptr %i.dd, align 1 ; 2 uses
  %i.de = icmp eq i16 %.sroa.01.0.copyload.i585, 8224
  br i1 %i.de, label %bb.af, label %._crit_edge4923.loopexit.split.loop.exit8128, !prof !24

bb.af:                                            ; preds = %.lr.ph4922
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  store ptr %i.df, ptr %i.h, align 8, !tbaa !92
  %.sroa.01.0.copyload.i584 = load i16, ptr %i.df, align 1 ; 2 uses
  %i.dg = icmp eq i16 %.sroa.01.0.copyload.i584, 8224
  br i1 %i.dg, label %bb.ag, label %._crit_edge4923.loopexit.split.loop.exit8125, !prof !24

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 6 ; 2 uses
  store ptr %i.dh, ptr %i.h, align 8, !tbaa !92
  %.sroa.01.0.copyload.i583 = load i16, ptr %i.dh, align 1 ; 2 uses
  %i.di = icmp eq i16 %.sroa.01.0.copyload.i583, 8224
  br i1 %i.di, label %bb.ah, label %._crit_edge4923.loopexit.split.loop.exit8122, !prof !24

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.dj, ptr %i.h, align 8, !tbaa !92
  %.sroa.01.0.copyload.i582 = load i16, ptr %i.dj, align 1 ; 2 uses
  %i.dk = icmp eq i16 %.sroa.01.0.copyload.i582, 8224
  br i1 %i.dk, label %bb.ai, label %._crit_edge4923.loopexit.split.loop.exit8119, !prof !24

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 10 ; 2 uses
  store ptr %i.dl, ptr %i.h, align 8, !tbaa !92
  %.sroa.01.0.copyload.i581 = load i16, ptr %i.dl, align 1 ; 2 uses
  %i.dm = icmp eq i16 %.sroa.01.0.copyload.i581, 8224
  br i1 %i.dm, label %bb.aj, label %._crit_edge4923.loopexit.split.loop.exit8116, !prof !24

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %spec.store.select.sroa.sel1568.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1568.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fxj, ptr %spec.store.select.sroa.sel1568.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 5, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.akl

bb.akk:                                           ; preds = %bb.aki
  %i.fxk = ptrtoint ptr %i.fxg to i64
  %i.fxl = ptrtoint ptr %.promoted to i64
  %i.fxm = sub i64 %i.fxk, %i.fxl
  %spec.store.select.sroa.sel1562.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1562.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1562.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fxm, ptr %spec.store.select.sroa.sel1562.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 9, ptr %spec.store.select, align 8, !tbaa !156
  %i.fxn = load ptr, ptr %i.i, align 8, !tbaa !92
  br label %bb.akl

bb.akl:                                           ; preds = %bb.akj, %bb.akk
  %.str.57.sink8425 = phi ptr [ @.str.57, %bb.akj ], [ %i.fxn, %bb.akk ]
  %spec.store.select.sroa.sel1571.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1571.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1571.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8425, ptr %spec.store.select.sroa.sel1571.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.28.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.akm:                                           ; preds = %bb.rh, %bb.qo, %bb.pd, %bb.om, %bb.oj, %bb.og, %bb.lc, %bb.aw, %bb.ac, %bb.z
  %i.fxo = phi ptr [ %i.am, %bb.z ], [ %.pre6731, %bb.pd ], [ %.pre6730, %bb.qo ], [ %.pre6737, %bb.ac ], [ %.pre6736, %bb.aw ], [ %.pre6735.a, %bb.lc ], [ %.pre6734.a, %bb.og ], [ %.pre6733, %bb.oj ], [ %.pre6732, %bb.om ], [ %.pre6729, %bb.rh ] ; 2 uses
  %.29.i = phi ptr [ null, %bb.z ], [ %.3452.i.ph, %bb.pd ], [ %.18.i, %bb.qo ], [ %.0449.i, %bb.ac ], [ %.3452.i.ph, %bb.aw ], [ %.3452.i.ph, %bb.lc ], [ %.3452.i.ph, %bb.og ], [ %.3452.i.ph, %bb.oj ], [ %.3452.i.ph, %bb.om ], [ %.21.i.ph, %bb.rh ] ; 2 uses
  %i.fxp = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef %i.fxo, ptr noundef %.0, i32 noundef 2, i32 noundef %2) ; 3 uses
  %i.fxq = ptrtoint ptr %i.fxo to i64
  %.sink8428 = select i1 %i.fxp, i64 %i.bb, i64 %i.fxq
  %.sink8426 = select i1 %i.fxp, i32 5, i32 2
  %.str.28.sink = select i1 %i.fxp, ptr @.str.57, ptr @.str.28
  %i.fxr = ptrtoint ptr %.promoted to i64
  %i.fxs = sub i64 %.sink8428, %i.fxr
  %spec.store.select.sroa.sel1478.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1478.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1478.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fxs, ptr %spec.store.select.sroa.sel1478.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8426, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1481.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1481.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1481.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.28.sink, ptr %spec.store.select.sroa.sel1481.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  %.not624.i = icmp eq ptr %.29.i, null
  br i1 %.not624.i, label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.29.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

.loopexit4118:                                    ; preds = %.lr.ph4560, %.lr.ph5053, %.preheader4194, %.preheader4117
  %i.fxt = phi ptr [ %i.bzo, %.preheader4117 ], [ %i.czf, %.preheader4194 ], [ %i.bzt, %.lr.ph5053 ], [ %i.czk, %.lr.ph4560 ] ; 2 uses
  %.30.i = phi ptr [ %.3452.i.ph, %.preheader4117 ], [ %.21.i.ph, %.preheader4194 ], [ %.3452.i.ph, %.lr.ph5053 ], [ %.21.i.ph, %.lr.ph4560 ]
  %i.fxu = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.fxt, ptr noundef %.0, i32 noundef 7, i32 noundef %2) ; 3 uses
  %i.fxv = ptrtoint ptr %i.fxt to i64
  %.sink8433 = select i1 %i.fxu, i64 %i.bb, i64 %i.fxv
  %.sink8431 = select i1 %i.fxu, i32 5, i32 7
  %.str.57.sink8430 = select i1 %i.fxu, ptr @.str.57, ptr @.str.58
  %i.fxw = ptrtoint ptr %.promoted to i64
  %i.fxx = sub i64 %.sink8433, %i.fxw
  %spec.store.select.sroa.sel1496.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1496.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1496.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fxx, ptr %spec.store.select.sroa.sel1496.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8431, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1499.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1499.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1499.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8430, ptr %spec.store.select.sroa.sel1499.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.30.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843.thread: ; preds = %bb.aif, %bb.aig, %bb.aih, %bb.aic, %bb.aib, %bb.op, %bb.oq, %bb.or, %bb.ok, %bb.oh, %bb.aie, %bb.oo
  %i.fxy = phi ptr [ %i.dsx, %bb.aie ], [ %i.bxo, %bb.oh ], [ %i.byh, %bb.ok ], [ %i.bzb, %bb.oo ], [ %i.bzb, %bb.op ], [ %i.dsx, %bb.aib ], [ %i.dsx, %bb.aic ], [ %i.bzb, %bb.or ], [ %i.bzb, %bb.oq ], [ %i.dsx, %bb.aih ], [ %i.dsx, %bb.aig ], [ %i.dsx, %bb.aif ] ; 2 uses
  %.31.i = phi ptr [ %.23.i, %bb.aie ], [ %.9458.i, %bb.oh ], [ %.11460.i, %bb.ok ], [ %.13462.i, %bb.oo ], [ %.13462.i, %bb.op ], [ %.23.i, %bb.aib ], [ %.23.i, %bb.aic ], [ %.13462.i, %bb.or ], [ %.13462.i, %bb.oq ], [ %.23.i, %bb.aih ], [ %.23.i, %bb.aig ], [ %.23.i, %bb.aif ]
  %i.fxz = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.fxy, ptr noundef %.0, i32 noundef 11, i32 noundef %2) ; 3 uses
  %i.fya = ptrtoint ptr %i.fxy to i64
  %.sink8438 = select i1 %i.fxz, i64 %i.bb, i64 %i.fya
  %.sink8436 = select i1 %i.fxz, i32 5, i32 11
  %.str.57.sink8435 = select i1 %i.fxz, ptr @.str.57, ptr @.str.59
  %i.fyb = ptrtoint ptr %.promoted to i64
  %i.fyc = sub i64 %.sink8438, %i.fyb
  %spec.store.select.sroa.sel1556.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1556.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1556.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fyc, ptr %spec.store.select.sroa.sel1556.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8436, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1559.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1559.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1559.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8435, ptr %spec.store.select.sroa.sel1559.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.31.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.ako:                                           ; preds = %bb.akd, %bb.ajv, %bb.ajo, %bb.uu, %bb.up, %bb.qj, %bb.qc
  %i.fyd = phi ptr [ %i.fwb, %bb.akd ], [ %.promoted4919.pre.pre, %bb.qc ], [ %.pre6702, %bb.qj ], [ %.pre6727, %bb.ajv ], [ %.pre6691.a, %bb.ajo ], [ %.pre6690.a, %bb.uu ], [ %.promoted4540.pre.pre, %bb.up ] ; 2 uses
  %.32.i = phi ptr [ %.26.i, %bb.akd ], [ %.3452.i.ph, %bb.qc ], [ %.16465.i.ph, %bb.qj ], [ %.24.i.ph, %bb.ajv ], [ %.23.i, %bb.ajo ], [ %.23.i, %bb.uu ], [ %.21.i.ph, %bb.up ]
  %i.fye = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.fyd, ptr noundef %.0, i32 noundef 8, i32 noundef %2) ; 3 uses
  %i.fyf = ptrtoint ptr %i.fyd to i64
  %.sink8443 = select i1 %i.fye, i64 %i.bb, i64 %i.fyf
  %.sink8441 = select i1 %i.fye, i32 5, i32 8
  %.str.57.sink8440 = select i1 %i.fye, ptr @.str.57, ptr @.str.29
  %i.fyg = ptrtoint ptr %.promoted to i64
  %i.fyh = sub i64 %.sink8443, %i.fyg
  %spec.store.select.sroa.sel1520.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1520.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1520.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fyh, ptr %spec.store.select.sroa.sel1520.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8441, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1523.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1523.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1523.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8440, ptr %spec.store.select.sroa.sel1523.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.32.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit911.thread: ; preds = %bb.un, %bb.us, %bb.ajm, %bb.ajt, %bb.qh, %bb.qa, %bb.aiq, %bb.pe, %bb.aje, %bb.ajf, %bb.ajg, %bb.ps, %bb.pt, %bb.pu, %bb.ajv, %bb.ajo, %bb.uu, %bb.up, %bb.qj, %bb.qc
  %i.fyi = phi ptr [ %i.dsx, %bb.aiq ], [ %.promoted4919.pre.pre, %bb.qc ], [ %i.dsx, %bb.aje ], [ %.pre6702, %bb.qj ], [ %.promoted4914, %bb.qh ], [ %.pre6727, %bb.ajv ], [ %.promoted4909, %bb.ajt ], [ %i.cat, %bb.ps ], [ %.pre6691.a, %bb.ajo ], [ %i.dsx, %bb.ajm ], [ %.pre6690.a, %bb.uu ], [ %.promoted4674, %bb.us ], [ %.promoted4540.pre.pre, %bb.up ], [ %i.cat, %bb.pu ], [ %i.cat, %bb.pt ], [ %i.dsx, %bb.ajg ], [ %i.dsx, %bb.ajf ], [ %.promoted4939, %bb.qa ], [ %i.cat, %bb.pe ], [ %.promoted4557, %bb.un ] ; 2 uses
  %.33.i = phi ptr [ %.23.i, %bb.aiq ], [ %.3452.i.ph, %bb.qc ], [ %.23.i, %bb.aje ], [ %.16465.i.ph, %bb.qj ], [ %.16465.i.ph, %bb.qh ], [ %.24.i.ph, %bb.ajv ], [ %.24.i.ph, %bb.ajt ], [ %.15464.i, %bb.ps ], [ %.23.i, %bb.ajo ], [ %.23.i, %bb.ajm ], [ %.23.i, %bb.uu ], [ %.23.i, %bb.us ], [ %.21.i.ph, %bb.up ], [ %.15464.i, %bb.pu ], [ %.15464.i, %bb.pt ], [ %.23.i, %bb.ajg ], [ %.23.i, %bb.ajf ], [ %.3452.i.ph, %bb.qa ], [ %.15464.i, %bb.pe ], [ %.21.i.ph, %bb.un ]
  %i.fyj = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.fyi, ptr noundef %.0, i32 noundef 6, i32 noundef %2) ; 3 uses
  %i.fyk = ptrtoint ptr %i.fyi to i64
  %.sink8448 = select i1 %i.fyj, i64 %i.bb, i64 %i.fyk
  %.sink8446 = select i1 %i.fyj, i32 5, i32 6
  %.str.57.sink8445 = select i1 %i.fyj, ptr @.str.57, ptr @.str.60
  %i.fyl = ptrtoint ptr %.promoted to i64
  %i.fym = sub i64 %.sink8448, %i.fyl
  %spec.store.select.sroa.sel1508.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1508.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1508.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fym, ptr %spec.store.select.sroa.sel1508.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8446, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1511.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1511.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1511.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8445, ptr %spec.store.select.sroa.sel1511.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.33.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.akp:                                           ; preds = %.loopexit4106
  %i.fyn = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.fwk, ptr noundef nonnull %.0, i32 noundef 4, i32 noundef %2) ; 3 uses
  %i.fyo = ptrtoint ptr %i.fwk to i64
  %.sink8453 = select i1 %i.fyn, i64 %i.bb, i64 %i.fyo
  %.sink8451 = select i1 %i.fyn, i32 5, i32 4
  %.str.57.sink8450 = select i1 %i.fyn, ptr @.str.57, ptr @.str.61
  %i.fyp = ptrtoint ptr %.promoted to i64
  %i.fyq = sub i64 %.sink8453, %i.fyp
  %spec.store.select.sroa.sel1532.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1532.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1532.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.fyq, ptr %spec.store.select.sroa.sel1532.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8451, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1535.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1535.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1535.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8450, ptr %spec.store.select.sroa.sel1535.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.26.i), !inline_history !158
  br label %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit: ; preds = %bb.akh, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit757.thread, %bb.akl, %bb.akm, %bb.akn, %.loopexit4118, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843.thread, %bb.ako, %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit911.thread, %bb.akp
  %.0.i = phi ptr [ null, %bb.akp ], [ null, %bb.akm ], [ %.26.i, %bb.akh ], [ null, %bb.ako ], [ null, %.loopexit4118 ], [ null, %bb.akn ], [ null, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843.thread ], [ null, %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit911.thread ], [ null, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit757.thread ], [ null, %bb.akl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.btu

bb.akq:                                           ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.am, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.fyr = and i32 %2, 2
  %.not3509 = icmp eq i32 %i.fyr, 0               ; 2 uses
  %i.fys = ptrtoint ptr %.0 to i64                ; 9 uses
  %i.fyt = ptrtoint ptr %i.am to i64
  %i.fyu = sub i64 %i.fys, %i.fyt
  %i.fyv = udiv i64 %i.fyu, 6
  %i.fyw = tail call i64 @llvm.umin.i64(i64 %i.fyv, i64 1152921504606846967)
  %i.fyx = add nuw nsw i64 %i.fyw, 8
  %i.fyy = select i1 %.not3509, i64 %i.fyx, i64 50, !prof !24 ; 4 uses
  %i.fyz = shl nuw i64 %i.fyy, 4
  %i.fza = tail call noundef ptr %.sroa.0.0(ptr noundef %.sroa.15.0, i64 noundef %i.fyz), !inline_history !220 ; 6 uses
  %.not.i160 = icmp eq ptr %i.fza, null
  br i1 %.not.i160, label %bb.btp, label %.thread3356, !prof !7

.thread3356:                                      ; preds = %bb.akq
  %i.fzb = getelementptr [16 x i8], ptr %i.fza, i64 %i.fyy
  %i.fzc = getelementptr i8, ptr %i.fzb, i64 -32  ; 2 uses
  %i.fzd = getelementptr inbounds nuw i8, ptr %i.fza, i64 64 ; 6 uses
  %i.fze = and i32 %2, 160
  %.not8527 = icmp eq i32 %i.fze, 0
  %i.fzf = and i32 %2, 160
  %i.fzg = icmp ne i32 %i.fzf, 0                  ; 12 uses
  store ptr null, ptr %i.g, align 8, !tbaa !92
  %.in = and i32 %2, 64
  %.not3511 = icmp eq i32 %.in, 0                 ; 9 uses
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !92
  %i.fzh = load i8, ptr %i.am, align 1, !tbaa !81
  %i.fzi = icmp eq i8 %i.fzh, 123
  %i.fzj = getelementptr inbounds nuw i8, ptr %i.fza, i64 72 ; 2 uses
  br i1 %i.fzi, label %bb.akr, label %bb.aks

bb.akr:                                           ; preds = %.thread3356
  store i64 7, ptr %i.fzd, align 8, !tbaa !79
  store i64 0, ptr %i.fzj, align 8, !tbaa !81
  br label %.preheader4102

bb.aks:                                           ; preds = %.thread3356
  store i64 6, ptr %i.fzd, align 8, !tbaa !79
  store i64 0, ptr %i.fzj, align 8, !tbaa !81
  br label %.preheader4040

.loopexit4042:                                    ; preds = %bb.brg, %.backedge4043
  %.pn.i163 = phi ptr [ %.promoted5528, %.backedge4043 ], [ %i.kma, %bb.brg ]
  %.0527.i = phi ptr [ %.3530.i.ph, %.backedge4043 ], [ %.23550.i, %bb.brg ] ; 4 uses
  %.0491.i = phi ptr [ %.3494.i.ph, %.backedge4043 ], [ %.23514.i, %bb.brg ]
  %.0465.i = phi ptr [ %.3468.i.ph, %.backedge4043 ], [ %.23488.i, %bb.brg ] ; 2 uses
  %.0448.i = phi ptr [ %.3451.i.ph, %.backedge4043 ], [ %.23.i199, %bb.brg ] ; 4 uses
  %.0440.i164 = phi i64 [ %.1441.i.ph, %.backedge4043 ], [ %i.jah, %bb.brg ]
  %.0439.i = phi i64 [ %.2.i162.ph, %.backedge4043 ], [ %.14.i200, %bb.brg ] ; 4 uses
  %storemerge.i165 = getelementptr inbounds nuw i8, ptr %.pn.i163, i64 1 ; 2 uses
  store ptr %storemerge.i165, ptr %i.e, align 8, !tbaa !92
  %i.fzk = shl i64 %.0440.i164, 8
  %i.fzl = add i64 %i.fzk, 256
  %i.fzm = load i64, ptr %.0527.i, align 8, !tbaa !79
  %i.fzn = and i64 %i.fzm, 255
  %i.fzo = or disjoint i64 %i.fzn, %i.fzl
  store i64 %i.fzo, ptr %.0527.i, align 8, !tbaa !79
  %i.fzp = getelementptr inbounds nuw i8, ptr %.0491.i, i64 16 ; 3 uses
  %.not615.i166 = icmp ult ptr %i.fzp, %.0465.i
  br i1 %.not615.i166, label %bb.aku, label %bb.akt, !prof !24

bb.akt:                                           ; preds = %.loopexit4042
  %i.fzq = lshr i64 %.0439.i, 1
  %i.fzr = add i64 %i.fzq, %.0439.i               ; 3 uses
  %i.fzs = shl i64 %.0439.i, 4
  %i.fzt = shl i64 %i.fzr, 4
  %i.fzu = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.0448.i, i64 noundef %i.fzs, i64 noundef %i.fzt), !inline_history !220 ; 5 uses
  %.not616.i167 = icmp eq ptr %i.fzu, null
  %.pre6802 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not616.i167, label %bb.btp, label %.thread3357

.thread3357:                                      ; preds = %bb.akt
  %i.fzv = ptrtoint ptr %i.fzp to i64
  %i.fzw = ptrtoint ptr %.0448.i to i64           ; 2 uses
  %i.fzx = sub i64 %i.fzv, %i.fzw
  %i.fzy = getelementptr inbounds nuw i8, ptr %i.fzu, i64 %i.fzx
  %i.fzz = ptrtoint ptr %.0527.i to i64
  %i.gaa = sub i64 %i.fzz, %i.fzw
  %i.gab = getelementptr inbounds nuw i8, ptr %i.fzu, i64 %i.gaa
  %i.gac = getelementptr [16 x i8], ptr %i.fzu, i64 %i.fzr
  %i.gad = getelementptr i8, ptr %i.gac, i64 -32
  br label %bb.aku

bb.aku:                                           ; preds = %.thread3357, %.loopexit4042
  %.pre6765.pre = phi ptr [ %.pre6802, %.thread3357 ], [ %storemerge.i165, %.loopexit4042 ]
  %.2529.i = phi ptr [ %i.gab, %.thread3357 ], [ %.0527.i, %.loopexit4042 ]
  %.2493.i = phi ptr [ %i.fzy, %.thread3357 ], [ %i.fzp, %.loopexit4042 ] ; 5 uses
  %.2467.i = phi ptr [ %i.gad, %.thread3357 ], [ %.0465.i, %.loopexit4042 ]
  %.2450.i = phi ptr [ %i.fzu, %.thread3357 ], [ %.0448.i, %.loopexit4042 ]
  %.1.i171 = phi i64 [ %i.fzr, %.thread3357 ], [ %.0439.i, %.loopexit4042 ]
  store i64 6, ptr %.2493.i, align 8, !tbaa !79
  %i.gae = ptrtoint ptr %.2493.i to i64
  %i.gaf = ptrtoint ptr %.2529.i to i64
  %i.gag = sub i64 %i.gae, %i.gaf
  %i.gah = getelementptr inbounds nuw i8, ptr %.2493.i, i64 8
  store i64 %i.gag, ptr %i.gah, align 8, !tbaa !81
  br label %.preheader4040

.preheader4040:                                   ; preds = %bb.aks, %bb.aku, %bb.bae
  %.pre6765 = phi ptr [ %.pre6765.pre, %bb.aku ], [ %i.ao, %bb.aks ], [ %i.ixn, %bb.bae ]
  %.3530.i.ph = phi ptr [ %.2493.i, %bb.aku ], [ %i.fzd, %bb.aks ], [ %.16543.i.ph, %bb.bae ] ; 16 uses
  %.3494.i.ph = phi ptr [ %.2493.i, %bb.aku ], [ %i.fzd, %bb.aks ], [ %.16507.i.ph, %bb.bae ] ; 10 uses
  %.3468.i.ph = phi ptr [ %.2467.i, %bb.aku ], [ %i.fzc, %bb.aks ], [ %.16481.i.ph, %bb.bae ] ; 16 uses
  %.3451.i.ph = phi ptr [ %.2450.i, %bb.aku ], [ %i.fza, %bb.aks ], [ %.16464.i.ph, %bb.bae ] ; 33 uses
  %.1441.i.ph = phi i64 [ 0, %bb.aku ], [ 0, %bb.aks ], [ %.2442.i.ph, %bb.bae ] ; 10 uses
  %.2.i162.ph = phi i64 [ %.1.i171, %bb.aku ], [ %i.fyy, %bb.aks ], [ %.9.i184.ph, %bb.bae ] ; 28 uses
  %i.gai = and i32 %2, 16
  %.not3680 = icmp eq i32 %i.gai, 0               ; 7 uses
  %i.gaj = and i32 %2, 8
  %.not3681 = icmp eq i32 %i.gaj, 0
  br label %.backedge4043

.backedge4043:                                    ; preds = %.backedge4043.backedge, %.preheader4040
  %.promoted5528 = phi ptr [ %.pre6765, %.preheader4040 ], [ %.promoted5528.be, %.backedge4043.backedge ] ; 12 uses
  %i.gak = load i8, ptr %.promoted5528, align 1, !tbaa !81 ; 5 uses
  switch i8 %i.gak, label %bb.akv [
    i8 123, label %.loopexit4041
    i8 91, label %.loopexit4042
  ]

bb.akv:                                           ; preds = %.backedge4043
  %i.gal = zext i8 %i.gak to i64
  %i.gam = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.gal
  %i.gan = load i8, ptr %i.gam, align 1, !tbaa !81 ; 2 uses
  %i.gao = and i8 %i.gan, 2
  %.not3642 = icmp eq i8 %i.gao, 0
  br i1 %.not3642, label %bb.avb, label %bb.akw

bb.akw:                                           ; preds = %bb.akv
  %i.gap = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not612.i222 = icmp ult ptr %i.gap, %.3468.i.ph
  br i1 %.not612.i222, label %bb.aky, label %bb.akx, !prof !24

bb.akx:                                           ; preds = %bb.akw
  %i.gaq = lshr i64 %.2.i162.ph, 1
  %i.gar = add i64 %i.gaq, %.2.i162.ph            ; 3 uses
  %i.gas = shl i64 %.2.i162.ph, 4
  %i.gat = shl i64 %i.gar, 4
  %i.gau = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.gas, i64 noundef %i.gat), !inline_history !220 ; 5 uses
  %.not613.i223 = icmp eq ptr %i.gau, null
  %.pre6801 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not613.i223, label %bb.btp, label %.thread3363

.thread3363:                                      ; preds = %bb.akx
  %i.gav = ptrtoint ptr %i.gap to i64
  %i.gaw = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.gax = sub i64 %i.gav, %i.gaw
  %i.gay = getelementptr inbounds nuw i8, ptr %i.gau, i64 %i.gax
  %i.gaz = ptrtoint ptr %.3530.i.ph to i64
  %i.gba = sub i64 %i.gaz, %i.gaw
  %i.gbb = getelementptr inbounds nuw i8, ptr %i.gau, i64 %i.gba
  %i.gbc = getelementptr [16 x i8], ptr %i.gau, i64 %i.gar
  %i.gbd = getelementptr i8, ptr %i.gbc, i64 -32
  br label %bb.aky

bb.aky:                                           ; preds = %.thread3363, %bb.akw
  %i.gbe = phi ptr [ %.pre6801, %.thread3363 ], [ %.promoted5528, %bb.akw ] ; 15 uses
  %.5532.i = phi ptr [ %i.gbb, %.thread3363 ], [ %.3530.i.ph, %bb.akw ] ; 27 uses
  %.5496.i = phi ptr [ %i.gay, %.thread3363 ], [ %i.gap, %bb.akw ] ; 120 uses
  %.5470.i = phi ptr [ %i.gbd, %.thread3363 ], [ %.3468.i.ph, %bb.akw ] ; 27 uses
  %.5453.i = phi ptr [ %i.gau, %.thread3363 ], [ %.3451.i.ph, %bb.akw ] ; 30 uses
  %.3.i224 = phi i64 [ %i.gar, %.thread3363 ], [ %.2.i162.ph, %bb.akw ] ; 27 uses
  %i.gbf = add i64 %.1441.i.ph, 1                 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.gbg = and i32 %2, 128                        ; 2 uses
  %.not3683 = icmp eq i32 %i.gbg, 0               ; 7 uses
  %or.cond3992 = and i1 %.not3683, %i.fzg
  br i1 %or.cond3992, label %bb.akz, label %.critedge687.i, !prof !162

bb.akz:                                           ; preds = %bb.aky
  %i.gbh = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL15read_number_rawEPPhS1_jPNS_10yyjson_valEPPKc(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i32 noundef %2, ptr noundef %.5496.i, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br i1 %i.gbh, label %.preheader4046, label %bb.btl, !prof !121

.critedge687.i:                                   ; preds = %bb.aky
  %i.gbi = load i8, ptr %i.gbe, align 1, !tbaa !81
  %i.gbj = icmp eq i8 %i.gbi, 45                  ; 58 uses
  %i.gbk = zext i1 %i.gbj to i64
  %i.gbl = getelementptr inbounds nuw i8, ptr %i.gbe, i64 %i.gbk ; 56 uses
  %i.gbm = load i8, ptr %i.gbl, align 1, !tbaa !81 ; 5 uses
  %i.gbn = zext i8 %i.gbm to i64                  ; 2 uses
  %i.gbo = add i8 %i.gbm, -58
  %.not3684 = icmp ult i8 %i.gbo, -9
  br i1 %.not3684, label %bb.ala, label %bb.amj, !prof !7

bb.ala:                                           ; preds = %.critedge687.i
  %.not670.i = icmp eq i8 %i.gbm, 48
  br i1 %.not670.i, label %bb.aly, label %bb.alb, !prof !24

bb.alb:                                           ; preds = %bb.ala
  br i1 %.not3680, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890, label %bb.alc, !prof !24

bb.alc:                                           ; preds = %bb.alb
  %.neg.i1161 = sext i1 %i.gbj to i64
  %i.gbp = getelementptr inbounds i8, ptr %i.gbl, i64 %.neg.i1161 ; 3 uses
  switch i8 %i.gbm, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890 [
    i8 73, label %bb.ald
    i8 105, label %bb.ald
    i8 78, label %bb.alr
    i8 110, label %bb.alr
  ]

bb.ald:                                           ; preds = %bb.alc, %bb.alc
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbl, i64 1
  %i.gbr = load i8, ptr %i.gbq, align 1, !tbaa !81
  switch i8 %i.gbr, label %bb.alq [
    i8 78, label %bb.ale
    i8 110, label %bb.ale
  ]

bb.ale:                                           ; preds = %bb.ald, %bb.ald
  %i.gbs = getelementptr inbounds nuw i8, ptr %i.gbl, i64 2
  %i.gbt = load i8, ptr %i.gbs, align 1, !tbaa !81
  switch i8 %i.gbt, label %bb.alq [
    i8 70, label %bb.alf
    i8 102, label %bb.alf
  ]

bb.alf:                                           ; preds = %bb.ale, %bb.ale
  %i.gbu = getelementptr inbounds nuw i8, ptr %i.gbl, i64 3 ; 6 uses
  %i.gbv = load i8, ptr %i.gbu, align 1, !tbaa !81
  switch i8 %i.gbv, label %bb.all [
    i8 73, label %bb.alg
    i8 105, label %bb.alg
  ]

bb.alg:                                           ; preds = %bb.alf, %bb.alf
  %i.gbw = getelementptr inbounds nuw i8, ptr %i.gbl, i64 4
  %i.gbx = load i8, ptr %i.gbw, align 1, !tbaa !81
  switch i8 %i.gbx, label %bb.all [
    i8 78, label %bb.alh
    i8 110, label %bb.alh
  ]

bb.alh:                                           ; preds = %bb.alg, %bb.alg
  %i.gby = getelementptr inbounds nuw i8, ptr %i.gbl, i64 5
  %i.gbz = load i8, ptr %i.gby, align 1, !tbaa !81
  switch i8 %i.gbz, label %bb.all [
    i8 73, label %bb.ali
    i8 105, label %bb.ali
  ]

bb.ali:                                           ; preds = %bb.alh, %bb.alh
  %i.gca = getelementptr inbounds nuw i8, ptr %i.gbl, i64 6
  %i.gcb = load i8, ptr %i.gca, align 1, !tbaa !81
  switch i8 %i.gcb, label %bb.all [
    i8 84, label %bb.alj
    i8 116, label %bb.alj
  ]

bb.alj:                                           ; preds = %bb.ali, %bb.ali
  %i.gcc = getelementptr inbounds nuw i8, ptr %i.gbl, i64 7
  %i.gcd = load i8, ptr %i.gcc, align 1, !tbaa !81
  switch i8 %i.gcd, label %bb.all [
    i8 89, label %bb.alk
    i8 121, label %bb.alk
  ]

bb.alk:                                           ; preds = %bb.alj, %bb.alj
  %i.gce = getelementptr inbounds nuw i8, ptr %i.gbl, i64 8
  br label %bb.all

bb.all:                                           ; preds = %bb.alk, %bb.alj, %bb.ali, %bb.alh, %bb.alg, %bb.alf
  %.037.i1162 = phi ptr [ %i.gce, %bb.alk ], [ %i.gbu, %bb.alj ], [ %i.gbu, %bb.ali ], [ %i.gbu, %bb.alh ], [ %i.gbu, %bb.alg ], [ %i.gbu, %bb.alf ] ; 4 uses
  br i1 %i.fzg, label %bb.alm, label %bb.alp

bb.alm:                                           ; preds = %bb.all
  %i.gcf = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not48.i1164 = icmp eq ptr %i.gcf, null
  br i1 %.not48.i1164, label %bb.alo, label %bb.aln

bb.aln:                                           ; preds = %bb.alm
  store i8 0, ptr %i.gcf, align 1, !tbaa !81
  br label %bb.alo

bb.alo:                                           ; preds = %bb.aln, %bb.alm
  store ptr %.037.i1162, ptr %i.g, align 8, !tbaa !92
  %i.gcg = ptrtoint ptr %.037.i1162 to i64
  %i.gch = ptrtoint ptr %i.gbp to i64
  %i.gci = sub i64 %i.gcg, %i.gch
  %i.gcj = shl i64 %i.gci, 8
  %i.gck = or disjoint i64 %i.gcj, 1
  store i64 %i.gck, ptr %.5496.i, align 8, !tbaa !79
  %i.gcl = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gbp, ptr %i.gcl, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.alp:                                           ; preds = %bb.all
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.gcm = select i1 %i.gbj, i64 -4503599627370496, i64 9218868437227405312
  %i.gcn = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.gcm, ptr %i.gcn, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.alq:                                           ; preds = %bb.ale, %bb.ald
  switch i8 %i.gbm, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890 [
    i8 78, label %bb.alr
    i8 110, label %bb.alr
  ]

bb.alr:                                           ; preds = %bb.alc, %bb.alc, %bb.alq, %bb.alq
  %i.gco = getelementptr inbounds nuw i8, ptr %i.gbl, i64 1
  %i.gcp = load i8, ptr %i.gco, align 1, !tbaa !81
  switch i8 %i.gcp, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890 [
    i8 65, label %bb.als
    i8 97, label %bb.als
  ]

bb.als:                                           ; preds = %bb.alr, %bb.alr
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.gbl, i64 2
  %i.gcr = load i8, ptr %i.gcq, align 1, !tbaa !81
  switch i8 %i.gcr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890 [
    i8 78, label %bb.alt
    i8 110, label %bb.alt
  ]

bb.alt:                                           ; preds = %bb.als, %bb.als
  %i.gcs = getelementptr inbounds nuw i8, ptr %i.gbl, i64 3 ; 3 uses
  br i1 %i.fzg, label %bb.alu, label %bb.alx

bb.alu:                                           ; preds = %bb.alt
  %i.gct = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i.i885 = icmp eq ptr %i.gct, null
  br i1 %.not31.i.i885, label %bb.alw, label %bb.alv

bb.alv:                                           ; preds = %bb.alu
  store i8 0, ptr %i.gct, align 1, !tbaa !81
  br label %bb.alw

bb.alw:                                           ; preds = %bb.alv, %bb.alu
  store ptr %i.gcs, ptr %i.g, align 8, !tbaa !92
  %i.gcu = select i1 %i.gbj, i64 1025, i64 769
  store i64 %i.gcu, ptr %.5496.i, align 8, !tbaa !79
  %i.gcv = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gbp, ptr %i.gcv, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.alx:                                           ; preds = %bb.alt
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.gcw = select i1 %i.gbj, i64 -2251799813685248, i64 9221120237041090560
  %i.gcx = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.gcw, ptr %i.gcx, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890: ; preds = %bb.alc, %bb.als, %bb.alr, %bb.alq, %bb.alb
  store ptr @.str.78, ptr %i.f, align 8, !tbaa !92
  store ptr %i.gbl, ptr %i.e, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread

bb.aly:                                           ; preds = %bb.ala
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gbl, i64 1 ; 4 uses
  %i.gcz = load i8, ptr %i.gcy, align 1, !tbaa !81 ; 4 uses
  %i.gda = zext i8 %i.gcz to i64
  %i.gdb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10digi_tableE, i64 %i.gda
  %i.gdc = load i8, ptr %i.gdb, align 1, !tbaa !81
  %i.gdd = and i8 %i.gdc, 51
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.hwu = load i64, ptr %i.hwt, align 8, !tbaa !91
  %i.hwv = shl i64 %i.hwu, %.pre6803
  %i.hww = add nsw i64 %indvars.iv6494.ph, -1
  %i.hwx = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494.ph
  %i.hwy = load i64, ptr %i.hwx, align 8, !tbaa !91
  %i.hwz = lshr i64 %i.hwy, %i.hvi
  %i.hxa = or i64 %i.hwz, %i.hwv
  %i.hxb = trunc nuw i64 %indvars.iv6494.ph to i32
  %i.hxc = add i32 %i.hsj, %i.hxb
  %i.hxd = zext i32 %i.hxc to i64
  %i.hxe = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hxd
  store i64 %i.hxa, ptr %i.hxe, align 8, !tbaa !91
  br label %scalar.ph10488.prol.loopexit

scalar.ph10488.prol.loopexit:                     ; preds = %scalar.ph10488.prol, %scalar.ph10488.preheader
  %indvars.iv6494.unr = phi i64 [ %indvars.iv6494.ph, %scalar.ph10488.preheader ], [ %i.hww, %scalar.ph10488.prol ]
  %i.hxf = icmp eq i64 %indvars.iv6494.ph, 1
  br i1 %i.hxf, label %._crit_edge5610, label %scalar.ph10488

scalar.ph10488:                                   ; preds = %scalar.ph10488.prol.loopexit, %scalar.ph10488
  %indvars.iv6494 = phi i64 [ %i.hxv, %scalar.ph10488 ], [ %indvars.iv6494.unr, %scalar.ph10488.prol.loopexit ] ; 6 uses
  %i.hxg = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %indvars.iv6494
  %i.hxh = load i64, ptr %i.hxg, align 8, !tbaa !91
  %i.hxi = shl i64 %i.hxh, %.pre6803
  %i.hxj = add nsw i64 %indvars.iv6494, -1        ; 2 uses
  %i.hxk = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494
  %i.hxl = load i64, ptr %i.hxk, align 8, !tbaa !91
  %i.hxm = lshr i64 %i.hxl, %i.hvi
  %i.hxn = or i64 %i.hxm, %i.hxi
  %i.hxo = trunc nuw i64 %indvars.iv6494 to i32
  %i.hxp = add i32 %i.hsj, %i.hxo
  %i.hxq = zext i32 %i.hxp to i64
  %i.hxr = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hxq
  store i64 %i.hxn, ptr %i.hxr, align 8, !tbaa !91
  %i.hxs = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6494
  %i.hxt = load i64, ptr %i.hxs, align 8, !tbaa !91
  %i.hxu = shl i64 %i.hxt, %.pre6803
  %i.hxv = add nsw i64 %indvars.iv6494, -2        ; 2 uses
  %i.hxw = getelementptr [8 x i8], ptr %11, i64 %i.hxj
  %i.hxx = load i64, ptr %i.hxw, align 8, !tbaa !91
  %i.hxy = lshr i64 %i.hxx, %i.hvi
  %i.hxz = or i64 %i.hxy, %i.hxu
  %i.hya = trunc nuw i64 %i.hxj to i32
  %i.hyb = add i32 %i.hsj, %i.hya
  %i.hyc = zext i32 %i.hyb to i64
  %i.hyd = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hyc
  store i64 %i.hxz, ptr %i.hyd, align 8, !tbaa !91
  %.not.i1293.wide.1 = icmp eq i64 %i.hxv, 0
  br i1 %.not.i1293.wide.1, label %._crit_edge5610, label %scalar.ph10488, !llvm.loop !230

._crit_edge5610:                                  ; preds = %scalar.ph10488.prol.loopexit, %scalar.ph10488, %middle.block10510, %bb.aun
  %i.hye = load i64, ptr %i.hve, align 8, !tbaa !91
  %i.hyf = shl i64 %i.hye, %.pre6803
  %i.hyg = zext nneg i32 %i.hsj to i64
  %i.hyh = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hyg
  store i64 %i.hyf, ptr %i.hyh, align 8, !tbaa !91
  %i.hyi = add i32 %i.hsk, %i.hsj                 ; 2 uses
  %i.hyj = zext i32 %i.hyi to i64
  %i.hyk = getelementptr inbounds nuw [8 x i8], ptr %i.hve, i64 %i.hyj
  %i.hyl = load i64, ptr %i.hyk, align 8, !tbaa !91
  %i.hym = icmp ne i64 %i.hyl, 0
  %i.hyn = zext i1 %i.hym to i32
  %i.hyo = add i32 %i.hyi, %i.hyn
  store i32 %i.hyo, ptr %11, align 8, !tbaa !177
  %.not45.i12955611 = icmp eq i32 %i.hsj, 0
  br i1 %.not45.i12955611, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, label %.lr.ph5614.preheader

.lr.ph5614.preheader:                             ; preds = %._crit_edge5610
  %i.hyp = lshr i32 %i.hsh, 3
  %i.hyq = and i32 %i.hyp, 536870904
  %i.hyr = zext nneg i32 %i.hyq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hve, i8 0, i64 %i.hyr, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291: ; preds = %.lr.ph5614.preheader, %.lr.ph5622, %.lr.ph5631.preheader, %.lr.ph5639.preheader, %._crit_edge5610, %._crit_edge5618, %._crit_edge5627
  %i.hys = phi i32 [ %i.hsd, %._crit_edge5627 ], [ %i.hlx, %.lr.ph5614.preheader ], [ %i.hlx, %.lr.ph5622 ], [ %i.hsd, %.lr.ph5631.preheader ], [ %i.hop, %.lr.ph5639.preheader ], [ %i.hlx, %._crit_edge5610 ], [ %i.hlx, %._crit_edge5618 ] ; 2 uses
  %i.hyt = load i32, ptr %11, align 8, !tbaa !177 ; 4 uses
  %i.hyu = icmp ult i32 %i.hyt, %i.hys
  br i1 %i.hyu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %bb.auo

bb.auo:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291
  %i.hyv = icmp ugt i32 %i.hyt, %i.hys
  br i1 %i.hyv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, label %.preheader4026

.preheader4026:                                   ; preds = %bb.auo
  %.not.i132610188 = icmp eq i32 %i.hyt, 0
  br i1 %.not.i132610188, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %.lr.ph10191

.lr.ph10191:                                      ; preds = %.preheader4026
  %i.hyw = zext i32 %i.hyt to i64
  br label %bb.auq

bb.aup:                                           ; preds = %bb.auq
  %i.hyx = add nsw i64 %indvars.iv651210189, -1   ; 2 uses
  %.not.i1326 = icmp eq i64 %i.hyx, 0
  br i1 %.not.i1326, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %bb.auq, !llvm.loop !191

bb.auq:                                           ; preds = %.lr.ph10191, %bb.aup
  %.0.i132510190 = phi i32 [ undef, %.lr.ph10191 ], [ %.1.i1330, %bb.aup ]
  %indvars.iv651210189 = phi i64 [ %i.hyw, %.lr.ph10191 ], [ %i.hyx, %bb.aup ] ; 3 uses
  %i.hyy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv651210189
  %i.hyz = load i64, ptr %i.hyy, align 8, !tbaa !91 ; 3 uses
  %i.hza = getelementptr [8 x i8], ptr %12, i64 %indvars.iv651210189
  %i.hzb = load i64, ptr %i.hza, align 8, !tbaa !91 ; 3 uses
  %.not3729 = icmp ult i64 %i.hyz, %i.hzb
  %.not3730 = icmp ugt i64 %i.hyz, %i.hzb
  %..0.i1328 = select i1 %.not3730, i32 1, i32 %.0.i132510190
  %cond.i1329 = icmp eq i64 %i.hyz, %i.hzb
  %.1.i1330 = select i1 %.not3729, i32 -1, i32 %..0.i1328 ; 3 uses
  br i1 %cond.i1329, label %bb.aup, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332: ; preds = %bb.auq
  %.not680.i = icmp eq i32 %.1.i1330, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291, %bb.auo, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %.2.i13313385 = phi i32 [ %.1.i1330, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1291 ], [ 1, %bb.auo ]
  %i.hzc = icmp sgt i32 %.2.i13313385, 0
  %i.hzd = zext i1 %i.hzc to i64
  br label %bb.aur

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386: ; preds = %bb.aup, %.preheader4026, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332
  %i.hze = and i64 %.0.i1210.ph, 1
  br label %bb.aur

bb.aur:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread
  %.pn.i230 = phi i64 [ %i.hzd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread ], [ %i.hze, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1332.thread3386 ]
  %.0604.i = add nuw nsw i64 %.pn.i230, %.0.i1210.ph ; 2 uses
  %i.hzf = icmp eq i64 %.0604.i, 9218868437227405312
  br i1 %i.hzf, label %bb.aus, label %bb.auz, !prof !7

bb.aus:                                           ; preds = %bb.aur
  br i1 %.not3683, label %bb.auw, label %bb.aut, !prof !24

bb.aut:                                           ; preds = %bb.aus
  %i.hzg = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.hzg, null
  br i1 %.not681.i, label %bb.auv, label %bb.auu

bb.auu:                                           ; preds = %bb.aut
  store i8 0, ptr %i.hzg, align 1, !tbaa !81
  br label %bb.auv

bb.auv:                                           ; preds = %bb.auu, %bb.aut
  %i.hzh = ptrtoint ptr %.73181 to i64
  %i.hzi = ptrtoint ptr %i.gbe to i64
  %i.hzj = sub i64 %i.hzh, %i.hzi
  %i.hzk = shl i64 %i.hzj, 8
  %i.hzl = or disjoint i64 %i.hzk, 1
  store i64 %i.hzl, ptr %.5496.i, align 8, !tbaa !79
  %i.hzm = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store ptr %i.gbe, ptr %i.hzm, align 8, !tbaa !81
  store ptr %.73181, ptr %i.g, align 8, !tbaa !92
  br label %bb.ava

bb.auw:                                           ; preds = %bb.aus
  br i1 %.not3680, label %bb.auy, label %bb.aux, !prof !24

bb.aux:                                           ; preds = %bb.auw
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hzn = select i1 %i.gbj, i64 -4503599627370496, i64 9218868437227405312
  %i.hzo = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hzn, ptr %i.hzo, align 8, !tbaa !81
  br label %bb.ava

bb.auy:                                           ; preds = %bb.auw
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.gbe, ptr %i.e, align 8, !tbaa !92
  br label %.thread3476

bb.auz:                                           ; preds = %bb.aur
  store i64 20, ptr %.5496.i, align 8, !tbaa !79
  %i.hzp = select i1 %i.gbj, i64 -9223372036854775808, i64 0
  %i.hzq = or disjoint i64 %.0604.i, %i.hzp
  %i.hzr = getelementptr inbounds nuw i8, ptr %.5496.i, i64 8
  store i64 %i.hzq, ptr %i.hzr, align 8, !tbaa !81
  br label %bb.ava

.thread3476:                                      ; preds = %bb.ats, %bb.auy
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.btl

bb.ava:                                           ; preds = %bb.auz, %bb.aux, %bb.auv, %bb.atu, %bb.atr, %bb.atp
  store ptr %.73181, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4046

.preheader4046:                                   ; preds = %bb.azr, %bb.azs, %bb.baa, %bb.azz, %bb.ayx, %bb.ayw, %bb.bal, %bb.btc, %bb.akz, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit, %.loopexit4025, %bb.ang, %bb.anh, %bb.ani, %bb.ank, %bb.ann, %bb.anq, %bb.ant, %bb.anw, %bb.aoo, %bb.aor, %bb.aou, %bb.aox, %bb.apa, %bb.apd, %bb.apg, %bb.apj, %bb.ard, %bb.are, %bb.arf, %bb.arq, %bb.arz, %bb.ata, %bb.atf, %bb.ava
  %.16543.i.ph = phi ptr [ %.5532.i, %bb.atf ], [ %.5532.i, %bb.ata ], [ %.5532.i, %bb.anw ], [ %.5532.i, %bb.arq ], [ %.5532.i, %bb.ant ], [ %.5532.i, %bb.arz ], [ %.5532.i, %bb.anq ], [ %.5532.i, %bb.ann ], [ %.5532.i, %.loopexit4025 ], [ %.5532.i, %bb.ank ], [ %.5532.i, %bb.ard ], [ %.5532.i, %bb.are ], [ %.5532.i, %bb.arf ], [ %.5532.i, %bb.ang ], [ %.5532.i, %bb.anh ], [ %.5532.i, %bb.ani ], [ %.5532.i, %bb.apj ], [ %.5532.i, %bb.apg ], [ %.5532.i, %bb.apd ], [ %.5532.i, %bb.apa ], [ %.5532.i, %bb.aox ], [ %.5532.i, %bb.aou ], [ %.5532.i, %bb.aor ], [ %.5532.i, %bb.aoo ], [ %.5532.i, %bb.akz ], [ %i.iym, %bb.bal ], [ %i.moj, %bb.btc ], [ %.13540.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11538.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9536.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7534.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13540.i, %bb.ayx ], [ %.5532.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5532.i, %bb.ava ], [ %.13540.i, %bb.ayw ], [ %.15542.i, %bb.azz ], [ %.15542.i, %bb.baa ], [ %.15542.i, %bb.azs ], [ %.15542.i, %bb.azr ] ; 2 uses
  %.16507.i.ph = phi ptr [ %.5496.i, %bb.atf ], [ %.5496.i, %bb.ata ], [ %.5496.i, %bb.anw ], [ %.5496.i, %bb.arq ], [ %.5496.i, %bb.ant ], [ %.5496.i, %bb.arz ], [ %.5496.i, %bb.anq ], [ %.5496.i, %bb.ann ], [ %.5496.i, %.loopexit4025 ], [ %.5496.i, %bb.ank ], [ %.5496.i, %bb.ard ], [ %.5496.i, %bb.are ], [ %.5496.i, %bb.arf ], [ %.5496.i, %bb.ang ], [ %.5496.i, %bb.anh ], [ %.5496.i, %bb.ani ], [ %.5496.i, %bb.apj ], [ %.5496.i, %bb.apg ], [ %.5496.i, %bb.apd ], [ %.5496.i, %bb.apa ], [ %.5496.i, %bb.aox ], [ %.5496.i, %bb.aou ], [ %.5496.i, %bb.aor ], [ %.5496.i, %bb.aoo ], [ %.5496.i, %bb.akz ], [ %.17508.i, %bb.bal ], [ %.25516.i, %bb.btc ], [ %.13504.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11502.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9500.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7498.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13504.i, %bb.ayx ], [ %.5496.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5496.i, %bb.ava ], [ %.13504.i, %bb.ayw ], [ %.15506.i, %bb.azz ], [ %.15506.i, %bb.baa ], [ %.15506.i, %bb.azs ], [ %.15506.i, %bb.azr ] ; 2 uses
  %.16481.i.ph = phi ptr [ %.5470.i, %bb.atf ], [ %.5470.i, %bb.ata ], [ %.5470.i, %bb.anw ], [ %.5470.i, %bb.arq ], [ %.5470.i, %bb.ant ], [ %.5470.i, %bb.arz ], [ %.5470.i, %bb.anq ], [ %.5470.i, %bb.ann ], [ %.5470.i, %.loopexit4025 ], [ %.5470.i, %bb.ank ], [ %.5470.i, %bb.ard ], [ %.5470.i, %bb.are ], [ %.5470.i, %bb.arf ], [ %.5470.i, %bb.ang ], [ %.5470.i, %bb.anh ], [ %.5470.i, %bb.ani ], [ %.5470.i, %bb.apj ], [ %.5470.i, %bb.apg ], [ %.5470.i, %bb.apd ], [ %.5470.i, %bb.apa ], [ %.5470.i, %bb.aox ], [ %.5470.i, %bb.aou ], [ %.5470.i, %bb.aor ], [ %.5470.i, %bb.aoo ], [ %.5470.i, %bb.akz ], [ %.17482.i, %bb.bal ], [ %.25490.i, %bb.btc ], [ %.13478.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11476.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9474.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7472.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13478.i, %bb.ayx ], [ %.5470.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5470.i, %bb.ava ], [ %.13478.i, %bb.ayw ], [ %.15480.i, %bb.azz ], [ %.15480.i, %bb.baa ], [ %.15480.i, %bb.azs ], [ %.15480.i, %bb.azr ] ; 2 uses
  %.16464.i.ph = phi ptr [ %.5453.i, %bb.atf ], [ %.5453.i, %bb.ata ], [ %.5453.i, %bb.anw ], [ %.5453.i, %bb.arq ], [ %.5453.i, %bb.ant ], [ %.5453.i, %bb.arz ], [ %.5453.i, %bb.anq ], [ %.5453.i, %bb.ann ], [ %.5453.i, %.loopexit4025 ], [ %.5453.i, %bb.ank ], [ %.5453.i, %bb.ard ], [ %.5453.i, %bb.are ], [ %.5453.i, %bb.arf ], [ %.5453.i, %bb.ang ], [ %.5453.i, %bb.anh ], [ %.5453.i, %bb.ani ], [ %.5453.i, %bb.apj ], [ %.5453.i, %bb.apg ], [ %.5453.i, %bb.apd ], [ %.5453.i, %bb.apa ], [ %.5453.i, %bb.aox ], [ %.5453.i, %bb.aou ], [ %.5453.i, %bb.aor ], [ %.5453.i, %bb.aoo ], [ %.5453.i, %bb.akz ], [ %.17.i185, %bb.bal ], [ %.25.i182, %bb.btc ], [ %.13461.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11459.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9457.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7455.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.13461.i, %bb.ayx ], [ %.5453.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.5453.i, %bb.ava ], [ %.13461.i, %bb.ayw ], [ %.15463.i, %bb.azz ], [ %.15463.i, %bb.baa ], [ %.15463.i, %bb.azs ], [ %.15463.i, %bb.azr ] ; 5 uses
  %.2442.i.ph = phi i64 [ %i.gbf, %bb.atf ], [ %i.gbf, %bb.ata ], [ %i.gbf, %bb.anw ], [ %i.gbf, %bb.arq ], [ %i.gbf, %bb.ant ], [ %i.gbf, %bb.arz ], [ %i.gbf, %bb.anq ], [ %i.gbf, %bb.ann ], [ %i.gbf, %.loopexit4025 ], [ %i.gbf, %bb.ank ], [ %i.gbf, %bb.ard ], [ %i.gbf, %bb.are ], [ %i.gbf, %bb.arf ], [ %i.gbf, %bb.ang ], [ %i.gbf, %bb.anh ], [ %i.gbf, %bb.ani ], [ %i.gbf, %bb.apj ], [ %i.gbf, %bb.apg ], [ %i.gbf, %bb.apd ], [ %i.gbf, %bb.apa ], [ %i.gbf, %bb.aox ], [ %i.gbf, %bb.aou ], [ %i.gbf, %bb.aor ], [ %i.gbf, %bb.aoo ], [ %i.gbf, %bb.akz ], [ %i.iyo, %bb.bal ], [ %i.mol, %bb.btc ], [ %i.ium, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %i.itu, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %i.ita, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %i.iaj, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %i.ium, %bb.ayx ], [ %i.gbf, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %i.gbf, %bb.ava ], [ %i.ium, %bb.ayw ], [ %i.iwe, %bb.azz ], [ %i.iwe, %bb.baa ], [ %i.iwe, %bb.azs ], [ %i.iwe, %bb.azr ] ; 2 uses
  %.9.i184.ph = phi i64 [ %.3.i224, %bb.atf ], [ %.3.i224, %bb.ata ], [ %.3.i224, %bb.anw ], [ %.3.i224, %bb.arq ], [ %.3.i224, %bb.ant ], [ %.3.i224, %bb.arz ], [ %.3.i224, %bb.anq ], [ %.3.i224, %bb.ann ], [ %.3.i224, %.loopexit4025 ], [ %.3.i224, %bb.ank ], [ %.3.i224, %bb.ard ], [ %.3.i224, %bb.are ], [ %.3.i224, %bb.arf ], [ %.3.i224, %bb.ang ], [ %.3.i224, %bb.anh ], [ %.3.i224, %bb.ani ], [ %.3.i224, %bb.apj ], [ %.3.i224, %bb.apg ], [ %.3.i224, %bb.apd ], [ %.3.i224, %bb.apa ], [ %.3.i224, %bb.aox ], [ %.3.i224, %bb.aou ], [ %.3.i224, %bb.aor ], [ %.3.i224, %bb.aoo ], [ %.3.i224, %bb.akz ], [ %.10.i186, %bb.bal ], [ %.16.i183, %bb.btc ], [ %.7.i210, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.6.i213, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.5.i216, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.4.i219, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.7.i210, %bb.ayx ], [ %.3.i224, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.3.i224, %bb.ava ], [ %.7.i210, %bb.ayw ], [ %.8.i221, %bb.azz ], [ %.8.i221, %bb.baa ], [ %.8.i221, %bb.azs ], [ %.8.i221, %bb.azr ] ; 2 uses
  %i.hzs = and i32 %2, 8
  %.not3738 = icmp eq i32 %i.hzs, 0
  %.pre6763 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4048

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit890, %bb.amc, %bb.asb, %bb.ask, %bb.asv, %bb.art, %bb.arw, %bb.amg, %bb.ami, %bb.arj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.btl

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.alx, %bb.alw, %bb.alo, %bb.alp, %bb.alz, %bb.anz, %bb.aoc, %bb.aof, %bb.aoi, %bb.aol, %bb.asd, %bb.ash, %bb.asj, %bb.asn, %bb.ass, %bb.asu
  %.343208.ph.sink = phi ptr [ %.113185, %bb.asu ], [ %i.gcy, %bb.alz ], [ %i.gfr, %bb.anz ], [ %i.gfy, %bb.aoc ], [ %i.ggf, %bb.aof ], [ %i.ggm, %bb.aoi ], [ %i.ggt, %bb.aol ], [ %.103184.lcssa, %bb.asd ], [ %.103184.lcssa, %bb.ash ], [ %.103184.lcssa, %bb.asj ], [ %.113185, %bb.asn ], [ %.113185, %bb.ass ], [ %i.gcs, %bb.alw ], [ %i.gcs, %bb.alx ], [ %.037.i1162, %bb.alo ], [ %.037.i1162, %bb.alp ]
  store ptr %.343208.ph.sink, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4046

bb.avb:                                           ; preds = %bb.akv
  switch i8 %i.gak, label %bb.aza [
    i8 34, label %bb.avc
    i8 116, label %bb.ayg
    i8 102, label %bb.ayj
    i8 110, label %bb.aym
    i8 93, label %bb.ayy
  ]

bb.avc:                                           ; preds = %bb.avb
  %i.hzt = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not609.i217 = icmp ult ptr %i.hzt, %.3468.i.ph
  br i1 %.not609.i217, label %bb.ave, label %bb.avd, !prof !24

bb.avd:                                           ; preds = %bb.avc
  %i.hzu = lshr i64 %.2.i162.ph, 1
  %i.hzv = add i64 %i.hzu, %.2.i162.ph            ; 3 uses
  %i.hzw = shl i64 %.2.i162.ph, 4
  %i.hzx = shl i64 %i.hzv, 4
  %i.hzy = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.hzw, i64 noundef %i.hzx), !inline_history !220 ; 5 uses
  %.not610.i218 = icmp eq ptr %i.hzy, null
  %.pre6800 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not610.i218, label %bb.btp, label %.thread3391

.thread3391:                                      ; preds = %bb.avd
  %i.hzz = ptrtoint ptr %i.hzt to i64
  %i.iaa = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.iab = sub i64 %i.hzz, %i.iaa
  %i.iac = getelementptr inbounds nuw i8, ptr %i.hzy, i64 %i.iab
  %i.iad = ptrtoint ptr %.3530.i.ph to i64
  %i.iae = sub i64 %i.iad, %i.iaa
  %i.iaf = getelementptr inbounds nuw i8, ptr %i.hzy, i64 %i.iae
  %i.iag = getelementptr [16 x i8], ptr %i.hzy, i64 %i.hzv
  %i.iah = getelementptr i8, ptr %i.iag, i64 -32
  br label %bb.ave

bb.ave:                                           ; preds = %.thread3391, %bb.avc
  %i.iai = phi ptr [ %.pre6800, %.thread3391 ], [ %.promoted5528, %bb.avc ]
  %.7534.i = phi ptr [ %i.iaf, %.thread3391 ], [ %.3530.i.ph, %bb.avc ]
  %.7498.i = phi ptr [ %i.iac, %.thread3391 ], [ %i.hzt, %bb.avc ] ; 3 uses
  %.7472.i = phi ptr [ %i.iah, %.thread3391 ], [ %.3468.i.ph, %bb.avc ]
  %.7455.i = phi ptr [ %i.hzy, %.thread3391 ], [ %.3451.i.ph, %bb.avc ] ; 11 uses
  %.4.i219 = phi i64 [ %i.hzv, %.thread3391 ], [ %.2.i162.ph, %bb.avc ]
  %i.iaj = add i64 %.1441.i.ph, 1
  %i.iak = getelementptr inbounds nuw i8, ptr %i.iai, i64 1 ; 3 uses
  br label %.backedge4021

.backedge4021:                                    ; preds = %.backedge4021.backedge, %bb.ave
  %.0269.i = phi ptr [ %i.iak, %bb.ave ], [ %.0269.i.be, %.backedge4021.backedge ] ; 3 uses
  %i.ial = load i8, ptr %.0269.i, align 1, !tbaa !81 ; 2 uses
  %i.iam = zext i8 %i.ial to i64
  %i.ian = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.iam
  %i.iao = load i8, ptr %i.ian, align 1, !tbaa !81
  %i.iap = and i8 %i.iao, 12
  %.not36455688 = icmp eq i8 %i.iap, 0
  br i1 %.not36455688, label %.lr.ph5691, label %.split.loop.exit5672, !prof !159

.lr.ph5691:                                       ; preds = %.backedge4021, %bb.avt
  %.1270.i5689 = phi ptr [ %i.iec, %bb.avt ], [ %.0269.i, %.backedge4021 ] ; 31 uses
  %i.iaq = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 1
  %i.iar = load i8, ptr %i.iaq, align 1, !tbaa !81 ; 2 uses
  %i.ias = zext i8 %i.iar to i64
  %i.iat = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ias
  %i.iau = load i8, ptr %i.iat, align 1, !tbaa !81
  %i.iav = and i8 %i.iau, 12
  %.not3646 = icmp eq i8 %i.iav, 0
  br i1 %.not3646, label %bb.avf, label %.split.loop.exit5672.loopexit.split.loop.exit8368, !prof !24

bb.avf:                                           ; preds = %.lr.ph5691
  %i.iaw = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 2
  %i.iax = load i8, ptr %i.iaw, align 1, !tbaa !81 ; 2 uses
  %i.iay = zext i8 %i.iax to i64
  %i.iaz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.iay
  %i.iba = load i8, ptr %i.iaz, align 1, !tbaa !81
  %i.ibb = and i8 %i.iba, 12
  %.not3647 = icmp eq i8 %i.ibb, 0
  br i1 %.not3647, label %bb.avg, label %.split.loop.exit5672.loopexit.split.loop.exit8365, !prof !24

bb.avg:                                           ; preds = %bb.avf
  %i.ibc = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 3
  %i.ibd = load i8, ptr %i.ibc, align 1, !tbaa !81 ; 2 uses
  %i.ibe = zext i8 %i.ibd to i64
  %i.ibf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ibe
  %i.ibg = load i8, ptr %i.ibf, align 1, !tbaa !81
  %i.ibh = and i8 %i.ibg, 12
  %.not3648 = icmp eq i8 %i.ibh, 0
  br i1 %.not3648, label %bb.avh, label %.split.loop.exit5672.loopexit.split.loop.exit8362, !prof !24

bb.avh:                                           ; preds = %bb.avg
  %i.ibi = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 4
  %i.ibj = load i8, ptr %i.ibi, align 1, !tbaa !81 ; 2 uses
  %i.ibk = zext i8 %i.ibj to i64
  %i.ibl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ibk
  %i.ibm = load i8, ptr %i.ibl, align 1, !tbaa !81
  %i.ibn = and i8 %i.ibm, 12
  %.not3649 = icmp eq i8 %i.ibn, 0
  br i1 %.not3649, label %bb.avi, label %.split.loop.exit5672.loopexit.split.loop.exit8359, !prof !24

bb.avi:                                           ; preds = %bb.avh
  %i.ibo = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 5
  %i.ibp = load i8, ptr %i.ibo, align 1, !tbaa !81 ; 2 uses
  %i.ibq = zext i8 %i.ibp to i64
  %i.ibr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ibq
  %i.ibs = load i8, ptr %i.ibr, align 1, !tbaa !81
  %i.ibt = and i8 %i.ibs, 12
  %.not3650 = icmp eq i8 %i.ibt, 0
  br i1 %.not3650, label %bb.avj, label %.split.loop.exit5672.loopexit.split.loop.exit8356, !prof !24

bb.avj:                                           ; preds = %bb.avi
  %i.ibu = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 6
  %i.ibv = load i8, ptr %i.ibu, align 1, !tbaa !81 ; 2 uses
  %i.ibw = zext i8 %i.ibv to i64
  %i.ibx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ibw
  %i.iby = load i8, ptr %i.ibx, align 1, !tbaa !81
  %i.ibz = and i8 %i.iby, 12
  %.not3651 = icmp eq i8 %i.ibz, 0
  br i1 %.not3651, label %bb.avk, label %.split.loop.exit5672.loopexit.split.loop.exit8353, !prof !24

bb.avk:                                           ; preds = %bb.avj
  %i.ica = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 7
  %i.icb = load i8, ptr %i.ica, align 1, !tbaa !81 ; 2 uses
  %i.icc = zext i8 %i.icb to i64
  %i.icd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.icc
  %i.ice = load i8, ptr %i.icd, align 1, !tbaa !81
  %i.icf = and i8 %i.ice, 12
  %.not3652 = icmp eq i8 %i.icf, 0
  br i1 %.not3652, label %bb.avl, label %.split.loop.exit5672.loopexit.split.loop.exit8350, !prof !24

bb.avl:                                           ; preds = %bb.avk
  %i.icg = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 8
  %i.ich = load i8, ptr %i.icg, align 1, !tbaa !81 ; 2 uses
  %i.ici = zext i8 %i.ich to i64
  %i.icj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ici
  %i.ick = load i8, ptr %i.icj, align 1, !tbaa !81
  %i.icl = and i8 %i.ick, 12
  %.not3653 = icmp eq i8 %i.icl, 0
  br i1 %.not3653, label %bb.avm, label %.split.loop.exit5672.loopexit.split.loop.exit8347, !prof !24

bb.avm:                                           ; preds = %bb.avl
  %i.icm = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 9
  %i.icn = load i8, ptr %i.icm, align 1, !tbaa !81 ; 2 uses
  %i.ico = zext i8 %i.icn to i64
  %i.icp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ico
  %i.icq = load i8, ptr %i.icp, align 1, !tbaa !81
  %i.icr = and i8 %i.icq, 12
  %.not3654 = icmp eq i8 %i.icr, 0
  br i1 %.not3654, label %bb.avn, label %.split.loop.exit5672.loopexit.split.loop.exit8344, !prof !24

bb.avn:                                           ; preds = %bb.avm
  %i.ics = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 10
  %i.ict = load i8, ptr %i.ics, align 1, !tbaa !81 ; 2 uses
  %i.icu = zext i8 %i.ict to i64
  %i.icv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.icu
  %i.icw = load i8, ptr %i.icv, align 1, !tbaa !81
  %i.icx = and i8 %i.icw, 12
  %.not3655 = icmp eq i8 %i.icx, 0
  br i1 %.not3655, label %bb.avo, label %.split.loop.exit5672.loopexit.split.loop.exit8341, !prof !24

bb.avo:                                           ; preds = %bb.avn
  %i.icy = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 11
  %i.icz = load i8, ptr %i.icy, align 1, !tbaa !81 ; 2 uses
  %i.ida = zext i8 %i.icz to i64
  %i.idb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ida
  %i.idc = load i8, ptr %i.idb, align 1, !tbaa !81
  %i.idd = and i8 %i.idc, 12
  %.not3656 = icmp eq i8 %i.idd, 0
  br i1 %.not3656, label %bb.avp, label %.split.loop.exit5672.loopexit.split.loop.exit8338, !prof !24

bb.avp:                                           ; preds = %bb.avo
  %i.ide = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 12
  %i.idf = load i8, ptr %i.ide, align 1, !tbaa !81 ; 2 uses
  %i.idg = zext i8 %i.idf to i64
  %i.idh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.idg
  %i.idi = load i8, ptr %i.idh, align 1, !tbaa !81
  %i.idj = and i8 %i.idi, 12
  %.not3657 = icmp eq i8 %i.idj, 0
  br i1 %.not3657, label %bb.avq, label %.split.loop.exit5672.loopexit.split.loop.exit8335, !prof !24

bb.avq:                                           ; preds = %bb.avp
  %i.idk = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 13
  %i.idl = load i8, ptr %i.idk, align 1, !tbaa !81 ; 2 uses
  %i.idm = zext i8 %i.idl to i64
  %i.idn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.idm
  %i.ido = load i8, ptr %i.idn, align 1, !tbaa !81
  %i.idp = and i8 %i.ido, 12
  %.not3658 = icmp eq i8 %i.idp, 0
  br i1 %.not3658, label %bb.avr, label %.split.loop.exit5672.loopexit.split.loop.exit8332, !prof !24

bb.avr:                                           ; preds = %bb.avq
  %i.idq = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 14
  %i.idr = load i8, ptr %i.idq, align 1, !tbaa !81 ; 2 uses
  %i.ids = zext i8 %i.idr to i64
  %i.idt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ids
  %i.idu = load i8, ptr %i.idt, align 1, !tbaa !81
  %i.idv = and i8 %i.idu, 12
  %.not3659 = icmp eq i8 %i.idv, 0
  br i1 %.not3659, label %bb.avs, label %.split.loop.exit5672.loopexit.split.loop.exit8329, !prof !24

bb.avs:                                           ; preds = %bb.avr
  %i.idw = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 15
  %i.idx = load i8, ptr %i.idw, align 1, !tbaa !81 ; 2 uses
  %i.idy = zext i8 %i.idx to i64
  %i.idz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.idy
  %i.iea = load i8, ptr %i.idz, align 1, !tbaa !81
  %i.ieb = and i8 %i.iea, 12
  %.not3660 = icmp eq i8 %i.ieb, 0
  br i1 %.not3660, label %bb.avt, label %.split.loop.exit5672.loopexit.split.loop.exit, !prof !24

bb.avt:                                           ; preds = %bb.avs
  %i.iec = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 16 ; 3 uses
  %i.ied = load i8, ptr %i.iec, align 1, !tbaa !81 ; 2 uses
  %i.iee = zext i8 %i.ied to i64
  %i.ief = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.iee
  %i.ieg = load i8, ptr %i.ief, align 1, !tbaa !81
  %i.ieh = and i8 %i.ieg, 12
  %.not3645 = icmp eq i8 %i.ieh, 0
  br i1 %.not3645, label %.lr.ph5691, label %.split.loop.exit5672, !prof !160

.split.loop.exit5672.loopexit.split.loop.exit:    ; preds = %bb.avs
  %i.iei = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 15
  br label %.split.loop.exit5672

.split.loop.exit5672.loopexit.split.loop.exit8329: ; preds = %bb.avr
  %i.iej = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 14
  br label %.split.loop.exit5672

.split.loop.exit5672.loopexit.split.loop.exit8332: ; preds = %bb.avq
  %i.iek = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 13
  br label %.split.loop.exit5672

.split.loop.exit5672.loopexit.split.loop.exit8335: ; preds = %bb.avp
  %i.iel = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 12
  br label %.split.loop.exit5672

.split.loop.exit5672.loopexit.split.loop.exit8338: ; preds = %bb.avo
  %i.iem = getelementptr inbounds nuw i8, ptr %.1270.i5689, i64 11
  br label %.split.loop.exit5672

end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a

bb.axz:                                           ; preds = %bb.axj
  %.0.copyload.i1129 = load i64, ptr %.9.i619, align 1
  store i64 %.0.copyload.i1129, ptr %.2.i620, align 1
  %i.iqa = getelementptr inbounds nuw i8, ptr %.2.i620, i64 8
  %.0.copyload.i1081 = load i32, ptr %i.ink, align 1
  store i32 %.0.copyload.i1081, ptr %i.iqa, align 1
  %i.iqb = getelementptr inbounds nuw i8, ptr %.2.i620, i64 12
  br label %bb.ayd

bb.aya:                                           ; preds = %bb.axk
  %.0.copyload.i1130 = load i64, ptr %.9.i619, align 1
  store i64 %.0.copyload.i1130, ptr %.2.i620, align 1
  %i.iqc = getelementptr inbounds nuw i8, ptr %.2.i620, i64 8
  %.0.copyload.i1082 = load i32, ptr %i.ink, align 1
  store i32 %.0.copyload.i1082, ptr %i.iqc, align 1
  %i.iqd = getelementptr inbounds nuw i8, ptr %.2.i620, i64 12
  %.0.copyload.i1033 = load i16, ptr %i.ioi, align 1
  store i16 %.0.copyload.i1033, ptr %i.iqd, align 1
  %i.iqe = getelementptr inbounds nuw i8, ptr %.2.i620, i64 13
  br label %bb.ayd

bb.ayb:                                           ; preds = %bb.axl
  %.0.copyload.i1131 = load i64, ptr %.9.i619, align 1
  store i64 %.0.copyload.i1131, ptr %.2.i620, align 1
  %i.iqf = getelementptr inbounds nuw i8, ptr %.2.i620, i64 8
  %.0.copyload.i1083 = load i32, ptr %i.ink, align 1
  store i32 %.0.copyload.i1083, ptr %i.iqf, align 1
  %i.iqg = getelementptr inbounds nuw i8, ptr %.2.i620, i64 12
  %.0.copyload.i1034 = load i16, ptr %i.ioi, align 1
  store i16 %.0.copyload.i1034, ptr %i.iqg, align 1
  %i.iqh = getelementptr inbounds nuw i8, ptr %.2.i620, i64 14
  br label %bb.ayd

bb.ayc:                                           ; preds = %bb.axm
  %i.iqi = getelementptr inbounds nuw i8, ptr %.2.i620, i64 15
  br label %bb.ayd

bb.ayd:                                           ; preds = %bb.ayc, %bb.ayb, %bb.aya, %bb.axz, %bb.axy, %bb.axx, %bb.axw, %bb.axv, %bb.axu, %bb.axt, %bb.axs, %bb.axr, %bb.axq, %bb.axp, %bb.axo, %.backedge
  %.11.i621 = phi ptr [ %i.ipa, %bb.ayc ], [ %i.ipj, %bb.axo ], [ %i.iou, %bb.ayb ], [ %i.ioo, %bb.aya ], [ %i.ioi, %bb.axz ], [ %i.ioc, %bb.axy ], [ %i.inw, %bb.axx ], [ %i.inq, %bb.axw ], [ %i.ink, %bb.axv ], [ %i.ine, %bb.axu ], [ %i.imy, %bb.axt ], [ %i.ims, %bb.axs ], [ %i.imm, %bb.axr ], [ %i.img, %bb.axq ], [ %i.ima, %bb.axp ], [ %.9.i619, %.backedge ] ; 6 uses
  %.4.i622 = phi ptr [ %i.iqi, %bb.ayc ], [ %i.ipk, %bb.axo ], [ %i.iqh, %bb.ayb ], [ %i.iqe, %bb.aya ], [ %i.iqb, %bb.axz ], [ %i.ipz, %bb.axy ], [ %i.ipx, %bb.axx ], [ %i.ipv, %bb.axw ], [ %i.ipt, %bb.axv ], [ %i.ips, %bb.axu ], [ %i.ipr, %bb.axt ], [ %i.ipp, %bb.axs ], [ %i.ipn, %bb.axr ], [ %i.ipm, %bb.axq ], [ %i.ipl, %bb.axp ], [ %.2.i620, %.backedge ] ; 3 uses
  %i.iqj = load i8, ptr %.11.i621, align 1, !tbaa !81 ; 2 uses
  %.not288.i = icmp sgt i8 %i.iqj, -1
  br i1 %.not288.i, label %.preheader4017, label %.preheader4015

.preheader4015:                                   ; preds = %bb.ayd
  %storemerge.i6235717 = load i32, ptr %.11.i621, align 1 ; 4 uses
  %i.iqk = and i32 %storemerge.i6235717, 12632304
  %i.iql = icmp eq i32 %i.iqk, 8421600
  %i.iqm = trunc i32 %storemerge.i6235717 to i16  ; 2 uses
  br i1 %i.iql, label %.lr.ph5721, label %.critedge4.i

.lr.ph5721:                                       ; preds = %.preheader4015, %bb.aye
  %.0.copyload.i10356775 = phi i16 [ %i.iqs, %bb.aye ], [ %i.iqm, %.preheader4015 ] ; 2 uses
  %storemerge.i6235720 = phi i32 [ %storemerge.i623, %bb.aye ], [ %storemerge.i6235717, %.preheader4015 ] ; 4 uses
  %.5.i6255719 = phi ptr [ %i.iqo, %bb.aye ], [ %.4.i622, %.preheader4015 ] ; 4 uses
  %.12.i6245718 = phi ptr [ %i.iqp, %bb.aye ], [ %.11.i621, %.preheader4015 ] ; 3 uses
  %i.iqn = and i32 %storemerge.i6235720, 8207
  switch i32 %i.iqn, label %bb.aye [
    i32 8205, label %.critedge4.i
    i32 0, label %.critedge4.i
  ]

bb.aye:                                           ; preds = %.lr.ph5721
  store i32 %storemerge.i6235720, ptr %.5.i6255719, align 1
  %i.iqo = getelementptr inbounds nuw i8, ptr %.5.i6255719, i64 3 ; 2 uses
  %i.iqp = getelementptr inbounds nuw i8, ptr %.12.i6245718, i64 3 ; 3 uses
  %storemerge.i623 = load i32, ptr %i.iqp, align 1 ; 4 uses
  %i.iqq = and i32 %storemerge.i623, 12632304
  %i.iqr = icmp eq i32 %i.iqq, 8421600
  %i.iqs = trunc i32 %storemerge.i623 to i16      ; 2 uses
  br i1 %i.iqr, label %.lr.ph5721, label %.critedge4.i, !llvm.loop !196

.critedge4.i:                                     ; preds = %bb.aye, %.lr.ph5721, %.lr.ph5721, %.preheader4015
  %.0.copyload.i10356773 = phi i16 [ %i.iqm, %.preheader4015 ], [ %.0.copyload.i10356775, %.lr.ph5721 ], [ %.0.copyload.i10356775, %.lr.ph5721 ], [ %i.iqs, %bb.aye ]
  %.12.i624.lcssa = phi ptr [ %.11.i621, %.preheader4015 ], [ %.12.i6245718, %.lr.ph5721 ], [ %.12.i6245718, %.lr.ph5721 ], [ %i.iqp, %bb.aye ] ; 3 uses
  %.5.i625.lcssa = phi ptr [ %.4.i622, %.preheader4015 ], [ %.5.i6255719, %.lr.ph5721 ], [ %.5.i6255719, %.lr.ph5721 ], [ %i.iqo, %bb.aye ] ; 3 uses
  %storemerge.i623.lcssa = phi i32 [ %storemerge.i6235717, %.preheader4015 ], [ %storemerge.i6235720, %.lr.ph5721 ], [ %storemerge.i6235720, %.lr.ph5721 ], [ %storemerge.i623, %bb.aye ] ; 5 uses
  %i.iqt = and i32 %storemerge.i623.lcssa, 128
  %i.iqu = icmp eq i32 %i.iqt, 0
  br i1 %i.iqu, label %.backedge.backedge, label %.preheader4014

.preheader4014:                                   ; preds = %.critedge4.i
  %i.iqv = and i32 %storemerge.i623.lcssa, 49376
  %i.iqw = icmp eq i32 %i.iqv, 32960
  %i.iqx = and i32 %storemerge.i623.lcssa, 30
  %i.iqy = icmp ne i32 %i.iqx, 0
  %i.iqz = and i1 %i.iqw, %i.iqy
  br i1 %i.iqz, label %.lr.ph5737, label %.preheader4013

.preheader4013.loopexit:                          ; preds = %.lr.ph5737
  %i.ira = trunc i32 %.sroa.0.0.copyload.i959 to i16
  br label %.preheader4013

.preheader4013:                                   ; preds = %.preheader4013.loopexit, %.preheader4014
  %.0.copyload.i10356772 = phi i16 [ %.0.copyload.i10356773, %.preheader4014 ], [ %i.ira, %.preheader4013.loopexit ] ; 2 uses
  %.sroa.21.2.in.lcssa = phi i32 [ %storemerge.i623.lcssa, %.preheader4014 ], [ %.sroa.0.0.copyload.i959, %.preheader4013.loopexit ] ; 5 uses
  %.13.i626.lcssa = phi ptr [ %.12.i624.lcssa, %.preheader4014 ], [ %i.irk, %.preheader4013.loopexit ] ; 3 uses
  %.6.i627.lcssa = phi ptr [ %.5.i625.lcssa, %.preheader4014 ], [ %i.irj, %.preheader4013.loopexit ] ; 3 uses
  %i.irb = and i32 %.sroa.21.2.in.lcssa, -1061109512
  %i.irc = icmp ne i32 %i.irb, -2139062032
  %i.ird = and i32 %.sroa.21.2.in.lcssa, 12295
  %.not289.i5745 = icmp eq i32 %i.ird, 0
  %or.cond292.i5746 = or i1 %.not289.i5745, %i.irc
  br i1 %or.cond292.i5746, label %.critedge6.i, label %.lr.ph5751.preheader

.lr.ph5751.preheader:                             ; preds = %.preheader4013
  %i.ire = and i32 %.sroa.21.2.in.lcssa, 4
  %i.irf = icmp eq i32 %i.ire, 0
  %i.irg = and i32 %.sroa.21.2.in.lcssa, 12291
  %i.irh = icmp eq i32 %i.irg, 0
  %i.iri = or i1 %i.irf, %i.irh
  br i1 %i.iri, label %.lr.ph10195, label %.critedge6.i

.lr.ph5737:                                       ; preds = %.preheader4014, %.lr.ph5737
  %.sroa.02376.25736.in = phi i32 [ %.sroa.0.0.copyload.i959, %.lr.ph5737 ], [ %storemerge.i623.lcssa, %.preheader4014 ]
  %.6.i6275735 = phi ptr [ %i.irj, %.lr.ph5737 ], [ %.5.i625.lcssa, %.preheader4014 ] ; 2 uses
  %.13.i6265734 = phi ptr [ %i.irk, %.lr.ph5737 ], [ %.12.i624.lcssa, %.preheader4014 ]
  %.sroa.02376.25736 = trunc i32 %.sroa.02376.25736.in to i16
  store i16 %.sroa.02376.25736, ptr %.6.i6275735, align 1
  %i.irj = getelementptr inbounds nuw i8, ptr %.6.i6275735, i64 2 ; 2 uses
  %i.irk = getelementptr inbounds nuw i8, ptr %.13.i6265734, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i959 = load i32, ptr %i.irk, align 1 ; 5 uses
  %i.irl = and i32 %.sroa.0.0.copyload.i959, 49376
  %i.irm = icmp eq i32 %i.irl, 32960
  %i.irn = and i32 %.sroa.0.0.copyload.i959, 30
  %i.iro = icmp ne i32 %i.irn, 0
  %i.irp = and i1 %i.irm, %i.iro
  br i1 %i.irp, label %.lr.ph5737, label %.preheader4013.loopexit, !llvm.loop !197

.lr.ph5751:                                       ; preds = %.lr.ph10195
  %i.irq = and i32 %.sroa.0.0.copyload.i960, 4
  %i.irr = icmp eq i32 %i.irq, 0
  %i.irs = and i32 %.sroa.0.0.copyload.i960, 12291
  %i.irt = icmp eq i32 %i.irs, 0
  %i.iru = or i1 %i.irr, %i.irt
  br i1 %i.iru, label %.lr.ph10195, label %.critedge6.i.loopexit, !llvm.loop !198

.lr.ph10195:                                      ; preds = %.lr.ph5751.preheader, %.lr.ph5751
  %.14.i628574710194 = phi ptr [ %i.irw, %.lr.ph5751 ], [ %.13.i626.lcssa, %.lr.ph5751.preheader ]
  %.7.i629574810193 = phi ptr [ %i.irv, %.lr.ph5751 ], [ %.6.i627.lcssa, %.lr.ph5751.preheader ] ; 2 uses
  %.sroa.02376.0.insert.insert2400575010192 = phi i32 [ %.sroa.0.0.copyload.i960, %.lr.ph5751 ], [ %.sroa.21.2.in.lcssa, %.lr.ph5751.preheader ]
  store i32 %.sroa.02376.0.insert.insert2400575010192, ptr %.7.i629574810193, align 1
  %i.irv = getelementptr inbounds nuw i8, ptr %.7.i629574810193, i64 4 ; 3 uses
  %i.irw = getelementptr inbounds nuw i8, ptr %.14.i628574710194, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i960 = load i32, ptr %i.irw, align 1 ; 7 uses
  %i.irx = and i32 %.sroa.0.0.copyload.i960, -1061109512
  %i.iry = icmp ne i32 %i.irx, -2139062032
  %i.irz = and i32 %.sroa.0.0.copyload.i960, 12295
  %.not289.i = icmp eq i32 %i.irz, 0
  %or.cond292.i = or i1 %.not289.i, %i.iry
  br i1 %or.cond292.i, label %..critedge6.i.loopexit_crit_edge, label %.lr.ph5751, !llvm.loop !198

..critedge6.i.loopexit_crit_edge:                 ; preds = %.lr.ph10195
  %i.isa = trunc i32 %.sroa.0.0.copyload.i960 to i16
  br label %.critedge6.i, !llvm.loop !198

.critedge6.i.loopexit:                            ; preds = %.lr.ph5751
  %i.isb = trunc i32 %.sroa.0.0.copyload.i960 to i16
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.i.loopexit, %.lr.ph5751.preheader, %..critedge6.i.loopexit_crit_edge, %.preheader4013
  %.0.copyload.i10356770 = phi i16 [ %.0.copyload.i10356772, %.preheader4013 ], [ %i.isa, %..critedge6.i.loopexit_crit_edge ], [ %.0.copyload.i10356772, %.lr.ph5751.preheader ], [ %i.isb, %.critedge6.i.loopexit ]
  %.14.i628.lcssa = phi ptr [ %.13.i626.lcssa, %.preheader4013 ], [ %i.irw, %..critedge6.i.loopexit_crit_edge ], [ %.13.i626.lcssa, %.lr.ph5751.preheader ], [ %i.irw, %.critedge6.i.loopexit ] ; 4 uses
  %.7.i629.lcssa = phi ptr [ %.6.i627.lcssa, %.preheader4013 ], [ %i.irv, %..critedge6.i.loopexit_crit_edge ], [ %.6.i627.lcssa, %.lr.ph5751.preheader ], [ %i.irv, %.critedge6.i.loopexit ] ; 2 uses
  %i.isc = icmp eq ptr %.11.i621, %.14.i628.lcssa
  br i1 %i.isc, label %bb.ayf, label %.backedge.backedge, !prof !7

bb.ayf:                                           ; preds = %.critedge6.i
  br i1 %.not3511, label %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread, label %bb.axo

_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit: ; preds = %.split.loop.exit5672, %.preheader4017
  %.2271.i.lcssa.sink8467 = phi ptr [ %.0.i616, %.preheader4017 ], [ %.2271.i, %.split.loop.exit5672 ] ; 2 uses
  %.sink8463 = phi i64 [ 5, %.preheader4017 ], [ 13, %.split.loop.exit5672 ]
  %.7276.i.pn = phi ptr [ %.7276.i, %.preheader4017 ], [ %.2271.i, %.split.loop.exit5672 ]
  %i.isd = ptrtoint ptr %.2271.i.lcssa.sink8467 to i64
  %i.ise = ptrtoint ptr %i.iak to i64
  %i.isf = sub i64 %i.isd, %i.ise
  %i.isg = shl i64 %i.isf, 8
  %i.ish = or disjoint i64 %i.isg, %.sink8463
  store i64 %i.ish, ptr %.7498.i, align 8, !tbaa !79
  %i.isi = getelementptr inbounds nuw i8, ptr %.7498.i, i64 8
  store ptr %i.iak, ptr %i.isi, align 8, !tbaa !81
  store i8 0, ptr %.2271.i.lcssa.sink8467, align 1, !tbaa !81
  %storemerge3661 = getelementptr inbounds nuw i8, ptr %.7276.i.pn, i64 1
  store ptr %storemerge3661, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4046

bb.ayg:                                           ; preds = %bb.avb
  %i.isj = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not606.i214 = icmp ult ptr %i.isj, %.3468.i.ph
  br i1 %.not606.i214, label %bb.ayi, label %bb.ayh, !prof !24

bb.ayh:                                           ; preds = %bb.ayg
  %i.isk = lshr i64 %.2.i162.ph, 1
  %i.isl = add i64 %i.isk, %.2.i162.ph            ; 3 uses
  %i.ism = shl i64 %.2.i162.ph, 4
  %i.isn = shl i64 %i.isl, 4
  %i.iso = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.ism, i64 noundef %i.isn), !inline_history !220 ; 5 uses
  %.not607.i215 = icmp eq ptr %i.iso, null
  %.pre6799 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not607.i215, label %bb.btp, label %.thread3398

.thread3398:                                      ; preds = %bb.ayh
  %i.isp = ptrtoint ptr %i.isj to i64
  %i.isq = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.isr = sub i64 %i.isp, %i.isq
  %i.iss = getelementptr inbounds nuw i8, ptr %i.iso, i64 %i.isr
  %i.ist = ptrtoint ptr %.3530.i.ph to i64
  %i.isu = sub i64 %i.ist, %i.isq
  %i.isv = getelementptr inbounds nuw i8, ptr %i.iso, i64 %i.isu
  %i.isw = getelementptr [16 x i8], ptr %i.iso, i64 %i.isl
  %i.isx = getelementptr i8, ptr %i.isw, i64 -32
  br label %bb.ayi

bb.ayi:                                           ; preds = %.thread3398, %bb.ayg
  %i.isy = phi ptr [ %.pre6799, %.thread3398 ], [ %.promoted5528, %bb.ayg ] ; 3 uses
  %.9536.i = phi ptr [ %i.isv, %.thread3398 ], [ %.3530.i.ph, %bb.ayg ]
  %.9500.i = phi ptr [ %i.iss, %.thread3398 ], [ %i.isj, %bb.ayg ] ; 2 uses
  %.9474.i = phi ptr [ %i.isx, %.thread3398 ], [ %.3468.i.ph, %bb.ayg ]
  %.9457.i = phi ptr [ %i.iso, %.thread3398 ], [ %.3451.i.ph, %bb.ayg ] ; 2 uses
  %.5.i216 = phi i64 [ %i.isl, %.thread3398 ], [ %.2.i162.ph, %bb.ayg ]
  %.sroa.01.0.copyload.i1143 = load i32, ptr %i.isy, align 1
  %i.isz = icmp eq i32 %.sroa.01.0.copyload.i1143, 1702195828
  br i1 %i.isz, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit: ; preds = %bb.ayi
  %i.ita = add i64 %.1441.i.ph, 1
  store i64 11, ptr %.9500.i, align 8, !tbaa !79
  %i.itb = getelementptr inbounds nuw i8, ptr %i.isy, i64 4
  store ptr %i.itb, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4046

bb.ayj:                                           ; preds = %bb.avb
  %i.itc = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not604.i211 = icmp ult ptr %i.itc, %.3468.i.ph
  br i1 %.not604.i211, label %bb.ayl, label %bb.ayk, !prof !24

bb.ayk:                                           ; preds = %bb.ayj
  %i.itd = lshr i64 %.2.i162.ph, 1
  %i.ite = add i64 %i.itd, %.2.i162.ph            ; 3 uses
  %i.itf = shl i64 %.2.i162.ph, 4
  %i.itg = shl i64 %i.ite, 4
  %i.ith = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.itf, i64 noundef %i.itg), !inline_history !220 ; 5 uses
  %.not605.i212 = icmp eq ptr %i.ith, null
  %.pre6798 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not605.i212, label %bb.btp, label %.thread3404

.thread3404:                                      ; preds = %bb.ayk
  %i.iti = ptrtoint ptr %i.itc to i64
  %i.itj = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.itk = sub i64 %i.iti, %i.itj
  %i.itl = getelementptr inbounds nuw i8, ptr %i.ith, i64 %i.itk
  %i.itm = ptrtoint ptr %.3530.i.ph to i64
  %i.itn = sub i64 %i.itm, %i.itj
  %i.ito = getelementptr inbounds nuw i8, ptr %i.ith, i64 %i.itn
  %i.itp = getelementptr [16 x i8], ptr %i.ith, i64 %i.ite
  %i.itq = getelementptr i8, ptr %i.itp, i64 -32
  br label %bb.ayl

bb.ayl:                                           ; preds = %.thread3404, %bb.ayj
  %i.itr = phi ptr [ %.pre6798, %.thread3404 ], [ %.promoted5528, %bb.ayj ] ; 3 uses
  %.11538.i = phi ptr [ %i.ito, %.thread3404 ], [ %.3530.i.ph, %bb.ayj ]
  %.11502.i = phi ptr [ %i.itl, %.thread3404 ], [ %i.itc, %bb.ayj ] ; 2 uses
  %.11476.i = phi ptr [ %i.itq, %.thread3404 ], [ %.3468.i.ph, %bb.ayj ]
  %.11459.i = phi ptr [ %i.ith, %.thread3404 ], [ %.3451.i.ph, %bb.ayj ] ; 2 uses
  %.6.i213 = phi i64 [ %i.ite, %.thread3404 ], [ %.2.i162.ph, %bb.ayj ]
  %i.its = getelementptr inbounds nuw i8, ptr %i.itr, i64 1
  %.sroa.01.0.copyload.i1139 = load i32, ptr %i.its, align 1
  %i.itt = icmp eq i32 %.sroa.01.0.copyload.i1139, 1702063201
  br i1 %i.itt, label %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit: ; preds = %bb.ayl
  %i.itu = add i64 %.1441.i.ph, 1
  store i64 3, ptr %.11502.i, align 8, !tbaa !79
  %i.itv = getelementptr inbounds nuw i8, ptr %i.itr, i64 5
  store ptr %i.itv, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4046

bb.aym:                                           ; preds = %bb.avb
  %i.itw = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not602.i208 = icmp ult ptr %i.itw, %.3468.i.ph
  br i1 %.not602.i208, label %bb.ayo, label %bb.ayn, !prof !24

bb.ayn:                                           ; preds = %bb.aym
  %i.itx = lshr i64 %.2.i162.ph, 1
  %i.ity = add i64 %i.itx, %.2.i162.ph            ; 3 uses
  %i.itz = shl i64 %.2.i162.ph, 4
  %i.iua = shl i64 %i.ity, 4
  %i.iub = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.itz, i64 noundef %i.iua), !inline_history !220 ; 5 uses
  %.not603.i209 = icmp eq ptr %i.iub, null
  %.pre6797 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not603.i209, label %bb.btp, label %.thread3410

.thread3410:                                      ; preds = %bb.ayn
  %i.iuc = ptrtoint ptr %i.itw to i64
  %i.iud = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.iue = sub i64 %i.iuc, %i.iud
  %i.iuf = getelementptr inbounds nuw i8, ptr %i.iub, i64 %i.iue
  %i.iug = ptrtoint ptr %.3530.i.ph to i64
  %i.iuh = sub i64 %i.iug, %i.iud
  %i.iui = getelementptr inbounds nuw i8, ptr %i.iub, i64 %i.iuh
  %i.iuj = getelementptr [16 x i8], ptr %i.iub, i64 %i.ity
  %i.iuk = getelementptr i8, ptr %i.iuj, i64 -32
  br label %bb.ayo

bb.ayo:                                           ; preds = %.thread3410, %bb.aym
  %i.iul = phi ptr [ %.pre6797, %.thread3410 ], [ %.promoted5528, %bb.aym ] ; 8 uses
  %.13540.i = phi ptr [ %i.iui, %.thread3410 ], [ %.3530.i.ph, %bb.aym ] ; 3 uses
  %.13504.i = phi ptr [ %i.iuf, %.thread3410 ], [ %i.itw, %bb.aym ] ; 8 uses
  %.13478.i = phi ptr [ %i.iuk, %.thread3410 ], [ %.3468.i.ph, %bb.aym ] ; 3 uses
  %.13461.i = phi ptr [ %i.iub, %.thread3410 ], [ %.3451.i.ph, %bb.aym ] ; 7 uses
  %.7.i210 = phi i64 [ %i.ity, %.thread3410 ], [ %.2.i162.ph, %bb.aym ] ; 3 uses
  %i.ium = add i64 %.1441.i.ph, 1                 ; 3 uses
  %.sroa.01.0.copyload.i1135 = load i32, ptr %i.iul, align 1 ; 4 uses
  %i.iun = icmp eq i32 %.sroa.01.0.copyload.i1135, 1819047278
  %i.iuo = trunc i32 %.sroa.01.0.copyload.i1135 to i8
  %i.iup = lshr i32 %.sroa.01.0.copyload.i1135, 8
  %i.iuq = trunc i32 %i.iup to i8
  %i.iur = lshr i32 %.sroa.01.0.copyload.i1135, 16
  %i.ius = trunc i32 %i.iur to i8
  br i1 %i.iun, label %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit, label %bb.ayp, !prof !24

_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit: ; preds = %bb.ayo
  store i64 2, ptr %.13504.i, align 8, !tbaa !79
  %i.iut = getelementptr inbounds nuw i8, ptr %i.iul, i64 4
  store ptr %i.iut, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4046

bb.ayp:                                           ; preds = %bb.ayo
  br i1 %.not3680, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, label %bb.ayq, !prof !24

bb.ayq:                                           ; preds = %bb.ayp
  switch i8 %i.iuo, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.ayr
    i8 110, label %bb.ayr
  ]

bb.ayr:                                           ; preds = %bb.ayq, %bb.ayq
  switch i8 %i.iuq, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 65, label %bb.ays
    i8 97, label %bb.ays
  ]

bb.ays:                                           ; preds = %bb.ayr, %bb.ayr
  switch i8 %i.ius, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.ayt
    i8 110, label %bb.ayt
  ]

bb.ayt:                                           ; preds = %bb.ays, %bb.ays
  %i.iuu = getelementptr inbounds nuw i8, ptr %i.iul, i64 3 ; 2 uses
  store ptr %i.iuu, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.ayu, label %bb.ayx

bb.ayu:                                           ; preds = %bb.ayt
  %i.iuv = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i = icmp eq ptr %i.iuv, null
  br i1 %.not31.i, label %bb.ayw, label %bb.ayv

bb.ayv:                                           ; preds = %bb.ayu
  store i8 0, ptr %i.iuv, align 1, !tbaa !81
  br label %bb.ayw

bb.ayw:                                           ; preds = %bb.ayv, %bb.ayu
  store ptr %i.iuu, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %.13504.i, align 8, !tbaa !79
  %i.iuw = getelementptr inbounds nuw i8, ptr %.13504.i, i64 8
  store ptr %i.iul, ptr %i.iuw, align 8, !tbaa !81
  br label %.preheader4046

bb.ayx:                                           ; preds = %bb.ayt
  store i64 20, ptr %.13504.i, align 8, !tbaa !79
  %i.iux = getelementptr inbounds nuw i8, ptr %.13504.i, i64 8
  store i64 9221120237041090560, ptr %i.iux, align 8, !tbaa !81
  br label %.preheader4046

bb.ayy:                                           ; preds = %bb.avb
  %i.iuy = getelementptr inbounds nuw i8, ptr %.promoted5528, i64 1 ; 6 uses
  store ptr %i.iuy, ptr %i.e, align 8, !tbaa !92
  %i.iuz = icmp eq i64 %.1441.i.ph, 0
  br i1 %i.iuz, label %bb.bak, label %bb.ayz, !prof !24

bb.ayz:                                           ; preds = %bb.ayy
  %i.iva = and i32 %2, 4
  %.not3643 = icmp eq i32 %i.iva, 0
  br i1 %.not3643, label %.preheader4022, label %bb.bak, !prof !24

.preheader4022:                                   ; preds = %bb.ayz
  %i.ivb = load i8, ptr %i.iuy, align 1, !tbaa !81
  %.not600.i2075641 = icmp eq i8 %i.ivb, 44
  br i1 %.not600.i2075641, label %.loopexit4023, label %.lr.ph5642

.lr.ph5642:                                       ; preds = %.preheader4022, %.lr.ph5642
  %i.ivc = phi ptr [ %i.ivd, %.lr.ph5642 ], [ %i.iuy, %.preheader4022 ]
  %i.ivd = getelementptr inbounds i8, ptr %i.ivc, i64 -1 ; 4 uses
  store ptr %i.ivd, ptr %i.e, align 8, !tbaa !92
  %i.ive = load i8, ptr %i.ivd, align 1, !tbaa !81
  %.not600.i207 = icmp eq i8 %i.ive, 44
  br i1 %.not600.i207, label %.loopexit4023, label %.lr.ph5642, !llvm.loop !231

bb.aza:                                           ; preds = %bb.avb
  %i.ivf = and i8 %i.gan, 1
  %.not3679 = icmp eq i8 %i.ivf, 0
  br i1 %.not3679, label %bb.azb, label %.preheader4038

.preheader4038:                                   ; preds = %bb.aza, %.preheader4038
  %i.ivg = phi ptr [ %i.ivh, %.preheader4038 ], [ %.promoted5528, %bb.aza ]
  %i.ivh = getelementptr inbounds nuw i8, ptr %i.ivg, i64 1 ; 4 uses
  store ptr %i.ivh, ptr %i.e, align 8, !tbaa !92
  %i.ivi = load i8, ptr %i.ivh, align 1, !tbaa !81
  %i.ivj = zext i8 %i.ivi to i64
  %i.ivk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ivj
  %i.ivl = load i8, ptr %i.ivk, align 1, !tbaa !81
  %i.ivm = and i8 %i.ivl, 1
  %.not3682 = icmp eq i8 %i.ivm, 0
  br i1 %.not3682, label %.backedge4043.backedge, label %.preheader4038, !llvm.loop !232

bb.azb:                                           ; preds = %bb.aza
  br i1 %.not3680, label %bb.bab, label %bb.azc, !prof !24

bb.azc:                                           ; preds = %bb.azb
  switch i8 %i.gak, label %bb.bab [
    i8 105, label %bb.azd
    i8 73, label %bb.azd
    i8 78, label %bb.azd
  ]

bb.azd:                                           ; preds = %bb.azc, %bb.azc, %bb.azc
  %i.ivn = getelementptr inbounds nuw i8, ptr %.3494.i.ph, i64 16 ; 3 uses
  %.not597.i = icmp ult ptr %i.ivn, %.3468.i.ph
  br i1 %.not597.i, label %bb.azf, label %bb.aze, !prof !24

bb.aze:                                           ; preds = %bb.azd
  %i.ivo = lshr i64 %.2.i162.ph, 1
  %i.ivp = add i64 %i.ivo, %.2.i162.ph            ; 3 uses
  %i.ivq = shl i64 %.2.i162.ph, 4
  %i.ivr = shl i64 %i.ivp, 4
  %i.ivs = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3451.i.ph, i64 noundef %i.ivq, i64 noundef %i.ivr), !inline_history !220 ; 5 uses
  %.not598.i220 = icmp eq ptr %i.ivs, null
  %.pre6796 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 3 uses
  br i1 %.not598.i220, label %bb.btp, label %.thread3417

.thread3417:                                      ; preds = %bb.aze
  %i.ivt = ptrtoint ptr %i.ivn to i64
  %i.ivu = ptrtoint ptr %.3451.i.ph to i64        ; 2 uses
  %i.ivv = sub i64 %i.ivt, %i.ivu
  %i.ivw = getelementptr inbounds nuw i8, ptr %i.ivs, i64 %i.ivv
  %i.ivx = ptrtoint ptr %.3530.i.ph to i64
  %i.ivy = sub i64 %i.ivx, %i.ivu
  %i.ivz = getelementptr inbounds nuw i8, ptr %i.ivs, i64 %i.ivy
  %i.iwa = getelementptr [16 x i8], ptr %i.ivs, i64 %i.ivp
  %i.iwb = getelementptr i8, ptr %i.iwa, i64 -32
  %.pre6777 = load i8, ptr %.pre6796, align 1, !tbaa !81
  br label %bb.azf

bb.azf:                                           ; preds = %.thread3417, %bb.azd
  %i.iwc = phi i8 [ %.pre6777, %.thread3417 ], [ %i.gak, %bb.azd ] ; 2 uses
  %i.iwd = phi ptr [ %.pre6796, %.thread3417 ], [ %.promoted5528, %bb.azd ] ; 18 uses
  %.15542.i = phi ptr [ %i.ivz, %.thread3417 ], [ %.3530.i.ph, %bb.azd ] ; 4 uses
  %.15506.i = phi ptr [ %i.ivw, %.thread3417 ], [ %i.ivn, %bb.azd ] ; 12 uses
  %.15480.i = phi ptr [ %i.iwb, %.thread3417 ], [ %.3468.i.ph, %bb.azd ] ; 4 uses
  %.15463.i = phi ptr [ %i.ivs, %.thread3417 ], [ %.3451.i.ph, %bb.azd ] ; 8 uses
  %.8.i221 = phi i64 [ %i.ivp, %.thread3417 ], [ %.2.i162.ph, %bb.azd ] ; 4 uses
  %i.iwe = add i64 %.1441.i.ph, 1                 ; 4 uses
  switch i8 %i.iwc, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 73, label %bb.azg
    i8 105, label %bb.azg
    i8 78, label %bb.azu
    i8 110, label %bb.azu
  ]

bb.azg:                                           ; preds = %bb.azf, %bb.azf
  %i.iwf = getelementptr inbounds nuw i8, ptr %i.iwd, i64 1
  %i.iwg = load i8, ptr %i.iwf, align 1, !tbaa !81
  switch i8 %i.iwg, label %bb.azt [
    i8 78, label %bb.azh
    i8 110, label %bb.azh
  ]

bb.azh:                                           ; preds = %bb.azg, %bb.azg
  %i.iwh = getelementptr inbounds nuw i8, ptr %i.iwd, i64 2
  %i.iwi = load i8, ptr %i.iwh, align 1, !tbaa !81
  switch i8 %i.iwi, label %bb.azt [
    i8 70, label %bb.azi
    i8 102, label %bb.azi
  ]

bb.azi:                                           ; preds = %bb.azh, %bb.azh
  %i.iwj = getelementptr inbounds nuw i8, ptr %i.iwd, i64 3 ; 6 uses
  %i.iwk = load i8, ptr %i.iwj, align 1, !tbaa !81
  switch i8 %i.iwk, label %bb.azo [
    i8 73, label %bb.azj
    i8 105, label %bb.azj
  ]

bb.azj:                                           ; preds = %bb.azi, %bb.azi
  %i.iwl = getelementptr inbounds nuw i8, ptr %i.iwd, i64 4
  %i.iwm = load i8, ptr %i.iwl, align 1, !tbaa !81
  switch i8 %i.iwm, label %bb.azo [
    i8 78, label %bb.azk
    i8 110, label %bb.azk
  ]

bb.azk:                                           ; preds = %bb.azj, %bb.azj
  %i.iwn = getelementptr inbounds nuw i8, ptr %i.iwd, i64 5
  %i.iwo = load i8, ptr %i.iwn, align 1, !tbaa !81
  switch i8 %i.iwo, label %bb.azo [
    i8 73, label %bb.azl
    i8 105, label %bb.azl
  ]

bb.azl:                                           ; preds = %bb.azk, %bb.azk
  %i.iwp = getelementptr inbounds nuw i8, ptr %i.iwd, i64 6
  %i.iwq = load i8, ptr %i.iwp, align 1, !tbaa !81
  switch i8 %i.iwq, label %bb.azo [
    i8 84, label %bb.azm
    i8 116, label %bb.azm
  ]

bb.azm:                                           ; preds = %bb.azl, %bb.azl
  %i.iwr = getelementptr inbounds nuw i8, ptr %i.iwd, i64 7
  %i.iws = load i8, ptr %i.iwr, align 1, !tbaa !81
  switch i8 %i.iws, label %bb.azo [
    i8 89, label %bb.azn
    i8 121, label %bb.azn
  ]

bb.azn:                                           ; preds = %bb.azm, %bb.azm
  %i.iwt = getelementptr inbounds nuw i8, ptr %i.iwd, i64 8
  br label %bb.azo

bb.azo:                                           ; preds = %bb.azn, %bb.azm, %bb.azl, %bb.azk, %bb.azj, %bb.azi
  %.037.i1156 = phi ptr [ %i.iwt, %bb.azn ], [ %i.iwj, %bb.azm ], [ %i.iwj, %bb.azl ], [ %i.iwj, %bb.azk ], [ %i.iwj, %bb.azj ], [ %i.iwj, %bb.azi ] ; 3 uses
  store ptr %.037.i1156, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.azp, label %bb.azs

bb.azp:                                           ; preds = %bb.azo
  %i.iwu = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not48.i1158 = icmp eq ptr %i.iwu, null
  br i1 %.not48.i1158, label %bb.azr, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  store i8 0, ptr %i.iwu, align 1, !tbaa !81
  br label %bb.azr

bb.azr:                                           ; preds = %bb.azq, %bb.azp
  store ptr %.037.i1156, ptr %i.g, align 8, !tbaa !92
  %i.iwv = ptrtoint ptr %.037.i1156 to i64
  %i.iww = ptrtoint ptr %i.iwd to i64
  %i.iwx = sub i64 %i.iwv, %i.iww
  %i.iwy = shl i64 %i.iwx, 8
  %i.iwz = or disjoint i64 %i.iwy, 1
  store i64 %i.iwz, ptr %.15506.i, align 8, !tbaa !79
  %i.ixa = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store ptr %i.iwd, ptr %i.ixa, align 8, !tbaa !81
  br label %.preheader4046

bb.azs:                                           ; preds = %bb.azo
  store i64 20, ptr %.15506.i, align 8, !tbaa !79
  %i.ixb = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store i64 9218868437227405312, ptr %i.ixb, align 8, !tbaa !81
  br label %.preheader4046

bb.azt:                                           ; preds = %bb.azh, %bb.azg
  switch i8 %i.iwc, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 78, label %bb.azu
    i8 110, label %bb.azu
  ]

bb.azu:                                           ; preds = %bb.azf, %bb.azf, %bb.azt, %bb.azt
  %i.ixc = getelementptr inbounds nuw i8, ptr %i.iwd, i64 1
  %i.ixd = load i8, ptr %i.ixc, align 1, !tbaa !81
  switch i8 %i.ixd, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 65, label %bb.azv
    i8 97, label %bb.azv
  ]

bb.azv:                                           ; preds = %bb.azu, %bb.azu
  %i.ixe = getelementptr inbounds nuw i8, ptr %i.iwd, i64 2
  %i.ixf = load i8, ptr %i.ixe, align 1, !tbaa !81
  switch i8 %i.ixf, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 78, label %bb.azw
    i8 110, label %bb.azw
  ]

bb.azw:                                           ; preds = %bb.azv, %bb.azv
  %i.ixg = getelementptr inbounds nuw i8, ptr %i.iwd, i64 3 ; 2 uses
  store ptr %i.ixg, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.azx, label %bb.baa

bb.azx:                                           ; preds = %bb.azw
  %i.ixh = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i.i892 = icmp eq ptr %i.ixh, null
  br i1 %.not31.i.i892, label %bb.azz, label %bb.azy

bb.azy:                                           ; preds = %bb.azx
  store i8 0, ptr %i.ixh, align 1, !tbaa !81
  br label %bb.azz

bb.azz:                                           ; preds = %bb.azy, %bb.azx
  store ptr %i.ixg, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %.15506.i, align 8, !tbaa !79
  %i.ixi = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store ptr %i.iwd, ptr %i.ixi, align 8, !tbaa !81
  br label %.preheader4046

bb.baa:                                           ; preds = %bb.azw
  store i64 20, ptr %.15506.i, align 8, !tbaa !79
  %i.ixj = getelementptr inbounds nuw i8, ptr %.15506.i, i64 8
  store i64 9221120237041090560, ptr %i.ixj, align 8, !tbaa !81
  br label %.preheader4046

bb.bab:                                           ; preds = %bb.azc, %bb.azb
  br i1 %.not3681, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bac, !prof !24

bb.bac:                                           ; preds = %bb.bab
  %i.ixk = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6764 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.ixk, label %.backedge4043.backedge, label %bb.bad

.backedge4043.backedge:                           ; preds = %.preheader4038, %bb.bac
  %.promoted5528.be = phi ptr [ %.pre6764, %bb.bac ], [ %i.ivh, %.preheader4038 ]
  br label %.backedge4043

bb.bad:                                           ; preds = %bb.bac
  %.sroa.01.0.copyload.i = load i16, ptr %.pre6764, align 1
  %i.ixl = icmp eq i16 %.sroa.01.0.copyload.i, 10799
  br i1 %i.ixl, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

.backedge4048:                                    ; preds = %.backedge4048.backedge, %.preheader4046
  %.promoted5527 = phi ptr [ %.pre6763, %.preheader4046 ], [ %.promoted5527.be, %.backedge4048.backedge ] ; 5 uses
  %i.ixm = load i8, ptr %.promoted5527, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.ixm, label %bb.bag [
    i8 44, label %bb.bae
    i8 93, label %bb.baf
  ]

bb.bae:                                           ; preds = %.backedge4048
  %i.ixn = getelementptr inbounds nuw i8, ptr %.promoted5527, i64 1 ; 2 uses
  store ptr %i.ixn, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4040

bb.baf:                                           ; preds = %.backedge4048
  %i.ixo = getelementptr inbounds nuw i8, ptr %.promoted5527, i64 1 ; 2 uses
  store ptr %i.ixo, ptr %i.e, align 8, !tbaa !92
  br label %bb.bak

bb.bag:                                           ; preds = %.backedge4048
  %i.ixp = zext i8 %i.ixm to i64
  %i.ixq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ixp
  %i.ixr = load i8, ptr %i.ixq, align 1, !tbaa !81
  %i.ixs = and i8 %i.ixr, 1
  %.not3737 = icmp eq i8 %i.ixs, 0
  br i1 %.not3737, label %bb.bah, label %.preheader4044

.preheader4044:                                   ; preds = %bb.bag, %.preheader4044
  %i.ixt = phi ptr [ %i.ixu, %.preheader4044 ], [ %.promoted5527, %bb.bag ]
  %i.ixu = getelementptr inbounds nuw i8, ptr %i.ixt, i64 1 ; 4 uses
  store ptr %i.ixu, ptr %i.e, align 8, !tbaa !92
  %i.ixv = load i8, ptr %i.ixu, align 1, !tbaa !81
  %i.ixw = zext i8 %i.ixv to i64
  %i.ixx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ixw
  %i.ixy = load i8, ptr %i.ixx, align 1, !tbaa !81
  %i.ixz = and i8 %i.ixy, 1
  %.not3739 = icmp eq i8 %i.ixz, 0
  br i1 %.not3739, label %.backedge4048.backedge, label %.preheader4044, !llvm.loop !233

bb.bah:                                           ; preds = %bb.bag
  br i1 %.not3738, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bai, !prof !24

bb.bai:                                           ; preds = %bb.bah
  %i.iya = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6762 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.iya, label %.backedge4048.backedge, label %bb.baj

.backedge4048.backedge:                           ; preds = %.preheader4044, %bb.bai
  %.promoted5527.be = phi ptr [ %.pre6762, %bb.bai ], [ %i.ixu, %.preheader4044 ]
  br label %.backedge4048

bb.baj:                                           ; preds = %bb.bai
  %.sroa.01.0.copyload.i568 = load i16, ptr %.pre6762, align 1
  %i.iyb = icmp eq i16 %.sroa.01.0.copyload.i568, 10799
  br i1 %i.iyb, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

bb.bak:                                           ; preds = %bb.baf, %bb.ayz, %bb.ayy
  %i.iyc = phi ptr [ %i.iuy, %bb.ayy ], [ %i.iuy, %bb.ayz ], [ %i.ixo, %bb.baf ]
  %.17544.i = phi ptr [ %.3530.i.ph, %bb.ayy ], [ %.3530.i.ph, %bb.ayz ], [ %.16543.i.ph, %bb.baf ] ; 4 uses
  %.17508.i = phi ptr [ %.3494.i.ph, %bb.ayy ], [ %.3494.i.ph, %bb.ayz ], [ %.16507.i.ph, %bb.baf ] ; 4 uses
  %.17482.i = phi ptr [ %.3468.i.ph, %bb.ayy ], [ %.3468.i.ph, %bb.ayz ], [ %.16481.i.ph, %bb.baf ] ; 2 uses
  %.17.i185 = phi ptr [ %.3451.i.ph, %bb.ayy ], [ %.3451.i.ph, %bb.ayz ], [ %.16464.i.ph, %bb.baf ] ; 3 uses
  %.3443.i = phi i64 [ 0, %bb.ayy ], [ %.1441.i.ph, %bb.ayz ], [ %.2442.i.ph, %bb.baf ]
  %.10.i186 = phi i64 [ %.2.i162.ph, %bb.ayy ], [ %.2.i162.ph, %bb.ayz ], [ %.9.i184.ph, %bb.baf ] ; 2 uses
  %i.iyd = getelementptr inbounds nuw i8, ptr %.17544.i, i64 8 ; 2 uses
  %i.iye = load i64, ptr %i.iyd, align 8, !tbaa !81 ; 2 uses
  %i.iyf = ptrtoint ptr %.17508.i to i64
  %i.iyg = ptrtoint ptr %.17544.i to i64
  %reass.sub5792 = sub i64 %i.iyf, %i.iyg
  %i.iyh = add i64 %reass.sub5792, 16
  store i64 %i.iyh, ptr %i.iyd, align 8, !tbaa !81
  %i.iyi = shl i64 %.3443.i, 8
  %i.iyj = or disjoint i64 %i.iyi, 6
  store i64 %i.iyj, ptr %.17544.i, align 8, !tbaa !79
  %i.iyk = icmp eq i64 %i.iye, 0
  br i1 %i.iyk, label %bb.btd, label %bb.bal, !prof !7

bb.bal:                                           ; preds = %bb.bak
  %i.iyl = sub i64 0, %i.iye
  %i.iym = getelementptr inbounds i8, ptr %.17544.i, i64 %i.iyl ; 3 uses
  %i.iyn = load i64, ptr %i.iym, align 8, !tbaa !79 ; 2 uses
  %i.iyo = lshr i64 %i.iyn, 8                     ; 2 uses
  %i.iyp = and i64 %i.iyn, 7
  %i.iyq = icmp eq i64 %i.iyp, 7
  br i1 %i.iyq, label %.preheader4051, label %.preheader4046

.loopexit4041:                                    ; preds = %bb.brg, %.backedge4043
  %.pn617.i = phi ptr [ %.promoted5528, %.backedge4043 ], [ %i.kma, %bb.brg ]
  %.18545.i = phi ptr [ %.3530.i.ph, %.backedge4043 ], [ %.23550.i, %bb.brg ] ; 4 uses
  %.18509.i = phi ptr [ %.3494.i.ph, %.backedge4043 ], [ %.23514.i, %bb.brg ]
  %.18483.i = phi ptr [ %.3468.i.ph, %.backedge4043 ], [ %.23488.i, %bb.brg ] ; 2 uses
  %.18.i172 = phi ptr [ %.3451.i.ph, %.backedge4043 ], [ %.23.i199, %bb.brg ] ; 4 uses
  %.4444.i = phi i64 [ %.1441.i.ph, %.backedge4043 ], [ %i.jah, %bb.brg ]
  %.11.i173 = phi i64 [ %.2.i162.ph, %.backedge4043 ], [ %.14.i200, %bb.brg ] ; 4 uses
  %storemerge596.i = getelementptr inbounds nuw i8, ptr %.pn617.i, i64 1 ; 2 uses
  store ptr %storemerge596.i, ptr %i.e, align 8, !tbaa !92
  %i.iyr = shl i64 %.4444.i, 8
  %i.iys = add i64 %i.iyr, 256
  %i.iyt = load i64, ptr %.18545.i, align 8, !tbaa !79
  %i.iyu = and i64 %i.iyt, 255
  %i.iyv = or disjoint i64 %i.iyu, %i.iys
  store i64 %i.iyv, ptr %.18545.i, align 8, !tbaa !79
  %i.iyw = getelementptr inbounds nuw i8, ptr %.18509.i, i64 16 ; 3 uses
  %.not618.i = icmp ult ptr %i.iyw, %.18483.i
  br i1 %.not618.i, label %bb.ban, label %bb.bam, !prof !24

bb.bam:                                           ; preds = %.loopexit4041
  %i.iyx = lshr i64 %.11.i173, 1
  %i.iyy = add i64 %i.iyx, %.11.i173              ; 3 uses
  %i.iyz = shl i64 %.11.i173, 4
  %i.iza = shl i64 %i.iyy, 4
  %i.izb = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.18.i172, i64 noundef %i.iyz, i64 noundef %i.iza), !inline_history !220 ; 5 uses
  %.not619.i174 = icmp eq ptr %i.izb, null
  %.pre6795 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not619.i174, label %bb.btp, label %.thread3425

.thread3425:                                      ; preds = %bb.bam
  %i.izc = ptrtoint ptr %i.iyw to i64
  %i.izd = ptrtoint ptr %.18.i172 to i64          ; 2 uses
  %i.ize = sub i64 %i.izc, %i.izd
  %i.izf = getelementptr inbounds nuw i8, ptr %i.izb, i64 %i.ize
  %i.izg = ptrtoint ptr %.18545.i to i64
  %i.izh = sub i64 %i.izg, %i.izd
  %i.izi = getelementptr inbounds nuw i8, ptr %i.izb, i64 %i.izh
  %i.izj = getelementptr [16 x i8], ptr %i.izb, i64 %i.iyy
  %i.izk = getelementptr i8, ptr %i.izj, i64 -32
  br label %bb.ban

bb.ban:                                           ; preds = %.thread3425, %.loopexit4041
  %.pre6735.pre = phi ptr [ %.pre6795, %.thread3425 ], [ %storemerge596.i, %.loopexit4041 ]
  %.20547.i = phi ptr [ %i.izi, %.thread3425 ], [ %.18545.i, %.loopexit4041 ]
  %.20511.i = phi ptr [ %i.izf, %.thread3425 ], [ %i.iyw, %.loopexit4041 ] ; 5 uses
  %.20485.i = phi ptr [ %i.izk, %.thread3425 ], [ %.18483.i, %.loopexit4041 ]
  %.20.i176 = phi ptr [ %i.izb, %.thread3425 ], [ %.18.i172, %.loopexit4041 ]
  %.12.i177 = phi i64 [ %i.iyy, %.thread3425 ], [ %.11.i173, %.loopexit4041 ]
  store i64 7, ptr %.20511.i, align 8, !tbaa !79
  %i.izl = ptrtoint ptr %.20511.i to i64
  %i.izm = ptrtoint ptr %.20547.i to i64
  %i.izn = sub i64 %i.izl, %i.izm
  %i.izo = getelementptr inbounds nuw i8, ptr %.20511.i, i64 8
  store i64 %i.izn, ptr %i.izo, align 8, !tbaa !81
  br label %.preheader4102

.preheader4102:                                   ; preds = %bb.akr, %bb.ban, %bb.bsv
  %.pre6735 = phi ptr [ %i.mnk, %bb.bsv ], [ %.pre6735.pre, %bb.ban ], [ %i.ao, %bb.akr ]
  %.21548.i.ph = phi ptr [ %.24551.i.ph, %bb.bsv ], [ %.20511.i, %bb.ban ], [ %i.fzd, %bb.akr ] ; 4 uses
  %.21512.i.ph = phi ptr [ %.24515.i.ph, %bb.bsv ], [ %.20511.i, %bb.ban ], [ %i.fzd, %bb.akr ] ; 3 uses
  %.21486.i.ph = phi ptr [ %.24489.i.ph, %bb.bsv ], [ %.20485.i, %bb.ban ], [ %i.fzc, %bb.akr ] ; 4 uses
  %.21.i178.ph = phi ptr [ %.24.i187.ph, %bb.bsv ], [ %.20.i176, %bb.ban ], [ %i.fza, %bb.akr ] ; 11 uses
  %.5445.i.ph = phi i64 [ %.6446.i.ph, %bb.bsv ], [ 0, %bb.ban ], [ 0, %bb.akr ] ; 9 uses
  %.13.i179.ph = phi i64 [ %.15.i188.ph, %bb.bsv ], [ %.12.i177, %bb.ban ], [ %i.fyy, %bb.akr ] ; 6 uses
  %i.izp = and i32 %2, 8
  %.not3746 = icmp eq i32 %i.izp, 0               ; 3 uses
  br label %.backedge4104

.backedge4104:                                    ; preds = %.backedge4104.backedge, %.preheader4102
  %.promoted5172 = phi ptr [ %.pre6735, %.preheader4102 ], [ %.promoted5172.be, %.backedge4104.backedge ] ; 5 uses
  %i.izq = load i8, ptr %.promoted5172, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.izq, label %bb.bdu [
    i8 34, label %bb.bao
    i8 125, label %bb.bds
  ], !prof !195

bb.bao:                                           ; preds = %.backedge4104
  %i.izr = getelementptr inbounds nuw i8, ptr %.21512.i.ph, i64 16 ; 3 uses
  %.not594.i196 = icmp ult ptr %i.izr, %.21486.i.ph
  br i1 %.not594.i196, label %bb.baq, label %bb.bap, !prof !24

bb.bap:                                           ; preds = %bb.bao
  %i.izs = lshr i64 %.13.i179.ph, 1
  %i.izt = add i64 %i.izs, %.13.i179.ph           ; 3 uses
  %i.izu = shl i64 %.13.i179.ph, 4
  %i.izv = shl i64 %i.izt, 4
  %i.izw = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.21.i178.ph, i64 noundef %i.izu, i64 noundef %i.izv), !inline_history !220 ; 5 uses
  %.not595.i197 = icmp eq ptr %i.izw, null
  %.pre6794 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not595.i197, label %bb.btp, label %.thread3431

.thread3431:                                      ; preds = %bb.bap
  %i.izx = ptrtoint ptr %i.izr to i64
  %i.izy = ptrtoint ptr %.21.i178.ph to i64       ; 2 uses
  %i.izz = sub i64 %i.izx, %i.izy
  %i.jaa = getelementptr inbounds nuw i8, ptr %i.izw, i64 %i.izz
  %i.jab = ptrtoint ptr %.21548.i.ph to i64
  %i.jac = sub i64 %i.jab, %i.izy
  %i.jad = getelementptr inbounds nuw i8, ptr %i.izw, i64 %i.jac
  %i.jae = getelementptr [16 x i8], ptr %i.izw, i64 %i.izt
  %i.jaf = getelementptr i8, ptr %i.jae, i64 -32
  br label %bb.baq

bb.baq:                                           ; preds = %.thread3431, %bb.bao
  %i.jag = phi ptr [ %.pre6794, %.thread3431 ], [ %.promoted5172, %bb.bao ]
  %.23550.i = phi ptr [ %i.jad, %.thread3431 ], [ %.21548.i.ph, %bb.bao ] ; 39 uses
  %.23514.i = phi ptr [ %i.jaa, %.thread3431 ], [ %i.izr, %bb.bao ] ; 63 uses
  %.23488.i = phi ptr [ %i.jaf, %.thread3431 ], [ %.21486.i.ph, %bb.bao ] ; 39 uses
  %.23.i199 = phi ptr [ %i.izw, %.thread3431 ], [ %.21.i178.ph, %bb.bao ] ; 78 uses
  %.14.i200 = phi i64 [ %i.izt, %.thread3431 ], [ %.13.i179.ph, %bb.bao ] ; 39 uses
  %i.jah = add i64 %.5445.i.ph, 1                 ; 2 uses
  %i.jai = getelementptr inbounds nuw i8, ptr %i.jag, i64 1 ; 3 uses
  br label %.backedge4097

.backedge4097:                                    ; preds = %.backedge4097.backedge, %bb.baq
  %.0269.i674 = phi ptr [ %i.jai, %bb.baq ], [ %.0269.i674.be, %.backedge4097.backedge ] ; 3 uses
  %i.jaj = load i8, ptr %.0269.i674, align 1, !tbaa !81 ; 2 uses
  %i.jak = zext i8 %i.jaj to i64
  %i.jal = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jak
  %i.jam = load i8, ptr %i.jal, align 1, !tbaa !81
  %i.jan = and i8 %i.jam, 12
  %.not35135221 = icmp eq i8 %i.jan, 0
  br i1 %.not35135221, label %.lr.ph5224, label %.split.loop.exit5205, !prof !159

.lr.ph5224:                                       ; preds = %.backedge4097, %bb.bbf
  %.1270.i6755222 = phi ptr [ %i.jea, %bb.bbf ], [ %.0269.i674, %.backedge4097 ] ; 31 uses
  %i.jao = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 1
  %i.jap = load i8, ptr %i.jao, align 1, !tbaa !81 ; 2 uses
  %i.jaq = zext i8 %i.jap to i64
  %i.jar = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jaq
  %i.jas = load i8, ptr %i.jar, align 1, !tbaa !81
  %i.jat = and i8 %i.jas, 12
  %.not3514 = icmp eq i8 %i.jat, 0
  br i1 %.not3514, label %bb.bar, label %.split.loop.exit5205.loopexit.split.loop.exit8248, !prof !24

bb.bar:                                           ; preds = %.lr.ph5224
  %i.jau = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 2
  %i.jav = load i8, ptr %i.jau, align 1, !tbaa !81 ; 2 uses
  %i.jaw = zext i8 %i.jav to i64
  %i.jax = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jaw
  %i.jay = load i8, ptr %i.jax, align 1, !tbaa !81
  %i.jaz = and i8 %i.jay, 12
  %.not3515 = icmp eq i8 %i.jaz, 0
  br i1 %.not3515, label %bb.bas, label %.split.loop.exit5205.loopexit.split.loop.exit8245, !prof !24

bb.bas:                                           ; preds = %bb.bar
  %i.jba = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 3
  %i.jbb = load i8, ptr %i.jba, align 1, !tbaa !81 ; 2 uses
  %i.jbc = zext i8 %i.jbb to i64
  %i.jbd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jbc
  %i.jbe = load i8, ptr %i.jbd, align 1, !tbaa !81
  %i.jbf = and i8 %i.jbe, 12
  %.not3516 = icmp eq i8 %i.jbf, 0
  br i1 %.not3516, label %bb.bat, label %.split.loop.exit5205.loopexit.split.loop.exit8242, !prof !24

bb.bat:                                           ; preds = %bb.bas
  %i.jbg = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 4
  %i.jbh = load i8, ptr %i.jbg, align 1, !tbaa !81 ; 2 uses
  %i.jbi = zext i8 %i.jbh to i64
  %i.jbj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jbi
  %i.jbk = load i8, ptr %i.jbj, align 1, !tbaa !81
  %i.jbl = and i8 %i.jbk, 12
  %.not3517 = icmp eq i8 %i.jbl, 0
  br i1 %.not3517, label %bb.bau, label %.split.loop.exit5205.loopexit.split.loop.exit8239, !prof !24

bb.bau:                                           ; preds = %bb.bat
  %i.jbm = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 5
  %i.jbn = load i8, ptr %i.jbm, align 1, !tbaa !81 ; 2 uses
  %i.jbo = zext i8 %i.jbn to i64
  %i.jbp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jbo
  %i.jbq = load i8, ptr %i.jbp, align 1, !tbaa !81
  %i.jbr = and i8 %i.jbq, 12
  %.not3518 = icmp eq i8 %i.jbr, 0
  br i1 %.not3518, label %bb.bav, label %.split.loop.exit5205.loopexit.split.loop.exit8236, !prof !24

bb.bav:                                           ; preds = %bb.bau
  %i.jbs = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 6
  %i.jbt = load i8, ptr %i.jbs, align 1, !tbaa !81 ; 2 uses
  %i.jbu = zext i8 %i.jbt to i64
  %i.jbv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jbu
  %i.jbw = load i8, ptr %i.jbv, align 1, !tbaa !81
  %i.jbx = and i8 %i.jbw, 12
  %.not3519 = icmp eq i8 %i.jbx, 0
  br i1 %.not3519, label %bb.baw, label %.split.loop.exit5205.loopexit.split.loop.exit8233, !prof !24

bb.baw:                                           ; preds = %bb.bav
  %i.jby = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 7
  %i.jbz = load i8, ptr %i.jby, align 1, !tbaa !81 ; 2 uses
  %i.jca = zext i8 %i.jbz to i64
  %i.jcb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jca
  %i.jcc = load i8, ptr %i.jcb, align 1, !tbaa !81
  %i.jcd = and i8 %i.jcc, 12
  %.not3520 = icmp eq i8 %i.jcd, 0
  br i1 %.not3520, label %bb.bax, label %.split.loop.exit5205.loopexit.split.loop.exit8230, !prof !24

bb.bax:                                           ; preds = %bb.baw
  %i.jce = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 8
  %i.jcf = load i8, ptr %i.jce, align 1, !tbaa !81 ; 2 uses
  %i.jcg = zext i8 %i.jcf to i64
  %i.jch = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jcg
  %i.jci = load i8, ptr %i.jch, align 1, !tbaa !81
  %i.jcj = and i8 %i.jci, 12
  %.not3521 = icmp eq i8 %i.jcj, 0
  br i1 %.not3521, label %bb.bay, label %.split.loop.exit5205.loopexit.split.loop.exit8227, !prof !24

bb.bay:                                           ; preds = %bb.bax
  %i.jck = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 9
  %i.jcl = load i8, ptr %i.jck, align 1, !tbaa !81 ; 2 uses
  %i.jcm = zext i8 %i.jcl to i64
  %i.jcn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jcm
  %i.jco = load i8, ptr %i.jcn, align 1, !tbaa !81
  %i.jcp = and i8 %i.jco, 12
  %.not3522 = icmp eq i8 %i.jcp, 0
  br i1 %.not3522, label %bb.baz, label %.split.loop.exit5205.loopexit.split.loop.exit8224, !prof !24

bb.baz:                                           ; preds = %bb.bay
  %i.jcq = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 10
  %i.jcr = load i8, ptr %i.jcq, align 1, !tbaa !81 ; 2 uses
  %i.jcs = zext i8 %i.jcr to i64
  %i.jct = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jcs
  %i.jcu = load i8, ptr %i.jct, align 1, !tbaa !81
  %i.jcv = and i8 %i.jcu, 12
  %.not3523 = icmp eq i8 %i.jcv, 0
  br i1 %.not3523, label %bb.bba, label %.split.loop.exit5205.loopexit.split.loop.exit8221, !prof !24

bb.bba:                                           ; preds = %bb.baz
  %i.jcw = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 11
  %i.jcx = load i8, ptr %i.jcw, align 1, !tbaa !81 ; 2 uses
  %i.jcy = zext i8 %i.jcx to i64
  %i.jcz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jcy
  %i.jda = load i8, ptr %i.jcz, align 1, !tbaa !81
  %i.jdb = and i8 %i.jda, 12
  %.not3524 = icmp eq i8 %i.jdb, 0
  br i1 %.not3524, label %bb.bbb, label %.split.loop.exit5205.loopexit.split.loop.exit8218, !prof !24

bb.bbb:                                           ; preds = %bb.bba
  %i.jdc = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 12
  %i.jdd = load i8, ptr %i.jdc, align 1, !tbaa !81 ; 2 uses
  %i.jde = zext i8 %i.jdd to i64
  %i.jdf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jde
  %i.jdg = load i8, ptr %i.jdf, align 1, !tbaa !81
  %i.jdh = and i8 %i.jdg, 12
  %.not3525 = icmp eq i8 %i.jdh, 0
  br i1 %.not3525, label %bb.bbc, label %.split.loop.exit5205.loopexit.split.loop.exit8215, !prof !24

bb.bbc:                                           ; preds = %bb.bbb
  %i.jdi = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 13
  %i.jdj = load i8, ptr %i.jdi, align 1, !tbaa !81 ; 2 uses
  %i.jdk = zext i8 %i.jdj to i64
  %i.jdl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jdk
  %i.jdm = load i8, ptr %i.jdl, align 1, !tbaa !81
  %i.jdn = and i8 %i.jdm, 12
  %.not3526 = icmp eq i8 %i.jdn, 0
  br i1 %.not3526, label %bb.bbd, label %.split.loop.exit5205.loopexit.split.loop.exit8212, !prof !24

bb.bbd:                                           ; preds = %bb.bbc
  %i.jdo = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 14
  %i.jdp = load i8, ptr %i.jdo, align 1, !tbaa !81 ; 2 uses
  %i.jdq = zext i8 %i.jdp to i64
  %i.jdr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jdq
  %i.jds = load i8, ptr %i.jdr, align 1, !tbaa !81
  %i.jdt = and i8 %i.jds, 12
  %.not3527 = icmp eq i8 %i.jdt, 0
  br i1 %.not3527, label %bb.bbe, label %.split.loop.exit5205.loopexit.split.loop.exit8209, !prof !24

bb.bbe:                                           ; preds = %bb.bbd
  %i.jdu = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 15
  %i.jdv = load i8, ptr %i.jdu, align 1, !tbaa !81 ; 2 uses
  %i.jdw = zext i8 %i.jdv to i64
  %i.jdx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jdw
  %i.jdy = load i8, ptr %i.jdx, align 1, !tbaa !81
  %i.jdz = and i8 %i.jdy, 12
  %.not3528 = icmp eq i8 %i.jdz, 0
  br i1 %.not3528, label %bb.bbf, label %.split.loop.exit5205.loopexit.split.loop.exit, !prof !24

bb.bbf:                                           ; preds = %bb.bbe
  %i.jea = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 16 ; 3 uses
  %i.jeb = load i8, ptr %i.jea, align 1, !tbaa !81 ; 2 uses
  %i.jec = zext i8 %i.jeb to i64
  %i.jed = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jec
  %i.jee = load i8, ptr %i.jed, align 1, !tbaa !81
  %i.jef = and i8 %i.jee, 12
  %.not3513 = icmp eq i8 %i.jef, 0
  br i1 %.not3513, label %.lr.ph5224, label %.split.loop.exit5205, !prof !160

.split.loop.exit5205.loopexit.split.loop.exit:    ; preds = %bb.bbe
  %i.jeg = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 15
  br label %.split.loop.exit5205

.split.loop.exit5205.loopexit.split.loop.exit8209: ; preds = %bb.bbd
  %i.jeh = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 14
  br label %.split.loop.exit5205

.split.loop.exit5205.loopexit.split.loop.exit8212: ; preds = %bb.bbc
  %i.jei = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 13
  br label %.split.loop.exit5205

.split.loop.exit5205.loopexit.split.loop.exit8215: ; preds = %bb.bbb
  %i.jej = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 12
  br label %.split.loop.exit5205

.split.loop.exit5205.loopexit.split.loop.exit8218: ; preds = %bb.bba
  %i.jek = getelementptr inbounds nuw i8, ptr %.1270.i6755222, i64 11
  br label %.split.loop.exit5205

end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a

bb.bdk:                                           ; preds = %bb.bcu
  %.0.copyload.i1112 = load i64, ptr %.9.i693, align 1
  store i64 %.0.copyload.i1112, ptr %.2.i694, align 1
  %i.jpw = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1064 = load i32, ptr %i.jni, align 1
  store i32 %.0.copyload.i1064, ptr %i.jpw, align 1
  %i.jpx = getelementptr inbounds nuw i8, ptr %.2.i694, i64 11
  br label %bb.bdp

bb.bdl:                                           ; preds = %bb.bcv
  %.0.copyload.i1113 = load i64, ptr %.9.i693, align 1
  store i64 %.0.copyload.i1113, ptr %.2.i694, align 1
  %i.jpy = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1065 = load i32, ptr %i.jni, align 1
  store i32 %.0.copyload.i1065, ptr %i.jpy, align 1
  %i.jpz = getelementptr inbounds nuw i8, ptr %.2.i694, i64 12
  br label %bb.bdp

bb.bdm:                                           ; preds = %bb.bcw
  %.0.copyload.i1114 = load i64, ptr %.9.i693, align 1
  store i64 %.0.copyload.i1114, ptr %.2.i694, align 1
  %i.jqa = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1066 = load i32, ptr %i.jni, align 1
  store i32 %.0.copyload.i1066, ptr %i.jqa, align 1
  %i.jqb = getelementptr inbounds nuw i8, ptr %.2.i694, i64 12
  %.0.copyload.i1017 = load i16, ptr %i.jog, align 1
  store i16 %.0.copyload.i1017, ptr %i.jqb, align 1
  %i.jqc = getelementptr inbounds nuw i8, ptr %.2.i694, i64 13
  br label %bb.bdp

bb.bdn:                                           ; preds = %bb.bcx
  %.0.copyload.i1115 = load i64, ptr %.9.i693, align 1
  store i64 %.0.copyload.i1115, ptr %.2.i694, align 1
  %i.jqd = getelementptr inbounds nuw i8, ptr %.2.i694, i64 8
  %.0.copyload.i1067 = load i32, ptr %i.jni, align 1
  store i32 %.0.copyload.i1067, ptr %i.jqd, align 1
  %i.jqe = getelementptr inbounds nuw i8, ptr %.2.i694, i64 12
  %.0.copyload.i1018 = load i16, ptr %i.jog, align 1
  store i16 %.0.copyload.i1018, ptr %i.jqe, align 1
  %i.jqf = getelementptr inbounds nuw i8, ptr %.2.i694, i64 14
  br label %bb.bdp

bb.bdo:                                           ; preds = %bb.bcy
  %i.jqg = getelementptr inbounds nuw i8, ptr %.2.i694, i64 15
  br label %bb.bdp

bb.bdp:                                           ; preds = %bb.bdo, %bb.bdn, %bb.bdm, %bb.bdl, %bb.bdk, %bb.bdj, %bb.bdi, %bb.bdh, %bb.bdg, %bb.bdf, %bb.bde, %bb.bdd, %bb.bdc, %bb.bdb, %bb.bda, %.backedge4092
  %.11.i695 = phi ptr [ %i.joy, %bb.bdo ], [ %i.jph, %bb.bda ], [ %i.jos, %bb.bdn ], [ %i.jom, %bb.bdm ], [ %i.jog, %bb.bdl ], [ %i.joa, %bb.bdk ], [ %i.jnu, %bb.bdj ], [ %i.jno, %bb.bdi ], [ %i.jni, %bb.bdh ], [ %i.jnc, %bb.bdg ], [ %i.jmw, %bb.bdf ], [ %i.jmq, %bb.bde ], [ %i.jmk, %bb.bdd ], [ %i.jme, %bb.bdc ], [ %i.jly, %bb.bdb ], [ %.9.i693, %.backedge4092 ] ; 6 uses
  %.4.i696 = phi ptr [ %i.jqg, %bb.bdo ], [ %i.jpi, %bb.bda ], [ %i.jqf, %bb.bdn ], [ %i.jqc, %bb.bdm ], [ %i.jpz, %bb.bdl ], [ %i.jpx, %bb.bdk ], [ %i.jpv, %bb.bdj ], [ %i.jpt, %bb.bdi ], [ %i.jpr, %bb.bdh ], [ %i.jpq, %bb.bdg ], [ %i.jpp, %bb.bdf ], [ %i.jpn, %bb.bde ], [ %i.jpl, %bb.bdd ], [ %i.jpk, %bb.bdc ], [ %i.jpj, %bb.bdb ], [ %.2.i694, %.backedge4092 ] ; 3 uses
  %i.jqh = load i8, ptr %.11.i695, align 1, !tbaa !81 ; 2 uses
  %.not288.i697 = icmp sgt i8 %i.jqh, -1
  br i1 %.not288.i697, label %.preheader4093, label %.preheader4090

.preheader4090:                                   ; preds = %bb.bdp
  %storemerge.i6985250 = load i32, ptr %.11.i695, align 1 ; 4 uses
  %i.jqi = and i32 %storemerge.i6985250, 12632304
  %i.jqj = icmp eq i32 %i.jqi, 8421600
  %i.jqk = trunc i32 %storemerge.i6985250 to i16  ; 2 uses
  br i1 %i.jqj, label %.lr.ph5254, label %.critedge4.i701

.lr.ph5254:                                       ; preds = %.preheader4090, %bb.bdq
  %.0.copyload.i10196747 = phi i16 [ %i.jqq, %bb.bdq ], [ %i.jqk, %.preheader4090 ] ; 2 uses
  %storemerge.i6985253 = phi i32 [ %storemerge.i698, %bb.bdq ], [ %storemerge.i6985250, %.preheader4090 ] ; 4 uses
  %.5.i7005252 = phi ptr [ %i.jqm, %bb.bdq ], [ %.4.i696, %.preheader4090 ] ; 4 uses
  %.12.i6995251 = phi ptr [ %i.jqn, %bb.bdq ], [ %.11.i695, %.preheader4090 ] ; 3 uses
  %i.jql = and i32 %storemerge.i6985253, 8207
  switch i32 %i.jql, label %bb.bdq [
    i32 8205, label %.critedge4.i701
    i32 0, label %.critedge4.i701
  ]

bb.bdq:                                           ; preds = %.lr.ph5254
  store i32 %storemerge.i6985253, ptr %.5.i7005252, align 1
  %i.jqm = getelementptr inbounds nuw i8, ptr %.5.i7005252, i64 3 ; 2 uses
  %i.jqn = getelementptr inbounds nuw i8, ptr %.12.i6995251, i64 3 ; 3 uses
  %storemerge.i698 = load i32, ptr %i.jqn, align 1 ; 4 uses
  %i.jqo = and i32 %storemerge.i698, 12632304
  %i.jqp = icmp eq i32 %i.jqo, 8421600
  %i.jqq = trunc i32 %storemerge.i698 to i16      ; 2 uses
  br i1 %i.jqp, label %.lr.ph5254, label %.critedge4.i701, !llvm.loop !196

.critedge4.i701:                                  ; preds = %bb.bdq, %.lr.ph5254, %.lr.ph5254, %.preheader4090
  %.0.copyload.i10196745 = phi i16 [ %i.jqk, %.preheader4090 ], [ %.0.copyload.i10196747, %.lr.ph5254 ], [ %.0.copyload.i10196747, %.lr.ph5254 ], [ %i.jqq, %bb.bdq ]
  %.12.i699.lcssa = phi ptr [ %.11.i695, %.preheader4090 ], [ %.12.i6995251, %.lr.ph5254 ], [ %.12.i6995251, %.lr.ph5254 ], [ %i.jqn, %bb.bdq ] ; 3 uses
  %.5.i700.lcssa = phi ptr [ %.4.i696, %.preheader4090 ], [ %.5.i7005252, %.lr.ph5254 ], [ %.5.i7005252, %.lr.ph5254 ], [ %i.jqm, %bb.bdq ] ; 3 uses
  %storemerge.i698.lcssa = phi i32 [ %storemerge.i6985250, %.preheader4090 ], [ %storemerge.i6985253, %.lr.ph5254 ], [ %storemerge.i6985253, %.lr.ph5254 ], [ %storemerge.i698, %bb.bdq ] ; 5 uses
  %i.jqr = and i32 %storemerge.i698.lcssa, 128
  %i.jqs = icmp eq i32 %i.jqr, 0
  br i1 %i.jqs, label %.backedge4092.backedge, label %.preheader4089

.preheader4089:                                   ; preds = %.critedge4.i701
  %i.jqt = and i32 %storemerge.i698.lcssa, 49376
  %i.jqu = icmp eq i32 %i.jqt, 32960
  %i.jqv = and i32 %storemerge.i698.lcssa, 30
  %i.jqw = icmp ne i32 %i.jqv, 0
  %i.jqx = and i1 %i.jqu, %i.jqw
  br i1 %i.jqx, label %.lr.ph5270, label %.preheader4088

.preheader4088.loopexit:                          ; preds = %.lr.ph5270
  %i.jqy = trunc i32 %.sroa.0.0.copyload.i943 to i16
  br label %.preheader4088

.preheader4088:                                   ; preds = %.preheader4088.loopexit, %.preheader4089
  %.0.copyload.i10196744 = phi i16 [ %.0.copyload.i10196745, %.preheader4089 ], [ %i.jqy, %.preheader4088.loopexit ] ; 2 uses
  %.sroa.212657.2.in.lcssa = phi i32 [ %storemerge.i698.lcssa, %.preheader4089 ], [ %.sroa.0.0.copyload.i943, %.preheader4088.loopexit ] ; 5 uses
  %.13.i702.lcssa = phi ptr [ %.12.i699.lcssa, %.preheader4089 ], [ %i.jri, %.preheader4088.loopexit ] ; 3 uses
  %.6.i703.lcssa = phi ptr [ %.5.i700.lcssa, %.preheader4089 ], [ %i.jrh, %.preheader4088.loopexit ] ; 3 uses
  %i.jqz = and i32 %.sroa.212657.2.in.lcssa, -1061109512
  %i.jra = icmp ne i32 %i.jqz, -2139062032
  %i.jrb = and i32 %.sroa.212657.2.in.lcssa, 12295
  %.not289.i7065278 = icmp eq i32 %i.jrb, 0
  %or.cond292.i7075279 = or i1 %.not289.i7065278, %i.jra
  br i1 %or.cond292.i7075279, label %.critedge6.i708, label %.lr.ph5284.preheader

.lr.ph5284.preheader:                             ; preds = %.preheader4088
  %i.jrc = and i32 %.sroa.212657.2.in.lcssa, 4
  %i.jrd = icmp eq i32 %i.jrc, 0
  %i.jre = and i32 %.sroa.212657.2.in.lcssa, 12291
  %i.jrf = icmp eq i32 %i.jre, 0
  %i.jrg = or i1 %i.jrd, %i.jrf
  br i1 %i.jrg, label %.lr.ph10155, label %.critedge6.i708

.lr.ph5270:                                       ; preds = %.preheader4089, %.lr.ph5270
  %.sroa.02609.25269.in = phi i32 [ %.sroa.0.0.copyload.i943, %.lr.ph5270 ], [ %storemerge.i698.lcssa, %.preheader4089 ]
  %.6.i7035268 = phi ptr [ %i.jrh, %.lr.ph5270 ], [ %.5.i700.lcssa, %.preheader4089 ] ; 2 uses
  %.13.i7025267 = phi ptr [ %i.jri, %.lr.ph5270 ], [ %.12.i699.lcssa, %.preheader4089 ]
  %.sroa.02609.25269 = trunc i32 %.sroa.02609.25269.in to i16
  store i16 %.sroa.02609.25269, ptr %.6.i7035268, align 1
  %i.jrh = getelementptr inbounds nuw i8, ptr %.6.i7035268, i64 2 ; 2 uses
  %i.jri = getelementptr inbounds nuw i8, ptr %.13.i7025267, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i943 = load i32, ptr %i.jri, align 1 ; 5 uses
  %i.jrj = and i32 %.sroa.0.0.copyload.i943, 49376
  %i.jrk = icmp eq i32 %i.jrj, 32960
  %i.jrl = and i32 %.sroa.0.0.copyload.i943, 30
  %i.jrm = icmp ne i32 %i.jrl, 0
  %i.jrn = and i1 %i.jrk, %i.jrm
  br i1 %i.jrn, label %.lr.ph5270, label %.preheader4088.loopexit, !llvm.loop !197

.lr.ph5284:                                       ; preds = %.lr.ph10155
  %i.jro = and i32 %.sroa.0.0.copyload.i944, 4
  %i.jrp = icmp eq i32 %i.jro, 0
  %i.jrq = and i32 %.sroa.0.0.copyload.i944, 12291
  %i.jrr = icmp eq i32 %i.jrq, 0
  %i.jrs = or i1 %i.jrp, %i.jrr
  br i1 %i.jrs, label %.lr.ph10155, label %.critedge6.i708.loopexit, !llvm.loop !198

.lr.ph10155:                                      ; preds = %.lr.ph5284.preheader, %.lr.ph5284
  %.14.i704528010154 = phi ptr [ %i.jru, %.lr.ph5284 ], [ %.13.i702.lcssa, %.lr.ph5284.preheader ]
  %.7.i705528110153 = phi ptr [ %i.jrt, %.lr.ph5284 ], [ %.6.i703.lcssa, %.lr.ph5284.preheader ] ; 2 uses
  %.sroa.02609.0.insert.insert2633528310152 = phi i32 [ %.sroa.0.0.copyload.i944, %.lr.ph5284 ], [ %.sroa.212657.2.in.lcssa, %.lr.ph5284.preheader ]
  store i32 %.sroa.02609.0.insert.insert2633528310152, ptr %.7.i705528110153, align 1
  %i.jrt = getelementptr inbounds nuw i8, ptr %.7.i705528110153, i64 4 ; 3 uses
  %i.jru = getelementptr inbounds nuw i8, ptr %.14.i704528010154, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i944 = load i32, ptr %i.jru, align 1 ; 7 uses
  %i.jrv = and i32 %.sroa.0.0.copyload.i944, -1061109512
  %i.jrw = icmp ne i32 %i.jrv, -2139062032
  %i.jrx = and i32 %.sroa.0.0.copyload.i944, 12295
  %.not289.i706 = icmp eq i32 %i.jrx, 0
  %or.cond292.i707 = or i1 %.not289.i706, %i.jrw
  br i1 %or.cond292.i707, label %..critedge6.i708.loopexit_crit_edge, label %.lr.ph5284, !llvm.loop !198

..critedge6.i708.loopexit_crit_edge:              ; preds = %.lr.ph10155
  %i.jry = trunc i32 %.sroa.0.0.copyload.i944 to i16
  br label %.critedge6.i708, !llvm.loop !198

.critedge6.i708.loopexit:                         ; preds = %.lr.ph5284
  %i.jrz = trunc i32 %.sroa.0.0.copyload.i944 to i16
  br label %.critedge6.i708

.critedge6.i708:                                  ; preds = %.critedge6.i708.loopexit, %.lr.ph5284.preheader, %..critedge6.i708.loopexit_crit_edge, %.preheader4088
  %.0.copyload.i10196742 = phi i16 [ %.0.copyload.i10196744, %.preheader4088 ], [ %i.jry, %..critedge6.i708.loopexit_crit_edge ], [ %.0.copyload.i10196744, %.lr.ph5284.preheader ], [ %i.jrz, %.critedge6.i708.loopexit ]
  %.14.i704.lcssa = phi ptr [ %.13.i702.lcssa, %.preheader4088 ], [ %i.jru, %..critedge6.i708.loopexit_crit_edge ], [ %.13.i702.lcssa, %.lr.ph5284.preheader ], [ %i.jru, %.critedge6.i708.loopexit ] ; 4 uses
  %.7.i705.lcssa = phi ptr [ %.6.i703.lcssa, %.preheader4088 ], [ %i.jrt, %..critedge6.i708.loopexit_crit_edge ], [ %.6.i703.lcssa, %.lr.ph5284.preheader ], [ %i.jrt, %.critedge6.i708.loopexit ] ; 2 uses
  %i.jsa = icmp eq ptr %.11.i695, %.14.i704.lcssa
  br i1 %i.jsa, label %bb.bdr, label %.backedge4092.backedge, !prof !7

bb.bdr:                                           ; preds = %.critedge6.i708
  br i1 %.not3511, label %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread, label %bb.bda

_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715: ; preds = %.split.loop.exit5205, %.preheader4093
  %.2271.i676.lcssa.sink8475 = phi ptr [ %.0.i689, %.preheader4093 ], [ %.2271.i676, %.split.loop.exit5205 ] ; 2 uses
  %.sink8471 = phi i64 [ 5, %.preheader4093 ], [ 13, %.split.loop.exit5205 ]
  %.7276.i688.pn = phi ptr [ %.7276.i688, %.preheader4093 ], [ %.2271.i676, %.split.loop.exit5205 ]
  %i.jsb = ptrtoint ptr %.2271.i676.lcssa.sink8475 to i64
  %i.jsc = ptrtoint ptr %i.jai to i64
  %i.jsd = sub i64 %i.jsb, %i.jsc
  %i.jse = shl i64 %i.jsd, 8
  %i.jsf = or disjoint i64 %i.jse, %.sink8471
  store i64 %i.jsf, ptr %.23514.i, align 8, !tbaa !79
  %i.jsg = getelementptr inbounds nuw i8, ptr %.23514.i, i64 8
  store ptr %i.jai, ptr %i.jsg, align 8, !tbaa !81
  store i8 0, ptr %.2271.i676.lcssa.sink8475, align 1, !tbaa !81
  %storemerge = getelementptr inbounds nuw i8, ptr %.7276.i688.pn, i64 1 ; 4 uses
  store ptr %storemerge, ptr %i.e, align 8, !tbaa !92
  %i.jsh = load i8, ptr %storemerge, align 1, !tbaa !81 ; 2 uses
  %i.jsi = icmp eq i8 %i.jsh, 58
  br i1 %i.jsi, label %._crit_edge5293, label %.lr.ph5292

bb.bds:                                           ; preds = %.backedge4104
  %i.jsj = getelementptr inbounds nuw i8, ptr %.promoted5172, i64 1 ; 6 uses
  store ptr %i.jsj, ptr %i.e, align 8, !tbaa !92
  %i.jsk = icmp eq i64 %.5445.i.ph, 0
  br i1 %i.jsk, label %bb.btb, label %bb.bdt, !prof !24

bb.bdt:                                           ; preds = %bb.bds
  %i.jsl = and i32 %2, 4
  %.not3512 = icmp eq i32 %i.jsl, 0
  br i1 %.not3512, label %.preheader4098, label %bb.btb, !prof !24

.preheader4098:                                   ; preds = %bb.bdt
  %i.jsm = load i8, ptr %i.jsj, align 1, !tbaa !81
  %.not593.i5174 = icmp eq i8 %i.jsm, 44
  br i1 %.not593.i5174, label %.loopexit4023, label %.lr.ph5175

.lr.ph5175:                                       ; preds = %.preheader4098, %.lr.ph5175
  %i.jsn = phi ptr [ %i.jso, %.lr.ph5175 ], [ %i.jsj, %.preheader4098 ]
  %i.jso = getelementptr inbounds i8, ptr %i.jsn, i64 -1 ; 4 uses
  store ptr %i.jso, ptr %i.e, align 8, !tbaa !92
  %i.jsp = load i8, ptr %i.jso, align 1, !tbaa !81
  %.not593.i = icmp eq i8 %i.jsp, 44
  br i1 %.not593.i, label %.loopexit4023, label %.lr.ph5175, !llvm.loop !234

bb.bdu:                                           ; preds = %.backedge4104
  %i.jsq = zext i8 %i.izq to i64
  %i.jsr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jsq
  %i.jss = load i8, ptr %i.jsr, align 1, !tbaa !81
  %i.jst = and i8 %i.jss, 1
  %.not3745 = icmp eq i8 %i.jst, 0
  br i1 %.not3745, label %bb.bdv, label %.preheader4100

.preheader4100:                                   ; preds = %bb.bdu, %.preheader4100
  %i.jsu = phi ptr [ %i.jsv, %.preheader4100 ], [ %.promoted5172, %bb.bdu ]
  %i.jsv = getelementptr inbounds nuw i8, ptr %i.jsu, i64 1 ; 4 uses
  store ptr %i.jsv, ptr %i.e, align 8, !tbaa !92
  %i.jsw = load i8, ptr %i.jsv, align 1, !tbaa !81
  %i.jsx = zext i8 %i.jsw to i64
  %i.jsy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jsx
  %i.jsz = load i8, ptr %i.jsy, align 1, !tbaa !81
  %i.jta = and i8 %i.jsz, 1
  %.not3747 = icmp eq i8 %i.jta, 0
  br i1 %.not3747, label %.backedge4104.backedge, label %.preheader4100, !llvm.loop !235

bb.bdv:                                           ; preds = %bb.bdu
  br i1 %.not3746, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bdw, !prof !24

bb.bdw:                                           ; preds = %bb.bdv
  %i.jtb = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6734 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.jtb, label %.backedge4104.backedge, label %bb.bdx

.backedge4104.backedge:                           ; preds = %.preheader4100, %bb.bdw
  %.promoted5172.be = phi ptr [ %.pre6734, %bb.bdw ], [ %i.jsv, %.preheader4100 ]
  br label %.backedge4104

bb.bdx:                                           ; preds = %bb.bdw
  %.sroa.01.0.copyload.i565 = load i16, ptr %.pre6734, align 1
  %i.jtc = icmp eq i16 %.sroa.01.0.copyload.i565, 10799
  br i1 %i.jtc, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

._crit_edge5293:                                  ; preds = %.backedge4087, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715
  %.lcssa4325 = phi ptr [ %storemerge, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ], [ %i.jtv, %.backedge4087 ]
  %i.jtd = getelementptr inbounds nuw i8, ptr %.lcssa4325, i64 1 ; 4 uses
  store ptr %i.jtd, ptr %i.e, align 8, !tbaa !92
  %i.jte = load i8, ptr %i.jtd, align 1, !tbaa !81 ; 2 uses
  %i.jtf = icmp eq i8 %i.jte, 34
  br i1 %i.jtf, label %._crit_edge5298, label %.lr.ph5297

.lr.ph5297:                                       ; preds = %._crit_edge5293
  %i.jtg = and i32 %2, 16
  %.not3551 = icmp eq i32 %i.jtg, 0               ; 7 uses
  br label %bb.bhc

.lr.ph5292:                                       ; preds = %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715, %.backedge4087
  %.promoted5291 = phi ptr [ %i.jtv, %.backedge4087 ], [ %storemerge, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ] ; 2 uses
  %i.jth = phi i8 [ %i.jtu, %.backedge4087 ], [ %i.jsh, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit715 ]
  %i.jti = zext i8 %i.jth to i64
  %i.jtj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jti
  %i.jtk = load i8, ptr %i.jtj, align 1, !tbaa !81
  %i.jtl = and i8 %i.jtk, 1
  %.not3545 = icmp eq i8 %i.jtl, 0
  br i1 %.not3545, label %bb.bdy, label %.preheader4084

.preheader4084:                                   ; preds = %.lr.ph5292, %.preheader4084
  %i.jtm = phi ptr [ %i.jtn, %.preheader4084 ], [ %.promoted5291, %.lr.ph5292 ]
  %i.jtn = getelementptr inbounds nuw i8, ptr %i.jtm, i64 1 ; 4 uses
  store ptr %i.jtn, ptr %i.e, align 8, !tbaa !92
  %i.jto = load i8, ptr %i.jtn, align 1, !tbaa !81 ; 2 uses
  %i.jtp = zext i8 %i.jto to i64
  %i.jtq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jtp
  %i.jtr = load i8, ptr %i.jtq, align 1, !tbaa !81
  %i.jts = and i8 %i.jtr, 1
  %.not3547 = icmp eq i8 %i.jts, 0
  br i1 %.not3547, label %.backedge4087, label %.preheader4084, !llvm.loop !236

bb.bdy:                                           ; preds = %.lr.ph5292
  br i1 %.not3746, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bdz, !prof !24

bb.bdz:                                           ; preds = %bb.bdy
  %i.jtt = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6749.a = load ptr, ptr %i.e, align 8, !tbaa !92 ; 5 uses
  br i1 %i.jtt, label %..backedge4087_crit_edge, label %bb.bea

..backedge4087_crit_edge:                         ; preds = %bb.bdz
  %.pre6750.a = load i8, ptr %.pre6749.a, align 1, !tbaa !81
  br label %.backedge4087

.backedge4087:                                    ; preds = %.preheader4084, %..backedge4087_crit_edge
  %i.jtu = phi i8 [ %.pre6750.a, %..backedge4087_crit_edge ], [ %i.jto, %.preheader4084 ] ; 2 uses
  %i.jtv = phi ptr [ %.pre6749.a, %..backedge4087_crit_edge ], [ %i.jtn, %.preheader4084 ] ; 2 uses
  %i.jtw = icmp eq i8 %i.jtu, 58
  br i1 %i.jtw, label %._crit_edge5293, label %.lr.ph5292

bb.bea:                                           ; preds = %bb.bdz
  %.sroa.01.0.copyload.i567 = load i16, ptr %.pre6749.a, align 1
  %i.jtx = icmp eq i16 %.sroa.01.0.copyload.i567, 10799
  br i1 %i.jtx, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

._crit_edge5298:                                  ; preds = %.backedge4083, %._crit_edge5293
  %.lcssa4315 = phi ptr [ %i.jtd, %._crit_edge5293 ], [ %i.mng, %.backedge4083 ]
  %i.jty = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 2 uses
  %i.jtz = add i64 %.5445.i.ph, 2
  %i.jua = getelementptr inbounds nuw i8, ptr %.lcssa4315, i64 1 ; 3 uses
  br label %.backedge4063

.backedge4063:                                    ; preds = %.backedge4063.backedge, %._crit_edge5298
  %.0269.i632 = phi ptr [ %i.jua, %._crit_edge5298 ], [ %.0269.i632.be, %.backedge4063.backedge ] ; 3 uses
  %i.jub = load i8, ptr %.0269.i632, align 1, !tbaa !81 ; 2 uses
  %i.juc = zext i8 %i.jub to i64
  %i.jud = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juc
  %i.jue = load i8, ptr %i.jud, align 1, !tbaa !81
  %i.juf = and i8 %i.jue, 12
  %.not36085456 = icmp eq i8 %i.juf, 0
  br i1 %.not36085456, label %.lr.ph5459, label %.split.loop.exit5440, !prof !159

.lr.ph5459:                                       ; preds = %.backedge4063, %bb.bep
  %.1270.i6335457 = phi ptr [ %i.jxs, %bb.bep ], [ %.0269.i632, %.backedge4063 ] ; 31 uses
  %i.jug = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 1
  %i.juh = load i8, ptr %i.jug, align 1, !tbaa !81 ; 2 uses
  %i.jui = zext i8 %i.juh to i64
  %i.juj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jui
  %i.juk = load i8, ptr %i.juj, align 1, !tbaa !81
  %i.jul = and i8 %i.juk, 12
  %.not3609 = icmp eq i8 %i.jul, 0
  br i1 %.not3609, label %bb.beb, label %.split.loop.exit5440.loopexit.split.loop.exit8308, !prof !24

bb.beb:                                           ; preds = %.lr.ph5459
  %i.jum = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 2
  %i.jun = load i8, ptr %i.jum, align 1, !tbaa !81 ; 2 uses
  %i.juo = zext i8 %i.jun to i64
  %i.jup = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juo
  %i.juq = load i8, ptr %i.jup, align 1, !tbaa !81
  %i.jur = and i8 %i.juq, 12
  %.not3610 = icmp eq i8 %i.jur, 0
  br i1 %.not3610, label %bb.bec, label %.split.loop.exit5440.loopexit.split.loop.exit8305, !prof !24

bb.bec:                                           ; preds = %bb.beb
  %i.jus = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 3
  %i.jut = load i8, ptr %i.jus, align 1, !tbaa !81 ; 2 uses
  %i.juu = zext i8 %i.jut to i64
  %i.juv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.juu
  %i.juw = load i8, ptr %i.juv, align 1, !tbaa !81
  %i.jux = and i8 %i.juw, 12
  %.not3611 = icmp eq i8 %i.jux, 0
  br i1 %.not3611, label %bb.bed, label %.split.loop.exit5440.loopexit.split.loop.exit8302, !prof !24

bb.bed:                                           ; preds = %bb.bec
  %i.juy = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 4
  %i.juz = load i8, ptr %i.juy, align 1, !tbaa !81 ; 2 uses
  %i.jva = zext i8 %i.juz to i64
  %i.jvb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jva
  %i.jvc = load i8, ptr %i.jvb, align 1, !tbaa !81
  %i.jvd = and i8 %i.jvc, 12
  %.not3612 = icmp eq i8 %i.jvd, 0
  br i1 %.not3612, label %bb.bee, label %.split.loop.exit5440.loopexit.split.loop.exit8299, !prof !24

bb.bee:                                           ; preds = %bb.bed
  %i.jve = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 5
  %i.jvf = load i8, ptr %i.jve, align 1, !tbaa !81 ; 2 uses
  %i.jvg = zext i8 %i.jvf to i64
  %i.jvh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvg
  %i.jvi = load i8, ptr %i.jvh, align 1, !tbaa !81
  %i.jvj = and i8 %i.jvi, 12
  %.not3613 = icmp eq i8 %i.jvj, 0
  br i1 %.not3613, label %bb.bef, label %.split.loop.exit5440.loopexit.split.loop.exit8296, !prof !24

bb.bef:                                           ; preds = %bb.bee
  %i.jvk = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 6
  %i.jvl = load i8, ptr %i.jvk, align 1, !tbaa !81 ; 2 uses
  %i.jvm = zext i8 %i.jvl to i64
  %i.jvn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvm
  %i.jvo = load i8, ptr %i.jvn, align 1, !tbaa !81
  %i.jvp = and i8 %i.jvo, 12
  %.not3614 = icmp eq i8 %i.jvp, 0
  br i1 %.not3614, label %bb.beg, label %.split.loop.exit5440.loopexit.split.loop.exit8293, !prof !24

bb.beg:                                           ; preds = %bb.bef
  %i.jvq = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 7
  %i.jvr = load i8, ptr %i.jvq, align 1, !tbaa !81 ; 2 uses
  %i.jvs = zext i8 %i.jvr to i64
  %i.jvt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvs
  %i.jvu = load i8, ptr %i.jvt, align 1, !tbaa !81
  %i.jvv = and i8 %i.jvu, 12
  %.not3615 = icmp eq i8 %i.jvv, 0
  br i1 %.not3615, label %bb.beh, label %.split.loop.exit5440.loopexit.split.loop.exit8290, !prof !24

bb.beh:                                           ; preds = %bb.beg
  %i.jvw = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 8
  %i.jvx = load i8, ptr %i.jvw, align 1, !tbaa !81 ; 2 uses
  %i.jvy = zext i8 %i.jvx to i64
  %i.jvz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jvy
  %i.jwa = load i8, ptr %i.jvz, align 1, !tbaa !81
  %i.jwb = and i8 %i.jwa, 12
  %.not3616 = icmp eq i8 %i.jwb, 0
  br i1 %.not3616, label %bb.bei, label %.split.loop.exit5440.loopexit.split.loop.exit8287, !prof !24

bb.bei:                                           ; preds = %bb.beh
  %i.jwc = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 9
  %i.jwd = load i8, ptr %i.jwc, align 1, !tbaa !81 ; 2 uses
  %i.jwe = zext i8 %i.jwd to i64
  %i.jwf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwe
  %i.jwg = load i8, ptr %i.jwf, align 1, !tbaa !81
  %i.jwh = and i8 %i.jwg, 12
  %.not3617 = icmp eq i8 %i.jwh, 0
  br i1 %.not3617, label %bb.bej, label %.split.loop.exit5440.loopexit.split.loop.exit8284, !prof !24

bb.bej:                                           ; preds = %bb.bei
  %i.jwi = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 10
  %i.jwj = load i8, ptr %i.jwi, align 1, !tbaa !81 ; 2 uses
  %i.jwk = zext i8 %i.jwj to i64
  %i.jwl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwk
  %i.jwm = load i8, ptr %i.jwl, align 1, !tbaa !81
  %i.jwn = and i8 %i.jwm, 12
  %.not3618 = icmp eq i8 %i.jwn, 0
  br i1 %.not3618, label %bb.bek, label %.split.loop.exit5440.loopexit.split.loop.exit8281, !prof !24

bb.bek:                                           ; preds = %bb.bej
  %i.jwo = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 11
  %i.jwp = load i8, ptr %i.jwo, align 1, !tbaa !81 ; 2 uses
  %i.jwq = zext i8 %i.jwp to i64
  %i.jwr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jwq
  %i.jws = load i8, ptr %i.jwr, align 1, !tbaa !81
  %i.jwt = and i8 %i.jws, 12
  %.not3619 = icmp eq i8 %i.jwt, 0
  br i1 %.not3619, label %bb.bel, label %.split.loop.exit5440.loopexit.split.loop.exit8278, !prof !24

bb.bel:                                           ; preds = %bb.bek
  %i.jwu = getelementptr inbounds nuw i8, ptr %.1270.i6335457, i64 12
  %i.jwv = load i8, ptr %i.jwu, align 1, !tbaa !81 ; 2 uses
  %i.jww = zext i8 %i.jwv to i64
  %i.jwx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.jww
  %i.jwy = load i8, ptr %i.jwx, align 1, !tbaa !81
  %i.jwz = and i8 %i.jwy, 12
  %.not3620 = icmp eq i8 %i.jwz, 0
  br i1 %.not3620, label %bb.bem, label %.split.loop.exit5440.loopexit.split.loop.exit8275, !prof !24

bb.bem:                                           ; preds = %bb.bel
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.mhu = load i64, ptr %i.mht, align 8, !tbaa !91
  %i.mhv = shl i64 %i.mhu, %.pre6825
  %i.mhw = add nsw i64 %indvars.iv6433.ph, -1
  %i.mhx = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433.ph
  %i.mhy = load i64, ptr %i.mhx, align 8, !tbaa !91
  %i.mhz = lshr i64 %i.mhy, %i.mgi
  %i.mia = or i64 %i.mhz, %i.mhv
  %i.mib = trunc nuw i64 %indvars.iv6433.ph to i32
  %i.mic = add i32 %i.mdj, %i.mib
  %i.mid = zext i32 %i.mic to i64
  %i.mie = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %i.mid
  store i64 %i.mia, ptr %i.mie, align 8, !tbaa !91
  br label %scalar.ph10388.prol.loopexit

scalar.ph10388.prol.loopexit:                     ; preds = %scalar.ph10388.prol, %scalar.ph10388.preheader
  %indvars.iv6433.unr = phi i64 [ %indvars.iv6433.ph, %scalar.ph10388.preheader ], [ %i.mhw, %scalar.ph10388.prol ]
  %i.mif = icmp eq i64 %indvars.iv6433.ph, 1
  br i1 %i.mif, label %._crit_edge5381, label %scalar.ph10388

scalar.ph10388:                                   ; preds = %scalar.ph10388.prol.loopexit, %scalar.ph10388
  %indvars.iv6433 = phi i64 [ %i.miv, %scalar.ph10388 ], [ %indvars.iv6433.unr, %scalar.ph10388.prol.loopexit ] ; 6 uses
  %i.mig = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %indvars.iv6433
  %i.mih = load i64, ptr %i.mig, align 8, !tbaa !91
  %i.mii = shl i64 %i.mih, %.pre6825
  %i.mij = add nsw i64 %indvars.iv6433, -1        ; 2 uses
  %i.mik = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433
  %i.mil = load i64, ptr %i.mik, align 8, !tbaa !91
  %i.mim = lshr i64 %i.mil, %i.mgi
  %i.min = or i64 %i.mim, %i.mii
  %i.mio = trunc nuw i64 %indvars.iv6433 to i32
  %i.mip = add i32 %i.mdj, %i.mio
  %i.miq = zext i32 %i.mip to i64
  %i.mir = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %i.miq
  store i64 %i.min, ptr %i.mir, align 8, !tbaa !91
  %i.mis = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6433
  %i.mit = load i64, ptr %i.mis, align 8, !tbaa !91
  %i.miu = shl i64 %i.mit, %.pre6825
  %i.miv = add nsw i64 %indvars.iv6433, -2        ; 2 uses
  %i.miw = getelementptr [8 x i8], ptr %9, i64 %i.mij
  %i.mix = load i64, ptr %i.miw, align 8, !tbaa !91
  %i.miy = lshr i64 %i.mix, %i.mgi
  %i.miz = or i64 %i.miy, %i.miu
  %i.mja = trunc nuw i64 %i.mij to i32
  %i.mjb = add i32 %i.mdj, %i.mja
  %i.mjc = zext i32 %i.mjb to i64
  %i.mjd = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %i.mjc
  store i64 %i.miz, ptr %i.mjd, align 8, !tbaa !91
  %.not.i1275.wide.1 = icmp eq i64 %i.miv, 0
  br i1 %.not.i1275.wide.1, label %._crit_edge5381, label %scalar.ph10388, !llvm.loop !246

._crit_edge5381:                                  ; preds = %scalar.ph10388.prol.loopexit, %scalar.ph10388, %middle.block10410, %bb.bqs
  %i.mje = load i64, ptr %i.mge, align 8, !tbaa !91
  %i.mjf = shl i64 %i.mje, %.pre6825
  %i.mjg = zext nneg i32 %i.mdj to i64
  %i.mjh = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %i.mjg
  store i64 %i.mjf, ptr %i.mjh, align 8, !tbaa !91
  %i.mji = add i32 %i.mdk, %i.mdj                 ; 2 uses
  %i.mjj = zext i32 %i.mji to i64
  %i.mjk = getelementptr inbounds nuw [8 x i8], ptr %i.mge, i64 %i.mjj
  %i.mjl = load i64, ptr %i.mjk, align 8, !tbaa !91
  %i.mjm = icmp ne i64 %i.mjl, 0
  %i.mjn = zext i1 %i.mjm to i32
  %i.mjo = add i32 %i.mji, %i.mjn
  store i32 %i.mjo, ptr %9, align 8, !tbaa !177
  %.not45.i12775382 = icmp eq i32 %i.mdj, 0
  br i1 %.not45.i12775382, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, label %.lr.ph5385.preheader

.lr.ph5385.preheader:                             ; preds = %._crit_edge5381
  %i.mjp = lshr i32 %i.mdh, 3
  %i.mjq = and i32 %i.mjp, 536870904
  %i.mjr = zext nneg i32 %i.mjq to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mge, i8 0, i64 %i.mjr, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273: ; preds = %.lr.ph5385.preheader, %.lr.ph5393, %.lr.ph5402.preheader, %.lr.ph5410.preheader, %._crit_edge5381, %._crit_edge5389, %._crit_edge5398
  %i.mjs = phi i32 [ %i.mdd, %._crit_edge5398 ], [ %i.lwx, %.lr.ph5385.preheader ], [ %i.lwx, %.lr.ph5393 ], [ %i.mdd, %.lr.ph5402.preheader ], [ %i.lzp, %.lr.ph5410.preheader ], [ %i.lwx, %._crit_edge5381 ], [ %i.lwx, %._crit_edge5389 ] ; 2 uses
  %i.mjt = load i32, ptr %9, align 8, !tbaa !177  ; 4 uses
  %i.mju = icmp ult i32 %i.mjt, %i.mjs
  br i1 %i.mju, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, label %bb.bqt

bb.bqt:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273
  %i.mjv = icmp ugt i32 %i.mjt, %i.mjs
  br i1 %i.mjv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, label %.preheader4066

.preheader4066:                                   ; preds = %bb.bqt
  %.not.i131710168 = icmp eq i32 %i.mjt, 0
  br i1 %.not.i131710168, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %.lr.ph10171

.lr.ph10171:                                      ; preds = %.preheader4066
  %i.mjw = zext i32 %i.mjt to i64
  br label %bb.bqv

bb.bqu:                                           ; preds = %bb.bqv
  %i.mjx = add nsw i64 %indvars.iv645110169, -1   ; 2 uses
  %.not.i1317 = icmp eq i64 %i.mjx, 0
  br i1 %.not.i1317, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %bb.bqv, !llvm.loop !191

bb.bqv:                                           ; preds = %.lr.ph10171, %bb.bqu
  %.0.i131610170 = phi i32 [ undef, %.lr.ph10171 ], [ %.1.i1321, %bb.bqu ]
  %indvars.iv645110169 = phi i64 [ %i.mjw, %.lr.ph10171 ], [ %i.mjx, %bb.bqu ] ; 3 uses
  %i.mjy = getelementptr [8 x i8], ptr %9, i64 %indvars.iv645110169
  %i.mjz = load i64, ptr %i.mjy, align 8, !tbaa !91 ; 3 uses
  %i.mka = getelementptr [8 x i8], ptr %10, i64 %indvars.iv645110169
  %i.mkb = load i64, ptr %i.mka, align 8, !tbaa !91 ; 3 uses
  %.not3600 = icmp ult i64 %i.mjz, %i.mkb
  %.not3601 = icmp ugt i64 %i.mjz, %i.mkb
  %..0.i1319 = select i1 %.not3601, i32 1, i32 %.0.i131610170
  %cond.i1320 = icmp eq i64 %i.mjz, %i.mkb
  %.1.i1321 = select i1 %.not3600, i32 -1, i32 %..0.i1319 ; 3 uses
  br i1 %cond.i1320, label %bb.bqu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323: ; preds = %bb.bqv
  %.not680.i284 = icmp eq i32 %.1.i1321, 0
  br i1 %.not680.i284, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273, %bb.bqt, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323
  %.2.i13223455 = phi i32 [ %.1.i1321, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1273 ], [ 1, %bb.bqt ]
  %i.mkc = icmp sgt i32 %.2.i13223455, 0
  %i.mkd = zext i1 %i.mkc to i64
  br label %bb.bqw

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456: ; preds = %bb.bqu, %.preheader4066, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323
  %i.mke = and i64 %.0.i1208.ph, 1
  br label %bb.bqw

bb.bqw:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread
  %.pn.i285 = phi i64 [ %i.mkd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread ], [ %i.mke, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1323.thread3456 ]
  %.0604.i286 = add nuw nsw i64 %.pn.i285, %.0.i1208.ph ; 2 uses
  %i.mkf = icmp eq i64 %.0604.i286, 9218868437227405312
  br i1 %i.mkf, label %bb.bqx, label %bb.bre, !prof !7

bb.bqx:                                           ; preds = %bb.bqw
  br i1 %.not3554, label %bb.brb, label %bb.bqy, !prof !24

bb.bqy:                                           ; preds = %bb.bqx
  %i.mkg = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i288 = icmp eq ptr %i.mkg, null
  br i1 %.not681.i288, label %bb.bra, label %bb.bqz

bb.bqz:                                           ; preds = %bb.bqy
  store i8 0, ptr %i.mkg, align 1, !tbaa !81
  br label %bb.bra

bb.bra:                                           ; preds = %bb.bqz, %bb.bqy
  %i.mkh = ptrtoint ptr %.73219 to i64
  %i.mki = ptrtoint ptr %i.kma to i64
  %i.mkj = sub i64 %i.mkh, %i.mki
  %i.mkk = shl i64 %i.mkj, 8
  %i.mkl = or disjoint i64 %i.mkk, 1
  store i64 %i.mkl, ptr %i.kmf, align 8, !tbaa !79
  %i.mkm = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.kma, ptr %i.mkm, align 8, !tbaa !81
  store ptr %.73219, ptr %i.g, align 8, !tbaa !92
  br label %bb.brf

bb.brb:                                           ; preds = %bb.bqx
  br i1 %.not3551, label %bb.brd, label %bb.brc, !prof !24

bb.brc:                                           ; preds = %bb.brb
  store i64 20, ptr %i.kmf, align 8, !tbaa !79
  %i.mkn = select i1 %i.kmj, i64 -4503599627370496, i64 9218868437227405312
  %i.mko = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.mkn, ptr %i.mko, align 8, !tbaa !81
  br label %bb.brf

bb.brd:                                           ; preds = %bb.brb
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.kma, ptr %i.e, align 8, !tbaa !92
  br label %.thread3479

bb.bre:                                           ; preds = %bb.bqw
  store i64 20, ptr %i.kmf, align 8, !tbaa !79
  %i.mkp = select i1 %i.kmj, i64 -9223372036854775808, i64 0
  %i.mkq = or disjoint i64 %.0604.i286, %i.mkp
  %i.mkr = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 %i.mkq, ptr %i.mkr, align 8, !tbaa !81
  br label %bb.brf

.thread3479:                                      ; preds = %bb.bpx, %bb.brd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.btl

bb.brf:                                           ; preds = %bb.bre, %bb.brc, %bb.bra, %bb.bpz, %bb.bpw, %bb.bpu
  store ptr %.73219, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4051

.preheader4051:                                   ; preds = %bb.bsi, %bb.bsj, %bb.bsr, %bb.bsq, %bb.brs, %bb.brr, %bb.bal, %bb.btc, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673, %bb.bhe, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848, %.loopexit4065, %bb.bjl, %bb.bjm, %bb.bjn, %bb.bjp, %bb.bjs, %bb.bjv, %bb.bjy, %bb.bkb, %bb.bkt, %bb.bkw, %bb.bkz, %bb.blc, %bb.blf, %bb.bli, %bb.bll, %bb.blo, %bb.bni, %bb.bnj, %bb.bnk, %bb.bnv, %bb.boe, %bb.bpf, %bb.bpk, %bb.brf
  %.24551.i.ph = phi ptr [ %.23550.i, %bb.bpk ], [ %.23550.i, %bb.bpf ], [ %.23550.i, %bb.bkb ], [ %.23550.i, %bb.bnv ], [ %.23550.i, %bb.bjy ], [ %.23550.i, %bb.boe ], [ %.23550.i, %bb.bjv ], [ %.23550.i, %bb.bjs ], [ %.23550.i, %.loopexit4065 ], [ %.23550.i, %bb.bjp ], [ %.23550.i, %bb.bni ], [ %.23550.i, %bb.bnj ], [ %.23550.i, %bb.bnk ], [ %.23550.i, %bb.bjl ], [ %.23550.i, %bb.bjm ], [ %.23550.i, %bb.bjn ], [ %.23550.i, %bb.blo ], [ %.23550.i, %bb.bll ], [ %.23550.i, %bb.bli ], [ %.23550.i, %bb.blf ], [ %.23550.i, %bb.blc ], [ %.23550.i, %bb.bkz ], [ %.23550.i, %bb.bkw ], [ %.23550.i, %bb.bkt ], [ %.23550.i, %bb.bhe ], [ %.23550.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %.23550.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.23550.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.23550.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.23550.i, %bb.brs ], [ %.23550.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %i.iym, %bb.bal ], [ %i.moj, %bb.btc ], [ %.23550.i, %bb.brf ], [ %.23550.i, %bb.brr ], [ %.23550.i, %bb.bsq ], [ %.23550.i, %bb.bsr ], [ %.23550.i, %bb.bsj ], [ %.23550.i, %bb.bsi ] ; 2 uses
  %.24515.i.ph = phi ptr [ %i.kmf, %bb.bpk ], [ %i.kmf, %bb.bpf ], [ %i.kmf, %bb.bkb ], [ %i.kmf, %bb.bnv ], [ %i.kmf, %bb.bjy ], [ %i.kmf, %bb.boe ], [ %i.kmf, %bb.bjv ], [ %i.kmf, %bb.bjs ], [ %i.kmf, %.loopexit4065 ], [ %i.kmf, %bb.bjp ], [ %i.kmf, %bb.bni ], [ %i.kmf, %bb.bnj ], [ %i.kmf, %bb.bnk ], [ %i.kmf, %bb.bjl ], [ %i.kmf, %bb.bjm ], [ %i.kmf, %bb.bjn ], [ %i.kmf, %bb.blo ], [ %i.kmf, %bb.bll ], [ %i.kmf, %bb.bli ], [ %i.kmf, %bb.blf ], [ %i.kmf, %bb.blc ], [ %i.kmf, %bb.bkz ], [ %i.kmf, %bb.bkw ], [ %i.kmf, %bb.bkt ], [ %i.kmf, %bb.bhe ], [ %i.jty, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %i.mlc, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %i.mla, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %i.mkv, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %i.mlc, %bb.brs ], [ %i.kmf, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %.17508.i, %bb.bal ], [ %.25516.i, %bb.btc ], [ %i.kmf, %bb.brf ], [ %i.mlc, %bb.brr ], [ %i.mlx, %bb.bsq ], [ %i.mlx, %bb.bsr ], [ %i.mlx, %bb.bsj ], [ %i.mlx, %bb.bsi ] ; 2 uses
  %.24489.i.ph = phi ptr [ %.23488.i, %bb.bpk ], [ %.23488.i, %bb.bpf ], [ %.23488.i, %bb.bkb ], [ %.23488.i, %bb.bnv ], [ %.23488.i, %bb.bjy ], [ %.23488.i, %bb.boe ], [ %.23488.i, %bb.bjv ], [ %.23488.i, %bb.bjs ], [ %.23488.i, %.loopexit4065 ], [ %.23488.i, %bb.bjp ], [ %.23488.i, %bb.bni ], [ %.23488.i, %bb.bnj ], [ %.23488.i, %bb.bnk ], [ %.23488.i, %bb.bjl ], [ %.23488.i, %bb.bjm ], [ %.23488.i, %bb.bjn ], [ %.23488.i, %bb.blo ], [ %.23488.i, %bb.bll ], [ %.23488.i, %bb.bli ], [ %.23488.i, %bb.blf ], [ %.23488.i, %bb.blc ], [ %.23488.i, %bb.bkz ], [ %.23488.i, %bb.bkw ], [ %.23488.i, %bb.bkt ], [ %.23488.i, %bb.bhe ], [ %.23488.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %.23488.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.23488.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.23488.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.23488.i, %bb.brs ], [ %.23488.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %.17482.i, %bb.bal ], [ %.25490.i, %bb.btc ], [ %.23488.i, %bb.brf ], [ %.23488.i, %bb.brr ], [ %.23488.i, %bb.bsq ], [ %.23488.i, %bb.bsr ], [ %.23488.i, %bb.bsj ], [ %.23488.i, %bb.bsi ] ; 2 uses
  %.24.i187.ph = phi ptr [ %.23.i199, %bb.bpk ], [ %.23.i199, %bb.bpf ], [ %.23.i199, %bb.bkb ], [ %.23.i199, %bb.bnv ], [ %.23.i199, %bb.bjy ], [ %.23.i199, %bb.boe ], [ %.23.i199, %bb.bjv ], [ %.23.i199, %bb.bjs ], [ %.23.i199, %.loopexit4065 ], [ %.23.i199, %bb.bjp ], [ %.23.i199, %bb.bni ], [ %.23.i199, %bb.bnj ], [ %.23.i199, %bb.bnk ], [ %.23.i199, %bb.bjl ], [ %.23.i199, %bb.bjm ], [ %.23.i199, %bb.bjn ], [ %.23.i199, %bb.blo ], [ %.23.i199, %bb.bll ], [ %.23.i199, %bb.bli ], [ %.23.i199, %bb.blf ], [ %.23.i199, %bb.blc ], [ %.23.i199, %bb.bkz ], [ %.23.i199, %bb.bkw ], [ %.23.i199, %bb.bkt ], [ %.23.i199, %bb.bhe ], [ %.23.i199, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %.23.i199, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.23.i199, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.23.i199, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.23.i199, %bb.brs ], [ %.23.i199, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %.17.i185, %bb.bal ], [ %.25.i182, %bb.btc ], [ %.23.i199, %bb.brf ], [ %.23.i199, %bb.brr ], [ %.23.i199, %bb.bsq ], [ %.23.i199, %bb.bsr ], [ %.23.i199, %bb.bsj ], [ %.23.i199, %bb.bsi ] ; 5 uses
  %.6446.i.ph = phi i64 [ %i.kmg, %bb.bpk ], [ %i.kmg, %bb.bpf ], [ %i.kmg, %bb.bkb ], [ %i.kmg, %bb.bnv ], [ %i.kmg, %bb.bjy ], [ %i.kmg, %bb.boe ], [ %i.kmg, %bb.bjv ], [ %i.kmg, %bb.bjs ], [ %i.kmg, %.loopexit4065 ], [ %i.kmg, %bb.bjp ], [ %i.kmg, %bb.bni ], [ %i.kmg, %bb.bnj ], [ %i.kmg, %bb.bnk ], [ %i.kmg, %bb.bjl ], [ %i.kmg, %bb.bjm ], [ %i.kmg, %bb.bjn ], [ %i.kmg, %bb.blo ], [ %i.kmg, %bb.bll ], [ %i.kmg, %bb.bli ], [ %i.kmg, %bb.blf ], [ %i.kmg, %bb.blc ], [ %i.kmg, %bb.bkz ], [ %i.kmg, %bb.bkw ], [ %i.kmg, %bb.bkt ], [ %i.kmg, %bb.bhe ], [ %i.jtz, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %i.mld, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %i.mkz, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %i.mku, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %i.mld, %bb.brs ], [ %i.kmg, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %i.iyo, %bb.bal ], [ %i.mol, %bb.btc ], [ %i.kmg, %bb.brf ], [ %i.mld, %bb.brr ], [ %i.mly, %bb.bsq ], [ %i.mly, %bb.bsr ], [ %i.mly, %bb.bsj ], [ %i.mly, %bb.bsi ] ; 2 uses
  %.15.i188.ph = phi i64 [ %.14.i200, %bb.bpk ], [ %.14.i200, %bb.bpf ], [ %.14.i200, %bb.bkb ], [ %.14.i200, %bb.bnv ], [ %.14.i200, %bb.bjy ], [ %.14.i200, %bb.boe ], [ %.14.i200, %bb.bjv ], [ %.14.i200, %bb.bjs ], [ %.14.i200, %.loopexit4065 ], [ %.14.i200, %bb.bjp ], [ %.14.i200, %bb.bni ], [ %.14.i200, %bb.bnj ], [ %.14.i200, %bb.bnk ], [ %.14.i200, %bb.bjl ], [ %.14.i200, %bb.bjm ], [ %.14.i200, %bb.bjn ], [ %.14.i200, %bb.blo ], [ %.14.i200, %bb.bll ], [ %.14.i200, %bb.bli ], [ %.14.i200, %bb.blf ], [ %.14.i200, %bb.blc ], [ %.14.i200, %bb.bkz ], [ %.14.i200, %bb.bkw ], [ %.14.i200, %bb.bkt ], [ %.14.i200, %bb.bhe ], [ %.14.i200, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit673 ], [ %.14.i200, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.14.i200, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.14.i200, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.14.i200, %bb.brs ], [ %.14.i200, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354 ], [ %.10.i186, %bb.bal ], [ %.16.i183, %bb.btc ], [ %.14.i200, %bb.brf ], [ %.14.i200, %bb.brr ], [ %.14.i200, %bb.bsq ], [ %.14.i200, %bb.bsr ], [ %.14.i200, %bb.bsj ], [ %.14.i200, %bb.bsi ] ; 2 uses
  %i.mks = and i32 %2, 8
  %.not3743 = icmp eq i32 %i.mks, 0
  %.pre6761 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4053

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit882, %bb.bih, %bb.bog, %bb.bop, %bb.bpa, %bb.bny, %bb.bob, %bb.bil, %bb.bin, %bb.bno
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.btl

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354: ; preds = %bb.bic, %bb.bib, %bb.bht, %bb.bhu, %bb.bie, %bb.bke, %bb.bkh, %bb.bkk, %bb.bkn, %bb.bkq, %bb.boi, %bb.bom, %bb.boo, %bb.bos, %bb.box, %bb.boz
  %.343246.ph.sink = phi ptr [ %.113223, %bb.boz ], [ %i.kny, %bb.bie ], [ %i.kqr, %bb.bke ], [ %i.kqy, %bb.bkh ], [ %i.krf, %bb.bkk ], [ %i.krm, %bb.bkn ], [ %i.krt, %bb.bkq ], [ %.103222.lcssa, %bb.boi ], [ %.103222.lcssa, %bb.bom ], [ %.103222.lcssa, %bb.boo ], [ %.113223, %bb.bos ], [ %.113223, %bb.box ], [ %i.kns, %bb.bib ], [ %i.kns, %bb.bic ], [ %.037.i1168, %bb.bht ], [ %.037.i1168, %bb.bhu ]
  store ptr %.343246.ph.sink, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4051

bb.brg:                                           ; preds = %bb.bhc
  switch i8 %i.klz, label %bb.brt [
    i8 123, label %.loopexit4041
    i8 91, label %.loopexit4042
    i8 116, label %bb.brh
    i8 102, label %bb.bri
    i8 110, label %bb.brj
  ]

bb.brh:                                           ; preds = %bb.brg
  %.sroa.01.0.copyload.i1142 = load i32, ptr %i.kma, align 1
  %i.mkt = icmp eq i32 %.sroa.01.0.copyload.i1142, 1702195828
  br i1 %i.mkt, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842: ; preds = %bb.brh
  %i.mku = add i64 %.5445.i.ph, 2
  %i.mkv = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 2 uses
  store i64 11, ptr %i.mkv, align 8, !tbaa !79
  %i.mkw = getelementptr inbounds nuw i8, ptr %i.kma, i64 4
  store ptr %i.mkw, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4051

bb.bri:                                           ; preds = %bb.brg
  %i.mkx = getelementptr inbounds nuw i8, ptr %i.kma, i64 1
  %.sroa.01.0.copyload.i1138 = load i32, ptr %i.mkx, align 1
  %i.mky = icmp eq i32 %.sroa.01.0.copyload.i1138, 1702063201
  br i1 %i.mky, label %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845: ; preds = %bb.bri
  %i.mkz = add i64 %.5445.i.ph, 2
  %i.mla = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 2 uses
  store i64 3, ptr %i.mla, align 8, !tbaa !79
  %i.mlb = getelementptr inbounds nuw i8, ptr %i.kma, i64 5
  store ptr %i.mlb, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4051

bb.brj:                                           ; preds = %bb.brg
  %i.mlc = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 6 uses
  %i.mld = add i64 %.5445.i.ph, 2                 ; 3 uses
  %.sroa.01.0.copyload.i1134 = load i32, ptr %i.kma, align 1 ; 4 uses
  %i.mle = icmp eq i32 %.sroa.01.0.copyload.i1134, 1819047278
  %i.mlf = trunc i32 %.sroa.01.0.copyload.i1134 to i8
  %i.mlg = lshr i32 %.sroa.01.0.copyload.i1134, 8
  %i.mlh = trunc i32 %i.mlg to i8
  %i.mli = lshr i32 %.sroa.01.0.copyload.i1134, 16
  %i.mlj = trunc i32 %i.mli to i8
  br i1 %i.mle, label %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848, label %bb.brk, !prof !24

_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848: ; preds = %bb.brj
  store i64 2, ptr %i.mlc, align 8, !tbaa !79
  %i.mlk = getelementptr inbounds nuw i8, ptr %i.kma, i64 4
  store ptr %i.mlk, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4051

bb.brk:                                           ; preds = %bb.brj
  br i1 %.not3551, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, label %bb.brl, !prof !24

bb.brl:                                           ; preds = %bb.brk
  switch i8 %i.mlf, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.brm
    i8 110, label %bb.brm
  ]

bb.brm:                                           ; preds = %bb.brl, %bb.brl
  switch i8 %i.mlh, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 65, label %bb.brn
    i8 97, label %bb.brn
  ]

bb.brn:                                           ; preds = %bb.brm, %bb.brm
  switch i8 %i.mlj, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.bro
    i8 110, label %bb.bro
  ]

bb.bro:                                           ; preds = %bb.brn, %bb.brn
  %i.mll = getelementptr inbounds nuw i8, ptr %i.kma, i64 3 ; 2 uses
  store ptr %i.mll, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.brp, label %bb.brs

bb.brp:                                           ; preds = %bb.bro
  %i.mlm = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i854 = icmp eq ptr %i.mlm, null
  br i1 %.not31.i854, label %bb.brr, label %bb.brq

bb.brq:                                           ; preds = %bb.brp
  store i8 0, ptr %i.mlm, align 1, !tbaa !81
  br label %bb.brr

bb.brr:                                           ; preds = %bb.brq, %bb.brp
  store ptr %i.mll, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %i.mlc, align 8, !tbaa !79
  %i.mln = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.kma, ptr %i.mln, align 8, !tbaa !81
  br label %.preheader4051

bb.brs:                                           ; preds = %bb.bro
  store i64 20, ptr %i.mlc, align 8, !tbaa !79
  %i.mlo = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 9221120237041090560, ptr %i.mlo, align 8, !tbaa !81
  br label %.preheader4051

bb.brt:                                           ; preds = %bb.brg
  %i.mlp = and i8 %i.kmd, 1
  %.not3550 = icmp eq i8 %i.mlp, 0
  br i1 %.not3550, label %bb.bru, label %.preheader4078

.preheader4078:                                   ; preds = %bb.brt, %.preheader4078
  %i.mlq = phi ptr [ %i.mlr, %.preheader4078 ], [ %i.kma, %bb.brt ]
  %i.mlr = getelementptr inbounds nuw i8, ptr %i.mlq, i64 1 ; 4 uses
  store ptr %i.mlr, ptr %i.e, align 8, !tbaa !92
  %i.mls = load i8, ptr %i.mlr, align 1, !tbaa !81 ; 2 uses
  %i.mlt = zext i8 %i.mls to i64
  %i.mlu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.mlt
  %i.mlv = load i8, ptr %i.mlu, align 1, !tbaa !81
  %i.mlw = and i8 %i.mlv, 1
  %.not3553 = icmp eq i8 %i.mlw, 0
  br i1 %.not3553, label %.backedge4083, label %.preheader4078, !llvm.loop !247

bb.bru:                                           ; preds = %bb.brt
  br i1 %.not3551, label %bb.bss, label %bb.brv, !prof !24

bb.brv:                                           ; preds = %bb.bru
  switch i8 %i.klz, label %bb.bss [
    i8 105, label %bb.brw
    i8 73, label %bb.brw
    i8 78, label %bb.brw
  ]

bb.brw:                                           ; preds = %bb.brv, %bb.brv, %bb.brv
  %i.mlx = getelementptr inbounds nuw i8, ptr %.23514.i, i64 16 ; 8 uses
  %i.mly = add i64 %.5445.i.ph, 2                 ; 4 uses
  switch i8 %i.klz, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 73, label %bb.brx
    i8 105, label %bb.brx
    i8 78, label %bb.bsl
  ]

bb.brx:                                           ; preds = %bb.brw, %bb.brw
  %i.mlz = getelementptr inbounds nuw i8, ptr %i.kma, i64 1
  %i.mma = load i8, ptr %i.mlz, align 1, !tbaa !81
  switch i8 %i.mma, label %bb.bsk [
    i8 78, label %bb.bry
    i8 110, label %bb.bry
  ]

bb.bry:                                           ; preds = %bb.brx, %bb.brx
  %i.mmb = getelementptr inbounds nuw i8, ptr %i.kma, i64 2
  %i.mmc = load i8, ptr %i.mmb, align 1, !tbaa !81
  switch i8 %i.mmc, label %bb.bsk [
    i8 70, label %bb.brz
    i8 102, label %bb.brz
  ]

bb.brz:                                           ; preds = %bb.bry, %bb.bry
  %i.mmd = getelementptr inbounds nuw i8, ptr %i.kma, i64 3 ; 6 uses
  %i.mme = load i8, ptr %i.mmd, align 1, !tbaa !81
  switch i8 %i.mme, label %bb.bsf [
    i8 73, label %bb.bsa
    i8 105, label %bb.bsa
  ]

bb.bsa:                                           ; preds = %bb.brz, %bb.brz
  %i.mmf = getelementptr inbounds nuw i8, ptr %i.kma, i64 4
  %i.mmg = load i8, ptr %i.mmf, align 1, !tbaa !81
  switch i8 %i.mmg, label %bb.bsf [
    i8 78, label %bb.bsb
    i8 110, label %bb.bsb
  ]

bb.bsb:                                           ; preds = %bb.bsa, %bb.bsa
  %i.mmh = getelementptr inbounds nuw i8, ptr %i.kma, i64 5
  %i.mmi = load i8, ptr %i.mmh, align 1, !tbaa !81
  switch i8 %i.mmi, label %bb.bsf [
    i8 73, label %bb.bsc
    i8 105, label %bb.bsc
  ]

bb.bsc:                                           ; preds = %bb.bsb, %bb.bsb
  %i.mmj = getelementptr inbounds nuw i8, ptr %i.kma, i64 6
  %i.mmk = load i8, ptr %i.mmj, align 1, !tbaa !81
  switch i8 %i.mmk, label %bb.bsf [
    i8 84, label %bb.bsd
    i8 116, label %bb.bsd
  ]

bb.bsd:                                           ; preds = %bb.bsc, %bb.bsc
  %i.mml = getelementptr inbounds nuw i8, ptr %i.kma, i64 7
  %i.mmm = load i8, ptr %i.mml, align 1, !tbaa !81
  switch i8 %i.mmm, label %bb.bsf [
    i8 89, label %bb.bse
    i8 121, label %bb.bse
  ]

bb.bse:                                           ; preds = %bb.bsd, %bb.bsd
  %i.mmn = getelementptr inbounds nuw i8, ptr %i.kma, i64 8
  br label %bb.bsf

bb.bsf:                                           ; preds = %bb.bse, %bb.bsd, %bb.bsc, %bb.bsb, %bb.bsa, %bb.brz
  %.037.i1151 = phi ptr [ %i.mmn, %bb.bse ], [ %i.mmd, %bb.bsd ], [ %i.mmd, %bb.bsc ], [ %i.mmd, %bb.bsb ], [ %i.mmd, %bb.bsa ], [ %i.mmd, %bb.brz ] ; 3 uses
  store ptr %.037.i1151, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.bsg, label %bb.bsj

bb.bsg:                                           ; preds = %bb.bsf
  %i.mmo = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not48.i1153 = icmp eq ptr %i.mmo, null
  br i1 %.not48.i1153, label %bb.bsi, label %bb.bsh

bb.bsh:                                           ; preds = %bb.bsg
  store i8 0, ptr %i.mmo, align 1, !tbaa !81
  br label %bb.bsi

bb.bsi:                                           ; preds = %bb.bsh, %bb.bsg
  store ptr %.037.i1151, ptr %i.g, align 8, !tbaa !92
  %i.mmp = ptrtoint ptr %.037.i1151 to i64
  %i.mmq = ptrtoint ptr %i.kma to i64
  %i.mmr = sub i64 %i.mmp, %i.mmq
  %i.mms = shl i64 %i.mmr, 8
  %i.mmt = or disjoint i64 %i.mms, 1
  store i64 %i.mmt, ptr %i.mlx, align 8, !tbaa !79
  %i.mmu = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.kma, ptr %i.mmu, align 8, !tbaa !81
  br label %.preheader4051

bb.bsj:                                           ; preds = %bb.bsf
  store i64 20, ptr %i.mlx, align 8, !tbaa !79
  %i.mmv = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 9218868437227405312, ptr %i.mmv, align 8, !tbaa !81
  br label %.preheader4051

bb.bsk:                                           ; preds = %bb.bry, %bb.brx
  %cond = icmp eq i8 %i.klz, 78
  br i1 %cond, label %bb.bsl, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

bb.bsl:                                           ; preds = %bb.brw, %bb.bsk
  %i.mmw = getelementptr inbounds nuw i8, ptr %i.kma, i64 1
  %i.mmx = load i8, ptr %i.mmw, align 1, !tbaa !81
  switch i8 %i.mmx, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 65, label %bb.bsm
    i8 97, label %bb.bsm
  ]

bb.bsm:                                           ; preds = %bb.bsl, %bb.bsl
  %i.mmy = getelementptr inbounds nuw i8, ptr %i.kma, i64 2
  %i.mmz = load i8, ptr %i.mmy, align 1, !tbaa !81
  switch i8 %i.mmz, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread [
    i8 78, label %bb.bsn
    i8 110, label %bb.bsn
  ]

bb.bsn:                                           ; preds = %bb.bsm, %bb.bsm
  %i.mna = getelementptr inbounds nuw i8, ptr %i.kma, i64 3 ; 2 uses
  store ptr %i.mna, ptr %i.e, align 8, !tbaa !92
  br i1 %i.fzg, label %bb.bso, label %bb.bsr

bb.bso:                                           ; preds = %bb.bsn
  %i.mnb = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not31.i.i899 = icmp eq ptr %i.mnb, null
  br i1 %.not31.i.i899, label %bb.bsq, label %bb.bsp

bb.bsp:                                           ; preds = %bb.bso
  store i8 0, ptr %i.mnb, align 1, !tbaa !81
  br label %bb.bsq

bb.bsq:                                           ; preds = %bb.bsp, %bb.bso
  store ptr %i.mna, ptr %i.g, align 8, !tbaa !92
  store i64 769, ptr %i.mlx, align 8, !tbaa !79
  %i.mnc = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store ptr %i.kma, ptr %i.mnc, align 8, !tbaa !81
  br label %.preheader4051

bb.bsr:                                           ; preds = %bb.bsn
  store i64 20, ptr %i.mlx, align 8, !tbaa !79
  %i.mnd = getelementptr inbounds nuw i8, ptr %.23514.i, i64 24
  store i64 9221120237041090560, ptr %i.mnd, align 8, !tbaa !81
  br label %.preheader4051

bb.bss:                                           ; preds = %bb.brv, %bb.bru
  br i1 %.not3746, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bst, !prof !24

bb.bst:                                           ; preds = %bb.bss
  %i.mne = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6751 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 5 uses
  br i1 %i.mne, label %..backedge4083_crit_edge, label %bb.bsu

..backedge4083_crit_edge:                         ; preds = %bb.bst
  %.pre6752 = load i8, ptr %.pre6751, align 1, !tbaa !81
  br label %.backedge4083

.backedge4083:                                    ; preds = %.preheader4078, %..backedge4083_crit_edge
  %i.mnf = phi i8 [ %.pre6752, %..backedge4083_crit_edge ], [ %i.mls, %.preheader4078 ] ; 2 uses
  %i.mng = phi ptr [ %.pre6751, %..backedge4083_crit_edge ], [ %i.mlr, %.preheader4078 ] ; 2 uses
  %i.mnh = icmp eq i8 %i.mnf, 34
  br i1 %i.mnh, label %._crit_edge5298, label %bb.bhc

bb.bsu:                                           ; preds = %bb.bst
  %.sroa.01.0.copyload.i566 = load i16, ptr %.pre6751, align 1
  %i.mni = icmp eq i16 %.sroa.01.0.copyload.i566, 10799
  br i1 %i.mni, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

.backedge4053:                                    ; preds = %.backedge4053.backedge, %.preheader4051
  %.promoted5526 = phi ptr [ %.pre6761, %.preheader4051 ], [ %.promoted5526.be, %.backedge4053.backedge ] ; 5 uses
  %i.mnj = load i8, ptr %.promoted5526, align 1, !tbaa !81 ; 2 uses
  switch i8 %i.mnj, label %bb.bsx [
    i8 44, label %bb.bsv
    i8 125, label %bb.bsw
  ], !prof !195

bb.bsv:                                           ; preds = %.backedge4053
  %i.mnk = getelementptr inbounds nuw i8, ptr %.promoted5526, i64 1 ; 2 uses
  store ptr %i.mnk, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4102

bb.bsw:                                           ; preds = %.backedge4053
  %i.mnl = getelementptr inbounds nuw i8, ptr %.promoted5526, i64 1 ; 2 uses
  store ptr %i.mnl, ptr %i.e, align 8, !tbaa !92
  br label %bb.btb

bb.bsx:                                           ; preds = %.backedge4053
  %i.mnm = zext i8 %i.mnj to i64
  %i.mnn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.mnm
  %i.mno = load i8, ptr %i.mnn, align 1, !tbaa !81
  %i.mnp = and i8 %i.mno, 1
  %.not3742 = icmp eq i8 %i.mnp, 0
  br i1 %.not3742, label %bb.bsy, label %.preheader4049

.preheader4049:                                   ; preds = %bb.bsx, %.preheader4049
  %i.mnq = phi ptr [ %i.mnr, %.preheader4049 ], [ %.promoted5526, %bb.bsx ]
  %i.mnr = getelementptr inbounds nuw i8, ptr %i.mnq, i64 1 ; 4 uses
  store ptr %i.mnr, ptr %i.e, align 8, !tbaa !92
  %i.mns = load i8, ptr %i.mnr, align 1, !tbaa !81
  %i.mnt = zext i8 %i.mns to i64
  %i.mnu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.mnt
  %i.mnv = load i8, ptr %i.mnu, align 1, !tbaa !81
  %i.mnw = and i8 %i.mnv, 1
  %.not3744 = icmp eq i8 %i.mnw, 0
  br i1 %.not3744, label %.backedge4053.backedge, label %.preheader4049, !llvm.loop !248

bb.bsy:                                           ; preds = %bb.bsx
  br i1 %.not3743, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, label %bb.bsz, !prof !24

bb.bsz:                                           ; preds = %bb.bsy
  %i.mnx = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e)
  %.pre6760 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 4 uses
  br i1 %i.mnx, label %.backedge4053.backedge, label %bb.bta

.backedge4053.backedge:                           ; preds = %.preheader4049, %bb.bsz
  %.promoted5526.be = phi ptr [ %.pre6760, %bb.bsz ], [ %i.mnr, %.preheader4049 ]
  br label %.backedge4053

bb.bta:                                           ; preds = %bb.bsz
  %.sroa.01.0.copyload.i570 = load i16, ptr %.pre6760, align 1
  %i.mny = icmp eq i16 %.sroa.01.0.copyload.i570, 10799
  br i1 %i.mny, label %bb.btr, label %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread

bb.btb:                                           ; preds = %bb.bsw, %bb.bdt, %bb.bds
  %i.mnz = phi ptr [ %i.mnl, %bb.bsw ], [ %i.jsj, %bb.bds ], [ %i.jsj, %bb.bdt ]
  %.25552.i = phi ptr [ %.24551.i.ph, %bb.bsw ], [ %.21548.i.ph, %bb.bds ], [ %.21548.i.ph, %bb.bdt ] ; 4 uses
  %.25516.i = phi ptr [ %.24515.i.ph, %bb.bsw ], [ %.21512.i.ph, %bb.bds ], [ %.21512.i.ph, %bb.bdt ] ; 4 uses
  %.25490.i = phi ptr [ %.24489.i.ph, %bb.bsw ], [ %.21486.i.ph, %bb.bds ], [ %.21486.i.ph, %bb.bdt ] ; 2 uses
  %.25.i182 = phi ptr [ %.24.i187.ph, %bb.bsw ], [ %.21.i178.ph, %bb.bds ], [ %.21.i178.ph, %bb.bdt ] ; 3 uses
  %.7447.i = phi i64 [ %.6446.i.ph, %bb.bsw ], [ 0, %bb.bds ], [ %.5445.i.ph, %bb.bdt ]
  %.16.i183 = phi i64 [ %.15.i188.ph, %bb.bsw ], [ %.13.i179.ph, %bb.bds ], [ %.13.i179.ph, %bb.bdt ] ; 2 uses
  %i.moa = getelementptr inbounds nuw i8, ptr %.25552.i, i64 8 ; 2 uses
  %i.mob = load i64, ptr %i.moa, align 8, !tbaa !81 ; 2 uses
  %i.moc = ptrtoint ptr %.25516.i to i64
  %i.mod = ptrtoint ptr %.25552.i to i64
  %reass.sub5784 = sub i64 %i.moc, %i.mod
  %i.moe = add i64 %reass.sub5784, 16
  store i64 %i.moe, ptr %i.moa, align 8, !tbaa !81
  %i.mof = shl i64 %.7447.i, 7
  %i.mog = or disjoint i64 %i.mof, 7
  store i64 %i.mog, ptr %.25552.i, align 8, !tbaa !79
  %i.moh = icmp eq i64 %i.mob, 0
  br i1 %i.moh, label %bb.btd, label %bb.btc, !prof !7

bb.btc:                                           ; preds = %bb.btb
  %i.moi = sub i64 0, %i.mob
  %i.moj = getelementptr inbounds i8, ptr %.25552.i, i64 %i.moi ; 3 uses
  %i.mok = load i64, ptr %i.moj, align 8, !tbaa !79 ; 2 uses
  %i.mol = lshr i64 %i.mok, 8                     ; 2 uses
  %i.mom = and i64 %i.mok, 7
  %i.mon = icmp eq i64 %i.mom, 7
  br i1 %i.mon, label %.preheader4051, label %.preheader4046

bb.btd:                                           ; preds = %bb.btb, %bb.bak
  %.promoted5758 = phi ptr [ %i.mnz, %bb.btb ], [ %i.iyc, %bb.bak ] ; 6 uses
  %.26517.i = phi ptr [ %.25516.i, %bb.btb ], [ %.17508.i, %bb.bak ]
  %.26.i193 = phi ptr [ %.25.i182, %bb.btb ], [ %.17.i185, %bb.bak ] ; 12 uses
  %i.moo = icmp ult ptr %.promoted5758, %.0
  br i1 %i.moo, label %bb.bte, label %bb.bth, !prof !7

bb.bte:                                           ; preds = %bb.btd
  br i1 %.not3509, label %bb.btf, label %bb.bth, !prof !24

bb.btf:                                           ; preds = %bb.bte
  %i.mop = and i32 %2, 8
  %.not3740 = icmp eq i32 %i.mop, 0
  br i1 %.not3740, label %.preheader, label %bb.btg, !prof !24

.preheader:                                       ; preds = %bb.btf
  %i.moq = load i8, ptr %.promoted5758, align 1, !tbaa !81
  %i.mor = zext i8 %i.moq to i64
  %i.mos = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.mor
  %i.mot = load i8, ptr %i.mos, align 1, !tbaa !81
  %i.mou = and i8 %i.mot, 1
  %.not37415759 = icmp eq i8 %i.mou, 0
  br i1 %.not37415759, label %.loopexit, label %.lr.ph5760

bb.btg:                                           ; preds = %bb.btf
  %i.mov = call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr noundef %i.e) ; 0 uses
  %i.mow = load ptr, ptr %i.e, align 8, !tbaa !92 ; 3 uses
  %.sroa.01.0.copyload.i569 = load i16, ptr %i.mow, align 1
  %i.mox = icmp eq i16 %.sroa.01.0.copyload.i569, 10799
  br i1 %i.mox, label %bb.btr, label %.loopexit

.lr.ph5760:                                       ; preds = %.preheader, %.lr.ph5760
  %i.moy = phi ptr [ %i.moz, %.lr.ph5760 ], [ %.promoted5758, %.preheader ]
  %i.moz = getelementptr inbounds nuw i8, ptr %i.moy, i64 1 ; 4 uses
  store ptr %i.moz, ptr %i.e, align 8, !tbaa !92
  %i.mpa = load i8, ptr %i.moz, align 1, !tbaa !81
  %i.mpb = zext i8 %i.mpa to i64
  %i.mpc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.mpb
  %i.mpd = load i8, ptr %i.mpc, align 1, !tbaa !81
  %i.mpe = and i8 %i.mpd, 1
  %.not3741 = icmp eq i8 %i.mpe, 0
  br i1 %.not3741, label %.loopexit, label %.lr.ph5760, !llvm.loop !249

.loopexit:                                        ; preds = %.lr.ph5760, %.preheader, %bb.btg
  %i.mpf = phi ptr [ %i.mow, %bb.btg ], [ %.promoted5758, %.preheader ], [ %i.moz, %.lr.ph5760 ] ; 4 uses
  %i.mpg = icmp ult ptr %i.mpf, %.0
  br i1 %i.mpg, label %bb.bts, label %bb.bth, !prof !7

bb.bth:                                           ; preds = %.loopexit, %bb.bte, %bb.btd
  %i.mph = phi ptr [ %i.mpf, %.loopexit ], [ %.promoted5758, %bb.bte ], [ %.promoted5758, %bb.btd ] ; 2 uses
  br i1 %.not8527, label %bb.btk, label %bb.bti

bb.bti:                                           ; preds = %bb.bth
  %i.mpi = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not622.i194 = icmp eq ptr %i.mpi, null
  br i1 %.not622.i194, label %bb.btk, label %bb.btj

bb.btj:                                           ; preds = %bb.bti
  store i8 0, ptr %i.mpi, align 1, !tbaa !81
  %.pre6778 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %bb.btk

bb.btk:                                           ; preds = %bb.btj, %bb.bti, %bb.bth
  %i.mpj = phi ptr [ %.pre6778, %bb.btj ], [ %i.mph, %bb.bti ], [ %i.mph, %bb.bth ]
  %i.mpk = getelementptr inbounds nuw i8, ptr %.26.i193, i64 64 ; 2 uses
  store ptr %i.mpk, ptr %.26.i193, align 8, !tbaa !73
  %i.mpl = getelementptr inbounds nuw i8, ptr %.26.i193, i64 8
  store ptr %.sroa.0.0, ptr %i.mpl, align 8, !tbaa !9
  %.sroa.51703.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.26.i193, i64 16
  store ptr %.sroa.8.0, ptr %.sroa.51703.0..sroa_idx, align 8, !tbaa !9
  %.sroa.151712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.26.i193, i64 24
  store ptr %.sroa.865.0, ptr %.sroa.151712.0..sroa_idx, align 8, !tbaa !9
  %.sroa.241720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.26.i193, i64 32
  store ptr %.sroa.15.0, ptr %.sroa.241720.0..sroa_idx, align 8, !tbaa !9
  %i.mpm = ptrtoint ptr %i.mpj to i64
  %i.mpn = ptrtoint ptr %.promoted to i64
  %i.mpo = sub i64 %i.mpm, %i.mpn
  %i.mpp = getelementptr inbounds nuw i8, ptr %.26.i193, i64 40
  store i64 %i.mpo, ptr %i.mpp, align 8, !tbaa !96
  %i.mpq = ptrtoint ptr %.26517.i to i64
  %i.mpr = ptrtoint ptr %i.mpk to i64
  %i.mps = sub i64 %i.mpq, %i.mpr
  %i.mpt = ashr exact i64 %i.mps, 4
  %i.mpu = add nsw i64 %i.mpt, 1
  %i.mpv = getelementptr inbounds nuw i8, ptr %.26.i193, i64 48
  store i64 %i.mpu, ptr %i.mpv, align 8, !tbaa !95
  %i.mpw = getelementptr inbounds nuw i8, ptr %.26.i193, i64 56
  store ptr %i.r, ptr %i.mpw, align 8, !tbaa !94
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.bbj, %bb.bci, %bb.bch, %bb.bce, %bb.bcd, %bb.bcc, %bb.bcb, %bb.bbu, %bb.bdr, %bb.bet, %bb.bfs, %bb.bfr, %bb.bfo, %bb.bfn, %bb.bfm, %bb.bfl, %bb.bfe, %bb.bhb, %bb.avx, %bb.aww, %bb.awv, %bb.aws, %bb.awr, %bb.awq, %bb.awp, %bb.awi, %bb.ayf, %bb.bfq, %bb.bcg, %bb.awu
  %.str.69.sink8488 = phi ptr [ @.str.62, %bb.bhb ], [ @.str.68, %bb.bcg ], [ @.str.62, %bb.bet ], [ @.str.62, %bb.bdr ], [ @.str.63, %bb.bbu ], [ @.str.68, %bb.awu ], [ @.str.67, %bb.aws ], [ @.str.62, %bb.ayf ], [ @.str.68, %bb.bfq ], [ @.str.62, %bb.avx ], [ @.str.67, %bb.bfo ], [ @.str.69, %bb.awv ], [ @.str.63, %bb.awr ], [ @.str.66, %bb.awq ], [ @.str.64, %bb.awp ], [ @.str.63, %bb.awi ], [ @.str.70, %bb.aww ], [ @.str.69, %bb.bfr ], [ @.str.63, %bb.bfn ], [ @.str.66, %bb.bfm ], [ @.str.64, %bb.bfl ], [ @.str.63, %bb.bfe ], [ @.str.70, %bb.bfs ], [ @.str.67, %bb.bce ], [ @.str.69, %bb.bch ], [ @.str.63, %bb.bcd ], [ @.str.66, %bb.bcc ], [ @.str.64, %bb.bcb ], [ @.str.70, %bb.bci ], [ @.str.62, %bb.bbj ] ; 2 uses
  %.7276.i646.lcssa7565.sink = phi ptr [ %.14.i662.lcssa, %bb.bhb ], [ %i.jlk, %bb.bcg ], [ %.5274.i640.lcssa, %bb.bet ], [ %.14.i704.lcssa, %bb.bdr ], [ %.7276.i688, %bb.bbu ], [ %i.ilm, %bb.awu ], [ %i.iih, %bb.aws ], [ %.14.i628.lcssa, %bb.ayf ], [ %i.kfc, %bb.bfq ], [ %.5274.i.lcssa, %bb.avx ], [ %i.kbx, %bb.bfo ], [ %.7276.i, %bb.awv ], [ %i.iih, %bb.awr ], [ %i.iih, %bb.awq ], [ %.7276.i, %bb.awp ], [ %.7276.i, %bb.awi ], [ %.7276.i, %bb.aww ], [ %.7276.i646, %bb.bfr ], [ %i.kbx, %bb.bfn ], [ %i.kbx, %bb.bfm ], [ %.7276.i646, %bb.bfl ], [ %.7276.i646, %bb.bfe ], [ %.7276.i646, %bb.bfs ], [ %i.jif, %bb.bce ], [ %.7276.i688, %bb.bch ], [ %i.jif, %bb.bcd ], [ %i.jif, %bb.bcc ], [ %.7276.i688, %bb.bcb ], [ %.7276.i688, %bb.bci ], [ %.5274.i682.lcssa, %bb.bbj ] ; 3 uses
  %.27.i201 = phi ptr [ %.23.i199, %bb.bhb ], [ %.23.i199, %bb.bcg ], [ %.23.i199, %bb.bet ], [ %.23.i199, %bb.bdr ], [ %.23.i199, %bb.bci ], [ %.7455.i, %bb.awu ], [ %.7455.i, %bb.aww ], [ %.7455.i, %bb.ayf ], [ %.23.i199, %bb.bfq ], [ %.7455.i, %bb.avx ], [ %.23.i199, %bb.bfs ], [ %.7455.i, %bb.awi ], [ %.7455.i, %bb.awp ], [ %.7455.i, %bb.awq ], [ %.7455.i, %bb.awr ], [ %.7455.i, %bb.aws ], [ %.7455.i, %bb.awv ], [ %.23.i199, %bb.bfe ], [ %.23.i199, %bb.bfl ], [ %.23.i199, %bb.bfm ], [ %.23.i199, %bb.bfn ], [ %.23.i199, %bb.bfo ], [ %.23.i199, %bb.bfr ], [ %.23.i199, %bb.bbu ], [ %.23.i199, %bb.bcb ], [ %.23.i199, %bb.bcc ], [ %.23.i199, %bb.bcd ], [ %.23.i199, %bb.bce ], [ %.23.i199, %bb.bch ], [ %.23.i199, %bb.bbj ]
  store ptr %.str.69.sink8488, ptr %i.f, align 8, !tbaa !92
  store ptr %.7276.i646.lcssa7565.sink, ptr %i.e, align 8, !tbaa !92
  %i.mpx = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %.7276.i646.lcssa7565.sink, ptr noundef %.0, i32 noundef 10, i32 noundef %2) ; 3 uses
  %i.mpy = ptrtoint ptr %.7276.i646.lcssa7565.sink to i64
  %.sink8492 = select i1 %i.mpx, i64 %i.fys, i64 %i.mpy
  %.sink8490 = select i1 %i.mpx, i32 5, i32 10
  %.str.57.sink8489 = select i1 %i.mpx, ptr @.str.57, ptr %.str.69.sink8488
  %i.mpz = ptrtoint ptr %.promoted to i64
  %i.mqa = sub i64 %.sink8492, %i.mpz
  %spec.store.select.sroa.sel1640.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1640.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1640.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqa, ptr %spec.store.select.sroa.sel1640.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8490, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1643.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1643.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1643.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8489, ptr %spec.store.select.sroa.sel1643.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.27.i201), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.btl:                                           ; preds = %.thread3479, %.thread3476, %bb.bhe, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread, %bb.akz, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread
  %.28.i205 = phi ptr [ %.5453.i, %.thread3476 ], [ %.23.i199, %.thread3479 ], [ %.5453.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread ], [ %.5453.i, %bb.akz ], [ %.23.i199, %bb.bhe ], [ %.23.i199, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit354.thread ]
  %i.mqb = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  %i.mqc = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef %i.mqb, ptr noundef %.0, i32 noundef 9, i32 noundef %2)
  br i1 %i.mqc, label %bb.btm, label %bb.btn

bb.btm:                                           ; preds = %bb.btl
  %i.mqd = ptrtoint ptr %.promoted to i64
  %i.mqe = sub i64 %i.fys, %i.mqd
  %spec.store.select.sroa.sel1664.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1664.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1664.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqe, ptr %spec.store.select.sroa.sel1664.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 5, ptr %spec.store.select, align 8, !tbaa !156
  br label %bb.bto

bb.btn:                                           ; preds = %bb.btl
  %i.mqf = ptrtoint ptr %i.mqb to i64
  %i.mqg = ptrtoint ptr %.promoted to i64
  %i.mqh = sub i64 %i.mqf, %i.mqg
  %spec.store.select.sroa.sel1658.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1658.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1658.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqh, ptr %spec.store.select.sroa.sel1658.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 9, ptr %spec.store.select, align 8, !tbaa !156
  %i.mqi = load ptr, ptr %i.f, align 8, !tbaa !92
  br label %bb.bto

bb.bto:                                           ; preds = %bb.btm, %bb.btn
  %.str.57.sink8494 = phi ptr [ @.str.57, %bb.btm ], [ %i.mqi, %bb.btn ]
  %spec.store.select.sroa.sel1667.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1667.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1667.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8494, ptr %spec.store.select.sroa.sel1667.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.28.i205), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.btp:                                           ; preds = %bb.bap, %bb.bam, %bb.aze, %bb.ayn, %bb.ayk, %bb.ayh, %bb.avd, %bb.akx, %bb.akt, %bb.akq
  %.29.i168.a = phi ptr [ %i.am, %bb.akq ], [ %.pre6796, %bb.aze ], [ %.pre6795, %bb.bam ], [ %.pre6802, %bb.akt ], [ %.pre6801, %bb.akx ], [ %.pre6800, %bb.avd ], [ %.pre6799, %bb.ayh ], [ %.pre6798, %bb.ayk ], [ %.pre6797, %bb.ayn ], [ %.pre6794, %bb.bap ] ; 2 uses
  %.29.i168 = phi ptr [ null, %bb.akq ], [ %.3451.i.ph, %bb.aze ], [ %.18.i172, %bb.bam ], [ %.0448.i, %bb.akt ], [ %.3451.i.ph, %bb.akx ], [ %.3451.i.ph, %bb.avd ], [ %.3451.i.ph, %bb.ayh ], [ %.3451.i.ph, %bb.ayk ], [ %.3451.i.ph, %bb.ayn ], [ %.21.i178.ph, %bb.bap ] ; 2 uses
  %i.mqj = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef %.29.i168.a, ptr noundef %.0, i32 noundef 2, i32 noundef %2) ; 3 uses
  %i.mqk = ptrtoint ptr %.29.i168.a to i64
  %.sink8498 = select i1 %i.mqj, i64 %i.fys, i64 %i.mqk
  %.sink8496 = select i1 %i.mqj, i32 5, i32 2
  %.str.28.sink8495 = select i1 %i.mqj, ptr @.str.57, ptr @.str.28
  %i.mql = ptrtoint ptr %.promoted to i64
  %i.mqm = sub i64 %.sink8498, %i.mql
  %spec.store.select.sroa.sel1574.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1574.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1574.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqm, ptr %spec.store.select.sroa.sel1574.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8496, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1577.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1577.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1577.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.28.sink8495, ptr %spec.store.select.sroa.sel1577.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  %.not623.i169 = icmp eq ptr %.29.i168, null
  br i1 %.not623.i169, label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit, label %bb.btq

bb.btq:                                           ; preds = %bb.btp
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.29.i168), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

.loopexit4023:                                    ; preds = %.lr.ph5175, %.lr.ph5642, %.preheader4098, %.preheader4022
  %i.mqn = phi ptr [ %i.iuy, %.preheader4022 ], [ %i.jsj, %.preheader4098 ], [ %i.ivd, %.lr.ph5642 ], [ %i.jso, %.lr.ph5175 ] ; 2 uses
  %.30.i180 = phi ptr [ %.3451.i.ph, %.preheader4022 ], [ %.21.i178.ph, %.preheader4098 ], [ %.3451.i.ph, %.lr.ph5642 ], [ %.21.i178.ph, %.lr.ph5175 ]
  %i.mqo = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.mqn, ptr noundef %.0, i32 noundef 7, i32 noundef %2) ; 3 uses
  %i.mqp = ptrtoint ptr %i.mqn to i64
  %.sink8503 = select i1 %i.mqo, i64 %i.fys, i64 %i.mqp
  %.sink8501 = select i1 %i.mqo, i32 5, i32 7
  %.str.57.sink8500 = select i1 %i.mqo, ptr @.str.57, ptr @.str.58
  %i.mqq = ptrtoint ptr %.promoted to i64
  %i.mqr = sub i64 %.sink8503, %i.mqq
  %spec.store.select.sroa.sel1592.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1592.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1592.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqr, ptr %spec.store.select.sroa.sel1592.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8501, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1595.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1595.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1595.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8500, ptr %spec.store.select.sroa.sel1595.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.30.i180), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread: ; preds = %bb.brl, %bb.brm, %bb.brn, %bb.bri, %bb.brh, %bb.ayq, %bb.ayr, %bb.ays, %bb.ayl, %bb.ayi, %bb.brk, %bb.ayp
  %i.mqs = phi ptr [ %i.kma, %bb.brk ], [ %i.isy, %bb.ayi ], [ %i.itr, %bb.ayl ], [ %i.iul, %bb.ayp ], [ %i.iul, %bb.ayq ], [ %i.kma, %bb.brh ], [ %i.kma, %bb.bri ], [ %i.iul, %bb.ays ], [ %i.iul, %bb.ayr ], [ %i.kma, %bb.brn ], [ %i.kma, %bb.brm ], [ %i.kma, %bb.brl ] ; 2 uses
  %.31.i203 = phi ptr [ %.23.i199, %bb.brk ], [ %.9457.i, %bb.ayi ], [ %.11459.i, %bb.ayl ], [ %.13461.i, %bb.ayp ], [ %.13461.i, %bb.ayq ], [ %.23.i199, %bb.brh ], [ %.23.i199, %bb.bri ], [ %.13461.i, %bb.ays ], [ %.13461.i, %bb.ayr ], [ %.23.i199, %bb.brn ], [ %.23.i199, %bb.brm ], [ %.23.i199, %bb.brl ]
  %i.mqt = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.mqs, ptr noundef %.0, i32 noundef 11, i32 noundef %2) ; 3 uses
  %i.mqu = ptrtoint ptr %i.mqs to i64
  %.sink8508 = select i1 %i.mqt, i64 %i.fys, i64 %i.mqu
  %.sink8506 = select i1 %i.mqt, i32 5, i32 11
  %.str.57.sink8505 = select i1 %i.mqt, ptr @.str.57, ptr @.str.59
  %i.mqv = ptrtoint ptr %.promoted to i64
  %i.mqw = sub i64 %.sink8508, %i.mqv
  %spec.store.select.sroa.sel1652.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1652.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1652.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mqw, ptr %spec.store.select.sroa.sel1652.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8506, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1655.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1655.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1655.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8505, ptr %spec.store.select.sroa.sel1655.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.31.i203), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.btr:                                           ; preds = %bb.btg, %bb.bta, %bb.bsu, %bb.bea, %bb.bdx, %bb.baj, %bb.bad
  %i.mqx = phi ptr [ %i.mow, %bb.btg ], [ %.pre6764, %bb.bad ], [ %.pre6762, %bb.baj ], [ %.pre6760, %bb.bta ], [ %.pre6751, %bb.bsu ], [ %.pre6749.a, %bb.bea ], [ %.pre6734, %bb.bdx ] ; 2 uses
  %.32.i191 = phi ptr [ %.26.i193, %bb.btg ], [ %.3451.i.ph, %bb.bad ], [ %.16464.i.ph, %bb.baj ], [ %.24.i187.ph, %bb.bta ], [ %.23.i199, %bb.bsu ], [ %.23.i199, %bb.bea ], [ %.21.i178.ph, %bb.bdx ]
  %i.mqy = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.mqx, ptr noundef %.0, i32 noundef 8, i32 noundef %2) ; 3 uses
  %i.mqz = ptrtoint ptr %i.mqx to i64
  %.sink8513 = select i1 %i.mqy, i64 %i.fys, i64 %i.mqz
  %.sink8511 = select i1 %i.mqy, i32 5, i32 8
  %.str.57.sink8510 = select i1 %i.mqy, ptr @.str.57, ptr @.str.29
  %i.mra = ptrtoint ptr %.promoted to i64
  %i.mrb = sub i64 %.sink8513, %i.mra
  %spec.store.select.sroa.sel1616.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1616.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1616.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mrb, ptr %spec.store.select.sroa.sel1616.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8511, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1619.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1619.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1619.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8510, ptr %spec.store.select.sroa.sel1619.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.32.i191), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread: ; preds = %bb.bdv, %bb.bdy, %bb.bss, %bb.bsy, %bb.bah, %bb.bab, %bb.brw, %bb.azf, %bb.bsk, %bb.bsl, %bb.bsm, %bb.azt, %bb.azu, %bb.azv, %bb.bta, %bb.bsu, %bb.bea, %bb.bdx, %bb.baj, %bb.bad
  %i.mrc = phi ptr [ %i.kma, %bb.brw ], [ %.pre6764, %bb.bad ], [ %i.kma, %bb.bsk ], [ %.pre6762, %bb.baj ], [ %.promoted5527, %bb.bah ], [ %.pre6760, %bb.bta ], [ %.promoted5526, %bb.bsy ], [ %i.iwd, %bb.azt ], [ %.pre6751, %bb.bsu ], [ %i.kma, %bb.bss ], [ %.pre6749.a, %bb.bea ], [ %.promoted5291, %bb.bdy ], [ %.pre6734, %bb.bdx ], [ %i.iwd, %bb.azv ], [ %i.iwd, %bb.azu ], [ %i.kma, %bb.bsm ], [ %i.kma, %bb.bsl ], [ %.promoted5528, %bb.bab ], [ %i.iwd, %bb.azf ], [ %.promoted5172, %bb.bdv ] ; 2 uses
  %.33.i189 = phi ptr [ %.23.i199, %bb.brw ], [ %.3451.i.ph, %bb.bad ], [ %.23.i199, %bb.bsk ], [ %.16464.i.ph, %bb.baj ], [ %.16464.i.ph, %bb.bah ], [ %.24.i187.ph, %bb.bta ], [ %.24.i187.ph, %bb.bsy ], [ %.15463.i, %bb.azt ], [ %.23.i199, %bb.bsu ], [ %.23.i199, %bb.bss ], [ %.23.i199, %bb.bea ], [ %.23.i199, %bb.bdy ], [ %.21.i178.ph, %bb.bdx ], [ %.15463.i, %bb.azv ], [ %.15463.i, %bb.azu ], [ %.23.i199, %bb.bsm ], [ %.23.i199, %bb.bsl ], [ %.3451.i.ph, %bb.bab ], [ %.15463.i, %bb.azf ], [ %.21.i178.ph, %bb.bdv ]
  %i.mrd = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.mrc, ptr noundef %.0, i32 noundef 6, i32 noundef %2) ; 3 uses
  %i.mre = ptrtoint ptr %i.mrc to i64
  %.sink8518 = select i1 %i.mrd, i64 %i.fys, i64 %i.mre
  %.sink8516 = select i1 %i.mrd, i32 5, i32 6
  %.str.57.sink8515 = select i1 %i.mrd, ptr @.str.57, ptr @.str.60
  %i.mrf = ptrtoint ptr %.promoted to i64
  %i.mrg = sub i64 %.sink8518, %i.mrf
  %spec.store.select.sroa.sel1604.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1604.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1604.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mrg, ptr %spec.store.select.sroa.sel1604.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8516, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1607.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1607.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1607.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8515, ptr %spec.store.select.sroa.sel1607.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.33.i189), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

bb.bts:                                           ; preds = %.loopexit
  %i.mrh = tail call fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.mpf, ptr noundef nonnull %.0, i32 noundef 4, i32 noundef %2) ; 3 uses
  %i.mri = ptrtoint ptr %i.mpf to i64
  %.sink8523 = select i1 %i.mrh, i64 %i.fys, i64 %i.mri
  %.sink8521 = select i1 %i.mrh, i32 5, i32 4
  %.str.57.sink8520 = select i1 %i.mrh, ptr @.str.57, ptr @.str.61
  %i.mrj = ptrtoint ptr %.promoted to i64
  %i.mrk = sub i64 %.sink8523, %i.mrj
  %spec.store.select.sroa.sel1628.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1628.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1628.v.sroa.sel.v.sroa.sel.v, i64 16
  store i64 %i.mrk, ptr %spec.store.select.sroa.sel1628.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  store i32 %.sink8521, ptr %spec.store.select, align 8, !tbaa !156
  %spec.store.select.sroa.sel1631.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1631.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1631.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.57.sink8520, ptr %spec.store.select.sroa.sel1631.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.26.i193), !inline_history !220
  br label %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit

_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit: ; preds = %bb.btk, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread, %bb.bto, %bb.btp, %bb.btq, %.loopexit4023, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, %bb.btr, %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread, %bb.bts
  %.0.i170 = phi ptr [ null, %bb.bts ], [ null, %bb.btp ], [ %.26.i193, %bb.btk ], [ null, %bb.btr ], [ null, %.loopexit4023 ], [ null, %bb.btq ], [ null, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread ], [ null, %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit897.thread ], [ null, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit.thread ], [ null, %bb.bto ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.btu

bb.btt:                                           ; preds = %bb.w
  store ptr %.sroa.0.0, ptr %14, align 8, !tbaa !9
  %.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx63, align 8, !tbaa !9
  %.sroa.865.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.sroa.865.0, ptr %.sroa.865.0..sroa_idx71, align 8, !tbaa !9
  %.sroa.15.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %.sroa.15.0, ptr %.sroa.15.0..sroa_idx84, align 8, !tbaa !9
  %i.mrl = call fastcc noundef ptr @_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE(ptr noundef nonnull %.promoted, ptr noundef nonnull %i.am, ptr noundef %.0, ptr noundef nonnull byval(%"struct.duckdb_yyjson::yyjson_alc") align 8 %14, i32 noundef %2, ptr noundef nonnull %spec.store.select)
  br label %bb.btu

bb.btu:                                           ; preds = %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit, %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit, %bb.btt
  %.0149 = phi ptr [ %.0.i, %_ZN13duckdb_yyjsonL16read_root_prettyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit ], [ %.0.i170, %_ZN13duckdb_yyjsonL16read_root_minifyEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE.exit ], [ %i.mrl, %bb.btt ] ; 2 uses
  %.not157 = icmp eq ptr %.0149, null
  br i1 %.not157, label %bb.btw, label %bb.btv, !prof !7

bb.btv:                                           ; preds = %bb.btu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select, i8 0, i64 24, i1 false)
  br label %bb.bum

bb.btw:                                           ; preds = %bb.btu
  %spec.store.select.sroa.sel1448.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1448.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1448.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.mrm = load i64, ptr %spec.store.select.sroa.sel1448.v.sroa.sel.v.sroa.sel, align 8, !tbaa !153
  %i.mrn = icmp eq i64 %i.mrm, 0
  br i1 %i.mrn, label %bb.btx, label %.thread3468

bb.btx:                                           ; preds = %bb.btw
  %i.mro = load i32, ptr %spec.store.select, align 8, !tbaa !156
  %.not158 = icmp eq i32 %i.mro, 2
  br i1 %.not158, label %.thread3468, label %bb.bty

bb.bty:                                           ; preds = %bb.btx
  %i.mrp = load i8, ptr %.promoted, align 1, !tbaa !81 ; 3 uses
  %i.mrq = icmp eq i8 %i.mrp, -17
  br i1 %i.mrq, label %bb.btz, label %bb.bub

bb.btz:                                           ; preds = %bb.bty
  %i.mrr = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %i.mrs = load i8, ptr %i.mrr, align 1, !tbaa !81
  %i.mrt = icmp eq i8 %i.mrs, -69
  br i1 %i.mrt, label %bb.bua, label %bb.bub

bb.bua:                                           ; preds = %bb.btz
  %i.mru = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  %i.mrv = load i8, ptr %i.mru, align 1, !tbaa !81
  %i.mrw = icmp eq i8 %i.mrv, -65
  br i1 %i.mrw, label %.thread3468.sink.split, label %bb.bub

bb.bub:                                           ; preds = %bb.bua, %bb.btz, %bb.bty
  %i.mrx = icmp ugt i64 %1, 3
  br i1 %i.mrx, label %bb.buc, label %bb.buj

bb.buc:                                           ; preds = %bb.bub
  switch i8 %i.mrp, label %.thread3468 [
    i8 0, label %bb.bud
    i8 -1, label %bb.bug
    i8 -2, label %bb.buk
  ]

bb.bud:                                           ; preds = %bb.buc
  %i.mry = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %i.mrz = load i8, ptr %i.mry, align 1, !tbaa !81
  %i.msa = icmp eq i8 %i.mrz, 0
  br i1 %i.msa, label %bb.bue, label %.thread3468

bb.bue:                                           ; preds = %bb.bud
  %i.msb = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  %i.msc = load i8, ptr %i.msb, align 1, !tbaa !81
  %i.msd = icmp eq i8 %i.msc, -2
  br i1 %i.msd, label %bb.buf, label %.thread3468

bb.buf:                                           ; preds = %bb.bue
  %i.mse = getelementptr inbounds nuw i8, ptr %.promoted, i64 3
  %i.msf = load i8, ptr %i.mse, align 1, !tbaa !81
  %i.msg = icmp eq i8 %i.msf, -1
  br i1 %i.msg, label %.thread3468.sink.split, label %.thread3468

bb.bug:                                           ; preds = %bb.buc
  %i.msh = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %i.msi = load i8, ptr %i.msh, align 1, !tbaa !81
  %i.msj = icmp eq i8 %i.msi, -2
  br i1 %i.msj, label %bb.buh, label %.thread3468

bb.buh:                                           ; preds = %bb.bug
  %i.msk = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  %i.msl = load i8, ptr %i.msk, align 1, !tbaa !81
  %i.msm = icmp eq i8 %i.msl, 0
  br i1 %i.msm, label %bb.bui, label %.thread3466.thread.thread.thread

bb.bui:                                           ; preds = %bb.buh
  %i.msn = getelementptr inbounds nuw i8, ptr %.promoted, i64 3
  %i.mso = load i8, ptr %i.msn, align 1, !tbaa !81
  %i.msp = icmp eq i8 %i.mso, 0
  br i1 %i.msp, label %.thread3468.sink.split, label %.thread3466.thread.thread.thread

bb.buj:                                           ; preds = %bb.bub
  %.not159 = icmp eq i64 %1, 1
  br i1 %.not159, label %.thread3468, label %.thread3466

.thread3466:                                      ; preds = %bb.buj
  switch i8 %i.mrp, label %.thread3468 [
    i8 -2, label %bb.buk
    i8 -1, label %.thread3466.thread.thread
  ]

bb.buk:                                           ; preds = %bb.buc, %.thread3466
  %i.msq = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %i.msr = load i8, ptr %i.msq, align 1, !tbaa !81
  %i.mss = icmp eq i8 %i.msr, -1
  br i1 %i.mss, label %.thread3466.thread.thread.thread, label %.thread3468

.thread3466.thread.thread:                        ; preds = %.thread3466
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  %.pre6779 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !81
  %i.mst = icmp eq i8 %.pre6779, -2
  br i1 %i.mst, label %.thread3466.thread.thread.thread, label %.thread3468

.thread3466.thread.thread.thread:                 ; preds = %bb.bui, %bb.buh, %.thread3466.thread.thread, %bb.buk
  br label %.thread3468.sink.split

.thread3468.sink.split:                           ; preds = %bb.buf, %bb.bui, %bb.bua, %.thread3466.thread.thread.thread
  %.str.31.sink = phi ptr [ @.str.31, %bb.bua ], [ @.str.33, %.thread3466.thread.thread.thread ], [ @.str.32, %bb.bui ], [ @.str.32, %bb.buf ]
  %spec.store.select.sroa.sel1457.v.sroa.sel.v.sroa.sel.v = select i1 %.not, ptr %13, ptr %4
  %spec.store.select.sroa.sel1457.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel1457.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr %.str.31.sink, ptr %spec.store.select.sroa.sel1457.v.sroa.sel.v.sroa.sel, align 8, !tbaa !155
  br label %.thread3468

.thread3468:                                      ; preds = %.thread3468.sink.split, %bb.bug, %bb.buc, %.thread3466, %bb.bud, %bb.bue, %bb.buf, %bb.buk, %bb.buj, %.thread3466.thread.thread, %bb.btx, %bb.btw
  br i1 %.not3501, label %bb.bul, label %bb.bum, !prof !24

bb.bul:                                           ; preds = %.thread3468
  tail call void %.sroa.865.0(ptr noundef %.sroa.15.0, ptr noundef nonnull %.promoted)
  br label %bb.bum

bb.bum:                                           ; preds = %bb.btv, %bb.bul, %.thread3468, %bb.u, %bb.v, %bb.q, %bb.r, %bb.l, %bb.j, %bb.f, %bb.d
  %.0150 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.q ], [ null, %bb.u ], [ null, %bb.l ], [ null, %bb.j ], [ null, %bb.r ], [ null, %bb.v ], [ null, %.thread3468 ], [ null, %bb.bul ], [ %.0149, %bb.btv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  ret ptr %.0150
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL24skip_spaces_and_commentsEPPh(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge, %bb.a
  %.026.ph = phi ptr [ %.025, %._crit_edge ], [ %i.a, %bb.a ]
  %.025.ph = phi ptr [ %i.d, %._crit_edge ], [ %i.a, %bb.a ]
  br label %.backedge

.backedge.backedge:                               ; preds = %bb.f, %.preheader
  %.025.be = phi ptr [ %.3, %.preheader ], [ %.2, %bb.f ]
  br label %.backedge

end_hunk_5
