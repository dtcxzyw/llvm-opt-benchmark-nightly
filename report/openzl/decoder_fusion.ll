Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decoder_fusion?download=true
inline.NumInlined: 80
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ZL_DecoderFusionState_registerFusion:bb.a
  %i.cv = extractvalue { i32, ptr } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cu, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cv, ptr %i.cw, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  br label %ZL_DecoderFusionDesc_validateImpl.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cx = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusionDesc_validateImpl.__zl_static_error_info.71, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.59, i32 noundef 42, i32 noundef 80, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.73) #12 ; 2 uses
  %i.cy = extractvalue { i32, ptr } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i32, ptr } %i.cx, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cy, ptr %i.cz, ptr noundef nonnull @.str.74) #12
  br label %ZL_DecoderFusionDesc_validateImpl.exit.i

bb.n:                                             ; preds = %bb.l, %bb.g
  %i.da = load i32, ptr %i.s, align 4, !tbaa !37
  %i.db = add i32 %i.da, 1                        ; 3 uses
  store i32 %i.db, ptr %i.s, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dc = add nuw nsw i64 %.098.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.ad
  br i1 %exitcond.not.i.i, label %bb.o, label %bb.d, !llvm.loop !95

bb.o:                                             ; preds = %bb.n
  %i.dd = add nuw nsw i64 %.050100.i.i, 1         ; 2 uses
  %i.de = load i32, ptr %i.l, align 4, !tbaa !50
  %i.df = zext i32 %i.de to i64
  %.not57.i.i = icmp samesign ult i64 %i.dd, %i.df
  br i1 %.not57.i.i, label %bb.b, label %ZL_DecoderFusionDesc_validateImpl.exit.i, !llvm.loop !96

ZL_DecoderFusionDesc_validateImpl.exit.i:         ; preds = %bb.o, %.loopexit.i.i, %bb.m, %.thread63.i.i, %.thread60.i.i, %.thread.i.i
  %.sroa.048.10.i.i = phi i32 [ %i.o, %.thread.i.i ], [ %i.af, %.thread63.i.i ], [ %i.cv, %bb.m ], [ %i.ab, %.thread60.i.i ], [ %i.cy, %.loopexit.i.i ], [ 0, %bb.o ] ; 2 uses
  %.sroa.12.10.i.i = phi ptr [ %i.p, %.thread.i.i ], [ %i.ag, %.thread63.i.i ], [ %i.cw, %bb.m ], [ %i.ac, %.thread60.i.i ], [ %i.cz, %.loopexit.i.i ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.dg = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i9.i = icmp eq ptr %.val5.i.i.i, null
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %.not.i.i.i9.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ZL_DecoderFusionDesc_validateImpl.exit.i
  call void @ALLOC_Arena_free(ptr noundef nonnull %.val5.i.i.i, ptr noundef %i.dg) #12
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !44
  call void @ALLOC_Arena_free(ptr noundef nonnull %.val5.i.i.i, ptr noundef %i.di) #12
  br label %ZL_RegenSet_destroy.exit.i

bb.q:                                             ; preds = %ZL_DecoderFusionDesc_validateImpl.exit.i
  call void @ZL_free(ptr noundef %i.dg) #12
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !44
  call void @ZL_free(ptr noundef %i.dj) #12
  br label %ZL_RegenSet_destroy.exit.i

ZL_RegenSet_destroy.exit.i:                       ; preds = %bb.q, %bb.p
  %.not.i = icmp eq i32 %.sroa.048.10.i.i, 0
  br i1 %.not.i, label %ZL_DecoderFusionDesc_validate.exit.thread, label %ZL_DecoderFusionDesc_validate.exit, !prof !48

ZL_DecoderFusionDesc_validate.exit.thread:        ; preds = %ZL_RegenSet_destroy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %._crit_edge165

ZL_DecoderFusionDesc_validate.exit:               ; preds = %ZL_RegenSet_destroy.exit.i
  %i.dk = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %.sroa.048.10.i.i, ptr %.sroa.12.10.i.i, ptr nonnull @ZL_DecoderFusionDesc_validate.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.57, i32 noundef 58, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.dl = extractvalue { i32, ptr } %i.dk, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %._crit_edge165, label %bb.r, !prof !100

bb.r:                                             ; preds = %ZL_DecoderFusionDesc_validate.exit
  %i.dm = extractvalue { i32, ptr } %i.dk, 1
  %i.dn = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.dl, ptr %i.dm, ptr nonnull @ZL_DecoderFusionState_registerFusion.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 155, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #12 ; 2 uses
  %i.do = extractvalue { i32, ptr } %i.dn, 0
  %i.dp = extractvalue { i32, ptr } %i.dn, 1
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = insertvalue { i32, i64 } poison, i32 %i.do, 0
  %i.ds = insertvalue { i32, i64 } %i.dr, i64 %i.dq, 1
  br label %.thread143

._crit_edge165:                                   ; preds = %ZL_DecoderFusionDesc_validate.exit.thread, %ZL_DecoderFusionDesc_validate.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !49 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !32 ; 2 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.dz = mul i64 %i.dw, 24
  %i.ea = add i64 %i.dz, 24
  %i.eb = call ptr @ALLOC_Arena_realloc(ptr noundef %i.dx, ptr noundef %i.du, i64 noundef %i.ea) #12 ; 6 uses
  %.not111 = icmp eq ptr %i.eb, null
  br i1 %.not111, label %.thread, label %bb.s, !prof !29

.thread:                                          ; preds = %._crit_edge165
  %i.ec = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusionState_registerFusion.__zl_static_error_info.12, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 163, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.ed = extractvalue { i32, ptr } %i.ec, 0      ; 2 uses
  %i.ee = extractvalue { i32, ptr } %i.ec, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ed, ptr %i.ee, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = insertvalue { i32, i64 } poison, i32 %i.ed, 0
  %i.eh = insertvalue { i32, i64 } %i.eg, i64 %i.ef, 1
  br label %.thread143

bb.s:                                             ; preds = %._crit_edge165
  %i.ei = icmp eq ptr %i.du, null
  %i.ej = icmp ne i64 %i.dw, 0
  %i.ek = and i1 %i.ei, %i.ej
  store ptr %i.eb, ptr %i.dt, align 8, !tbaa !49
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31
  %i.en = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.eo = mul i64 %i.en, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr align 8 %i.em, i64 %i.eo, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ep = load i64, ptr %1, align 8               ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !tbaa !55
  %i.eq = lshr i64 %i.ep, 28
  %i.er = and i64 %i.eq, 68719476720
  %i.es = load ptr, ptr %0, align 8, !tbaa !28
  %i.et = call ptr @ALLOC_Arena_malloc(ptr noundef %i.es, i64 noundef %i.er) #12 ; 3 uses
  %.not112 = icmp eq ptr %i.et, null
  br i1 %.not112, label %.thread129, label %.preheader, !prof !29

.preheader:                                       ; preds = %bb.u
  %i.eu = load i32, ptr %i.l, align 4, !tbaa !50
  %.not114151.not = icmp eq i32 %i.eu, 0
  br i1 %.not114151.not, label %._crit_edge, label %.lr.ph

.thread129:                                       ; preds = %bb.u
  %i.ev = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusionState_registerFusion.__zl_static_error_info.19, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 177, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.ew = extractvalue { i32, ptr } %i.ev, 0      ; 2 uses
  %i.ex = extractvalue { i32, ptr } %i.ev, 1      ; 2 uses
  %i.ey = load i32, ptr %i.l, align 4, !tbaa !50
  %i.ez = zext i32 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 4
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ew, ptr %i.ex, ptr noundef nonnull @.str.22, i64 noundef %i.fa, ptr noundef nonnull @.str.23) #12
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = insertvalue { i32, i64 } poison, i32 %i.ew, 0
  %i.fd = insertvalue { i32, i64 } %i.fc, i64 %i.fb, 1
  br label %.thread143

.lr.ph:                                           ; preds = %.preheader, %bb.v
  %.0106152 = phi i64 [ %i.gb, %bb.v ], [ 0, %.preheader ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %.0106152 ; 3 uses
  %i.ff = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.0106152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !101
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !103
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = load ptr, ptr %0, align 8, !tbaa !28
  %i.fm = call ptr @ALLOC_Arena_malloc(ptr noundef %i.fl, i64 noundef %i.fk) #12 ; 3 uses
  %.not113 = icmp eq ptr %i.fm, null
  br i1 %.not113, label %.thread136, label %bb.v, !prof !29

.thread136:                                       ; preds = %.lr.ph
  %i.fn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusionState_registerFusion.__zl_static_error_info.27, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 185, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.fo = extractvalue { i32, ptr } %i.fn, 0      ; 2 uses
  %i.fp = extractvalue { i32, ptr } %i.fn, 1      ; 2 uses
  %i.fq = load i32, ptr %i.fh, align 4, !tbaa !103
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fo, ptr %i.fp, ptr noundef nonnull @.str.22, i64 noundef %i.fs, ptr noundef nonnull @.str.23) #12
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = insertvalue { i32, i64 } poison, i32 %i.fo, 0
  %i.fv = insertvalue { i32, i64 } %i.fu, i64 %i.ft, 1
  br label %.thread143

bb.v:                                             ; preds = %.lr.ph
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !104
  %i.fy = load i32, ptr %i.fh, align 4, !tbaa !103
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr align 4 %i.fx, i64 %i.ga, i1 false)
  store ptr %i.fm, ptr %i.fw, align 8, !tbaa !104
  %i.gb = add nuw nsw i64 %.0106152, 1            ; 2 uses
  %i.gc = load i32, ptr %i.l, align 4, !tbaa !50
  %i.gd = zext i32 %i.gc to i64
  %.not114 = icmp samesign ult i64 %i.gb, %i.gd
  br i1 %.not114, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.v, %.preheader
  %i.ge = load i32, ptr %1, align 8, !tbaa !47
  %i.gf = load i64, ptr %i.dy, align 8, !tbaa !32 ; 2 uses
  %.not115153 = icmp eq i64 %i.gf, 0
  br i1 %.not115153, label %.critedge, label %.lr.ph156

.lr.ph156:                                        ; preds = %._crit_edge, %bb.w
  %.0154 = phi i64 [ %i.gk, %bb.w ], [ %i.gf, %._crit_edge ] ; 3 uses
  %i.gg = getelementptr [24 x i8], ptr %i.eb, i64 %.0154 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24    ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !47
  %i.gj = icmp ult i32 %i.ge, %i.gi
  br i1 %i.gj, label %bb.w, label %.critedge

bb.w:                                             ; preds = %.lr.ph156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !tbaa.struct !105
  %i.gk = add i64 %.0154, -1                      ; 2 uses
  %.not115 = icmp eq i64 %i.gk, 0
  br i1 %.not115, label %.critedge, label %.lr.ph156, !llvm.loop !98

.critedge:                                        ; preds = %.lr.ph156, %bb.w, %._crit_edge
  %.0.lcssa = phi i64 [ 0, %._crit_edge ], [ 0, %bb.w ], [ %.0154, %.lr.ph156 ]
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.0.lcssa ; 3 uses
  store i64 %i.ep, ptr %i.gl, align 8
  %.sroa.4.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx47, align 8, !tbaa !55
  %.sroa.549.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store ptr %.sroa.549.0.copyload, ptr %.sroa.549.0..sroa_idx50, align 8, !tbaa !55
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.eb, ptr %i.gm, align 8, !tbaa !31
  %6 = load i64, ptr %i.dy, align 8, !tbaa !32
  %7 = add i64 %6, 1
  store i64 %7, ptr %i.dy, align 8, !tbaa !32
  %i.gn = call fastcc { i32, i64 } @ZL_DecoderFusionState_buildMap(ptr noundef nonnull %0)
  br label %.thread143

.thread143:                                       ; preds = %.thread136, %.critedge, %.thread129, %.thread, %bb.r
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.ds, %bb.r ], [ %i.eh, %.thread ], [ %i.gn, %.critedge ], [ %i.fv, %.thread136 ], [ %i.fd, %.thread129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @ALLOC_Arena_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @ALLOC_Arena_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @ZL_DecoderFusion_getScratchSpace(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.b, i64 noundef %1) #12
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @ZL_DecoderFusion_createTypedStream(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3)
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = icmp eq i64 %3, 0
  %or.cond = or i1 %i.c, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond17 = or i1 %i.d, %or.cond
  br i1 %or.cond17, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  %i.g = trunc i64 %i.f to i32
  %.not = icmp slt i32 %1, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = load ptr, ptr %0, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !30
  %i.u = tail call i32 @DT_getRegenType(ptr noundef %i.n, i32 noundef %1) #12
  %i.v = tail call ptr @DCTX_newStream(ptr noundef %i.o, i32 noundef %i.t, i32 noundef %i.u, i64 noundef %3, i64 noundef %2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.v, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @DCTX_newStream(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @DT_getRegenType(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @ZL_DecoderFusion_createStringStream(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %ZL_DecoderFusion_createTypedStream.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63
  %i.d = trunc i64 %i.c to i32
  %.not.i = icmp slt i32 %1, %i.d
  br i1 %.not.i, label %ZL_DecoderFusion_createTypedStream.exit, label %ZL_DecoderFusion_createTypedStream.exit.thread

ZL_DecoderFusion_createTypedStream.exit:          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = load ptr, ptr %0, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !30
  %i.r = tail call i32 @DT_getRegenType(ptr noundef %i.k, i32 noundef %1) #12
  %i.s = tail call ptr @DCTX_newStream(ptr noundef %i.l, i32 noundef %i.q, i32 noundef %i.r, i64 noundef 1, i64 noundef %3) #12 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ZL_DecoderFusion_createTypedStream.exit.thread, label %bb.c

bb.c:                                             ; preds = %ZL_DecoderFusion_createTypedStream.exit
  %i.u = tail call i32 @ZL_Data_type(ptr noundef nonnull %i.s) #12
  %.not = icmp eq i32 %i.u, 8
  br i1 %.not, label %bb.d, label %ZL_DecoderFusion_createTypedStream.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @ZL_Data_reserveStringLens(ptr noundef nonnull %i.s, i64 noundef %2) #12
  %i.w = icmp eq ptr %i.v, null
  %. = select i1 %i.w, ptr null, ptr %i.s
  br label %ZL_DecoderFusion_createTypedStream.exit.thread

ZL_DecoderFusion_createTypedStream.exit.thread:   ; preds = %bb.b, %bb.a, %bb.c, %ZL_DecoderFusion_createTypedStream.exit, %bb.d
  %.1 = phi ptr [ %., %bb.d ], [ null, %ZL_DecoderFusion_createTypedStream.exit ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define void @ZL_DecoderFusion_getCodecHeader(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.ZL_Result_ZL_RBuffer_u) align 8 captures(none) initializes((0, 4), (8, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !68
  %i.c = tail call ptr @ZL_DCtx_getOperationContext(ptr noundef %i.b) #13
  store ptr %i.c, ptr %3, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp ult i64 %2, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusion_getCodecHeader.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31, i32 noundef 265, i32 noundef 80, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i64 noundef %2, i64 noundef %i.e) #12 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.51.0..sroa_idx, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.sink = phi i32 [ 0, %.critedge ], [ %i.g, %bb.b ]
  store i32 %.sink, ptr %0, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_DCtx_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ZL_DecoderFusion_getCodecInputs(ptr dead_on_unwind noalias nofree writable writeonly sret(%union.ZL_Result_ZL_CodecInputs_u) align 8 captures(none) initializes((0, 4), (8, 40)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !68
  %i.c = tail call ptr @ZL_DCtx_getOperationContext(ptr noundef %i.b) #13
  store ptr %i.c, ptr %3, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp ult i64 %2, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DecoderFusion_getCodecInputs.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36, i32 noundef 273, i32 noundef 80, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i64 noundef %2, i64 noundef %i.e) #12 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %2
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !75
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !108
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = sub nsw i64 %i.p, %i.s                   ; 2 uses
end_hunk_0
