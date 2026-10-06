Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/cctx?download=true
inline.NumInlined: 316
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CCTX_flushChunk:bb.a
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !70
  %i.co = call { i64, ptr } @RTGM_refInput(ptr noundef nonnull %i.cj, ptr noundef %i.cn) #15 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0      ; 2 uses
  %.sroa.064.0.extract.trunc.i = trunc i64 %i.cp to i32 ; 2 uses
  %.not.i235 = icmp eq i32 %.sroa.064.0.extract.trunc.i, 0
  br i1 %.not.i235, label %bb.m, label %bb.l, !prof !43

bb.l:                                             ; preds = %.lr.ph.i
  %i.cq = extractvalue { i64, ptr } %i.co, 1
  %i.cr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %.sroa.064.0.extract.trunc.i, ptr %i.cq, ptr nonnull @CCTX_replaceChunkWithStore.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.267, i32 noundef 1757, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.cs = extractvalue { i32, ptr } %i.cr, 0
  %i.ct = extractvalue { i32, ptr } %i.cr, 1
  br label %CCTX_replaceChunkWithStore.exit

bb.m:                                             ; preds = %.lr.ph.i
  %.sroa.13.0.extract.shift.i = lshr exact i64 %i.cp, 32 ; 3 uses
  %.not75.i = icmp eq i64 %.0105.i, %.sroa.13.0.extract.shift.i
  br i1 %.not75.i, label %bb.o, label %bb.n, !prof !43

bb.n:                                             ; preds = %bb.m
  %.sroa.036.4.extract.trunc.i = trunc nuw i64 %.sroa.13.0.extract.shift.i to i32
  %i.cu = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @CCTX_replaceChunkWithStore.__zl_static_error_info.268, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.267, i32 noundef 1764, i32 noundef 12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.271, i64 noundef %.sroa.13.0.extract.shift.i, i64 noundef %.0105.i) #15 ; 2 uses
  %i.cv = extractvalue { i32, ptr } %i.cu, 0      ; 2 uses
  %i.cw = extractvalue { i32, ptr } %i.cu, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cv, ptr %i.cw, ptr noundef nonnull @.str.272, i64 noundef %.0105.i, i32 noundef %.sroa.036.4.extract.trunc.i) #15
  br label %CCTX_replaceChunkWithStore.exit

bb.o:                                             ; preds = %bb.m
  %i.cx = add nuw nsw i64 %.0105.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !137

._crit_edge.i:                                    ; preds = %bb.o, %.thread
  %i.cy = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40
  %i.db = call ptr @ALLOC_Arena_malloc(ptr noundef %i.da, i64 noundef %i.cy) #15 ; 4 uses
  %.not77.i = icmp eq ptr %i.db, null
  br i1 %.not77.i, label %.thread97.i, label %.preheader.i, !prof !42

.preheader.i:                                     ; preds = %._crit_edge.i
  br i1 %.not76104.not.i, label %._crit_edge108.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %.preheader.i
  %min.iters.check383 = icmp ult i64 %2, 8
  br i1 %min.iters.check383, label %.lr.ph107.i.preheader395, label %vector.ph384

vector.ph384:                                     ; preds = %.lr.ph107.i.preheader
  %n.vec385 = and i64 %2, -8                      ; 3 uses
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph384
  %index387 = phi i64 [ 0, %vector.ph384 ], [ %index.next388, %vector.body386 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph384 ], [ %vec.ind.next, %vector.body386 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index387 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %vec.ind, ptr %i.dc, align 4, !tbaa !57
  store <4 x i32> %step.add, ptr %i.dd, align 4, !tbaa !57
  %index.next388 = add nuw i64 %index387, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.de = icmp eq i64 %index.next388, %n.vec385
  br i1 %i.de, label %middle.block389, label %vector.body386, !llvm.loop !138

middle.block389:                                  ; preds = %vector.body386
  %cmp.n = icmp eq i64 %2, %n.vec385
  br i1 %cmp.n, label %._crit_edge108.i, label %.lr.ph107.i.preheader395

.lr.ph107.i.preheader395:                         ; preds = %.lr.ph107.i.preheader, %middle.block389
  %.070106.i.ph = phi i64 [ 0, %.lr.ph107.i.preheader ], [ %n.vec385, %middle.block389 ]
  br label %.lr.ph107.i

.thread97.i:                                      ; preds = %._crit_edge.i
  %i.df = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @CCTX_replaceChunkWithStore.__zl_static_error_info.274, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.267, i32 noundef 1769, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #15 ; 2 uses
  %i.dg = extractvalue { i32, ptr } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { i32, ptr } %i.df, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dg, ptr %i.dh, ptr noundef nonnull @.str.54, i64 noundef %i.cy, ptr noundef nonnull @.str.101) #15
  br label %CCTX_replaceChunkWithStore.exit

._crit_edge108.i:                                 ; preds = %.lr.ph107.i, %middle.block389, %.preheader.i
  %i.di = call fastcc { i32, i64 } @CCTX_runSupervisedGraphID_internal(ptr noundef nonnull %0, i32 2, ptr noundef null, ptr noundef nonnull %i.db, i64 noundef %2, i32 noundef 1), !inline_history !139 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !39
  call void @ALLOC_Arena_freeAll(ptr noundef %i.dk) #15, !inline_history !139
  %i.dl = extractvalue { i32, i64 } %i.di, 0      ; 2 uses
  %.not78.i = icmp eq i32 %i.dl, 0
  br i1 %.not78.i, label %CCTX_replaceChunkWithStore.exit.thread, label %bb.p, !prof !43

CCTX_replaceChunkWithStore.exit.thread:           ; preds = %._crit_edge108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.r

.lr.ph107.i:                                      ; preds = %.lr.ph107.i.preheader395, %.lr.ph107.i
  %.070106.i = phi i64 [ %i.do, %.lr.ph107.i ], [ %.070106.i.ph, %.lr.ph107.i.preheader395 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.070106.i
  %i.dn = trunc i64 %.070106.i to i32
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !57
  %i.do = add nuw nsw i64 %.070106.i, 1           ; 2 uses
  %exitcond117.not.i = icmp eq i64 %i.do, %2
  br i1 %exitcond117.not.i, label %._crit_edge108.i, label %.lr.ph107.i, !llvm.loop !140

bb.p:                                             ; preds = %._crit_edge108.i
  %i.dp = extractvalue { i32, i64 } %i.di, 1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.dl, ptr %i.dq, ptr nonnull @CCTX_replaceChunkWithStore.__zl_static_error_info.277, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.267, i32 noundef 1776, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.ds = extractvalue { i32, ptr } %i.dr, 0
  %i.dt = extractvalue { i32, ptr } %i.dr, 1
  br label %CCTX_replaceChunkWithStore.exit

CCTX_replaceChunkWithStore.exit:                  ; preds = %bb.l, %bb.n, %.thread97.i, %bb.p
  %.sroa.064.8.i = phi i32 [ %i.cv, %bb.n ], [ %i.ds, %bb.p ], [ %i.cs, %bb.l ], [ %i.dg, %.thread97.i ] ; 2 uses
  %.sroa.19.8.i.in = phi ptr [ %i.cw, %bb.n ], [ %i.dt, %bb.p ], [ %i.ct, %bb.l ], [ %i.dh, %.thread97.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.not223 = icmp eq i32 %.sroa.064.8.i, 0
  br i1 %.not223, label %bb.r, label %bb.q, !prof !148

bb.q:                                             ; preds = %CCTX_replaceChunkWithStore.exit
  %i.du = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %.sroa.064.8.i, ptr %.sroa.19.8.i.in, ptr nonnull @CCTX_flushChunk.__zl_static_error_info.70, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1872, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.dv = extractvalue { i32, ptr } %i.du, 0
  %i.dw = extractvalue { i32, ptr } %i.du, 1
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = insertvalue { i32, i64 } poison, i32 %i.dv, 0
  %i.dz = insertvalue { i32, i64 } %i.dy, i64 %i.dx, 1
  br label %bb.bd

bb.r:                                             ; preds = %CCTX_replaceChunkWithStore.exit.thread, %CCTX_replaceChunkWithStore.exit
  %i.ea = call { i32, i64 } @CCTX_getFinalGraph(ptr noundef nonnull %0, ptr noundef nonnull %7) ; 2 uses
  %i.eb = extractvalue { i32, i64 } %i.ea, 0      ; 2 uses
  %.not224 = icmp eq i32 %i.eb, 0
  br i1 %.not224, label %bb.t, label %bb.s, !prof !43

bb.s:                                             ; preds = %bb.r
  %i.ec = extractvalue { i32, i64 } %i.ea, 1
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.eb, ptr %i.ed, ptr nonnull @CCTX_flushChunk.__zl_static_error_info.71, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1875, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.ef = extractvalue { i32, ptr } %i.ee, 0
  %i.eg = extractvalue { i32, ptr } %i.ee, 1
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = insertvalue { i32, i64 } poison, i32 %i.ef, 0
  %i.ej = insertvalue { i32, i64 } %i.ei, i64 %i.eh, 1
  br label %bb.bd

bb.t:                                             ; preds = %bb.r
  %i.ek = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 4) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.el = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 7) #15
  %i.em = icmp ne i32 %i.el, 2
  %i.en = zext i1 %i.em to i8
  store i8 %i.en, ptr %3, align 1, !tbaa !143
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ep = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 6) #15
  %i.eq = icmp ne i32 %i.ep, 2
  %i.er = zext i1 %i.eq to i8
  store i8 %i.er, ptr %i.eo, align 1, !tbaa !144
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 0, ptr %i.es, align 1, !tbaa !145
  %i.et = icmp ugt i32 %i.ek, 24
  br i1 %i.et, label %bb.u, label %CCTX_writeChunkHeader.exit237

bb.u:                                             ; preds = %bb.t
  %i.eu = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %.not.i236 = icmp eq ptr %i.eu, null
  br i1 %.not.i236, label %CCTX_writeChunkHeader.exit237, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = call ptr @ZL_Compressor_getDictBundleID(ptr noundef nonnull %i.eu) #15
  %i.ew = icmp ne ptr %i.ev, null
  %i.ex = zext i1 %i.ew to i8
  br label %CCTX_writeChunkHeader.exit237

CCTX_writeChunkHeader.exit237:                    ; preds = %bb.t, %bb.u, %bb.v
  %i.ey = phi i8 [ 0, %bb.u ], [ 0, %bb.t ], [ %i.ex, %bb.v ]
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !146
  %i.fa = call { i32, i64 } @EFH_writeChunkHeader(ptr noundef %i.v, i64 noundef %i.w, ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef %i.ek) #15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.fb = extractvalue { i32, i64 } %i.fa, 0      ; 2 uses
  %i.fc = extractvalue { i32, i64 } %i.fa, 1      ; 2 uses
  %.not225 = icmp eq i32 %i.fb, 0
  br i1 %.not225, label %.thread245, label %bb.w, !prof !43

bb.w:                                             ; preds = %CCTX_writeChunkHeader.exit237
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.fb, ptr %i.fd, ptr nonnull @CCTX_flushChunk.__zl_static_error_info.72, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1885, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.ff = extractvalue { i32, ptr } %i.fe, 0
  %i.fg = extractvalue { i32, ptr } %i.fe, 1
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = insertvalue { i32, i64 } poison, i32 %i.ff, 0
  %i.fj = insertvalue { i32, i64 } %i.fi, i64 %i.fh, 1
  br label %bb.bd

.thread245:                                       ; preds = %CCTX_writeChunkHeader.exit237, %._crit_edge, %bb.i
  %.2194 = phi i64 [ %i.ap, %._crit_edge ], [ %i.ap, %bb.i ], [ %i.fc, %CCTX_writeChunkHeader.exit237 ]
  %i.fk = add i64 %.2194, %i.s                    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !98 ; 2 uses
  %.not228309.not = icmp eq i64 %i.fm, 0
  br i1 %.not228309.not, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %.thread245
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %.pre332 = load ptr, ptr %i.fn, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph312, %bb.aa
  %8 = phi ptr [ %.pre332, %.lr.ph312 ], [ %9, %bb.aa ] ; 2 uses
  %.0202310.a = phi i64 [ %i.fk, %.lr.ph312 ], [ %i.ga, %bb.aa ] ; 3 uses
  %.0202310 = phi i64 [ 0, %.lr.ph312 ], [ %i.gb, %bb.aa ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.0202310 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !147 ; 5 uses
  %i.fr = sub i64 %i.q, %.0202310.a               ; 2 uses
  %.not226.not = icmp ugt i64 %i.fq, %i.fr
  br i1 %.not226.not, label %.thread268, label %bb.y, !prof !42

.thread268:                                       ; preds = %bb.x
  %i.fs = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @CCTX_flushChunk.__zl_static_error_info.73, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1901, i32 noundef 5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i64 noundef %i.fq, i64 noundef %i.fr) #15 ; 2 uses
  %i.ft = extractvalue { i32, ptr } %i.fs, 0      ; 2 uses
  %i.fu = extractvalue { i32, ptr } %i.fs, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ft, ptr %i.fu, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = insertvalue { i32, i64 } poison, i32 %i.ft, 0
  %i.fx = insertvalue { i32, i64 } %i.fw, i64 %i.fv, 1
  br label %bb.bd

bb.y:                                             ; preds = %bb.x
  %.not227 = icmp eq i64 %i.fq, 0
  br i1 %.not227, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0202310.a
  %i.fz = load ptr, ptr %i.fo, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr align 1 %i.fz, i64 %i.fq, i1 false)
  %.pre = load ptr, ptr %i.fn, align 8, !tbaa !99
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %9 = phi ptr [ %.pre, %bb.z ], [ %8, %bb.y ]
  %i.ga = add i64 %i.fq, %.0202310.a              ; 2 uses
  %i.gb = add nuw i64 %.0202310, 1                ; 2 uses
  %exitcond331.not = icmp eq i64 %i.gb, %i.fm
  br i1 %exitcond331.not, label %._crit_edge313, label %bb.x, !llvm.loop !141

._crit_edge313:                                   ; preds = %bb.aa, %.thread245
  %.0185.lcssa = phi i64 [ %i.fk, %.thread245 ], [ %i.ga, %bb.aa ] ; 4 uses
  %i.gc = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 7) #15
  %.not229 = icmp eq i32 %i.gc, 2
  br i1 %.not229, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge313
  %i.gd = sub i64 %i.q, %.0185.lcssa              ; 2 uses
  %i.ge = icmp ugt i64 %i.gd, 3
  br i1 %i.ge, label %bb.ad, label %bb.ac, !prof !43

bb.ac:                                            ; preds = %bb.ab
  %i.gf = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @CCTX_flushChunk.__zl_static_error_info.78, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1916, i32 noundef 5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.80, i64 noundef %i.gd, i64 noundef 4) #15 ; 2 uses
  %i.gg = extractvalue { i32, ptr } %i.gf, 0      ; 2 uses
  %i.gh = extractvalue { i32, ptr } %i.gf, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gg, ptr %i.gh, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = insertvalue { i32, i64 } poison, i32 %i.gg, 0
  %i.gk = insertvalue { i32, i64 } %i.gj, i64 %i.gi, 1
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab
  %i.gl = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 4) #15
  %i.gm = call { i32, i64 } @STREAM_hashLastCommit_xxh3low32(ptr noundef %1, i64 noundef %2, i32 noundef %i.gl) #15 ; 2 uses
  %i.gn = extractvalue { i32, i64 } %i.gm, 0      ; 2 uses
  %i.go = extractvalue { i32, i64 } %i.gm, 1      ; 2 uses
  %.not230 = icmp eq i32 %i.gn, 0
  br i1 %.not230, label %.thread284, label %bb.ae, !prof !43

.thread284:                                       ; preds = %bb.ad
  %i.gp = trunc i64 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0185.lcssa
  store i32 %i.gp, ptr %i.gq, align 1
  %i.gr = add i64 %.0185.lcssa, 4
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = inttoptr i64 %i.go to ptr
  %i.gt = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.gn, ptr %i.gs, ptr nonnull @CCTX_flushChunk.__zl_static_error_info.81, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1923, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #15 ; 2 uses
  %i.gu = extractvalue { i32, ptr } %i.gt, 0
  %i.gv = extractvalue { i32, ptr } %i.gt, 1
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = insertvalue { i32, i64 } poison, i32 %i.gu, 0
  %i.gy = insertvalue { i32, i64 } %i.gx, i64 %i.gw, 1
  br label %bb.bd

bb.af:                                            ; preds = %.thread284, %._crit_edge313
  %.4189 = phi i64 [ %i.gr, %.thread284 ], [ %.0185.lcssa, %._crit_edge313 ] ; 13 uses
  %i.gz = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 6) #15
  %.not231 = icmp eq i32 %i.gz, 2
  br i1 %.not231, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = sub i64 %i.q, %.4189                    ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, 3
  br i1 %i.hb, label %bb.ai, label %bb.ah, !prof !43

bb.ah:                                            ; preds = %bb.ag
  %i.hc = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @CCTX_flushChunk.__zl_static_error_info.82, ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.68, i32 noundef 1935, i32 noundef 5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.80, i64 noundef %i.ha, i64 noundef 4) #15 ; 2 uses
  %i.hd = extractvalue { i32, ptr } %i.hc, 0      ; 2 uses
  %i.he = extractvalue { i32, ptr } %i.hc, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.hd, ptr %i.he, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = insertvalue { i32, i64 } poison, i32 %i.hd, 0
  %i.hh = insertvalue { i32, i64 } %i.hg, i64 %i.hf, 1
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ag
  %i.hi = call i32 @GCParams_getParameter(ptr noundef nonnull %i.t, i32 noundef 4) #15
  %i.hj = icmp slt i32 %i.hi, 21
  %spec.select234 = select i1 %i.hj, i64 0, i64 %i.s ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select234 ; 14 uses
  %i.hl = sub i64 %.4189, %spec.select234         ; 15 uses
  %i.hm = icmp ult i64 %i.hl, 17
  br i1 %i.hm, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.hn = icmp samesign ugt i64 %i.hl, 8
  br i1 %i.hn, label %bb.ak, label %bb.al, !prof !43

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val39.i = load i64, ptr %i.hk, align 1, !tbaa !67
  %i.ho = xor i64 %.val39.i, 7458650908927343033  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 %.4189
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %.val40.i = load i64, ptr %i.hq, align 1, !tbaa !67
  %i.hr = xor i64 %.val40.i, -5812251307325107654 ; 2 uses
  %i.hs = call noundef i64 @llvm.bswap.i64(i64 %i.ho)
  %i.ht = add i64 %i.hs, %i.hl
  %i.hu = add i64 %i.ht, %i.hr
  %i.hv = zext i64 %i.ho to i128
  %i.hw = zext i64 %i.hr to i128
  %i.hx = mul nuw i128 %i.hw, %i.hv               ; 2 uses
  %i.hy = lshr i128 %i.hx, 64
  %i.hz = xor i128 %i.hy, %i.hx
  %i.ia = trunc i128 %i.hz to i64
  %i.ib = add i64 %i.hu, %i.ia                    ; 2 uses
  %i.ic = lshr i64 %i.ib, 37
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = mul i64 %i.id, 1609587791953885689      ; 2 uses
  %i.if = lshr i64 %i.ie, 32
  %i.ig = xor i64 %i.if, %i.ie
  br label %XXH_INLINE_XXH3_64bits.exit

bb.al:                                            ; preds = %bb.aj
  %i.ih = icmp samesign ugt i64 %i.hl, 3
  br i1 %i.ih, label %bb.am, label %bb.an, !prof !43

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val43.i = load i32, ptr %i.hk, align 1, !tbaa !57
  %i.ii = getelementptr inbounds nuw i8, ptr %i.o, i64 %.4189
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -4
  %.val44.i = load i32, ptr %i.ij, align 1, !tbaa !57
  %i.ik = zext i32 %.val44.i to i64
  %i.il = zext i32 %.val43.i to i64
  %i.im = shl nuw i64 %i.il, 32
  %i.in = or disjoint i64 %i.im, %i.ik
  %i.io = xor i64 %i.in, -4090762196417718878     ; 5 uses
  %i.ip = call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 49)
  %i.iq = call i64 @llvm.fshl.i64(i64 %i.io, i64 %i.io, i64 24)
  %i.ir = xor i64 %i.iq, %i.ip
  %i.is = xor i64 %i.ir, %i.io
  %i.it = mul i64 %i.is, -6939452855193903323     ; 2 uses
  %i.iu = lshr i64 %i.it, 35
  %i.iv = add nuw nsw i64 %i.iu, %i.hl
  %i.iw = xor i64 %i.iv, %i.it
  %i.ix = mul i64 %i.iw, -6939452855193903323     ; 2 uses
  %i.iy = lshr i64 %i.ix, 28
  %i.iz = xor i64 %i.iy, %i.ix
  br label %XXH_INLINE_XXH3_64bits.exit

bb.an:                                            ; preds = %bb.al
  %.not.i.i = icmp eq i64 %.4189, %spec.select234
  br i1 %.not.i.i, label %XXH_INLINE_XXH3_64bits.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.ja = load i8, ptr %i.hk, align 1, !tbaa !62
  %i.jb = lshr i64 %i.hl, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !62
  %i.je = getelementptr i8, ptr %i.o, i64 %.4189
  %i.jf = getelementptr i8, ptr %i.je, i64 -1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !62
  %i.jh = zext i8 %i.ja to i64
  %i.ji = shl nuw nsw i64 %i.jh, 16
  %i.jj = zext i8 %i.jd to i64
  %i.jk = shl nuw nsw i64 %i.jj, 24
  %i.jl = or disjoint i64 %i.jk, %i.ji
  %i.jm = zext i8 %i.jg to i64
  %i.jn = or disjoint i64 %i.jl, %i.jm
  %i.jo = shl nuw nsw i64 %i.hl, 8
  %i.jp = or disjoint i64 %i.jn, %i.jo
  %i.jq = xor i64 %i.jp, 2267503259
  %i.jr = mul i64 %i.jq, -4417276706812531889     ; 2 uses
  %i.js = lshr i64 %i.jr, 29
  %i.jt = xor i64 %i.js, %i.jr
  %i.ju = mul i64 %i.jt, 1609587929392839161      ; 2 uses
  %i.jv = lshr i64 %i.ju, 32
  %i.jw = xor i64 %i.jv, %i.ju
  br label %XXH_INLINE_XXH3_64bits.exit

bb.ap:                                            ; preds = %bb.ai
  %i.jx = icmp ult i64 %i.hl, 129
  br i1 %i.jx, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.jy = mul i64 %i.hl, -7046029288634856825     ; 4 uses
  %i.jz = icmp samesign ugt i64 %i.hl, 32
  br i1 %i.jz, label %bb.ar, label %XXH3_len_17to128_64b.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ka = icmp samesign ugt i64 %i.hl, 64
  br i1 %i.ka, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.kb = icmp samesign ugt i64 %i.hl, 96
  br i1 %i.kb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %.val28.i = load i64, ptr %i.kc, align 1, !tbaa !67
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %.val27.i = load i64, ptr %i.kd, align 1, !tbaa !67
  %i.ke = xor i64 %.val28.i, 4554437623014685352
  %i.kf = xor i64 %.val27.i, 2111919702937427193
  %i.kg = zext i64 %i.ke to i128
  %i.kh = zext i64 %i.kf to i128
  %i.ki = mul nuw i128 %i.kh, %i.kg               ; 2 uses
  %i.kj = lshr i128 %i.ki, 64
  %i.kk = xor i128 %i.kj, %i.ki
  %i.kl = trunc i128 %i.kk to i64
  %i.km = add i64 %i.jy, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.o, i64 %.4189 ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -64
end_hunk_0
