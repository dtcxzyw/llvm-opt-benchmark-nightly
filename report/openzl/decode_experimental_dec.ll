Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_experimental_dec?download=true
inline.NumInlined: 142
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ZS_decoderCtx_reset:bb.a
; Function Attrs: nounwind uwtable
define internal { i32, i64 } @ZS_experimentalDecoder_decompress(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.ZS_rep, align 8             ; 46 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 14 uses
  %7 = alloca %struct.ZL_ReadCursor, align 8      ; 9 uses
  %8 = alloca %struct.ZS_window, align 8          ; 10 uses
  %9 = alloca %struct.ZS_RolzDTable2, align 8     ; 16 uses
  %10 = alloca %struct.ZS_Lits, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp ugt i64 %4, 14
  br i1 %i.f, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 588, i32 noundef 12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %4, i64 noundef 15) #11 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.ec

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %3, align 1, !tbaa !19      ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.o = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.r = load i8, ptr %i.n, align 1, !tbaa !19    ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load i8, ptr %i.q, align 1, !tbaa !19
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.x = load i8, ptr %i.t, align 1, !tbaa !19
  %i.y = icmp ne i8 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !19   ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.val.i = load i32, ptr %i.ac, align 1          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 15
  store ptr %i.ag, ptr %7, align 8, !tbaa !21
  %.val.i352 = load i32, ptr %i.af, align 1       ; 4 uses
  switch i8 %i.l, label %bb.d [
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 12, label %bb.e
    i8 16, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.10, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 613, i32 noundef 55, ptr noundef nonnull @.str.12, i32 noundef %i.m) #11 ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ah, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ai, ptr %i.aj, ptr noundef nonnull @.str.13) #11
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %bb.ec

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %.thread629, label %bb.f, !prof !22

.thread629:                                       ; preds = %bb.e
  %i.al = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.14, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 619, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.al, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.am, ptr %i.an, ptr noundef nonnull @.str.20) #11
  %i.ao = ptrtoint ptr %i.an to i64
  br label %bb.ec

bb.f:                                             ; preds = %bb.e
  %.not269 = icmp eq i8 %i.r, 0
  br i1 %.not269, label %.thread632, label %bb.g, !prof !22

.thread632:                                       ; preds = %bb.f
  %i.ap = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.21, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 621, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.aq = extractvalue { i32, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.ap, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aq, ptr %i.ar, ptr noundef nonnull @.str.24) #11
  %i.as = ptrtoint ptr %i.ar to i64
  br label %bb.ec

bb.g:                                             ; preds = %bb.f
  %i.at = add nuw nsw i32 %i.s, %i.p              ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 28
  br i1 %i.au, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.av = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.25, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 626, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %i.at, i32 noundef 27) #11 ; 2 uses
  %i.aw = extractvalue { i32, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { i32, ptr } %i.av, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aw, ptr %i.ax, ptr noundef nonnull @.str.30) #11
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %bb.ec

bb.i:                                             ; preds = %bb.g
  %i.az = icmp ult i32 %.val.i352, 1073741824
  br i1 %i.az, label %bb.k, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ba = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.31, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 627, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %.val.i352, i32 noundef 1073741824) #11 ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.36) #11
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %bb.ec

bb.k:                                             ; preds = %bb.i
  %i.be = icmp ult i32 %.val.i, 1073741824
  br i1 %i.be, label %bb.m, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.bf = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.37, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 628, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %.val.i, i32 noundef 1073741824) #11 ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bf, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bg, ptr %i.bh, ptr noundef nonnull @.str.40) #11
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %bb.ec

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) @__const.ZS_experimentalDecoder_decompress.reps, i64 24, i1 false)
  %i.bj = ptrtoint ptr %i.c to i64                ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.bl = trunc i64 %2 to i32
  %i.bm = call i32 @ZS_window_init(ptr noundef nonnull %8, i32 noundef %i.bl, i32 noundef 8) #11
  %.not270 = icmp eq i32 %i.bm, 0
  br i1 %.not270, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.bn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.41, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 633, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11 ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bo, ptr %i.bp, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %bb.eb

bb.o:                                             ; preds = %bb.m
  %i.br = call { i32, i64 } @ZS_RolzDTable2_init(ptr noundef nonnull %9, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i1 noundef zeroext %i.y) #11
  %i.bs = extractvalue { i32, i64 } %i.br, 0
  %.not657 = icmp eq i32 %i.bs, 0
  br i1 %.not657, label %bb.q, label %bb.p, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.bt = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.45, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 642, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47) #11 ; 2 uses
  %i.bu = extractvalue { i32, ptr } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { i32, ptr } %i.bt, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bu, ptr %i.bv, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.bw = ptrtoint ptr %i.bv to i64
  br label %bb.eb

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bx = add nuw nsw i32 %.val.i, 32
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = call ptr @ZL_malloc(i64 noundef %i.by) #11 ; 5 uses
  %i.ca = zext nneg i32 %.val.i352 to i64         ; 11 uses
  %i.cb = call ptr @ZL_malloc(i64 noundef %i.ca) #11 ; 38 uses
  %i.cc = shl nuw nsw i64 %i.ca, 2                ; 3 uses
  %i.cd = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.ce = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.cf = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.cg = insertelement <4 x ptr> poison, ptr %i.bz, i64 0
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %i.cb, i64 1
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %i.cd, i64 2
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %i.ce, i64 3
  %.fr = freeze <4 x ptr> %i.cj
  %i.ck = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.cl = icmp eq ptr %i.cf, null
  %i.cm = bitcast <4 x i1> %i.ck to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx = select i1 %i.cn, i1 true, i1 %i.cl
  br i1 %op.rdx, label %ZS_execExperimentalSequence.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store ptr %i.bz, ptr %i.co, align 8, !tbaa !26
  %i.cp = zext nneg i32 %.val.i to i64            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !94
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 8 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !95
  %i.cu = call fastcc i32 @decodeLiterals(ptr noundef %10, ptr noundef %7)
  %.not658 = icmp eq i32 %i.cu, 0
  br i1 %.not658, label %bb.s, label %ZS_execExperimentalSequence.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cv = call fastcc i32 @decodeMatchTypes(ptr noundef %i.cb, i64 noundef %i.ca, ptr noundef %7)
  %.not659 = icmp eq i32 %i.cv, 0
  br i1 %.not659, label %bb.t, label %ZS_execExperimentalSequence.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cw = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.cd, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not660 = icmp eq i32 %i.cw, 0
  br i1 %.not660, label %bb.u, label %ZS_execExperimentalSequence.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cx = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.ce, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not661 = icmp eq i32 %i.cx, 0
  br i1 %.not661, label %bb.v, label %ZS_execExperimentalSequence.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cy = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.cf, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not662 = icmp eq i32 %i.cy, 0
  br i1 %.not662, label %bb.w, label %ZS_execExperimentalSequence.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cz = call i32 @ZS_window_update(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2) #11 ; 0 uses
  %.not764 = icmp eq i32 %.val.i352, 0
  %.pre = load i32, ptr %9, align 8, !tbaa !96    ; 7 uses
  br i1 %.not764, label %.critedge, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 4144
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %.sroa.10.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.19.12..sroa_idx392 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23.12..sroa_idx396 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.di = zext i32 %.pre to i64                   ; 7 uses
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = sub nsw i64 0, %i.di
  %i.dl = sub nsw i64 0, %i.di                    ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph715, %bb.ba
  %.0237712 = phi ptr [ %1, %.lr.ph715 ], [ %i.lv, %bb.ba ] ; 8 uses
  %.0239711 = phi i64 [ 0, %.lr.ph715 ], [ %i.lw, %bb.ba ] ; 6 uses
  %i.dm = ptrtoint ptr %.0237712 to i64           ; 2 uses
  %i.dn = sub i64 %i.dm, %i.bk
  %i.do = icmp slt i64 %i.dn, %i.di
  br i1 %i.do, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0239711
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29 ; 3 uses
  %.sroa.051.0.insert.ext = zext i32 %i.dq to i64 ; 10 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0239711
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29 ; 8 uses
  %.sroa.051.4.insert.ext = zext i32 %i.ds to i64 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.0239711
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !29 ; 11 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0239711
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19  ; 2 uses
  %i.dx = sub i64 %i.bj, %i.dm
  %i.dy = icmp ult i64 %i.dx, %.sroa.051.0.insert.ext
  br i1 %i.dy, label %ZS_execExperimentalSequence.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.ea = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, %.sroa.051.0.insert.ext
  br i1 %i.ec, label %ZS_execExperimentalSequence.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ef = icmp eq ptr %.0237712, %1
  br i1 %i.ef, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds i8, ptr %.0237712, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = phi i8 [ %i.eh, %bb.ac ], [ 0, %bb.ab ]
  %.not154.i702.not = icmp eq i32 %i.dq, 0
  br i1 %.not154.i702.not, label %.critedge158.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.0141.i704 = phi i64 [ %i.er, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.0142.i703 = phi i8 [ %i.en, %bb.ae ], [ %i.ei, %bb.ad ]
  %i.ej = zext i8 %.0142.i703 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !35 ; 4 uses
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !36
  %i.en = load i8, ptr %i.em, align 1, !tbaa !19  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.0141.i704
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !19
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.el, align 8, !tbaa !36
  %i.er = add nuw nsw i64 %.0141.i704, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %.sroa.051.0.insert.ext
  br i1 %exitcond.not, label %.critedge158.i, label %.lr.ph, !llvm.loop !49

bb.af:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0237712, ptr align 1 %i.es, i64 %.sroa.051.0.insert.ext, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sroa.051.0.insert.ext
  store ptr %i.et, ptr %i.co, align 8, !tbaa !26
  br label %.critedge158.i

.critedge158.i:                                   ; preds = %bb.ae, %bb.ad, %bb.af
  %i.eu = add i64 %i.ea, %.sroa.051.0.insert.ext
  store i64 %i.eu, ptr %i.ct, align 8, !tbaa !95
  %i.ev = call i64 @llvm.umin.i64(i64 %i.di, i64 %.sroa.051.0.insert.ext)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0237712, i64 %i.ev ; 2 uses
  %i.ex = icmp ult i32 %.pre, %i.dq
  br i1 %i.ex, label %.lr.ph707, label %._crit_edge

.lr.ph707:                                        ; preds = %.critedge158.i
  %i.ey = load i32, ptr %i.db, align 4, !tbaa !97
  %i.ez = load ptr, ptr %i.dc, align 8, !tbaa !99
  %i.fa = ptrtoint ptr %i.ez to i64
  %.val335 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val336 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i = shl nsw i32 -1, %.val335
  %i.fb = xor i32 %notmask.i.i, -1
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %.critedge158.i
  %.0136.i.lcssa = phi ptr [ %i.ew, %.critedge158.i ], [ %i.fv, %bb.ag ] ; 17 uses
  %.0136.i.lcssa907 = ptrtoaddr ptr %.0136.i.lcssa to i64
  switch i8 %i.dw, label %ZS_execExperimentalSequence.exit.thread [
    i8 0, label %bb.ah
    i8 1, label %bb.aj
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 4, label %ZS_execExperimentalSequence.exit
  ]

bb.ag:                                            ; preds = %.lr.ph707, %bb.ag
  %.0136.i706 = phi ptr [ %i.ew, %.lr.ph707 ], [ %i.fv, %bb.ag ] ; 3 uses
  %.0140.i705 = phi i64 [ %i.di, %.lr.ph707 ], [ %i.fu, %bb.ag ]
  %i.fc = getelementptr inbounds i8, ptr %.0136.i706, i64 %i.dj
  %i.fd = call fastcc i64 @ZL_hashPtr(ptr noundef %i.fc, i32 noundef %i.ey, i32 noundef %.pre)
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = ptrtoint ptr %.0136.i706 to i64
  %i.fg = sub i64 %i.ff, %i.fa
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = shl i32 %i.fe, %.val335
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.val336, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 4, !tbaa !42
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nuw i32 %i.fn, 2147483647
  %i.fp = and i32 %i.fo, %i.fb                    ; 2 uses
  %i.fq = trunc i32 %i.fp to i16
  store i16 %i.fq, ptr %i.fl, align 4, !tbaa !42
  %i.fr = zext nneg i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fr ; 2 uses
  store i32 %i.fh, ptr %i.fs, align 4, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 6
  store i8 0, ptr %i.ft, align 2, !tbaa !44
  %i.fu = add nuw nsw i64 %.0140.i705, 1          ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0136.i706, i64 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %i.fu, %.sroa.051.0.insert.ext
  br i1 %exitcond791.not, label %._crit_edge, label %bb.ag, !llvm.loop !50

bb.ah:                                            ; preds = %._crit_edge
  %i.fw = icmp eq i32 %i.ds, 0
  %i.fx = ptrtoint ptr %.0136.i.lcssa to i64
  %i.fy = sub i64 %i.fx, %i.bk
  %i.fz = icmp ult i64 %i.fy, %.sroa.051.4.insert.ext
  %or.cond.i = select i1 %i.fw, i1 true, i1 %i.fz
  br i1 %or.cond.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ga = sub nsw i64 0, %.sroa.051.4.insert.ext
  %i.gb = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.ga
  %i.gc = add i32 %i.du, %i.ab
  %i.gd = load <2 x i32>, ptr %5, align 8
  store i32 %i.ds, ptr %5, align 8
  store <2 x i32> %i.gd, ptr %i.df, align 4
  br label %bb.aw

bb.aj:                                            ; preds = %._crit_edge
  %i.ge = load i32, ptr %i.db, align 4, !tbaa !97
  %i.gf = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.dk
  %i.gg = call fastcc i64 @ZL_hashPtr(ptr noundef %i.gf, i32 noundef %i.ge, i32 noundef %.pre)
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = call fastcc i64 @ZS_RolzDTable2_get(ptr noundef nonnull %9, i32 noundef %i.gh, i32 noundef %i.ds, i32 noundef %i.du) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.gi to i32
  %i.gj = load i32, ptr %i.dh, align 4, !tbaa !100
  %.not155.i = icmp ugt i32 %i.gj, %.sroa.0.0.extract.trunc.i
  br i1 %.not155.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.dc, align 8, !tbaa !99 ; 2 uses
  %i.gl = and i64 %i.gi, 4294967295
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.gi, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %i.gn = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load <2 x i32>, ptr %5, align 8
  store i32 %i.gq, ptr %5, align 8
  store <2 x i32> %i.gr, ptr %i.df, align 4
  %i.gs = ptrtoint ptr %i.gk to i64
  %i.gt = sub i64 %i.gn, %i.gs
  %i.gu = trunc i64 %i.gt to i32
  %.val337 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val338 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i353 = shl nsw i32 -1, %.val337
  %i.gv = xor i32 %notmask.i.i353, -1
  %i.gw = shl i32 %i.gh, %.val337
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val338, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !42
  %i.hb = zext i16 %i.ha to i32
  %i.hc = add nuw i32 %i.hb, 2147483647
  %i.hd = and i32 %i.hc, %i.gv                    ; 2 uses
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.gz, align 4, !tbaa !42
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hf ; 2 uses
  store i32 %i.gu, ptr %i.hg, align 4, !tbaa !43
  %i.hh = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc.i, i32 255)
  %i.hi = trunc nuw i32 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  store i8 %i.hi, ptr %i.hj, align 2, !tbaa !44
  br label %bb.aw

bb.al:                                            ; preds = %._crit_edge, %._crit_edge
  %i.hk = and i64 %.sroa.051.4.insert.ext, 3
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = icmp eq i32 %i.ds, 0
  br i1 %i.hn, label %.split.i, label %.split148.i

.split.i:                                         ; preds = %bb.al
  %.sroa.0.0.copyload378 = load i32, ptr %5, align 8 ; 2 uses
  %i.ho = load <2 x i32>, ptr %i.df, align 4      ; 2 uses
  %i.hp = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.hq = icmp eq i32 %i.du, %i.hp
  %.sroa.19.12.copyload = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.hq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.i
  %.sroa.23.12.copyload = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.an:                                            ; preds = %.split.i
  %i.hr = icmp eq i32 %i.du, %.sroa.19.12.copyload
  %i.hs = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select = select i1 %i.hr, i32 %i.hs, i32 %.sroa.19.12.copyload
  br label %ZS_rep_update.exit

.split148.i:                                      ; preds = %bb.al
  %i.ht = lshr i32 %i.ds, 2
  %i.hu = add nsw i32 %i.ht, -4
  %i.hv = add i32 %i.hu, %i.hm                    ; 5 uses
  %i.hw = and i32 %i.ds, 3                        ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 3
  %i.hy = and i32 %i.ds, 2
  %or.cond.not.i = icmp eq i32 %i.hy, 0
  br i1 %or.cond.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.split148.i
  %i.hz = load <2 x i32>, ptr %5, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %.split148.i
  %i.ia = icmp eq i32 %i.hw, 1
  br i1 %i.ia, label %.thread.i, label %bb.aq

.thread.i:                                        ; preds = %bb.ap
  %i.ib = load i32, ptr %.sroa.10.0..sroa_idx386, align 8
  %i.ic = load <2 x i32>, ptr %5, align 8
  %.pre801 = load i32, ptr %i.dg, align 4
  %i.id = insertelement <2 x i32> %i.ic, i32 %i.ib, i64 1
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.0.copyload379 = load i32, ptr %5, align 8
  %i.ie = load <2 x i32>, ptr %i.df, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload379, %bb.aq ], [ %i.hv, %bb.ao ] ; 2 uses
  %i.if = phi <2 x i32> [ %i.ie, %bb.aq ], [ %i.hz, %bb.ao ] ; 2 uses
  %.pre802 = load i32, ptr %i.dg, align 4         ; 2 uses
  br i1 %i.hx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.19.12.copyload393 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8
  %.sroa.23.12.copyload397 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.at:                                            ; preds = %bb.ar, %.thread.i
  %i.ig = phi i32 [ %.pre801, %.thread.i ], [ %.pre802, %bb.ar ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.hv, %.thread.i ], [ %.sroa.0.1, %bb.ar ] ; 2 uses
  %i.ih = phi <2 x i32> [ %i.id, %.thread.i ], [ %i.if, %bb.ar ] ; 2 uses
  %i.ii = icmp eq i32 %i.du, %i.ig
  %.sroa.19.12.copyload391 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.ii, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.23.12.copyload395 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.av:                                            ; preds = %bb.at
  %i.ij = icmp eq i32 %i.du, %.sroa.19.12.copyload391
  %i.ik = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select759 = select i1 %i.ij, i32 %i.ik, i32 %.sroa.19.12.copyload391
  br label %ZS_rep_update.exit

ZS_rep_update.exit:                               ; preds = %bb.av, %bb.an, %bb.au, %bb.as, %bb.am
  %.sroa.23.0 = phi i32 [ %.sroa.23.12.copyload397, %bb.as ], [ %.sroa.23.12.copyload, %bb.am ], [ %spec.select759, %bb.av ], [ %.sroa.23.12.copyload395, %bb.au ], [ %spec.select, %bb.an ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.12.copyload393, %bb.as ], [ %.sroa.19.12.copyload, %bb.am ], [ %i.ig, %bb.av ], [ %.sroa.19.12.copyload391, %bb.au ], [ %i.hp, %bb.an ]
  %.sroa.12.0 = phi i32 [ %.pre802, %bb.as ], [ %i.du, %bb.am ], [ %i.du, %bb.av ], [ %i.du, %bb.au ], [ %i.du, %bb.an ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.as ], [ %.sroa.0.0.copyload378, %bb.am ], [ %.sroa.0.2, %bb.av ], [ %.sroa.0.2, %bb.au ], [ %.sroa.0.0.copyload378, %bb.an ]
  %i.il = phi i32 [ %i.hv, %bb.as ], [ %i.hm, %bb.am ], [ %i.hv, %bb.av ], [ %i.hv, %bb.au ], [ %i.hm, %bb.an ]
  %i.im = phi <2 x i32> [ %i.if, %bb.as ], [ %i.ho, %bb.am ], [ %i.ih, %bb.av ], [ %i.ih, %bb.au ], [ %i.ho, %bb.an ]
  store i32 %.sroa.0.0, ptr %5, align 8
  store <2 x i32> %i.im, ptr %i.df, align 4
  store i32 %.sroa.12.0, ptr %i.dg, align 4
  store i32 %.sroa.19.0, ptr %.sroa.19.12..sroa_idx392, align 8
  store i32 %.sroa.23.0, ptr %.sroa.23.12..sroa_idx396, align 4
  %i.in = zext i32 %i.il to i64
  %i.io = sub nsw i64 0, %i.in
  %i.ip = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.io
  %i.iq = add i32 %i.du, %i.ae
  br label %bb.aw

bb.aw:                                            ; preds = %ZS_rep_update.exit, %bb.ak, %bb.ai
  %.0139.i = phi ptr [ %i.gb, %bb.ai ], [ %i.gm, %bb.ak ], [ %i.ip, %ZS_rep_update.exit ] ; 8 uses
  %.0138.i = phi i32 [ %i.gc, %bb.ai ], [ %.sroa.5.0.extract.trunc.i, %bb.ak ], [ %i.iq, %ZS_rep_update.exit ] ; 6 uses
  %.0139.i906 = ptrtoaddr ptr %.0139.i to i64
  %i.ir = zext i32 %.0138.i to i64                ; 10 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.ir
  %i.it = icmp ugt ptr %i.is, %i.c
  br i1 %i.it, label %ZS_execExperimentalSequence.exit.thread, label %.preheader692

.preheader692:                                    ; preds = %bb.aw
  %.not765 = icmp eq i32 %.0138.i, 0
  br i1 %.not765, label %._crit_edge710, label %iter.check

iter.check:                                       ; preds = %.preheader692
  %min.iters.check = icmp ult i32 %.0138.i, 4
  %i.iu = sub i64 %.0139.i906, %.0136.i.lcssa907
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond1247 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1247, label %.lr.ph709.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check908 = icmp ult i32 %.0138.i, 32
  br i1 %min.iters.check908, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.ir, 28
  %n.vec = and i64 %i.ir, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <16 x i8>, ptr %i.iw, align 1, !tbaa !19
  %wide.load909 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !19
  %i.iy = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <16 x i8> %wide.load, ptr %i.iy, align 1, !tbaa !19
  store <16 x i8> %wide.load909, ptr %i.iz, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ir
  br i1 %cmp.n, label %._crit_edge710, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph709.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec910 = and i64 %i.ir, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index911 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next913, %vec.epilog.vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index911
  %wide.load912 = load <4 x i8>, ptr %i.jb, align 1, !tbaa !19
  %i.jc = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index911
  store <4 x i8> %wide.load912, ptr %i.jc, align 1, !tbaa !19
  %index.next913 = add nuw i64 %index911, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next913, %n.vec910
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n914 = icmp eq i64 %n.vec910, %i.ir
  br i1 %cmp.n914, label %._crit_edge710, label %.lr.ph709.preheader

.lr.ph709.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0137.i708.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec910, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ir, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol

.lr.ph709.prol:                                   ; preds = %.lr.ph709.preheader, %.lr.ph709.prol
  %.0137.i708.prol = phi i64 [ %i.jh, %.lr.ph709.prol ], [ %.0137.i708.ph, %.lr.ph709.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph709.prol ], [ 0, %.lr.ph709.preheader ]
  %i.je = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708.prol
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708.prol
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !19
  %i.jh = add nuw nsw i64 %.0137.i708.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol, !llvm.loop !53

.lr.ph709.prol.loopexit:                          ; preds = %.lr.ph709.prol, %.lr.ph709.preheader
  %.0137.i708.unr = phi i64 [ %.0137.i708.ph, %.lr.ph709.preheader ], [ %i.jh, %.lr.ph709.prol ]
  %i.ji = sub nsw i64 %.0137.i708.ph, %i.ir
  %i.jj = icmp ugt i64 %i.ji, -4
  br i1 %i.jj, label %._crit_edge710, label %.lr.ph709

._crit_edge710:                                   ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709, %middle.block, %vec.epilog.middle.block, %.preheader692
  %.not156.i = icmp eq i8 %i.dw, 1
  br i1 %.not156.i, label %bb.az, label %bb.ax

.lr.ph709:                                        ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709
  %.0137.i708 = phi i64 [ %i.jz, %.lr.ph709 ], [ %.0137.i708.unr, %.lr.ph709.prol.loopexit ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !19
  %i.jn = add nuw nsw i64 %.0137.i708, 1          ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !19
  %i.jq = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jn
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !19
  %i.jr = add nuw nsw i64 %.0137.i708, 2          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jr
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !19
  %i.jv = add nuw nsw i64 %.0137.i708, 3          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.jy = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jv
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !19
  %i.jz = add nuw nsw i64 %.0137.i708, 4          ; 2 uses
  %exitcond792.not.3 = icmp eq i64 %i.jz, %i.ir
  br i1 %exitcond792.not.3, label %._crit_edge710, label %.lr.ph709, !llvm.loop !54

bb.ax:                                            ; preds = %._crit_edge710
  %i.ka = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.kb = sub i64 %i.ka, %i.bk
  %.not157.i = icmp slt i64 %i.kb, %i.di
  br i1 %.not157.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load i32, ptr %i.db, align 4, !tbaa !97 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.dl
  %i.ke = call fastcc i64 @ZL_hashPtr(ptr noundef %i.kd, i32 noundef %i.kc, i32 noundef %.pre)
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = load ptr, ptr %i.dc, align 8, !tbaa !99
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.ka, %i.kh
  %i.kj = trunc i64 %i.ki to i32                  ; 2 uses
  %.val341 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 3 uses
  %.val342 = load ptr, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %notmask.i.i355 = shl nsw i32 -1, %.val341
  %i.kk = xor i32 %notmask.i.i355, -1             ; 2 uses
  %i.kl = shl i32 %i.kf, %.val341
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 4, !tbaa !42
  %i.kq = zext i16 %i.kp to i32
  %i.kr = add nuw i32 %i.kq, 2147483647
  %i.ks = and i32 %i.kr, %i.kk                    ; 2 uses
  %i.kt = trunc i32 %i.ks to i16
  store i16 %i.kt, ptr %i.ko, align 4, !tbaa !42
  %i.ku = zext nneg i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ku ; 2 uses
  store i32 %i.kj, ptr %i.kv, align 4, !tbaa !43
  %i.kw = call i32 @llvm.umin.i32(i32 %.0138.i, i32 255)
  %i.kx = trunc nuw i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 6
  store i8 %i.kx, ptr %i.ky, align 2, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 1
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.dl
  %i.lb = call fastcc i64 @ZL_hashPtr(ptr noundef nonnull %i.la, i32 noundef %i.kc, i32 noundef %.pre)
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = add i32 %i.kj, 1
  %i.le = add i32 %.0138.i, -1
  %i.lf = shl i32 %i.lc, %.val341
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 2 uses
  %i.lj = load i16, ptr %i.li, align 4, !tbaa !42
  %i.lk = zext i16 %i.lj to i32
  %i.ll = add nuw i32 %i.lk, 2147483647
  %i.lm = and i32 %i.ll, %i.kk                    ; 2 uses
  %i.ln = trunc i32 %i.lm to i16
  store i16 %i.ln, ptr %i.li, align 4, !tbaa !42
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lo ; 2 uses
  store i32 %i.ld, ptr %i.lp, align 4, !tbaa !43
  %i.lq = call i32 @llvm.umin.i32(i32 %i.le, i32 255)
  %i.lr = trunc nuw i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 6
  store i8 %i.lr, ptr %i.ls, align 2, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge710
  %i.lt = add nuw nsw i64 %i.ir, %.sroa.051.0.insert.ext
  br label %ZS_execExperimentalSequence.exit

ZS_execExperimentalSequence.exit:                 ; preds = %._crit_edge, %bb.az
  %.6.i = phi i64 [ %i.lt, %bb.az ], [ %.sroa.051.0.insert.ext, %._crit_edge ] ; 2 uses
  %i.lu = icmp eq i64 %.6.i, 0
  br i1 %i.lu, label %ZS_execExperimentalSequence.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %ZS_execExperimentalSequence.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.6.i ; 2 uses
  %i.lw = add nuw nsw i64 %.0239711, 1            ; 2 uses
  %exitcond793.not = icmp eq i64 %i.lw, %i.ca
  br i1 %exitcond793.not, label %.critedge, label %bb.x, !llvm.loop !55

.critedge:                                        ; preds = %bb.x, %bb.ba, %bb.w
  %.0239.lcssa = phi i64 [ 0, %bb.w ], [ %i.ca, %bb.ba ], [ %.0239711, %bb.x ] ; 3 uses
  %.0237.lcssa = phi ptr [ %1, %bb.w ], [ %i.lv, %bb.ba ], [ %.0237712, %bb.x ] ; 6 uses
  %i.lx = icmp eq i32 %.pre, 2
  %i.ly = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lz = load i32, ptr %i.ly, align 4
  %i.ma = icmp eq i32 %i.lz, 12
  %or.cond17 = select i1 %i.lx, i1 %i.ma, i1 false
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mc = load i32, ptr %i.mb, align 8
  %i.md = icmp eq i32 %i.mc, 4
  %or.cond20 = select i1 %or.cond17, i1 %i.md, i1 false
  br i1 %or.cond20, label %bb.bb, label %.loopexit676

bb.bb:                                            ; preds = %.critedge
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.mf = load i8, ptr %i.me, align 4, !tbaa !46, !range !31, !noundef !32
  %i.mg = trunc nuw i8 %i.mf to i1
  %i.mh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mi = load i32, ptr %i.mh, align 8
  %i.mj = icmp eq i32 %i.mi, 3
  %or.cond23 = select i1 %i.mg, i1 %i.mj, i1 false
  %i.mk = icmp eq i8 %i.aa, 7
  %or.cond25 = select i1 %or.cond23, i1 %i.mk, i1 false
  %i.ml = icmp eq i8 %i.ad, 3
  %or.cond27 = select i1 %or.cond25, i1 %i.ml, i1 false
  br i1 %or.cond27, label %bb.bc, label %.loopexit676

bb.bc:                                            ; preds = %bb.bb
  %i.mm = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = icmp samesign ult i64 %.0239.lcssa, %i.ca ; 2 uses
  br i1 %i.mn, label %.preheader675, label %.preheader689

.preheader689:                                    ; preds = %bb.bc
  br i1 %i.mo, label %.lr.ph734, label %.loopexit676

.lr.ph734:                                        ; preds = %.preheader689
  %i.mp = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.19419.12..sroa_idx422 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23424.12..sroa_idx427 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.ck

.preheader675:                                    ; preds = %bb.bc
  br i1 %i.mo, label %.lr.ph753, label %.loopexit676

.lr.ph753:                                        ; preds = %.preheader675
  %i.mv = getelementptr inbounds nuw i8, ptr %10, i64 4144
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.nb = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.19453.12..sroa_idx456 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23458.12..sroa_idx461 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph753, %bb.cj
  %.2752 = phi ptr [ %.0237.lcssa, %.lr.ph753 ], [ %i.aal, %bb.cj ] ; 7 uses
  %.1240751 = phi i64 [ %.0239.lcssa, %.lr.ph753 ], [ %i.aam, %bb.cj ] ; 5 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.1240751
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !29 ; 4 uses
  %.sroa.047.0.insert.ext = zext i32 %i.nd to i64 ; 7 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.1240751
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !29 ; 7 uses
  %.sroa.047.4.insert.ext = zext i32 %i.nf to i64 ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.1240751
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !29 ; 13 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.1240751
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !19
  %i.nk = ptrtoint ptr %.2752 to i64
  %i.nl = sub i64 %i.bj, %i.nk
  %i.nm = icmp ult i64 %i.nl, %.sroa.047.0.insert.ext
  br i1 %i.nm, label %ZS_execExperimentalSequence.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nn = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.no = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = icmp ult i64 %i.np, %.sroa.047.0.insert.ext
  br i1 %i.nq, label %ZS_execExperimentalSequence.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not171.i736.not = icmp eq i32 %i.nd, 0
  br i1 %.not171.i736.not, label %.critedge172.i._crit_edge, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %bb.bf
  %i.nr = getelementptr inbounds i8, ptr %.2752, i64 -1
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !19
  br label %.lr.ph740

.lr.ph743:                                        ; preds = %bb.bg
  %i.nt = load ptr, ptr %i.mw, align 8, !tbaa !99
  %i.nu = ptrtoint ptr %i.nt to i64               ; 3 uses
  %i.nv = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 3 uses
  %xtraiter1278 = and i64 %.sroa.047.0.insert.ext, 1
  %i.nw = icmp eq i32 %i.nd, 1
  br i1 %i.nw, label %.critedge172.i.epil.preheader, label %.lr.ph743.new

.lr.ph743.new:                                    ; preds = %.lr.ph743
  %unroll_iter1282 = and i64 %.sroa.047.0.insert.ext, 4294967294
  br label %.critedge172.i

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %bb.bg
  %.0161.i738 = phi i64 [ %i.of, %bb.bg ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %.0162.i737 = phi i8 [ %i.ob, %bb.bg ], [ %i.ns, %.lr.ph740.preheader ]
  %i.nx = zext i8 %.0162.i737 to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.nx
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !35 ; 4 uses
  %.not.i300 = icmp eq ptr %i.nz, null
  br i1 %.not.i300, label %ZS_execExperimentalSequence.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph740
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !36
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !19  ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.2752, i64 %.0161.i738
  store i8 %i.ob, ptr %i.oc, align 1, !tbaa !19
  %i.od = load ptr, ptr %i.nz, align 8, !tbaa !36
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  store ptr %i.oe, ptr %i.nz, align 8, !tbaa !36
  %i.of = add nuw nsw i64 %.0161.i738, 1          ; 2 uses
  %exitcond796.not = icmp eq i64 %i.of, %.sroa.047.0.insert.ext
  br i1 %exitcond796.not, label %.lr.ph743, label %.lr.ph740, !llvm.loop !56

.critedge172.i._crit_edge.loopexit.unr-lcssa:     ; preds = %.critedge172.i
  %lcmp.mod1279.not = icmp eq i64 %xtraiter1278, 0
  br i1 %lcmp.mod1279.not, label %.critedge172.i._crit_edge, label %.critedge172.i.epil.preheader

.critedge172.i.epil.preheader:                    ; preds = %.critedge172.i._crit_edge.loopexit.unr-lcssa, %.lr.ph743
  %.0147.i284742.epil.init = phi ptr [ %.2752, %.lr.ph743 ], [ %i.qc, %.critedge172.i._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1281 = trunc i32 %i.nd to i1
  call void @llvm.assume(i1 %lcmp.mod1281)
  %i.og = getelementptr inbounds i8, ptr %.0147.i284742.epil.init, i64 -2
  %.val.i357.epil = load i16, ptr %i.og, align 1
  %i.oh = ptrtoint ptr %.0147.i284742.epil.init to i64
  %i.oi = sub i64 %i.oh, %i.nu
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = mul i16 %.val.i357.epil, -22595
  %i.ol = and i16 %i.ok, -16
  %i.om = zext i16 %i.ol to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.om ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4 ; 2 uses
  %i.op = load i16, ptr %i.oo, align 4, !tbaa !42
  %i.oq = add i16 %i.op, 15
  %i.or = and i16 %i.oq, 15                       ; 2 uses
  store i16 %i.or, ptr %i.oo, align 4, !tbaa !42
  %i.os = zext nneg i16 %i.or to i64
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.os ; 2 uses
  store i32 %i.oj, ptr %i.ot, align 4, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 6
  store i8 0, ptr %i.ou, align 2, !tbaa !44
  %i.ov = getelementptr inbounds nuw i8, ptr %.0147.i284742.epil.init, i64 1
  br label %.critedge172.i._crit_edge

.critedge172.i._crit_edge:                        ; preds = %.critedge172.i.epil.preheader, %.critedge172.i._crit_edge.loopexit.unr-lcssa, %bb.bf
  %.0147.i284.lcssa = phi ptr [ %.2752, %bb.bf ], [ %i.qc, %.critedge172.i._crit_edge.loopexit.unr-lcssa ], [ %i.ov, %.critedge172.i.epil.preheader ] ; 42 uses
  %.0147.i284.lcssa1077 = ptrtoaddr ptr %.0147.i284.lcssa to i64 ; 12 uses
  %i.ow = add i64 %i.no, %.sroa.047.0.insert.ext
  store i64 %i.ow, ptr %i.ct, align 8, !tbaa !95
  switch i8 %i.nj, label %bb.br [
    i8 1, label %bb.bh
    i8 0, label %bb.bp
  ]

.critedge172.i:                                   ; preds = %.critedge172.i, %.lr.ph743.new
  %.0147.i284742 = phi ptr [ %.2752, %.lr.ph743.new ], [ %i.qc, %.critedge172.i ] ; 5 uses
  %niter1283 = phi i64 [ 0, %.lr.ph743.new ], [ %niter1283.next.1, %.critedge172.i ]
  %i.ox = getelementptr inbounds i8, ptr %.0147.i284742, i64 -2
  %.val.i357 = load i16, ptr %i.ox, align 1
  %i.oy = ptrtoint ptr %.0147.i284742 to i64
  %i.oz = sub i64 %i.oy, %i.nu
  %i.pa = trunc i64 %i.oz to i32
  %i.pb = mul i16 %.val.i357, -22595
  %i.pc = and i16 %i.pb, -16
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pd ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 2 uses
  %i.pg = load i16, ptr %i.pf, align 4, !tbaa !42
  %i.ph = add i16 %i.pg, 15
  %i.pi = and i16 %i.ph, 15                       ; 2 uses
  store i16 %i.pi, ptr %i.pf, align 4, !tbaa !42
  %i.pj = zext nneg i16 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %i.pj ; 2 uses
  store i32 %i.pa, ptr %i.pk, align 4, !tbaa !43
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 6
  store i8 0, ptr %i.pl, align 2, !tbaa !44
  %i.pm = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 1
  %i.pn = getelementptr inbounds i8, ptr %.0147.i284742, i64 -1
  %.val.i357.1 = load i16, ptr %i.pn, align 1
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.po, %i.nu
  %i.pq = trunc i64 %i.pp to i32
  %i.pr = mul i16 %.val.i357.1, -22595
  %i.ps = and i16 %i.pr, -16
  %i.pt = zext i16 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.pt ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4 ; 2 uses
  %i.pw = load i16, ptr %i.pv, align 4, !tbaa !42
  %i.px = add i16 %i.pw, 15
  %i.py = and i16 %i.px, 15                       ; 2 uses
  store i16 %i.py, ptr %i.pv, align 4, !tbaa !42
  %i.pz = zext nneg i16 %i.py to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %i.pz ; 2 uses
  store i32 %i.pq, ptr %i.qa, align 4, !tbaa !43
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 6
  store i8 0, ptr %i.qb, align 2, !tbaa !44
  %i.qc = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 2 ; 3 uses
  %niter1283.next.1 = add i64 %niter1283, 2       ; 2 uses
  %niter1283.ncmp.1 = icmp eq i64 %niter1283.next.1, %unroll_iter1282
  br i1 %niter1283.ncmp.1, label %.critedge172.i._crit_edge.loopexit.unr-lcssa, label %.critedge172.i, !llvm.loop !57

bb.bh:                                            ; preds = %.critedge172.i._crit_edge
  %i.qd = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i359 = load i16, ptr %i.qd, align 1
  %i.qe = load ptr, ptr %i.mx, align 8, !tbaa !39
  %i.qf = mul i16 %.val.i359, -22595
  %i.qg = and i16 %i.qf, -16
  %i.qh = zext i16 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qh ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4 ; 3 uses
  %i.qk = load i16, ptr %i.qj, align 4, !tbaa !42
  %i.ql = zext i16 %i.qk to i32
  %i.qm = add i32 %i.nf, %i.ql
  %i.qn = and i32 %i.qm, 15
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qo ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !43 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 6
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !44
  %i.qt = zext i8 %i.qs to i32                    ; 2 uses
  %i.qu = add i32 %i.nh, 3                        ; 2 uses
  %.not.not.i309 = icmp ugt i32 %i.qu, %i.qt
  %.not.i310 = icmp eq i32 %i.nh, 0
  %i.qv = add i32 %i.nh, 2
  %spec.select.i311 = select i1 %.not.i310, i32 %i.qt, i32 %i.qv
  %.0.i312 = select i1 %.not.not.i309, i32 %i.qu, i32 %spec.select.i311 ; 5 uses
  %.sroa.2.0.insert.ext.i = zext i32 %.0.i312 to i64 ; 11 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.qq to i64
  %i.qw = load ptr, ptr %i.mw, align 8, !tbaa !99 ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qw, i64 %.sroa.0.0.insert.ext.i ; 15 uses
  %i.qy = load i32, ptr %i.na, align 4, !tbaa !100
  %i.qz = icmp ugt i32 %i.qy, %i.qq
  br i1 %i.qz, label %ZS_execExperimentalSequence.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ra = ptrtoint ptr %.0147.i284.lcssa to i64   ; 2 uses
  %i.rb = ptrtoint ptr %i.qx to i64
  %i.rc = sub i64 %i.ra, %i.rb                    ; 6 uses
  %i.rd = trunc i64 %i.rc to i32
  %i.re = load <2 x i32>, ptr %5, align 8
  store i32 %i.rd, ptr %5, align 8
  store <2 x i32> %i.re, ptr %i.my, align 4
  %i.rf = ptrtoint ptr %i.qw to i64
  %i.rg = sub i64 %i.ra, %i.rf
  %i.rh = trunc i64 %i.rg to i32
  %i.ri = load i16, ptr %i.qj, align 4, !tbaa !42
  %i.rj = add i16 %i.ri, 15
  %i.rk = and i16 %i.rj, 15                       ; 2 uses
  store i16 %i.rk, ptr %i.qj, align 4, !tbaa !42
  %i.rl = zext nneg i16 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.rl ; 2 uses
  store i32 %i.rh, ptr %i.rm, align 4, !tbaa !43
  %i.rn = call i32 @llvm.umin.i32(i32 %.0.i312, i32 255)
  %i.ro = trunc nuw i32 %i.rn to i8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 6
  store i8 %i.ro, ptr %i.rp, align 2, !tbaa !44
  %i.rq = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %.sroa.2.0.insert.ext.i ; 5 uses
  %i.rr = icmp ugt ptr %i.rq, %i.nb
  br i1 %i.rr, label %bb.bj, label %bb.bk, !prof !22

bb.bj:                                            ; preds = %bb.bi
  %i.rs = icmp ugt ptr %i.rq, %i.c
  br i1 %i.rs, label %ZS_execExperimentalSequence.exit.thread, label %.preheader669

.preheader669:                                    ; preds = %bb.bj
  %.not770 = icmp eq i32 %.0.i312, 0
  br i1 %.not770, label %ZS_execExperimentalSequence2.exit302, label %iter.check1200

iter.check1200:                                   ; preds = %.preheader669
  %i.rt = add i64 %.0147.i284.lcssa1077, %.sroa.2.0.insert.ext.i
  %i.ru = add i64 %.0147.i284.lcssa1077, 1
  %umax1182 = call i64 @llvm.umax.i64(i64 %i.rt, i64 %i.ru)
  %i.rv = sub i64 %umax1182, %.0147.i284.lcssa1077 ; 7 uses
  %min.iters.check1184 = icmp ult i64 %i.rv, 8
  %i.rw = add i64 %i.rc, -1
  %diff.check1186 = icmp ult i64 %i.rw, 31
  %or.cond1248 = select i1 %min.iters.check1184, i1 true, i1 %diff.check1186
  br i1 %or.cond1248, label %.lr.ph747.preheader, label %vector.main.loop.iter.check1187

vector.main.loop.iter.check1187:                  ; preds = %iter.check1200
  %min.iters.check1188 = icmp ult i64 %i.rv, 32
  br i1 %min.iters.check1188, label %vec.epilog.ph1204, label %vector.ph1189

vector.ph1189:                                    ; preds = %vector.main.loop.iter.check1187
  %i.rx = and i64 %i.rv, 24
  %n.vec1190.a = and i64 %i.rv, -32               ; 5 uses
  %i.ry = getelementptr i8, ptr %i.qx, i64 %n.vec1190.a
  %i.rz = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1190.a
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.ph1189, %vector.body1191
  %index1192.a = phi i64 [ 0, %vector.ph1189 ], [ %index.next1197, %vector.body1191 ] ; 3 uses
  %next.gep1193.a = getelementptr i8, ptr %i.qx, i64 %index1192.a ; 2 uses
  %next.gep1194.a = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1192.a ; 2 uses
  %i.sa = getelementptr i8, ptr %next.gep1193.a, i64 16
  %wide.load1195.a = load <16 x i8>, ptr %next.gep1193.a, align 1, !tbaa !19
  %wide.load1196 = load <16 x i8>, ptr %i.sa, align 1, !tbaa !19
  %i.sb = getelementptr i8, ptr %next.gep1194.a, i64 16
  store <16 x i8> %wide.load1195.a, ptr %next.gep1194.a, align 1, !tbaa !19
  store <16 x i8> %wide.load1196, ptr %i.sb, align 1, !tbaa !19
  %index.next1197 = add nuw i64 %index1192.a, 32  ; 2 uses
  %i.sc = icmp eq i64 %index.next1197, %n.vec1190.a
  br i1 %i.sc, label %middle.block1198, label %vector.body1191, !llvm.loop !58

middle.block1198:                                 ; preds = %vector.body1191
  %cmp.n1199 = icmp eq i64 %i.rv, %n.vec1190.a
  br i1 %cmp.n1199, label %ZS_execExperimentalSequence2.exit302, label %vec.epilog.iter.check1201

vec.epilog.iter.check1201:                        ; preds = %middle.block1198
  %min.epilog.iters.check1203 = icmp eq i64 %i.rx, 0
  br i1 %min.epilog.iters.check1203, label %.lr.ph747.preheader, label %vec.epilog.ph1204, !prof !104

vec.epilog.ph1204:                                ; preds = %vector.main.loop.iter.check1187, %vec.epilog.iter.check1201
  %vec.epilog.resume.val1205 = phi i64 [ %n.vec1190.a, %vec.epilog.iter.check1201 ], [ 0, %vector.main.loop.iter.check1187 ]
  %n.vec1206 = and i64 %i.rv, -8                  ; 4 uses
  %i.sd = getelementptr i8, ptr %i.qx, i64 %n.vec1206
  %i.se = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1206
  br label %vec.epilog.vector.body1207

vec.epilog.vector.body1207:                       ; preds = %vec.epilog.vector.body1207, %vec.epilog.ph1204
  %index1208 = phi i64 [ %vec.epilog.resume.val1205, %vec.epilog.ph1204 ], [ %index.next1212, %vec.epilog.vector.body1207 ] ; 3 uses
  %next.gep1209 = getelementptr i8, ptr %i.qx, i64 %index1208
  %next.gep1210 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1208
  %wide.load1211 = load <8 x i8>, ptr %next.gep1209, align 1, !tbaa !19
  store <8 x i8> %wide.load1211, ptr %next.gep1210, align 1, !tbaa !19
  %index.next1212 = add nuw i64 %index1208, 8     ; 2 uses
  %i.sf = icmp eq i64 %index.next1212, %n.vec1206
  br i1 %i.sf, label %vec.epilog.middle.block1213, label %vec.epilog.vector.body1207, !llvm.loop !59

vec.epilog.middle.block1213:                      ; preds = %vec.epilog.vector.body1207
  %cmp.n1214 = icmp eq i64 %i.rv, %n.vec1206
  br i1 %cmp.n1214, label %ZS_execExperimentalSequence2.exit302, label %.lr.ph747.preheader

.lr.ph747.preheader:                              ; preds = %iter.check1200, %vec.epilog.iter.check1201, %vec.epilog.middle.block1213
  %.0150.i297746.ph = phi ptr [ %i.qx, %iter.check1200 ], [ %i.ry, %vec.epilog.iter.check1201 ], [ %i.sd, %vec.epilog.middle.block1213 ]
  %.0151.i296745.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1200 ], [ %i.rz, %vec.epilog.iter.check1201 ], [ %i.se, %vec.epilog.middle.block1213 ]
  br label %.lr.ph747

.lr.ph747:                                        ; preds = %.lr.ph747.preheader, %.lr.ph747
  %.0150.i297746 = phi ptr [ %i.sg, %.lr.ph747 ], [ %.0150.i297746.ph, %.lr.ph747.preheader ] ; 2 uses
  %.0151.i296745 = phi ptr [ %i.si, %.lr.ph747 ], [ %.0151.i296745.ph, %.lr.ph747.preheader ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.0150.i297746, i64 1
  %i.sh = load i8, ptr %.0150.i297746, align 1, !tbaa !19
  %i.si = getelementptr inbounds nuw i8, ptr %.0151.i296745, i64 1 ; 2 uses
  store i8 %i.sh, ptr %.0151.i296745, align 1, !tbaa !19
  %i.sj = icmp ult ptr %i.si, %i.rq
  br i1 %i.sj, label %.lr.ph747, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !60

bb.bk:                                            ; preds = %bb.bi
  %i.sk = icmp slt i64 %i.rc, 16
  br i1 %i.sk, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.sl = icmp ult i64 %i.rc, 8
  br i1 %i.sl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.rc
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !29
  %i.so = load i8, ptr %i.qx, align 1, !tbaa !19
  store i8 %i.so, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !19
  %i.sr = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !19
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.st, ptr %i.su, align 1, !tbaa !19
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qx, i64 3
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !19
  %i.sx = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.sw, ptr %i.sx, align 1, !tbaa !19
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.rc
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !29
  %i.ta = sext i32 %i.sz to i64
  %i.tb = getelementptr inbounds i8, ptr %i.qx, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val343 = load i32, ptr %i.tb, align 1
  store i32 %.val343, ptr %i.tc, align 1
  %i.td = sext i32 %i.sn to i64
  %i.te = sub nsw i64 0, %i.td
  %i.tf = getelementptr inbounds i8, ptr %i.tb, i64 %i.te
  br label %ZS_overlapCopy8.exit333

bb.bn:                                            ; preds = %bb.bl
  %.val347 = load i64, ptr %i.qx, align 1
  store i64 %.val347, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit333

ZS_overlapCopy8.exit333:                          ; preds = %bb.bm, %bb.bn
  %.2622 = phi ptr [ %i.tf, %bb.bm ], [ %i.qx, %bb.bn ] ; 7 uses
  %.not12.i = icmp ugt i32 %.0.i312, 8
  br i1 %.not12.i, label %.preheader670.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader670.preheader:                          ; preds = %ZS_overlapCopy8.exit333
  %i.tg = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 6 uses
  %i.th = add i64 %.0147.i284.lcssa1077, %.sroa.2.0.insert.ext.i
  %i.ti = add i64 %.0147.i284.lcssa1077, 24
  %i.tj = call i64 @llvm.umax.i64(i64 %i.th, i64 %i.ti)
  %i.tk = add i64 %i.tj, -9
  %i.tl = sub i64 %i.tk, %.0147.i284.lcssa1077    ; 3 uses
  %i.tm = lshr i64 %i.tl, 4
  %i.tn = add nuw nsw i64 %i.tm, 1                ; 2 uses
  %min.iters.check1227 = icmp ult i64 %i.tl, 112
  br i1 %min.iters.check1227, label %.preheader670.preheader1255, label %vector.memcheck1228

vector.memcheck1228:                              ; preds = %.preheader670.preheader
  %i.to = and i64 %i.tl, -16
  %i.tp = add i64 %i.to, 24                       ; 2 uses
  %i.tq = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.tp
  %i.tr = getelementptr i8, ptr %.2622, i64 8
  %i.ts = getelementptr i8, ptr %.2622, i64 %i.tp
  %bound01229 = icmp ult ptr %i.tg, %i.ts
  %bound11230 = icmp ult ptr %i.tr, %i.tq
  %found.conflict1231 = and i1 %bound01229, %bound11230
  br i1 %found.conflict1231, label %.preheader670.preheader1255, label %vector.ph1232

vector.ph1232:                                    ; preds = %vector.memcheck1228
  %n.vec1233 = and i64 %i.tn, 2305843009213693950 ; 3 uses
  %i.tt = shl i64 %n.vec1233, 4                   ; 2 uses
  %i.tu = getelementptr i8, ptr %i.tg, i64 %i.tt
  %i.tv = getelementptr i8, ptr %.2622, i64 %i.tt
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %vector.ph1232
  %index1235 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1242, %vector.body1234 ] ; 2 uses
  %i.tw = shl i64 %index1235, 4                   ; 3 uses
  %i.tx = or disjoint i64 %i.tw, 16               ; 2 uses
  %next.gep1236 = getelementptr i8, ptr %i.tg, i64 %i.tw
  %next.gep1237 = getelementptr i8, ptr %i.tg, i64 %i.tx
  %next.gep1238 = getelementptr i8, ptr %.2622, i64 %i.tw
  %next.gep1239 = getelementptr i8, ptr %.2622, i64 %i.tx
  %i.ty = getelementptr inbounds nuw i8, ptr %next.gep1238, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %next.gep1239, i64 8
  %wide.load1240 = load <2 x i64>, ptr %i.ty, align 1, !alias.scope !105
  %wide.load1241 = load <2 x i64>, ptr %i.tz, align 1, !alias.scope !105
  store <2 x i64> %wide.load1240, ptr %next.gep1236, align 1, !alias.scope !106, !noalias !105
  store <2 x i64> %wide.load1241, ptr %next.gep1237, align 1, !alias.scope !106, !noalias !105
  %index.next1242 = add nuw i64 %index1235, 2     ; 2 uses
  %i.ua = icmp eq i64 %index.next1242, %n.vec1233
  br i1 %i.ua, label %middle.block1243, label %vector.body1234, !llvm.loop !64

middle.block1243:                                 ; preds = %vector.body1234
  %cmp.n1244 = icmp eq i64 %i.tn, %n.vec1233
  br i1 %cmp.n1244, label %ZS_execExperimentalSequence2.exit302, label %.preheader670.preheader1255

.preheader670.preheader1255:                      ; preds = %vector.memcheck1228, %.preheader670.preheader, %middle.block1243
  %.1624.ph = phi ptr [ %i.tg, %vector.memcheck1228 ], [ %i.tg, %.preheader670.preheader ], [ %i.tu, %middle.block1243 ]
  %.2622.pn.ph = phi ptr [ %.2622, %vector.memcheck1228 ], [ %.2622, %.preheader670.preheader ], [ %i.tv, %middle.block1243 ]
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader670.preheader1255, %.preheader670
  %.1624 = phi ptr [ %i.uf, %.preheader670 ], [ %.1624.ph, %.preheader670.preheader1255 ] ; 3 uses
  %.2622.pn = phi ptr [ %i.ud, %.preheader670 ], [ %.2622.pn.ph, %.preheader670.preheader1255 ] ; 2 uses
  %.1621 = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 8
  %i.ub = load i64, ptr %.1621, align 1
  store i64 %i.ub, ptr %.1624, align 1
  %i.uc = getelementptr inbounds nuw i8, ptr %.1624, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 16 ; 2 uses
  %i.ue = load i64, ptr %i.ud, align 1
  store i64 %i.ue, ptr %i.uc, align 1
  %i.uf = getelementptr inbounds nuw i8, ptr %.1624, i64 16 ; 2 uses
  %i.ug = icmp ult ptr %i.uf, %i.rq
  br i1 %i.ug, label %.preheader670, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !65

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.qx, i64 16, i1 false)
  %.not.i314 = icmp ugt i32 %.0.i312, 16
  br i1 %.not.i314, label %.preheader672.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader672.preheader:                          ; preds = %bb.bo
  %i.uh = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %.preheader672
  %.0623 = phi ptr [ %i.uk, %.preheader672 ], [ %i.uh, %.preheader672.preheader ] ; 3 uses
  %.pn664 = phi ptr [ %i.uj, %.preheader672 ], [ %i.qx, %.preheader672.preheader ] ; 2 uses
  %.0620 = getelementptr inbounds nuw i8, ptr %.pn664, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0623, ptr noundef nonnull align 1 dereferenceable(16) %.0620, i64 16, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %.0623, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %.pn664, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ui, ptr noundef nonnull align 1 dereferenceable(16) %i.uj, i64 16, i1 false)
  %i.uk = getelementptr inbounds nuw i8, ptr %.0623, i64 32 ; 2 uses
  %i.ul = icmp ult ptr %i.uk, %i.rq
  br i1 %i.ul, label %.preheader672, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !66

bb.bp:                                            ; preds = %.critedge172.i._crit_edge
  %i.um = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.un = sub i64 %i.um, %i.bk
  %i.uo = icmp ult i64 %i.un, %.sroa.047.4.insert.ext
  br i1 %i.uo, label %ZS_execExperimentalSequence.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.up = add i32 %i.nh, 7
  %i.uq = load <2 x i32>, ptr %5, align 8
  store i32 %i.nf, ptr %5, align 8
  store <2 x i32> %i.uq, ptr %i.my, align 4
  br label %bb.cc

bb.br:                                            ; preds = %.critedge172.i._crit_edge
  %i.ur = and i64 %.sroa.047.4.insert.ext, 3
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 4            ; 3 uses
  %i.uu = icmp eq i32 %i.nf, 0
  br i1 %i.uu, label %.split.i299, label %.split165.i298

.split.i299:                                      ; preds = %bb.br
  %.sroa.0437.0.copyload438 = load i32, ptr %5, align 8 ; 2 uses
  %i.uv = load <2 x i32>, ptr %i.my, align 4      ; 2 uses
  %i.uw = load i32, ptr %i.mz, align 4            ; 2 uses
  %i.ux = icmp eq i32 %i.nh, %i.uw
  %.sroa.19453.12.copyload = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.ux, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.split.i299
  %.sroa.23458.12.copyload = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bt:                                            ; preds = %.split.i299
  %i.uy = icmp eq i32 %i.nh, %.sroa.19453.12.copyload
  %i.uz = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select760 = select i1 %i.uy, i32 %i.uz, i32 %.sroa.19453.12.copyload
  br label %ZS_rep_update.exit361

.split165.i298:                                   ; preds = %bb.br
  %i.va = lshr i32 %i.nf, 2
  %i.vb = add nsw i32 %i.va, -4
  %i.vc = add i32 %i.vb, %i.ut                    ; 5 uses
  %i.vd = and i32 %i.nf, 3                        ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 3
  %i.vf = and i32 %i.nf, 2
  %or.cond.not.i362 = icmp eq i32 %i.vf, 0
  br i1 %or.cond.not.i362, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.split165.i298
  %i.vg = load <2 x i32>, ptr %5, align 8
  br label %bb.bx

bb.bv:                                            ; preds = %.split165.i298
  %i.vh = icmp eq i32 %i.vd, 1
  br i1 %i.vh, label %.thread.i363, label %bb.bw

.thread.i363:                                     ; preds = %bb.bv
  %i.vi = load i32, ptr %.sroa.5465.0..sroa_idx, align 8
  %i.vj = load <2 x i32>, ptr %5, align 8
  %.pre804 = load i32, ptr %i.mz, align 4
  %i.vk = insertelement <2 x i32> %i.vj, i32 %i.vi, i64 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %.sroa.0437.0.copyload439 = load i32, ptr %5, align 8
  %i.vl = load <2 x i32>, ptr %i.my, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %.sroa.0437.1 = phi i32 [ %.sroa.0437.0.copyload439, %bb.bw ], [ %i.vc, %bb.bu ] ; 2 uses
  %i.vm = phi <2 x i32> [ %i.vl, %bb.bw ], [ %i.vg, %bb.bu ] ; 2 uses
  %.pre805 = load i32, ptr %i.mz, align 4         ; 2 uses
  br i1 %i.ve, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.sroa.19453.12.copyload457 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8
  %.sroa.23458.12.copyload462 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bz:                                            ; preds = %bb.bx, %.thread.i363
  %i.vn = phi i32 [ %.pre804, %.thread.i363 ], [ %.pre805, %bb.bx ] ; 2 uses
  %.sroa.0437.2 = phi i32 [ %i.vc, %.thread.i363 ], [ %.sroa.0437.1, %bb.bx ] ; 2 uses
  %i.vo = phi <2 x i32> [ %i.vk, %.thread.i363 ], [ %i.vm, %bb.bx ] ; 2 uses
  %i.vp = icmp eq i32 %i.nh, %i.vn
  %.sroa.19453.12.copyload455 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.vp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.23458.12.copyload460 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.cb:                                            ; preds = %bb.bz
  %i.vq = icmp eq i32 %i.nh, %.sroa.19453.12.copyload455
  %i.vr = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select761 = select i1 %i.vq, i32 %i.vr, i32 %.sroa.19453.12.copyload455
  br label %ZS_rep_update.exit361

ZS_rep_update.exit361:                            ; preds = %bb.cb, %bb.bt, %bb.ca, %bb.by, %bb.bs
  %.sroa.12450.0 = phi i32 [ %.pre805, %bb.by ], [ %i.nh, %bb.bs ], [ %i.nh, %bb.cb ], [ %i.nh, %bb.ca ], [ %i.nh, %bb.bt ]
  %.sroa.0437.0 = phi i32 [ %.sroa.0437.1, %bb.by ], [ %.sroa.0437.0.copyload438, %bb.bs ], [ %.sroa.0437.2, %bb.cb ], [ %.sroa.0437.2, %bb.ca ], [ %.sroa.0437.0.copyload438, %bb.bt ]
  %.sroa.19453.0 = phi i32 [ %.sroa.19453.12.copyload457, %bb.by ], [ %.sroa.19453.12.copyload, %bb.bs ], [ %i.vn, %bb.cb ], [ %.sroa.19453.12.copyload455, %bb.ca ], [ %i.uw, %bb.bt ]
  %.sroa.23458.0 = phi i32 [ %.sroa.23458.12.copyload462, %bb.by ], [ %.sroa.23458.12.copyload, %bb.bs ], [ %spec.select761, %bb.cb ], [ %.sroa.23458.12.copyload460, %bb.ca ], [ %spec.select760, %bb.bt ]
  %i.vs = phi i32 [ %i.vc, %bb.by ], [ %i.ut, %bb.bs ], [ %i.vc, %bb.cb ], [ %i.vc, %bb.ca ], [ %i.ut, %bb.bt ]
  %i.vt = phi <2 x i32> [ %i.vm, %bb.by ], [ %i.uv, %bb.bs ], [ %i.vo, %bb.cb ], [ %i.vo, %bb.ca ], [ %i.uv, %bb.bt ]
  store i32 %.sroa.0437.0, ptr %5, align 8
  store <2 x i32> %i.vt, ptr %i.my, align 4
  store i32 %.sroa.12450.0, ptr %i.mz, align 4
  store i32 %.sroa.19453.0, ptr %.sroa.19453.12..sroa_idx456, align 8
  store i32 %.sroa.23458.0, ptr %.sroa.23458.12..sroa_idx461, align 4
  %i.vu = zext i32 %i.vs to i64
  %i.vv = add i32 %i.nh, 3
  br label %bb.cc

bb.cc:                                            ; preds = %ZS_rep_update.exit361, %bb.bq
  %.sroa.2.0.extract.shift.pn.i285 = phi i64 [ %.sroa.047.4.insert.ext, %bb.bq ], [ %i.vu, %ZS_rep_update.exit361 ] ; 6 uses
  %.0152.i286 = phi i32 [ %i.up, %bb.bq ], [ %i.vv, %ZS_rep_update.exit361 ] ; 6 uses
  %.pn.i287 = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i285
  %.0154.i288 = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 %.pn.i287 ; 15 uses
  %i.vw = zext i32 %.0152.i286 to i64             ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %i.vw ; 5 uses
  %i.vy = icmp ugt ptr %i.vx, %i.nb
  br i1 %i.vy, label %bb.cd, label %bb.ce, !prof !22

bb.cd:                                            ; preds = %bb.cc
  %i.vz = icmp ugt ptr %i.vx, %i.c
  br i1 %i.vz, label %ZS_execExperimentalSequence.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.cd
  %.not771 = icmp eq i32 %.0152.i286, 0
  br i1 %.not771, label %ZS_wildcopy.exit318, label %iter.check1096

iter.check1096:                                   ; preds = %.preheader
  %i.wa = add nuw i64 %.0147.i284.lcssa1077, %i.vw
  %i.wb = add i64 %.0147.i284.lcssa1077, 1
  %umax1078 = call i64 @llvm.umax.i64(i64 %i.wa, i64 %i.wb)
  %i.wc = sub i64 %umax1078, %.0147.i284.lcssa1077 ; 7 uses
  %min.iters.check1080 = icmp ult i64 %i.wc, 8
  %i.wd = add nsw i64 %.sroa.2.0.extract.shift.pn.i285, -1
  %diff.check1082 = icmp ult i64 %i.wd, 31
  %or.cond1249 = select i1 %min.iters.check1080, i1 true, i1 %diff.check1082
  br i1 %or.cond1249, label %.lr.ph750.preheader, label %vector.main.loop.iter.check1083

vector.main.loop.iter.check1083:                  ; preds = %iter.check1096
  %min.iters.check1084 = icmp ult i64 %i.wc, 32
  br i1 %min.iters.check1084, label %vec.epilog.ph1100, label %vector.ph1085

vector.ph1085:                                    ; preds = %vector.main.loop.iter.check1083
  %i.we = and i64 %i.wc, 24
  %n.vec1086 = and i64 %i.wc, -32                 ; 5 uses
  %i.wf = getelementptr i8, ptr %.0154.i288, i64 %n.vec1086
  %i.wg = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1086
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.ph1085, %vector.body1087
  %index1088 = phi i64 [ 0, %vector.ph1085 ], [ %index.next1093, %vector.body1087 ] ; 3 uses
  %next.gep1089 = getelementptr i8, ptr %.0154.i288, i64 %index1088 ; 2 uses
  %next.gep1090 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1088 ; 2 uses
  %i.wh = getelementptr i8, ptr %next.gep1089, i64 16
  %wide.load1091 = load <16 x i8>, ptr %next.gep1089, align 1, !tbaa !19
  %wide.load1092 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !19
  %i.wi = getelementptr i8, ptr %next.gep1090, i64 16
  store <16 x i8> %wide.load1091, ptr %next.gep1090, align 1, !tbaa !19
  store <16 x i8> %wide.load1092, ptr %i.wi, align 1, !tbaa !19
  %index.next1093 = add nuw i64 %index1088, 32    ; 2 uses
  %i.wj = icmp eq i64 %index.next1093, %n.vec1086
  br i1 %i.wj, label %middle.block1094, label %vector.body1087, !llvm.loop !67

middle.block1094:                                 ; preds = %vector.body1087
  %cmp.n1095 = icmp eq i64 %i.wc, %n.vec1086
  br i1 %cmp.n1095, label %ZS_wildcopy.exit318, label %vec.epilog.iter.check1097

vec.epilog.iter.check1097:                        ; preds = %middle.block1094
  %min.epilog.iters.check1099 = icmp eq i64 %i.we, 0
  br i1 %min.epilog.iters.check1099, label %.lr.ph750.preheader, label %vec.epilog.ph1100, !prof !104

vec.epilog.ph1100:                                ; preds = %vector.main.loop.iter.check1083, %vec.epilog.iter.check1097
  %vec.epilog.resume.val1101 = phi i64 [ %n.vec1086, %vec.epilog.iter.check1097 ], [ 0, %vector.main.loop.iter.check1083 ]
  %n.vec1102 = and i64 %i.wc, -8                  ; 4 uses
  %i.wk = getelementptr i8, ptr %.0154.i288, i64 %n.vec1102
  %i.wl = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1102
  br label %vec.epilog.vector.body1103

vec.epilog.vector.body1103:                       ; preds = %vec.epilog.vector.body1103, %vec.epilog.ph1100
  %index1104 = phi i64 [ %vec.epilog.resume.val1101, %vec.epilog.ph1100 ], [ %index.next1108, %vec.epilog.vector.body1103 ] ; 3 uses
  %next.gep1105 = getelementptr i8, ptr %.0154.i288, i64 %index1104
  %next.gep1106 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1104
  %wide.load1107 = load <8 x i8>, ptr %next.gep1105, align 1, !tbaa !19
  store <8 x i8> %wide.load1107, ptr %next.gep1106, align 1, !tbaa !19
  %index.next1108 = add nuw i64 %index1104, 8     ; 2 uses
  %i.wm = icmp eq i64 %index.next1108, %n.vec1102
  br i1 %i.wm, label %vec.epilog.middle.block1109, label %vec.epilog.vector.body1103, !llvm.loop !68

vec.epilog.middle.block1109:                      ; preds = %vec.epilog.vector.body1103
  %cmp.n1110 = icmp eq i64 %i.wc, %n.vec1102
  br i1 %cmp.n1110, label %ZS_wildcopy.exit318, label %.lr.ph750.preheader

.lr.ph750.preheader:                              ; preds = %iter.check1096, %vec.epilog.iter.check1097, %vec.epilog.middle.block1109
  %.0148.i292749.ph = phi ptr [ %.0154.i288, %iter.check1096 ], [ %i.wf, %vec.epilog.iter.check1097 ], [ %i.wk, %vec.epilog.middle.block1109 ]
  %.0149.i291748.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1096 ], [ %i.wg, %vec.epilog.iter.check1097 ], [ %i.wl, %vec.epilog.middle.block1109 ]
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750.preheader, %.lr.ph750
  %.0148.i292749 = phi ptr [ %i.wn, %.lr.ph750 ], [ %.0148.i292749.ph, %.lr.ph750.preheader ] ; 2 uses
  %.0149.i291748 = phi ptr [ %i.wp, %.lr.ph750 ], [ %.0149.i291748.ph, %.lr.ph750.preheader ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.0148.i292749, i64 1
  %i.wo = load i8, ptr %.0148.i292749, align 1, !tbaa !19
  %i.wp = getelementptr inbounds nuw i8, ptr %.0149.i291748, i64 1 ; 2 uses
  store i8 %i.wo, ptr %.0149.i291748, align 1, !tbaa !19
  %i.wq = icmp ult ptr %i.wp, %i.vx
  br i1 %i.wq, label %.lr.ph750, label %ZS_wildcopy.exit318, !llvm.loop !69

bb.ce:                                            ; preds = %bb.cc
  %i.wr = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 16
  br i1 %i.wr, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ws = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 8
  br i1 %i.ws, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !29
  %i.wv = load i8, ptr %.0154.i288, align 1, !tbaa !19
  store i8 %i.wv, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.ww = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 1
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !19
  %i.wy = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !19
  %i.wz = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 2
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !19
  %i.xb = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !19
  %i.xc = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 3
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !19
  %i.xe = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !19
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !29
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %.0154.i288, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val344 = load i32, ptr %i.xi, align 1
  store i32 %.val344, ptr %i.xj, align 1
  %i.xk = sext i32 %i.wu to i64
  %i.xl = sub nsw i64 0, %i.xk
  %i.xm = getelementptr inbounds i8, ptr %i.xi, i64 %i.xl
  br label %ZS_overlapCopy8.exit332

bb.ch:                                            ; preds = %bb.cf
  %.val348 = load i64, ptr %.0154.i288, align 1
  store i64 %.val348, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit332

ZS_overlapCopy8.exit332:                          ; preds = %bb.cg, %bb.ch
  %.2617 = phi ptr [ %i.xm, %bb.cg ], [ %.0154.i288, %bb.ch ] ; 9 uses
  %.not12.i317 = icmp ugt i32 %.0152.i286, 8
  br i1 %.not12.i317, label %.preheader665.preheader, label %ZS_wildcopy.exit318

.preheader665.preheader:                          ; preds = %ZS_overlapCopy8.exit332
  %i.xn = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 7 uses
  %i.xo = add nuw i64 %.0147.i284.lcssa1077, %i.vw
  %i.xp = add i64 %.0147.i284.lcssa1077, 24
  %i.xq = call i64 @llvm.umax.i64(i64 %i.xo, i64 %i.xp)
  %i.xr = add i64 %i.xq, -9
  %i.xs = sub i64 %i.xr, %.0147.i284.lcssa1077    ; 3 uses
  %i.xt = lshr i64 %i.xs, 4
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 2 uses
  %min.iters.check1144 = icmp ult i64 %i.xs, 304
  br i1 %min.iters.check1144, label %.preheader665.preheader1252, label %vector.memcheck1145

vector.memcheck1145:                              ; preds = %.preheader665.preheader
  %i.xv = and i64 %i.xs, -16                      ; 2 uses
  %i.xw = add i64 %i.xv, 16                       ; 2 uses
  %i.xx = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.xw ; 2 uses
  %i.xy = getelementptr i8, ptr %.2617, i64 8     ; 2 uses
  %i.xz = getelementptr i8, ptr %.2617, i64 %i.xw ; 2 uses
  %i.ya = getelementptr i8, ptr %.2617, i64 16    ; 2 uses
  %11 = add i64 %i.xv, 24                         ; 2 uses
  %12 = getelementptr i8, ptr %.2617, i64 %11     ; 2 uses
  %13 = getelementptr i8, ptr %.0147.i284.lcssa, i64 16 ; 2 uses
  %14 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %11 ; 2 uses
  %bound01149 = icmp ult ptr %i.xn, %i.xz
  %bound11150 = icmp ult ptr %i.xy, %i.xx
  %found.conflict1151 = and i1 %bound01149, %bound11150
  %bound01153 = icmp ult ptr %i.xn, %12
  %bound11154 = icmp ult ptr %i.ya, %i.xx
  %found.conflict1155 = and i1 %bound01153, %bound11154
  %conflict.rdx1156 = or i1 %found.conflict1151, %found.conflict1155
  %bound01157 = icmp ult ptr %13, %i.xz
  %bound11158 = icmp ult ptr %i.xy, %14
  %found.conflict1159 = and i1 %bound01157, %bound11158
  %conflict.rdx1160 = or i1 %conflict.rdx1156, %found.conflict1159
  %bound01161 = icmp ult ptr %13, %12
  %bound11162 = icmp ult ptr %i.ya, %14
  %found.conflict1163 = and i1 %bound01161, %bound11162
  %conflict.rdx1164 = or i1 %conflict.rdx1160, %found.conflict1163
  br i1 %conflict.rdx1164, label %.preheader665.preheader1252, label %vector.ph1165

vector.ph1165:                                    ; preds = %vector.memcheck1145
  %n.vec1166 = and i64 %i.xu, 2305843009213693950 ; 3 uses
  %i.yb = shl i64 %n.vec1166, 4                   ; 2 uses
  %i.yc = getelementptr i8, ptr %i.xn, i64 %i.yb
  %i.yd = getelementptr i8, ptr %.2617, i64 %i.yb
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %vector.ph1165
  %index1168 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1175, %vector.body1167 ] ; 2 uses
  %i.ye = shl i64 %index1168, 4                   ; 3 uses
  %i.yf = or disjoint i64 %i.ye, 16               ; 2 uses
  %next.gep1169 = getelementptr i8, ptr %i.xn, i64 %i.ye
  %next.gep1170 = getelementptr i8, ptr %i.xn, i64 %i.yf
  %next.gep1171 = getelementptr i8, ptr %.2617, i64 %i.ye
  %next.gep1172 = getelementptr i8, ptr %.2617, i64 %i.yf
  %i.yg = getelementptr inbounds nuw i8, ptr %next.gep1171, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %next.gep1172, i64 8
  %wide.load1173 = load <2 x i64>, ptr %i.yg, align 1
  %wide.load1174 = load <2 x i64>, ptr %i.yh, align 1
  store <2 x i64> %wide.load1173, ptr %next.gep1169, align 1, !noalias !107
  store <2 x i64> %wide.load1174, ptr %next.gep1170, align 1, !noalias !107
  %index.next1175 = add nuw i64 %index1168, 2     ; 2 uses
  %i.yi = icmp eq i64 %index.next1175, %n.vec1166
  br i1 %i.yi, label %middle.block1176, label %vector.body1167, !llvm.loop !73

middle.block1176:                                 ; preds = %vector.body1167
  %cmp.n1177 = icmp eq i64 %i.xu, %n.vec1166
  br i1 %cmp.n1177, label %ZS_wildcopy.exit318, label %.preheader665.preheader1252

.preheader665.preheader1252:                      ; preds = %vector.memcheck1145, %.preheader665.preheader, %middle.block1176
  %.1619.ph = phi ptr [ %i.xn, %vector.memcheck1145 ], [ %i.xn, %.preheader665.preheader ], [ %i.yc, %middle.block1176 ]
  %.2617.pn.ph = phi ptr [ %.2617, %vector.memcheck1145 ], [ %.2617, %.preheader665.preheader ], [ %i.yd, %middle.block1176 ]
  br label %.preheader665

.preheader665:                                    ; preds = %.preheader665.preheader1252, %.preheader665
  %.1619 = phi ptr [ %i.yn, %.preheader665 ], [ %.1619.ph, %.preheader665.preheader1252 ] ; 3 uses
  %.2617.pn = phi ptr [ %i.yl, %.preheader665 ], [ %.2617.pn.ph, %.preheader665.preheader1252 ] ; 2 uses
  %.1616 = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 8
  %i.yj = load i64, ptr %.1616, align 1
  store i64 %i.yj, ptr %.1619, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.1619, i64 8
  %i.yl = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 16 ; 2 uses
  %i.ym = load i64, ptr %i.yl, align 1
  store i64 %i.ym, ptr %i.yk, align 1
  %i.yn = getelementptr inbounds nuw i8, ptr %.1619, i64 16 ; 2 uses
  %i.yo = icmp ult ptr %i.yn, %i.vx
  br i1 %i.yo, label %.preheader665, label %ZS_wildcopy.exit318, !llvm.loop !74

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.0154.i288, i64 16, i1 false)
  %.not.i316 = icmp ugt i32 %.0152.i286, 16
  br i1 %.not.i316, label %.preheader667.preheader, label %ZS_wildcopy.exit318

.preheader667.preheader:                          ; preds = %bb.ci
  %i.yp = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader667

.preheader667:                                    ; preds = %.preheader667.preheader, %.preheader667
  %.0618 = phi ptr [ %i.ys, %.preheader667 ], [ %i.yp, %.preheader667.preheader ] ; 3 uses
  %.0154.i288.pn = phi ptr [ %i.yr, %.preheader667 ], [ %.0154.i288, %.preheader667.preheader ] ; 2 uses
  %.0615 = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0618, ptr noundef nonnull align 1 dereferenceable(16) %.0615, i64 16, i1 false)
  %i.yq = getelementptr inbounds nuw i8, ptr %.0618, i64 16
  %i.yr = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.yq, ptr noundef nonnull align 1 dereferenceable(16) %i.yr, i64 16, i1 false)
  %i.ys = getelementptr inbounds nuw i8, ptr %.0618, i64 32 ; 2 uses
  %i.yt = icmp ult ptr %i.ys, %i.vx
  br i1 %i.yt, label %.preheader667, label %ZS_wildcopy.exit318, !llvm.loop !66

ZS_wildcopy.exit318:                              ; preds = %.preheader667, %.preheader665, %.lr.ph750, %middle.block1176, %middle.block1094, %vec.epilog.middle.block1109, %.preheader, %bb.ci, %ZS_overlapCopy8.exit332
  %i.yu = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i365 = load i16, ptr %i.yu, align 1
  %i.yv = load ptr, ptr %i.mw, align 8, !tbaa !99
  %i.yw = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = trunc i64 %i.yy to i32                  ; 2 uses
  %i.za = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.zb = mul i16 %.val.i365, -22595
  %i.zc = and i16 %i.zb, -16
  %i.zd = zext i16 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %i.zd ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 4 ; 2 uses
  %i.zg = load i16, ptr %i.zf, align 4, !tbaa !42
  %i.zh = add i16 %i.zg, 15
  %i.zi = and i16 %i.zh, 15                       ; 2 uses
  store i16 %i.zi, ptr %i.zf, align 4, !tbaa !42
  %i.zj = zext nneg i16 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.zj ; 2 uses
  store i32 %i.yz, ptr %i.zk, align 4, !tbaa !43
  %i.zl = call i32 @llvm.umin.i32(i32 %.0152.i286, i32 255)
  %i.zm = trunc nuw i32 %i.zl to i8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 6
  store i8 %i.zm, ptr %i.zn, align 2, !tbaa !44
  %i.zo = load i8, ptr %.0154.i288, align 1, !tbaa !19
  %i.zp = zext i8 %i.zo to i64
  %i.zq = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !19
  %i.zs = zext i8 %i.zr to i64
  %i.zt = shl nuw nsw i64 %i.zp, 8
  %i.zu = or disjoint i64 %i.zt, %i.zs
  %i.zv = add i32 %i.yz, 1
  %i.zw = add i32 %.0152.i286, -1
  %i.zx = mul nuw nsw i64 %i.zu, 42941
  %i.zy = and i64 %i.zx, 65520
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %i.zy ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 4 ; 2 uses
  %i.aab = load i16, ptr %i.aaa, align 4, !tbaa !42
  %i.aac = add i16 %i.aab, 15
  %i.aad = and i16 %i.aac, 15                     ; 2 uses
  store i16 %i.aad, ptr %i.aaa, align 4, !tbaa !42
  %i.aae = zext nneg i16 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.aae ; 2 uses
  store i32 %i.zv, ptr %i.aaf, align 4, !tbaa !43
  %i.aag = call i32 @llvm.umin.i32(i32 %i.zw, i32 255)
  %i.aah = trunc nuw i32 %i.aag to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 6
  store i8 %i.aah, ptr %i.aai, align 2, !tbaa !44
  br label %ZS_execExperimentalSequence2.exit302

ZS_execExperimentalSequence2.exit302:             ; preds = %.preheader672, %.preheader670, %.lr.ph747, %middle.block1243, %middle.block1198, %vec.epilog.middle.block1213, %.preheader669, %ZS_wildcopy.exit318, %ZS_overlapCopy8.exit333, %bb.bo
  %.1153.i289 = phi i64 [ %i.vw, %ZS_wildcopy.exit318 ], [ 0, %.preheader669 ], [ %.sroa.2.0.insert.ext.i, %ZS_overlapCopy8.exit333 ], [ %.sroa.2.0.insert.ext.i, %middle.block1243 ], [ %.sroa.2.0.insert.ext.i, %bb.bo ], [ %.sroa.2.0.insert.ext.i, %middle.block1198 ], [ %.sroa.2.0.insert.ext.i, %.lr.ph747 ], [ %.sroa.2.0.insert.ext.i, %vec.epilog.middle.block1213 ], [ %.sroa.2.0.insert.ext.i, %.preheader670 ], [ %.sroa.2.0.insert.ext.i, %.preheader672 ]
  %i.aaj = add nuw nsw i64 %.1153.i289, %.sroa.047.0.insert.ext ; 2 uses
  %i.aak = icmp eq i64 %i.aaj, 0
  br i1 %i.aak, label %ZS_execExperimentalSequence.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %ZS_execExperimentalSequence2.exit302
  %i.aal = getelementptr inbounds nuw i8, ptr %.2752, i64 %i.aaj ; 2 uses
  %i.aam = add nuw nsw i64 %.1240751, 1           ; 2 uses
  %exitcond798.not = icmp eq i64 %i.aam, %i.ca
  br i1 %exitcond798.not, label %.loopexit676, label %bb.bd, !llvm.loop !75

bb.ck:                                            ; preds = %.lr.ph734, %bb.dr
  %.4733 = phi ptr [ %.0237.lcssa, %.lr.ph734 ], [ %i.aoa, %bb.dr ] ; 9 uses
  %.2241732 = phi i64 [ %.0239.lcssa, %.lr.ph734 ], [ %i.aob, %bb.dr ] ; 5 uses
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.2241732
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !29 ; 5 uses
  %.sroa.043.0.insert.ext = zext i32 %i.aao to i64 ; 11 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.2241732
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !29 ; 7 uses
  %.sroa.043.4.insert.ext = zext i32 %i.aaq to i64 ; 3 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.2241732
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !29 ; 13 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.2241732
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !19
  %i.aav = ptrtoint ptr %.4733 to i64
  %i.aaw = sub i64 %i.bj, %i.aav
  %i.aax = icmp ult i64 %i.aaw, %.sroa.043.0.insert.ext
  br i1 %i.aax, label %ZS_execExperimentalSequence.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aay = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.aaz = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = icmp ult i64 %i.aba, %.sroa.043.0.insert.ext
  br i1 %i.abb, label %ZS_execExperimentalSequence.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abc = getelementptr inbounds nuw i8, ptr %.4733, i64 %.sroa.043.0.insert.ext ; 2 uses
  %i.abd = icmp ugt ptr %i.abc, %i.mp
  %.pre803 = load ptr, ptr %i.co, align 8, !tbaa !26 ; 4 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.pre803, i64 %.sroa.043.0.insert.ext
  %i.abf = load ptr, ptr %i.cr, align 8
  %i.abg = getelementptr inbounds i8, ptr %i.abf, i64 -32
  %i.abh = icmp ugt ptr %i.abe, %i.abg
  %or.cond881 = select i1 %i.abd, i1 true, i1 %i.abh, !prof !108
  br i1 %or.cond881, label %.critedge174.i, label %bb.cn, !prof !108

.critedge174.i:                                   ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4733, ptr align 1 %.pre803, i64 %.sroa.043.0.insert.ext, i1 false)
  br label %ZS_wildcopy.exit330

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.4733, ptr noundef nonnull align 1 dereferenceable(16) %.pre803, i64 16, i1 false)
  %.not.i328 = icmp ugt i32 %i.aao, 16
  br i1 %.not.i328, label %.preheader688.preheader, label %ZS_wildcopy.exit330

.preheader688.preheader:                          ; preds = %bb.cn
  %i.abi = getelementptr inbounds nuw i8, ptr %.4733, i64 16
  br label %.preheader688

.preheader688:                                    ; preds = %.preheader688.preheader, %.preheader688
  %.0604 = phi ptr [ %i.abl, %.preheader688 ], [ %i.abi, %.preheader688.preheader ] ; 3 uses
  %.pn = phi ptr [ %i.abk, %.preheader688 ], [ %.pre803, %.preheader688.preheader ] ; 2 uses
  %.0603 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0604, ptr noundef nonnull align 1 dereferenceable(16) %.0603, i64 16, i1 false)
  %i.abj = getelementptr inbounds nuw i8, ptr %.0604, i64 16
  %i.abk = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abj, ptr noundef nonnull align 1 dereferenceable(16) %i.abk, i64 16, i1 false)
  %i.abl = getelementptr inbounds nuw i8, ptr %.0604, i64 32 ; 2 uses
  %i.abm = icmp ult ptr %i.abl, %i.abc
  br i1 %i.abm, label %.preheader688, label %ZS_wildcopy.exit330.thread, !llvm.loop !66

ZS_wildcopy.exit330.thread:                       ; preds = %.preheader688
  %i.abn = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %.sroa.043.0.insert.ext
  store ptr %i.abo, ptr %i.co, align 8, !tbaa !26
  br label %.lr.ph723

ZS_wildcopy.exit330:                              ; preds = %bb.cn, %.critedge174.i
  %i.abp = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.sroa.043.0.insert.ext
  store ptr %i.abq, ptr %i.co, align 8, !tbaa !26
  %.not766 = icmp eq i32 %i.aao, 0
  br i1 %.not766, label %._crit_edge724, label %.lr.ph723

.lr.ph723:                                        ; preds = %ZS_wildcopy.exit330.thread, %ZS_wildcopy.exit330
  %i.abr = load ptr, ptr %i.mq, align 8, !tbaa !99
  %i.abs = ptrtoint ptr %i.abr to i64             ; 3 uses
  %i.abt = load ptr, ptr %i.mr, align 8, !tbaa !39 ; 3 uses
  %xtraiter1274 = and i64 %.sroa.043.0.insert.ext, 1
  %i.abu = icmp eq i32 %i.aao, 1
  br i1 %i.abu, label %.epil.preheader, label %.lr.ph723.new

.lr.ph723.new:                                    ; preds = %.lr.ph723
  %unroll_iter = and i64 %.sroa.043.0.insert.ext, 4294967294
  br label %bb.co

._crit_edge724.loopexit.unr-lcssa:                ; preds = %bb.co
  %lcmp.mod1275.not = icmp eq i64 %xtraiter1274, 0
  br i1 %lcmp.mod1275.not, label %._crit_edge724, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge724.loopexit.unr-lcssa, %.lr.ph723
  %.0147.i722.epil.init = phi ptr [ %.4733, %.lr.ph723 ], [ %i.adr, %._crit_edge724.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1277 = trunc i32 %i.aao to i1
  call void @llvm.assume(i1 %lcmp.mod1277)
  %i.abv = getelementptr inbounds i8, ptr %.0147.i722.epil.init, i64 -2
  %.val.i367.epil = load i16, ptr %i.abv, align 1
  %i.abw = ptrtoint ptr %.0147.i722.epil.init to i64
  %i.abx = sub i64 %i.abw, %i.abs
  %i.aby = trunc i64 %i.abx to i32
  %i.abz = mul i16 %.val.i367.epil, -22595
  %i.aca = and i16 %i.abz, -16
  %i.acb = zext i16 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.acb ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 4 ; 2 uses
  %i.ace = load i16, ptr %i.acd, align 4, !tbaa !42
  %i.acf = add i16 %i.ace, 15
  %i.acg = and i16 %i.acf, 15                     ; 2 uses
  store i16 %i.acg, ptr %i.acd, align 4, !tbaa !42
  %i.ach = zext nneg i16 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %i.ach ; 2 uses
  store i32 %i.aby, ptr %i.aci, align 4, !tbaa !43
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 6
  store i8 0, ptr %i.acj, align 2, !tbaa !44
  %i.ack = getelementptr inbounds nuw i8, ptr %.0147.i722.epil.init, i64 1
  br label %._crit_edge724

._crit_edge724:                                   ; preds = %.epil.preheader, %._crit_edge724.loopexit.unr-lcssa, %ZS_wildcopy.exit330
  %.0147.i.lcssa = phi ptr [ %.4733, %ZS_wildcopy.exit330 ], [ %i.adr, %._crit_edge724.loopexit.unr-lcssa ], [ %i.ack, %.epil.preheader ] ; 42 uses
  %.0147.i.lcssa917 = ptrtoaddr ptr %.0147.i.lcssa to i64 ; 12 uses
  %i.acl = add i64 %i.aaz, %.sroa.043.0.insert.ext
  store i64 %i.acl, ptr %i.ct, align 8, !tbaa !95
  switch i8 %i.aau, label %bb.cz [
    i8 1, label %bb.cp
    i8 0, label %bb.cx
  ]

bb.co:                                            ; preds = %bb.co, %.lr.ph723.new
  %.0147.i722 = phi ptr [ %.4733, %.lr.ph723.new ], [ %i.adr, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph723.new ], [ %niter.next.1, %bb.co ]
  %i.acm = getelementptr inbounds i8, ptr %.0147.i722, i64 -2
  %.val.i367 = load i16, ptr %i.acm, align 1
  %i.acn = ptrtoint ptr %.0147.i722 to i64
  %i.aco = sub i64 %i.acn, %i.abs
  %i.acp = trunc i64 %i.aco to i32
  %i.acq = mul i16 %.val.i367, -22595
  %i.acr = and i16 %i.acq, -16
  %i.acs = zext i16 %i.acr to i64
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.acs ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 4 ; 2 uses
  %i.acv = load i16, ptr %i.acu, align 4, !tbaa !42
  %i.acw = add i16 %i.acv, 15
  %i.acx = and i16 %i.acw, 15                     ; 2 uses
  store i16 %i.acx, ptr %i.acu, align 4, !tbaa !42
  %i.acy = zext nneg i16 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acy ; 2 uses
  store i32 %i.acp, ptr %i.acz, align 4, !tbaa !43
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 6
  store i8 0, ptr %i.ada, align 2, !tbaa !44
  %i.adb = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 1
  %i.adc = getelementptr inbounds i8, ptr %.0147.i722, i64 -1
  %.val.i367.1 = load i16, ptr %i.adc, align 1
  %i.add = ptrtoint ptr %i.adb to i64
  %i.ade = sub i64 %i.add, %i.abs
  %i.adf = trunc i64 %i.ade to i32
  %i.adg = mul i16 %.val.i367.1, -22595
  %i.adh = and i16 %i.adg, -16
  %i.adi = zext i16 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.adi ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 4 ; 2 uses
  %i.adl = load i16, ptr %i.adk, align 4, !tbaa !42
  %i.adm = add i16 %i.adl, 15
  %i.adn = and i16 %i.adm, 15                     ; 2 uses
  store i16 %i.adn, ptr %i.adk, align 4, !tbaa !42
  %i.ado = zext nneg i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %i.ado ; 2 uses
  store i32 %i.adf, ptr %i.adp, align 4, !tbaa !43
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 6
  store i8 0, ptr %i.adq, align 2, !tbaa !44
  %i.adr = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge724.loopexit.unr-lcssa, label %bb.co, !llvm.loop !57

bb.cp:                                            ; preds = %._crit_edge724
  %i.ads = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i369 = load i16, ptr %i.ads, align 1
  %i.adt = load ptr, ptr %i.mr, align 8, !tbaa !39
  %i.adu = mul i16 %.val.i369, -22595
  %i.adv = and i16 %i.adu, -16
  %i.adw = zext i16 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.adw ; 3 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 4 ; 3 uses
  %i.adz = load i16, ptr %i.ady, align 4, !tbaa !42
  %i.aea = zext i16 %i.adz to i32
  %i.aeb = add i32 %i.aaq, %i.aea
  %i.aec = and i32 %i.aeb, 15
  %i.aed = zext nneg i32 %i.aec to i64
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %i.aed ; 2 uses
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !43 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 6
  %i.aeh = load i8, ptr %i.aeg, align 2, !tbaa !44
  %i.aei = zext i8 %i.aeh to i32                  ; 2 uses
  %i.aej = add i32 %i.aas, 3                      ; 2 uses
  %.not.not.i = icmp ugt i32 %i.aej, %i.aei
  %.not.i307 = icmp eq i32 %i.aas, 0
  %i.aek = add i32 %i.aas, 2
  %spec.select.i308 = select i1 %.not.i307, i32 %i.aei, i32 %i.aek
  %.0.i = select i1 %.not.not.i, i32 %i.aej, i32 %spec.select.i308 ; 5 uses
  %.sroa.2.0.insert.ext.i303 = zext i32 %.0.i to i64 ; 11 uses
  %.sroa.0.0.insert.ext.i305 = zext i32 %i.aef to i64
  %i.ael = load ptr, ptr %i.mq, align 8, !tbaa !99 ; 2 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 %.sroa.0.0.insert.ext.i305 ; 15 uses
  %i.aen = load i32, ptr %i.mu, align 4, !tbaa !100
  %i.aeo = icmp ugt i32 %i.aen, %i.aef
  br i1 %i.aeo, label %ZS_execExperimentalSequence.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aep = ptrtoint ptr %.0147.i.lcssa to i64     ; 2 uses
  %i.aeq = ptrtoint ptr %i.aem to i64
  %i.aer = sub i64 %i.aep, %i.aeq                 ; 6 uses
  %i.aes = trunc i64 %i.aer to i32
  %i.aet = load <2 x i32>, ptr %5, align 8
  store i32 %i.aes, ptr %5, align 8
  store <2 x i32> %i.aet, ptr %i.ms, align 4
  %i.aeu = ptrtoint ptr %i.ael to i64
  %i.aev = sub i64 %i.aep, %i.aeu
  %i.aew = trunc i64 %i.aev to i32
  %i.aex = load i16, ptr %i.ady, align 4, !tbaa !42
  %i.aey = add i16 %i.aex, 15
  %i.aez = and i16 %i.aey, 15                     ; 2 uses
  store i16 %i.aez, ptr %i.ady, align 4, !tbaa !42
  %i.afa = zext nneg i16 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.adx, i64 %i.afa ; 2 uses
  store i32 %i.aew, ptr %i.afb, align 4, !tbaa !43
  %i.afc = call i32 @llvm.umin.i32(i32 %.0.i, i32 255)
  %i.afd = trunc nuw i32 %i.afc to i8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 6
  store i8 %i.afd, ptr %i.afe, align 2, !tbaa !44
  %i.aff = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %.sroa.2.0.insert.ext.i303 ; 5 uses
  %i.afg = icmp ugt ptr %i.aff, %i.mp
  br i1 %i.afg, label %bb.cr, label %bb.cs, !prof !22

bb.cr:                                            ; preds = %bb.cq
  %i.afh = icmp ugt ptr %i.aff, %i.c
  br i1 %i.afh, label %ZS_execExperimentalSequence.exit.thread, label %.preheader683

.preheader683:                                    ; preds = %bb.cr
  %.not767 = icmp eq i32 %.0.i, 0
  br i1 %.not767, label %ZS_execExperimentalSequence2.exit, label %iter.check1028

iter.check1028:                                   ; preds = %.preheader683
  %i.afi = add i64 %.0147.i.lcssa917, %.sroa.2.0.insert.ext.i303
  %i.afj = add i64 %.0147.i.lcssa917, 1
  %umax1010 = call i64 @llvm.umax.i64(i64 %i.afi, i64 %i.afj)
  %i.afk = sub i64 %umax1010, %.0147.i.lcssa917   ; 7 uses
  %min.iters.check1012 = icmp ult i64 %i.afk, 8
  %i.afl = add i64 %i.aer, -1
  %diff.check1014 = icmp ult i64 %i.afl, 31
  %or.cond1250 = select i1 %min.iters.check1012, i1 true, i1 %diff.check1014
  br i1 %or.cond1250, label %.lr.ph728.preheader, label %vector.main.loop.iter.check1015

vector.main.loop.iter.check1015:                  ; preds = %iter.check1028
  %min.iters.check1016 = icmp ult i64 %i.afk, 32
  br i1 %min.iters.check1016, label %vec.epilog.ph1032, label %vector.ph1017

vector.ph1017:                                    ; preds = %vector.main.loop.iter.check1015
  %i.afm = and i64 %i.afk, 24
  %n.vec1018 = and i64 %i.afk, -32                ; 5 uses
  %i.afn = getelementptr i8, ptr %i.aem, i64 %n.vec1018
  %i.afo = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec1018
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.ph1017, %vector.body1019
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1025, %vector.body1019 ] ; 3 uses
  %next.gep1021 = getelementptr i8, ptr %i.aem, i64 %index1020 ; 2 uses
  %next.gep1022 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index1020 ; 2 uses
  %i.afp = getelementptr i8, ptr %next.gep1021, i64 16
  %wide.load1023 = load <16 x i8>, ptr %next.gep1021, align 1, !tbaa !19
  %wide.load1024 = load <16 x i8>, ptr %i.afp, align 1, !tbaa !19
  %i.afq = getelementptr i8, ptr %next.gep1022, i64 16
  store <16 x i8> %wide.load1023, ptr %next.gep1022, align 1, !tbaa !19
  store <16 x i8> %wide.load1024, ptr %i.afq, align 1, !tbaa !19
  %index.next1025 = add nuw i64 %index1020, 32    ; 2 uses
  %i.afr = icmp eq i64 %index.next1025, %n.vec1018
  br i1 %i.afr, label %middle.block1026, label %vector.body1019, !llvm.loop !76

middle.block1026:                                 ; preds = %vector.body1019
  %cmp.n1027 = icmp eq i64 %i.afk, %n.vec1018
  br i1 %cmp.n1027, label %ZS_execExperimentalSequence2.exit, label %vec.epilog.iter.check1029

vec.epilog.iter.check1029:                        ; preds = %middle.block1026
  %min.epilog.iters.check1031 = icmp eq i64 %i.afm, 0
  br i1 %min.epilog.iters.check1031, label %.lr.ph728.preheader, label %vec.epilog.ph1032, !prof !104

vec.epilog.ph1032:                                ; preds = %vector.main.loop.iter.check1015, %vec.epilog.iter.check1029
  %vec.epilog.resume.val1033 = phi i64 [ %n.vec1018, %vec.epilog.iter.check1029 ], [ 0, %vector.main.loop.iter.check1015 ]
  %n.vec1034 = and i64 %i.afk, -8                 ; 4 uses
  %i.afs = getelementptr i8, ptr %i.aem, i64 %n.vec1034
  %i.aft = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec1034
  br label %vec.epilog.vector.body1035

vec.epilog.vector.body1035:                       ; preds = %vec.epilog.vector.body1035, %vec.epilog.ph1032
  %index1036 = phi i64 [ %vec.epilog.resume.val1033, %vec.epilog.ph1032 ], [ %index.next1040, %vec.epilog.vector.body1035 ] ; 3 uses
  %next.gep1037 = getelementptr i8, ptr %i.aem, i64 %index1036
  %next.gep1038 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index1036
  %wide.load1039 = load <8 x i8>, ptr %next.gep1037, align 1, !tbaa !19
  store <8 x i8> %wide.load1039, ptr %next.gep1038, align 1, !tbaa !19
  %index.next1040 = add nuw i64 %index1036, 8     ; 2 uses
  %i.afu = icmp eq i64 %index.next1040, %n.vec1034
  br i1 %i.afu, label %vec.epilog.middle.block1041, label %vec.epilog.vector.body1035, !llvm.loop !77

vec.epilog.middle.block1041:                      ; preds = %vec.epilog.vector.body1035
  %cmp.n1042 = icmp eq i64 %i.afk, %n.vec1034
  br i1 %cmp.n1042, label %ZS_execExperimentalSequence2.exit, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %iter.check1028, %vec.epilog.iter.check1029, %vec.epilog.middle.block1041
  %.0150.i727.ph = phi ptr [ %i.aem, %iter.check1028 ], [ %i.afn, %vec.epilog.iter.check1029 ], [ %i.afs, %vec.epilog.middle.block1041 ]
  %.0151.i726.ph = phi ptr [ %.0147.i.lcssa, %iter.check1028 ], [ %i.afo, %vec.epilog.iter.check1029 ], [ %i.aft, %vec.epilog.middle.block1041 ]
  br label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %.lr.ph728
  %.0150.i727 = phi ptr [ %i.afv, %.lr.ph728 ], [ %.0150.i727.ph, %.lr.ph728.preheader ] ; 2 uses
  %.0151.i726 = phi ptr [ %i.afx, %.lr.ph728 ], [ %.0151.i726.ph, %.lr.ph728.preheader ] ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.0150.i727, i64 1
  %i.afw = load i8, ptr %.0150.i727, align 1, !tbaa !19
  %i.afx = getelementptr inbounds nuw i8, ptr %.0151.i726, i64 1 ; 2 uses
  store i8 %i.afw, ptr %.0151.i726, align 1, !tbaa !19
  %i.afy = icmp ult ptr %i.afx, %i.aff
  br i1 %i.afy, label %.lr.ph728, label %ZS_execExperimentalSequence2.exit, !llvm.loop !78

bb.cs:                                            ; preds = %bb.cq
  %i.afz = icmp slt i64 %i.aer, 16
  br i1 %i.afz, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.aga = icmp ult i64 %i.aer, 8
  br i1 %i.aga, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.aer
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !29
  %i.agd = load i8, ptr %i.aem, align 1, !tbaa !19
  store i8 %i.agd, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.age = getelementptr inbounds nuw i8, ptr %i.aem, i64 1
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !19
  %i.agg = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.agf, ptr %i.agg, align 1, !tbaa !19
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aem, i64 2
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !19
  %i.agj = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.agi, ptr %i.agj, align 1, !tbaa !19
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aem, i64 3
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !19
  %i.agm = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.agl, ptr %i.agm, align 1, !tbaa !19
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.aer
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !29
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds i8, ptr %i.aem, i64 %i.agp ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val345 = load i32, ptr %i.agq, align 1
  store i32 %.val345, ptr %i.agr, align 1
  %i.ags = sext i32 %i.agc to i64
  %i.agt = sub nsw i64 0, %i.ags
  %i.agu = getelementptr inbounds i8, ptr %i.agq, i64 %i.agt
  br label %ZS_overlapCopy8.exit331

bb.cv:                                            ; preds = %bb.ct
  %.val349 = load i64, ptr %i.aem, align 1
  store i64 %.val349, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit331

ZS_overlapCopy8.exit331:                          ; preds = %bb.cu, %bb.cv
  %.2612 = phi ptr [ %i.agu, %bb.cu ], [ %i.aem, %bb.cv ] ; 7 uses
  %.not12.i321 = icmp ugt i32 %.0.i, 8
  br i1 %.not12.i321, label %.preheader684.preheader, label %ZS_execExperimentalSequence2.exit

.preheader684.preheader:                          ; preds = %ZS_overlapCopy8.exit331
  %i.agv = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 6 uses
  %i.agw = add i64 %.0147.i.lcssa917, %.sroa.2.0.insert.ext.i303
  %i.agx = add i64 %.0147.i.lcssa917, 24
  %i.agy = call i64 @llvm.umax.i64(i64 %i.agw, i64 %i.agx)
  %i.agz = add i64 %i.agy, -9
  %i.aha = sub i64 %i.agz, %.0147.i.lcssa917      ; 3 uses
  %i.ahb = lshr i64 %i.aha, 4
  %i.ahc = add nuw nsw i64 %i.ahb, 1              ; 2 uses
  %min.iters.check1055 = icmp ult i64 %i.aha, 112
  br i1 %min.iters.check1055, label %.preheader684.preheader1264, label %vector.memcheck1056

vector.memcheck1056:                              ; preds = %.preheader684.preheader
  %i.ahd = and i64 %i.aha, -16
  %i.ahe = add i64 %i.ahd, 24                     ; 2 uses
  %i.ahf = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.ahe
  %i.ahg = getelementptr i8, ptr %.2612, i64 8
  %i.ahh = getelementptr i8, ptr %.2612, i64 %i.ahe
  %bound01057 = icmp ult ptr %i.agv, %i.ahh
  %bound11058 = icmp ult ptr %i.ahg, %i.ahf
  %found.conflict1059 = and i1 %bound01057, %bound11058
  br i1 %found.conflict1059, label %.preheader684.preheader1264, label %vector.ph1060

vector.ph1060:                                    ; preds = %vector.memcheck1056
  %n.vec1061 = and i64 %i.ahc, 2305843009213693950 ; 3 uses
  %i.ahi = shl i64 %n.vec1061, 4                  ; 2 uses
  %i.ahj = getelementptr i8, ptr %i.agv, i64 %i.ahi
  %i.ahk = getelementptr i8, ptr %.2612, i64 %i.ahi
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %vector.ph1060
  %index1063 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1070, %vector.body1062 ] ; 2 uses
  %i.ahl = shl i64 %index1063, 4                  ; 3 uses
  %i.ahm = or disjoint i64 %i.ahl, 16             ; 2 uses
  %next.gep1064 = getelementptr i8, ptr %i.agv, i64 %i.ahl
  %next.gep1065 = getelementptr i8, ptr %i.agv, i64 %i.ahm
  %next.gep1066 = getelementptr i8, ptr %.2612, i64 %i.ahl
  %next.gep1067 = getelementptr i8, ptr %.2612, i64 %i.ahm
  %i.ahn = getelementptr inbounds nuw i8, ptr %next.gep1066, i64 8
  %i.aho = getelementptr inbounds nuw i8, ptr %next.gep1067, i64 8
  %wide.load1068 = load <2 x i64>, ptr %i.ahn, align 1, !alias.scope !109
  %wide.load1069 = load <2 x i64>, ptr %i.aho, align 1, !alias.scope !109
  store <2 x i64> %wide.load1068, ptr %next.gep1064, align 1, !alias.scope !110, !noalias !109
  store <2 x i64> %wide.load1069, ptr %next.gep1065, align 1, !alias.scope !110, !noalias !109
  %index.next1070 = add nuw i64 %index1063, 2     ; 2 uses
  %i.ahp = icmp eq i64 %index.next1070, %n.vec1061
  br i1 %i.ahp, label %middle.block1071, label %vector.body1062, !llvm.loop !82

middle.block1071:                                 ; preds = %vector.body1062
  %cmp.n1072 = icmp eq i64 %i.ahc, %n.vec1061
  br i1 %cmp.n1072, label %ZS_execExperimentalSequence2.exit, label %.preheader684.preheader1264

.preheader684.preheader1264:                      ; preds = %vector.memcheck1056, %.preheader684.preheader, %middle.block1071
  %.1614.ph = phi ptr [ %i.agv, %vector.memcheck1056 ], [ %i.agv, %.preheader684.preheader ], [ %i.ahj, %middle.block1071 ]
  %.2612.pn.ph = phi ptr [ %.2612, %vector.memcheck1056 ], [ %.2612, %.preheader684.preheader ], [ %i.ahk, %middle.block1071 ]
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader1264, %.preheader684
  %.1614 = phi ptr [ %i.ahu, %.preheader684 ], [ %.1614.ph, %.preheader684.preheader1264 ] ; 3 uses
  %.2612.pn = phi ptr [ %i.ahs, %.preheader684 ], [ %.2612.pn.ph, %.preheader684.preheader1264 ] ; 2 uses
  %.1611 = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 8
  %i.ahq = load i64, ptr %.1611, align 1
  store i64 %i.ahq, ptr %.1614, align 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %.1614, i64 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 16 ; 2 uses
  %i.aht = load i64, ptr %i.ahs, align 1
  store i64 %i.aht, ptr %i.ahr, align 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %.1614, i64 16 ; 2 uses
  %i.ahv = icmp ult ptr %i.ahu, %i.aff
  br i1 %i.ahv, label %.preheader684, label %ZS_execExperimentalSequence2.exit, !llvm.loop !83

bb.cw:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.aem, i64 16, i1 false)
  %.not.i320 = icmp ugt i32 %.0.i, 16
  br i1 %.not.i320, label %.preheader686.preheader, label %ZS_execExperimentalSequence2.exit

.preheader686.preheader:                          ; preds = %bb.cw
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 16
  br label %.preheader686

.preheader686:                                    ; preds = %.preheader686.preheader, %.preheader686
  %.0613 = phi ptr [ %i.ahz, %.preheader686 ], [ %i.ahw, %.preheader686.preheader ] ; 3 uses
  %.pn663 = phi ptr [ %i.ahy, %.preheader686 ], [ %i.aem, %.preheader686.preheader ] ; 2 uses
  %.0610 = getelementptr inbounds nuw i8, ptr %.pn663, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0613, ptr noundef nonnull align 1 dereferenceable(16) %.0610, i64 16, i1 false)
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0613, i64 16
  %i.ahy = getelementptr inbounds nuw i8, ptr %.pn663, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ahx, ptr noundef nonnull align 1 dereferenceable(16) %i.ahy, i64 16, i1 false)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.0613, i64 32 ; 2 uses
  %i.aia = icmp ult ptr %i.ahz, %i.aff
  br i1 %i.aia, label %.preheader686, label %ZS_execExperimentalSequence2.exit, !llvm.loop !66

bb.cx:                                            ; preds = %._crit_edge724
  %i.aib = ptrtoint ptr %.0147.i.lcssa to i64
  %i.aic = sub i64 %i.aib, %i.bk
  %i.aid = icmp ult i64 %i.aic, %.sroa.043.4.insert.ext
  br i1 %i.aid, label %ZS_execExperimentalSequence.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aie = add i32 %i.aas, 7
  %i.aif = load <2 x i32>, ptr %5, align 8
  store i32 %i.aaq, ptr %5, align 8
  store <2 x i32> %i.aif, ptr %i.ms, align 4
  br label %bb.dk

bb.cz:                                            ; preds = %._crit_edge724
  %i.aig = and i64 %.sroa.043.4.insert.ext, 3
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aig
  %i.aii = load i32, ptr %i.aih, align 4          ; 3 uses
  %i.aij = icmp eq i32 %i.aaq, 0
  br i1 %i.aij, label %.split.i281, label %.split165.i

.split.i281:                                      ; preds = %bb.cz
  %.sroa.0403.0.copyload404 = load i32, ptr %5, align 8 ; 2 uses
  %i.aik = load <2 x i32>, ptr %i.ms, align 4     ; 2 uses
  %i.ail = load i32, ptr %i.mt, align 4           ; 2 uses
  %i.aim = icmp eq i32 %i.aas, %i.ail
  %.sroa.19419.12.copyload = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.aim, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split.i281
  %.sroa.23424.12.copyload = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.db:                                            ; preds = %.split.i281
  %i.ain = icmp eq i32 %i.aas, %.sroa.19419.12.copyload
  %i.aio = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select762 = select i1 %i.ain, i32 %i.aio, i32 %.sroa.19419.12.copyload
  br label %ZS_rep_update.exit371

.split165.i:                                      ; preds = %bb.cz
  %i.aip = lshr i32 %i.aaq, 2
  %i.aiq = add nsw i32 %i.aip, -4
  %i.air = add i32 %i.aiq, %i.aii                 ; 5 uses
  %i.ais = and i32 %i.aaq, 3                      ; 2 uses
  %i.ait = icmp eq i32 %i.ais, 3
  %i.aiu = and i32 %i.aaq, 2
  %or.cond.not.i372 = icmp eq i32 %i.aiu, 0
  br i1 %or.cond.not.i372, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.split165.i
  %i.aiv = load <2 x i32>, ptr %5, align 8
  br label %bb.df

bb.dd:                                            ; preds = %.split165.i
  %i.aiw = icmp eq i32 %i.ais, 1
  br i1 %i.aiw, label %.thread.i373, label %bb.de

.thread.i373:                                     ; preds = %bb.dd
  %i.aix = load i32, ptr %.sroa.5431.0..sroa_idx, align 8
  %i.aiy = load <2 x i32>, ptr %5, align 8
  %i.aiz = insertelement <2 x i32> %i.aiy, i32 %i.aix, i64 1
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %.sroa.0403.0.copyload405 = load i32, ptr %5, align 8
  %i.aja = load <2 x i32>, ptr %i.ms, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %.sroa.0403.1 = phi i32 [ %.sroa.0403.0.copyload405, %bb.de ], [ %i.air, %bb.dc ] ; 2 uses
  %i.ajb = phi <2 x i32> [ %i.aja, %bb.de ], [ %i.aiv, %bb.dc ] ; 2 uses
  br i1 %i.ait, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %.sroa.12416.12.copyload418 = load i32, ptr %i.mt, align 4
  %.sroa.19419.12.copyload423 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8
  %.sroa.23424.12.copyload428 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dh:                                            ; preds = %bb.df, %.thread.i373
  %.sroa.0403.2 = phi i32 [ %i.air, %.thread.i373 ], [ %.sroa.0403.1, %bb.df ] ; 2 uses
  %i.ajc = phi <2 x i32> [ %i.aiz, %.thread.i373 ], [ %i.ajb, %bb.df ] ; 2 uses
  %i.ajd = load i32, ptr %i.mt, align 4           ; 2 uses
  %i.aje = icmp eq i32 %i.aas, %i.ajd
  %.sroa.19419.12.copyload421 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.aje, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.sroa.23424.12.copyload426 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dj:                                            ; preds = %bb.dh
  %i.ajf = icmp eq i32 %i.aas, %.sroa.19419.12.copyload421
  %i.ajg = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select763 = select i1 %i.ajf, i32 %i.ajg, i32 %.sroa.19419.12.copyload421
  br label %ZS_rep_update.exit371

ZS_rep_update.exit371:                            ; preds = %bb.dj, %bb.db, %bb.di, %bb.dg, %bb.da
  %.sroa.23424.0 = phi i32 [ %.sroa.23424.12.copyload428, %bb.dg ], [ %.sroa.23424.12.copyload, %bb.da ], [ %spec.select763, %bb.dj ], [ %.sroa.23424.12.copyload426, %bb.di ], [ %spec.select762, %bb.db ]
  %.sroa.19419.0 = phi i32 [ %.sroa.19419.12.copyload423, %bb.dg ], [ %.sroa.19419.12.copyload, %bb.da ], [ %i.ajd, %bb.dj ], [ %.sroa.19419.12.copyload421, %bb.di ], [ %i.ail, %bb.db ]
  %.sroa.12416.0 = phi i32 [ %.sroa.12416.12.copyload418, %bb.dg ], [ %i.aas, %bb.da ], [ %i.aas, %bb.dj ], [ %i.aas, %bb.di ], [ %i.aas, %bb.db ]
  %.sroa.0403.0 = phi i32 [ %.sroa.0403.1, %bb.dg ], [ %.sroa.0403.0.copyload404, %bb.da ], [ %.sroa.0403.2, %bb.dj ], [ %.sroa.0403.2, %bb.di ], [ %.sroa.0403.0.copyload404, %bb.db ]
  %i.ajh = phi i32 [ %i.air, %bb.dg ], [ %i.aii, %bb.da ], [ %i.air, %bb.dj ], [ %i.air, %bb.di ], [ %i.aii, %bb.db ]
  %i.aji = phi <2 x i32> [ %i.ajb, %bb.dg ], [ %i.aik, %bb.da ], [ %i.ajc, %bb.dj ], [ %i.ajc, %bb.di ], [ %i.aik, %bb.db ]
  store i32 %.sroa.0403.0, ptr %5, align 8
  store <2 x i32> %i.aji, ptr %i.ms, align 4
  store i32 %.sroa.12416.0, ptr %i.mt, align 4
  store i32 %.sroa.19419.0, ptr %.sroa.19419.12..sroa_idx422, align 8
  store i32 %.sroa.23424.0, ptr %.sroa.23424.12..sroa_idx427, align 4
  %i.ajj = zext i32 %i.ajh to i64
  %i.ajk = add i32 %i.aas, 3
  br label %bb.dk

bb.dk:                                            ; preds = %ZS_rep_update.exit371, %bb.cy
  %.sroa.2.0.extract.shift.pn.i = phi i64 [ %.sroa.043.4.insert.ext, %bb.cy ], [ %i.ajj, %ZS_rep_update.exit371 ] ; 6 uses
  %.0152.i = phi i32 [ %i.aie, %bb.cy ], [ %i.ajk, %ZS_rep_update.exit371 ] ; 6 uses
  %.pn.i = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i
  %.0154.i = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 %.pn.i ; 15 uses
  %i.ajl = zext i32 %.0152.i to i64               ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %i.ajl ; 5 uses
  %i.ajn = icmp ugt ptr %i.ajm, %i.mp
  br i1 %i.ajn, label %bb.dl, label %bb.dm, !prof !22

bb.dl:                                            ; preds = %bb.dk
  %i.ajo = icmp ugt ptr %i.ajm, %i.c
  br i1 %i.ajo, label %ZS_execExperimentalSequence.exit.thread, label %.preheader678

.preheader678:                                    ; preds = %bb.dl
  %.not768 = icmp eq i32 %.0152.i, 0
  br i1 %.not768, label %ZS_wildcopy.exit326, label %iter.check933

iter.check933:                                    ; preds = %.preheader678
  %i.ajp = add nuw i64 %.0147.i.lcssa917, %i.ajl
  %i.ajq = add i64 %.0147.i.lcssa917, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ajp, i64 %i.ajq)
  %i.ajr = sub i64 %umax, %.0147.i.lcssa917       ; 7 uses
  %min.iters.check918 = icmp ult i64 %i.ajr, 8
  %i.ajs = add nsw i64 %.sroa.2.0.extract.shift.pn.i, -1
  %diff.check920 = icmp ult i64 %i.ajs, 31
  %or.cond1251 = select i1 %min.iters.check918, i1 true, i1 %diff.check920
  br i1 %or.cond1251, label %.lr.ph731.preheader, label %vector.main.loop.iter.check921

vector.main.loop.iter.check921:                   ; preds = %iter.check933
  %min.iters.check922 = icmp ult i64 %i.ajr, 32
  br i1 %min.iters.check922, label %vec.epilog.ph937, label %vector.ph923

vector.ph923:                                     ; preds = %vector.main.loop.iter.check921
  %i.ajt = and i64 %i.ajr, 24
  %n.vec924 = and i64 %i.ajr, -32                 ; 5 uses
  %i.aju = getelementptr i8, ptr %.0154.i, i64 %n.vec924
  %i.ajv = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec924
  br label %vector.body925

vector.body925:                                   ; preds = %vector.ph923, %vector.body925
  %index926 = phi i64 [ 0, %vector.ph923 ], [ %index.next930, %vector.body925 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0154.i, i64 %index926 ; 2 uses
  %next.gep927 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index926 ; 2 uses
  %i.ajw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load928 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load929 = load <16 x i8>, ptr %i.ajw, align 1, !tbaa !19
  %i.ajx = getelementptr i8, ptr %next.gep927, i64 16
  store <16 x i8> %wide.load928, ptr %next.gep927, align 1, !tbaa !19
  store <16 x i8> %wide.load929, ptr %i.ajx, align 1, !tbaa !19
  %index.next930 = add nuw i64 %index926, 32      ; 2 uses
  %i.ajy = icmp eq i64 %index.next930, %n.vec924
  br i1 %i.ajy, label %middle.block931, label %vector.body925, !llvm.loop !84

middle.block931:                                  ; preds = %vector.body925
  %cmp.n932 = icmp eq i64 %i.ajr, %n.vec924
  br i1 %cmp.n932, label %ZS_wildcopy.exit326, label %vec.epilog.iter.check934

vec.epilog.iter.check934:                         ; preds = %middle.block931
  %min.epilog.iters.check936 = icmp eq i64 %i.ajt, 0
  br i1 %min.epilog.iters.check936, label %.lr.ph731.preheader, label %vec.epilog.ph937, !prof !104

vec.epilog.ph937:                                 ; preds = %vector.main.loop.iter.check921, %vec.epilog.iter.check934
  %vec.epilog.resume.val938 = phi i64 [ %n.vec924, %vec.epilog.iter.check934 ], [ 0, %vector.main.loop.iter.check921 ]
  %n.vec939 = and i64 %i.ajr, -8                  ; 4 uses
  %i.ajz = getelementptr i8, ptr %.0154.i, i64 %n.vec939
  %i.aka = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec939
  br label %vec.epilog.vector.body940

vec.epilog.vector.body940:                        ; preds = %vec.epilog.vector.body940, %vec.epilog.ph937
  %index941 = phi i64 [ %vec.epilog.resume.val938, %vec.epilog.ph937 ], [ %index.next945, %vec.epilog.vector.body940 ] ; 3 uses
  %next.gep942 = getelementptr i8, ptr %.0154.i, i64 %index941
  %next.gep943 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index941
  %wide.load944 = load <8 x i8>, ptr %next.gep942, align 1, !tbaa !19
  store <8 x i8> %wide.load944, ptr %next.gep943, align 1, !tbaa !19
  %index.next945 = add nuw i64 %index941, 8       ; 2 uses
  %i.akb = icmp eq i64 %index.next945, %n.vec939
  br i1 %i.akb, label %vec.epilog.middle.block946, label %vec.epilog.vector.body940, !llvm.loop !85

vec.epilog.middle.block946:                       ; preds = %vec.epilog.vector.body940
  %cmp.n947 = icmp eq i64 %i.ajr, %n.vec939
  br i1 %cmp.n947, label %ZS_wildcopy.exit326, label %.lr.ph731.preheader

.lr.ph731.preheader:                              ; preds = %iter.check933, %vec.epilog.iter.check934, %vec.epilog.middle.block946
  %.0148.i730.ph = phi ptr [ %.0154.i, %iter.check933 ], [ %i.aju, %vec.epilog.iter.check934 ], [ %i.ajz, %vec.epilog.middle.block946 ]
  %.0149.i729.ph = phi ptr [ %.0147.i.lcssa, %iter.check933 ], [ %i.ajv, %vec.epilog.iter.check934 ], [ %i.aka, %vec.epilog.middle.block946 ]
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %.lr.ph731.preheader, %.lr.ph731
  %.0148.i730 = phi ptr [ %i.akc, %.lr.ph731 ], [ %.0148.i730.ph, %.lr.ph731.preheader ] ; 2 uses
  %.0149.i729 = phi ptr [ %i.ake, %.lr.ph731 ], [ %.0149.i729.ph, %.lr.ph731.preheader ] ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.0148.i730, i64 1
  %i.akd = load i8, ptr %.0148.i730, align 1, !tbaa !19
  %i.ake = getelementptr inbounds nuw i8, ptr %.0149.i729, i64 1 ; 2 uses
  store i8 %i.akd, ptr %.0149.i729, align 1, !tbaa !19
  %i.akf = icmp ult ptr %i.ake, %i.ajm
  br i1 %i.akf, label %.lr.ph731, label %ZS_wildcopy.exit326, !llvm.loop !86

bb.dm:                                            ; preds = %bb.dk
  %i.akg = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 16
  br i1 %i.akg, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.akh = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 8
  br i1 %i.akh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !29
  %i.akk = load i8, ptr %.0154.i, align 1, !tbaa !19
  store i8 %i.akk, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.akl = getelementptr inbounds nuw i8, ptr %.0154.i, i64 1
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !19
  %i.akn = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.akm, ptr %i.akn, align 1, !tbaa !19
  %i.ako = getelementptr inbounds nuw i8, ptr %.0154.i, i64 2
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !19
  %i.akq = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.akp, ptr %i.akq, align 1, !tbaa !19
  %i.akr = getelementptr inbounds nuw i8, ptr %.0154.i, i64 3
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !19
  %i.akt = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.aks, ptr %i.akt, align 1, !tbaa !19
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !29
  %i.akw = sext i32 %i.akv to i64
  %i.akx = getelementptr inbounds i8, ptr %.0154.i, i64 %i.akw ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val346 = load i32, ptr %i.akx, align 1
  store i32 %.val346, ptr %i.aky, align 1
  %i.akz = sext i32 %i.akj to i64
  %i.ala = sub nsw i64 0, %i.akz
  %i.alb = getelementptr inbounds i8, ptr %i.akx, i64 %i.ala
  br label %ZS_overlapCopy8.exit

bb.dp:                                            ; preds = %bb.dn
  %.val350 = load i64, ptr %.0154.i, align 1
  store i64 %.val350, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.do, %bb.dp
  %.2607 = phi ptr [ %i.alb, %bb.do ], [ %.0154.i, %bb.dp ] ; 9 uses
  %.not12.i325 = icmp ugt i32 %.0152.i, 8
  br i1 %.not12.i325, label %.preheader679.preheader, label %ZS_wildcopy.exit326

.preheader679.preheader:                          ; preds = %ZS_overlapCopy8.exit
  %i.alc = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 7 uses
  %i.ald = add nuw i64 %.0147.i.lcssa917, %i.ajl
  %i.ale = add i64 %.0147.i.lcssa917, 24
  %i.alf = call i64 @llvm.umax.i64(i64 %i.ald, i64 %i.ale)
  %i.alg = add i64 %i.alf, -9
  %i.alh = sub i64 %i.alg, %.0147.i.lcssa917      ; 3 uses
  %i.ali = lshr i64 %i.alh, 4
  %i.alj = add nuw nsw i64 %i.ali, 1              ; 2 uses
  %min.iters.check976 = icmp ult i64 %i.alh, 304
  br i1 %min.iters.check976, label %.preheader679.preheader1261, label %vector.memcheck977

vector.memcheck977:                               ; preds = %.preheader679.preheader
  %i.alk = and i64 %i.alh, -16                    ; 2 uses
  %i.all = add i64 %i.alk, 16                     ; 2 uses
  %i.alm = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.all ; 2 uses
  %i.aln = getelementptr i8, ptr %.2607, i64 8    ; 2 uses
  %i.alo = getelementptr i8, ptr %.2607, i64 %i.all ; 2 uses
  %i.alp = getelementptr i8, ptr %.2607, i64 16   ; 2 uses
  %15 = add i64 %i.alk, 24                        ; 2 uses
  %16 = getelementptr i8, ptr %.2607, i64 %15     ; 2 uses
  %17 = getelementptr i8, ptr %.0147.i.lcssa, i64 16 ; 2 uses
  %18 = getelementptr i8, ptr %.0147.i.lcssa, i64 %15 ; 2 uses
  %bound0978 = icmp ult ptr %i.alc, %i.alo
  %bound1979 = icmp ult ptr %i.aln, %i.alm
  %found.conflict980 = and i1 %bound0978, %bound1979
  %bound0981.a = icmp ult ptr %i.alc, %16
  %bound1982.a = icmp ult ptr %i.alp, %i.alm
  %found.conflict983.a = and i1 %bound0981.a, %bound1982.a
  %conflict.rdx984.a = or i1 %found.conflict980, %found.conflict983.a
  %bound0985 = icmp ult ptr %17, %i.alo
  %bound1986 = icmp ult ptr %i.aln, %18
  %found.conflict987 = and i1 %bound0985, %bound1986
  %conflict.rdx988 = or i1 %conflict.rdx984.a, %found.conflict987
  %bound0989 = icmp ult ptr %17, %16
  %bound1990 = icmp ult ptr %i.alp, %18
  %found.conflict991 = and i1 %bound0989, %bound1990
  %conflict.rdx992 = or i1 %conflict.rdx988, %found.conflict991
  br i1 %conflict.rdx992, label %.preheader679.preheader1261, label %vector.ph993

vector.ph993:                                     ; preds = %vector.memcheck977
  %n.vec994 = and i64 %i.alj, 2305843009213693950 ; 3 uses
  %i.alq = shl i64 %n.vec994, 4                   ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alc, i64 %i.alq
  %i.als = getelementptr i8, ptr %.2607, i64 %i.alq
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph993
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next1003, %vector.body995 ] ; 2 uses
  %i.alt = shl i64 %index996, 4                   ; 3 uses
  %i.alu = or disjoint i64 %i.alt, 16             ; 2 uses
  %next.gep997 = getelementptr i8, ptr %i.alc, i64 %i.alt
  %next.gep998 = getelementptr i8, ptr %i.alc, i64 %i.alu
  %next.gep999 = getelementptr i8, ptr %.2607, i64 %i.alt
  %next.gep1000 = getelementptr i8, ptr %.2607, i64 %i.alu
  %i.alv = getelementptr inbounds nuw i8, ptr %next.gep999, i64 8
  %i.alw = getelementptr inbounds nuw i8, ptr %next.gep1000, i64 8
  %wide.load1001 = load <2 x i64>, ptr %i.alv, align 1
  %wide.load1002 = load <2 x i64>, ptr %i.alw, align 1
  store <2 x i64> %wide.load1001, ptr %next.gep997, align 1, !noalias !111
  store <2 x i64> %wide.load1002, ptr %next.gep998, align 1, !noalias !111
  %index.next1003 = add nuw i64 %index996, 2      ; 2 uses
  %i.alx = icmp eq i64 %index.next1003, %n.vec994
  br i1 %i.alx, label %middle.block1004, label %vector.body995, !llvm.loop !90

middle.block1004:                                 ; preds = %vector.body995
  %cmp.n1005 = icmp eq i64 %i.alj, %n.vec994
  br i1 %cmp.n1005, label %ZS_wildcopy.exit326, label %.preheader679.preheader1261

.preheader679.preheader1261:                      ; preds = %vector.memcheck977, %.preheader679.preheader, %middle.block1004
  %.1609.ph = phi ptr [ %i.alc, %vector.memcheck977 ], [ %i.alc, %.preheader679.preheader ], [ %i.alr, %middle.block1004 ]
  %.2607.pn.ph = phi ptr [ %.2607, %vector.memcheck977 ], [ %.2607, %.preheader679.preheader ], [ %i.als, %middle.block1004 ]
  br label %.preheader679

.preheader679:                                    ; preds = %.preheader679.preheader1261, %.preheader679
  %.1609 = phi ptr [ %i.amc, %.preheader679 ], [ %.1609.ph, %.preheader679.preheader1261 ] ; 3 uses
  %.2607.pn = phi ptr [ %i.ama, %.preheader679 ], [ %.2607.pn.ph, %.preheader679.preheader1261 ] ; 2 uses
  %.1606 = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 8
  %i.aly = load i64, ptr %.1606, align 1
  store i64 %i.aly, ptr %.1609, align 1
  %i.alz = getelementptr inbounds nuw i8, ptr %.1609, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 16 ; 2 uses
  %i.amb = load i64, ptr %i.ama, align 1
  store i64 %i.amb, ptr %i.alz, align 1
  %i.amc = getelementptr inbounds nuw i8, ptr %.1609, i64 16 ; 2 uses
  %i.amd = icmp ult ptr %i.amc, %i.ajm
  br i1 %i.amd, label %.preheader679, label %ZS_wildcopy.exit326, !llvm.loop !91

bb.dq:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.0154.i, i64 16, i1 false)
  %.not.i324 = icmp ugt i32 %.0152.i, 16
  br i1 %.not.i324, label %.preheader681.preheader, label %ZS_wildcopy.exit326

.preheader681.preheader:                          ; preds = %bb.dq
  %i.ame = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 16
  br label %.preheader681

.preheader681:                                    ; preds = %.preheader681.preheader, %.preheader681
  %.0608 = phi ptr [ %i.amh, %.preheader681 ], [ %i.ame, %.preheader681.preheader ] ; 3 uses
  %.0154.i.pn = phi ptr [ %i.amg, %.preheader681 ], [ %.0154.i, %.preheader681.preheader ] ; 2 uses
  %.0605 = getelementptr inbounds nuw i8, ptr %.0154.i.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0608, ptr noundef nonnull align 1 dereferenceable(16) %.0605, i64 16, i1 false)
  %i.amf = getelementptr inbounds nuw i8, ptr %.0608, i64 16
  %i.amg = getelementptr inbounds nuw i8, ptr %.0154.i.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.amf, ptr noundef nonnull align 1 dereferenceable(16) %i.amg, i64 16, i1 false)
  %i.amh = getelementptr inbounds nuw i8, ptr %.0608, i64 32 ; 2 uses
  %i.ami = icmp ult ptr %i.amh, %i.ajm
  br i1 %i.ami, label %.preheader681, label %ZS_wildcopy.exit326, !llvm.loop !66

ZS_wildcopy.exit326:                              ; preds = %.preheader681, %.preheader679, %.lr.ph731, %middle.block1004, %middle.block931, %vec.epilog.middle.block946, %.preheader678, %bb.dq, %ZS_overlapCopy8.exit
  %i.amj = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i375 = load i16, ptr %i.amj, align 1
  %i.amk = load ptr, ptr %i.mq, align 8, !tbaa !99
  %i.aml = ptrtoint ptr %.0147.i.lcssa to i64
  %i.amm = ptrtoint ptr %i.amk to i64
  %i.amn = sub i64 %i.aml, %i.amm
  %i.amo = trunc i64 %i.amn to i32                ; 2 uses
  %i.amp = load ptr, ptr %i.mr, align 8, !tbaa !39 ; 2 uses
  %i.amq = mul i16 %.val.i375, -22595
  %i.amr = and i16 %i.amq, -16
  %i.ams = zext i16 %i.amr to i64
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.amp, i64 %i.ams ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 4 ; 2 uses
  %i.amv = load i16, ptr %i.amu, align 4, !tbaa !42
  %i.amw = add i16 %i.amv, 15
  %i.amx = and i16 %i.amw, 15                     ; 2 uses
  store i16 %i.amx, ptr %i.amu, align 4, !tbaa !42
  %i.amy = zext nneg i16 %i.amx to i64
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %i.amy ; 2 uses
  store i32 %i.amo, ptr %i.amz, align 4, !tbaa !43
  %i.ana = call i32 @llvm.umin.i32(i32 %.0152.i, i32 255)
  %i.anb = trunc nuw i32 %i.ana to i8
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amz, i64 6
  store i8 %i.anb, ptr %i.anc, align 2, !tbaa !44
  %i.and = load i8, ptr %.0154.i, align 1, !tbaa !19
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -1
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !19
  %i.anh = zext i8 %i.ang to i64
  %i.ani = shl nuw nsw i64 %i.ane, 8
  %i.anj = or disjoint i64 %i.ani, %i.anh
  %i.ank = add i32 %i.amo, 1
  %i.anl = add i32 %.0152.i, -1
  %i.anm = mul nuw nsw i64 %i.anj, 42941
  %i.ann = and i64 %i.anm, 65520
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.amp, i64 %i.ann ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 4 ; 2 uses
  %i.anq = load i16, ptr %i.anp, align 4, !tbaa !42
  %i.anr = add i16 %i.anq, 15
  %i.ans = and i16 %i.anr, 15                     ; 2 uses
  store i16 %i.ans, ptr %i.anp, align 4, !tbaa !42
  %i.ant = zext nneg i16 %i.ans to i64
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.ano, i64 %i.ant ; 2 uses
  store i32 %i.ank, ptr %i.anu, align 4, !tbaa !43
  %i.anv = call i32 @llvm.umin.i32(i32 %i.anl, i32 255)
  %i.anw = trunc nuw i32 %i.anv to i8
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 6
  store i8 %i.anw, ptr %i.anx, align 2, !tbaa !44
  br label %ZS_execExperimentalSequence2.exit

ZS_execExperimentalSequence2.exit:                ; preds = %.preheader686, %.preheader684, %.lr.ph728, %middle.block1071, %middle.block1026, %vec.epilog.middle.block1041, %.preheader683, %ZS_wildcopy.exit326, %ZS_overlapCopy8.exit331, %bb.cw
  %.1153.i = phi i64 [ %i.ajl, %ZS_wildcopy.exit326 ], [ 0, %.preheader683 ], [ %.sroa.2.0.insert.ext.i303, %ZS_overlapCopy8.exit331 ], [ %.sroa.2.0.insert.ext.i303, %middle.block1071 ], [ %.sroa.2.0.insert.ext.i303, %bb.cw ], [ %.sroa.2.0.insert.ext.i303, %middle.block1026 ], [ %.sroa.2.0.insert.ext.i303, %.lr.ph728 ], [ %.sroa.2.0.insert.ext.i303, %vec.epilog.middle.block1041 ], [ %.sroa.2.0.insert.ext.i303, %.preheader684 ], [ %.sroa.2.0.insert.ext.i303, %.preheader686 ]
  %i.any = add nuw nsw i64 %.1153.i, %.sroa.043.0.insert.ext ; 2 uses
  %i.anz = icmp eq i64 %i.any, 0
  br i1 %i.anz, label %ZS_execExperimentalSequence.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %ZS_execExperimentalSequence2.exit
  %i.aoa = getelementptr inbounds nuw i8, ptr %.4733, i64 %i.any ; 2 uses
  %i.aob = add nuw nsw i64 %.2241732, 1           ; 2 uses
  %exitcond795.not = icmp eq i64 %i.aob, %i.ca
  br i1 %exitcond795.not, label %.loopexit676, label %bb.ck, !llvm.loop !92

.loopexit676:                                     ; preds = %bb.dr, %bb.cj, %.preheader689, %.preheader675, %bb.bb, %.critedge
  %.6 = phi ptr [ %.0237.lcssa, %.critedge ], [ %i.aal, %bb.cj ], [ %.0237.lcssa, %bb.bb ], [ %.0237.lcssa, %.preheader675 ], [ %.0237.lcssa, %.preheader689 ], [ %i.aoa, %bb.dr ] ; 6 uses
  call void @ZL_free(ptr noundef nonnull %i.cb) #11
  call void @ZL_free(ptr noundef nonnull %i.cd) #11
  call void @ZL_free(ptr noundef nonnull %i.ce) #11
  call void @ZL_free(ptr noundef nonnull %i.cf) #11
  %i.aoc = load i64, ptr %i.cs, align 8, !tbaa !27 ; 3 uses
  %i.aod = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.aoe = sub i64 %i.aoc, %i.aod                 ; 5 uses
  %i.aof = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aoc
  %i.aoh = ptrtoint ptr %.6 to i64
  %i.aoi = sub i64 %i.bj, %i.aoh
  %i.aoj = icmp ugt i64 %i.aoe, %i.aoi
  br i1 %i.aoj, label %ZS_execExperimentalSequence.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %.loopexit676
  %i.aok = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.aol = trunc nuw i8 %i.aok to i1
  br i1 %i.aol, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.aom = icmp eq ptr %.6, %1
  br i1 %i.aom, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.aon = getelementptr inbounds i8, ptr %.6, i64 -1
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !19
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du
  %i.aop = phi i8 [ %i.aoo, %bb.du ], [ 0, %bb.dt ]
  %.not772 = icmp eq i64 %i.aoc, %i.aod
  br i1 %.not772, label %.loopexit, label %.lr.ph758

.lr.ph758:                                        ; preds = %bb.dv
  %i.aoq = getelementptr inbounds nuw i8, ptr %10, i64 4144
  br label %bb.dw

bb.dw:                                            ; preds = %.lr.ph758, %bb.dy
  %.0756 = phi i64 [ 0, %.lr.ph758 ], [ %i.apa, %bb.dy ] ; 2 uses
  %.0236755 = phi i8 [ %i.aop, %.lr.ph758 ], [ %i.aow, %bb.dy ]
  %i.aor = zext i8 %.0236755 to i64
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.aoq, i64 %i.aor
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !35 ; 4 uses
  %i.aou = icmp eq ptr %i.aot, null
  br i1 %i.aou, label %ZS_execExperimentalSequence.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aov = load ptr, ptr %i.aot, align 8, !tbaa !36 ; 2 uses
  %.not277 = icmp ult ptr %i.aov, %i.aog
  br i1 %.not277, label %bb.dy, label %ZS_execExperimentalSequence.exit.thread

bb.dy:                                            ; preds = %bb.dx
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !19 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %.6, i64 %.0756
  store i8 %i.aow, ptr %i.aox, align 1, !tbaa !19
  %i.aoy = load ptr, ptr %i.aot, align 8, !tbaa !36
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 1
  store ptr %i.aoz, ptr %i.aot, align 8, !tbaa !36
  %i.apa = add nuw i64 %.0756, 1                  ; 2 uses
  %exitcond799.not = icmp eq i64 %i.apa, %i.aoe
  br i1 %exitcond799.not, label %.loopexit, label %bb.dw, !llvm.loop !93

bb.dz:                                            ; preds = %bb.ds
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.6, ptr align 1 %i.aof, i64 %i.aoe, i1 false)
  %i.apb = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.aoe
  store ptr %i.apc, ptr %i.co, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dy, %bb.dv, %bb.dz
  %i.apd = getelementptr inbounds nuw i8, ptr %.6, i64 %i.aoe
  call void @ZS_RolzDTable2_destroy(ptr noundef nonnull %9) #11
  call void @ZL_free(ptr noundef %i.bz) #11
  %i.ape = ptrtoint ptr %i.apd to i64
  %i.apf = sub i64 %i.ape, %i.bk
  br label %bb.ea

ZS_execExperimentalSequence.exit.thread:          ; preds = %._crit_edge, %bb.aj, %bb.aw, %bb.z, %bb.y, %bb.ah, %ZS_execExperimentalSequence.exit, %.lr.ph, %bb.cr, %bb.cp, %bb.cx, %bb.cl, %bb.ck, %bb.dl, %ZS_execExperimentalSequence2.exit, %bb.bj, %bb.bh, %bb.bp, %bb.be, %bb.bd, %bb.cd, %ZS_execExperimentalSequence2.exit302, %.lr.ph740, %bb.dw, %bb.dx, %.loopexit676, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0252 = phi ptr [ %i.cb, %bb.q ], [ %i.cb, %bb.r ], [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ %i.cb, %bb.u ], [ %i.cb, %bb.v ], [ %i.cb, %bb.cr ], [ null, %bb.dw ], [ null, %.loopexit676 ], [ %i.cb, %.lr.ph740 ], [ %i.cb, %.lr.ph ], [ %i.cb, %bb.bj ], [ null, %bb.dx ], [ %i.cb, %ZS_execExperimentalSequence2.exit302 ], [ %i.cb, %bb.cd ], [ %i.cb, %bb.bd ], [ %i.cb, %bb.be ], [ %i.cb, %bb.bp ], [ %i.cb, %bb.bh ], [ %i.cb, %ZS_execExperimentalSequence2.exit ], [ %i.cb, %bb.dl ], [ %i.cb, %bb.ck ], [ %i.cb, %bb.cl ], [ %i.cb, %bb.cx ], [ %i.cb, %bb.cp ], [ %i.cb, %ZS_execExperimentalSequence.exit ], [ %i.cb, %bb.ah ], [ %i.cb, %bb.y ], [ %i.cb, %bb.z ], [ %i.cb, %bb.aw ], [ %i.cb, %bb.aj ], [ %i.cb, %._crit_edge ]
  %.0251 = phi ptr [ %i.cd, %bb.q ], [ %i.cd, %bb.r ], [ %i.cd, %bb.s ], [ %i.cd, %bb.t ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ], [ %i.cd, %bb.cr ], [ null, %bb.dw ], [ null, %.loopexit676 ], [ %i.cd, %.lr.ph740 ], [ %i.cd, %.lr.ph ], [ %i.cd, %bb.bj ], [ null, %bb.dx ], [ %i.cd, %ZS_execExperimentalSequence2.exit302 ], [ %i.cd, %bb.cd ], [ %i.cd, %bb.bd ], [ %i.cd, %bb.be ], [ %i.cd, %bb.bp ], [ %i.cd, %bb.bh ], [ %i.cd, %ZS_execExperimentalSequence2.exit ], [ %i.cd, %bb.dl ], [ %i.cd, %bb.ck ], [ %i.cd, %bb.cl ], [ %i.cd, %bb.cx ], [ %i.cd, %bb.cp ], [ %i.cd, %ZS_execExperimentalSequence.exit ], [ %i.cd, %bb.ah ], [ %i.cd, %bb.y ], [ %i.cd, %bb.z ], [ %i.cd, %bb.aw ], [ %i.cd, %bb.aj ], [ %i.cd, %._crit_edge ]
  %.0250 = phi ptr [ %i.ce, %bb.q ], [ %i.ce, %bb.r ], [ %i.ce, %bb.s ], [ %i.ce, %bb.t ], [ %i.ce, %bb.u ], [ %i.ce, %bb.v ], [ %i.ce, %bb.cr ], [ null, %bb.dw ], [ null, %.loopexit676 ], [ %i.ce, %.lr.ph740 ], [ %i.ce, %.lr.ph ], [ %i.ce, %bb.bj ], [ null, %bb.dx ], [ %i.ce, %ZS_execExperimentalSequence2.exit302 ], [ %i.ce, %bb.cd ], [ %i.ce, %bb.bd ], [ %i.ce, %bb.be ], [ %i.ce, %bb.bp ], [ %i.ce, %bb.bh ], [ %i.ce, %ZS_execExperimentalSequence2.exit ], [ %i.ce, %bb.dl ], [ %i.ce, %bb.ck ], [ %i.ce, %bb.cl ], [ %i.ce, %bb.cx ], [ %i.ce, %bb.cp ], [ %i.ce, %ZS_execExperimentalSequence.exit ], [ %i.ce, %bb.ah ], [ %i.ce, %bb.y ], [ %i.ce, %bb.z ], [ %i.ce, %bb.aw ], [ %i.ce, %bb.aj ], [ %i.ce, %._crit_edge ]
  %.0249 = phi ptr [ %i.cf, %bb.q ], [ %i.cf, %bb.r ], [ %i.cf, %bb.s ], [ %i.cf, %bb.t ], [ %i.cf, %bb.u ], [ %i.cf, %bb.v ], [ %i.cf, %bb.cr ], [ null, %bb.dw ], [ null, %.loopexit676 ], [ %i.cf, %.lr.ph740 ], [ %i.cf, %.lr.ph ], [ %i.cf, %bb.bj ], [ null, %bb.dx ], [ %i.cf, %ZS_execExperimentalSequence2.exit302 ], [ %i.cf, %bb.cd ], [ %i.cf, %bb.bd ], [ %i.cf, %bb.be ], [ %i.cf, %bb.bp ], [ %i.cf, %bb.bh ], [ %i.cf, %ZS_execExperimentalSequence2.exit ], [ %i.cf, %bb.dl ], [ %i.cf, %bb.ck ], [ %i.cf, %bb.cl ], [ %i.cf, %bb.cx ], [ %i.cf, %bb.cp ], [ %i.cf, %ZS_execExperimentalSequence.exit ], [ %i.cf, %bb.ah ], [ %i.cf, %bb.y ], [ %i.cf, %bb.z ], [ %i.cf, %bb.aw ], [ %i.cf, %bb.aj ], [ %i.cf, %._crit_edge ]
  call void @ZL_free(ptr noundef %.0252) #11
  call void @ZL_free(ptr noundef %.0251) #11
  call void @ZL_free(ptr noundef %.0250) #11
  call void @ZL_free(ptr noundef %.0249) #11
  call void @ZL_free(ptr noundef %i.bz) #11
  call void @ZS_RolzDTable2_destroy(ptr noundef nonnull %9) #11
  %i.apg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.48, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 790, i32 noundef 1, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.9) #11 ; 2 uses
  %i.aph = extractvalue { i32, ptr } %i.apg, 0    ; 2 uses
  %i.api = extractvalue { i32, ptr } %i.apg, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aph, ptr %i.api, ptr noundef nonnull @.str.13) #11
  %i.apj = ptrtoint ptr %i.api to i64
  br label %bb.ea

bb.ea:                                            ; preds = %ZS_execExperimentalSequence.exit.thread, %.loopexit
  %.sroa.0235.6 = phi i32 [ %i.aph, %ZS_execExperimentalSequence.exit.thread ], [ 0, %.loopexit ]
  %.sroa.22.6 = phi i64 [ %i.apj, %ZS_execExperimentalSequence.exit.thread ], [ %i.apf, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.p, %bb.n
  %.sroa.0235.7 = phi i32 [ %i.bo, %bb.n ], [ %i.bu, %bb.p ], [ %.sroa.0235.6, %bb.ea ]
  %.sroa.22.7 = phi i64 [ %i.bq, %bb.n ], [ %i.bw, %bb.p ], [ %.sroa.22.6, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.ec

bb.ec:                                            ; preds = %bb.l, %bb.j, %bb.h, %.thread632, %.thread629, %bb.b, %bb.d, %bb.eb
  %.sroa.0235.9 = phi i32 [ %i.h, %bb.b ], [ %i.ai, %bb.d ], [ %.sroa.0235.7, %bb.eb ], [ %i.bg, %bb.l ], [ %i.bb, %bb.j ], [ %i.aw, %bb.h ], [ %i.aq, %.thread632 ], [ %i.am, %.thread629 ]
  %.sroa.22.9 = phi i64 [ %i.j, %bb.b ], [ %i.ak, %bb.d ], [ %.sroa.22.7, %bb.eb ], [ %i.bi, %bb.l ], [ %i.bd, %bb.j ], [ %i.ay, %bb.h ], [ %i.as, %.thread632 ], [ %i.ao, %.thread629 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0235.9, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.22.9, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @ZL_malloc(i64 noundef) local_unnamed_addr #2

declare void @ZL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #5

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ZS_window_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @ZS_RolzDTable2_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decodeLiterals(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %3 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 5 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %5 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 4 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 10 uses
  %7 = alloca %struct.ZL_ContextClustering, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12 ; 3 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !30
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %.val119 = load ptr, ptr %1, align 8, !tbaa !21 ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val120 = load ptr, ptr %i.f, align 8, !tbaa !47
  %.not = icmp eq ptr %.val120, %.val119
  br i1 %.not, label %.thread, label %bb.d, !prof !22

.thread:                                          ; preds = %bb.c
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeLiterals.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 57, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.54, i64 noundef 0, i64 noundef 1) #11 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val119, i64 1
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  %i.k = load i8, ptr %.val119, align 1, !tbaa !19
  %i.l = icmp ne i8 %i.k, 0                       ; 2 uses
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %0, align 8, !tbaa !30
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.q = call { i32, i64 } @ZS_Entropy_decode(ptr noundef %i.o, i64 noundef %i.d, ptr noundef nonnull %1, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %decodeCodes.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.s = extractvalue { i32, i64 } %i.q, 1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.r, ptr %i.t, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.v = extractvalue { i32, ptr } %i.u, 0
  br label %decodeCodes.exit

decodeCodes.exit:                                 ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.w = call { i32, i64 } @ZL_ContextClustering_decode(ptr noundef nonnull %7, ptr noundef nonnull %1) #11 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0        ; 2 uses
  %.not113 = icmp eq i32 %i.x, 0
  br i1 %.not113, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.y = extractvalue { i32, i64 } %i.w, 1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.x, ptr %i.z, ptr nonnull @decodeLiterals.__zl_static_error_info.55, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 66, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.ab = extractvalue { i32, ptr } %i.aa, 0
  br label %.thread151

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 4 uses
  %.not116169.not = icmp eq i64 %i.ad, 0
  br i1 %.not116169.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.097171 = phi ptr [ %i.ag, %.lr.ph ], [ %i.bc, %bb.o ] ; 4 uses
  %.0100170 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.o ] ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  %.val118 = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.an = ptrtoint ptr %.val118 to i64
  %i.ao = ptrtoint ptr %.val to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 3
  br i1 %i.aq, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.ar = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeLiterals.__zl_static_error_info.58, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 73, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.60, i64 noundef %i.ap, i64 noundef 4) #11 ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.ar, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.as, ptr %i.at, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %.thread151

bb.l:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 4
  store ptr %i.au, ptr %1, align 8, !tbaa !21
  %.val.i = load i32, ptr %.val, align 1
  %i.av = zext i32 %.val.i to i64                 ; 4 uses
  %i.aw = ptrtoint ptr %.097171 to i64
  %i.ax = sub i64 %i.aj, %i.aw                    ; 2 uses
  %.not114 = icmp ult i64 %i.ax, %i.av
  br i1 %.not114, label %.thread134, label %bb.m, !prof !22

.thread134:                                       ; preds = %bb.l
  %i.ay = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeLiterals.__zl_static_error_info.61, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 75, i32 noundef 12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.64, i64 noundef %i.av, i64 noundef %i.ax) #11 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.ay, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.az, ptr %i.ba, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %.thread151

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0100170
  store ptr %.097171, ptr %i.bb, align 8, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %.097171, i64 %i.av ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0100170
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.be = call { i32, i64 } @ZS_Entropy_decode(ptr noundef %.097171, i64 noundef %i.av, ptr noundef nonnull %1, i64 noundef 1, ptr noundef nonnull %3) #11 ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0      ; 2 uses
  %.not.i121 = icmp eq i32 %i.bf, 0
  br i1 %.not.i121, label %decodeCodes.exit126.thread, label %decodeCodes.exit126, !prof !18

decodeCodes.exit126.thread:                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.o

decodeCodes.exit126:                              ; preds = %bb.m
  %i.bg = extractvalue { i32, i64 } %i.be, 1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.bf, ptr %i.bh, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11 ; 2 uses
  %i.bj = extractvalue { i32, ptr } %i.bi, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.not115 = icmp eq i32 %i.bj, 0
  br i1 %.not115, label %bb.o, label %bb.n, !prof !48

bb.n:                                             ; preds = %decodeCodes.exit126
  %i.bk = extractvalue { i32, ptr } %i.bi, 1
  %i.bl = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %6, i32 %i.bj, ptr %i.bk, ptr nonnull @decodeLiterals.__zl_static_error_info.65, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 78, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.bm = extractvalue { i32, ptr } %i.bl, 0
  br label %.thread151

bb.o:                                             ; preds = %decodeCodes.exit126, %decodeCodes.exit126.thread
  %i.bn = add nuw i64 %.0100170, 1                ; 2 uses
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !115
  %.not116 = icmp ult i64 %i.bn, %i.bo
  br i1 %.not116, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !112

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.bp = phi ptr [ %i.ag, %bb.i ], [ %.pre, %._crit_edge.loopexit ]
  %.097.lcssa = phi ptr [ %i.ag, %bb.i ], [ %i.bc, %._crit_edge.loopexit ]
  %i.bq = ptrtoint ptr %.097.lcssa to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = and i64 %i.bs, 4294967295               ; 2 uses
  %i.bu = load i64, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %.not117 = icmp eq i64 %i.bt, %i.bu
  br i1 %.not117, label %.preheader, label %.thread155, !prof !18

.preheader:                                       ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !117 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  br label %bb.p

.thread155:                                       ; preds = %._crit_edge
  %i.bz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeLiterals.__zl_static_error_info.66, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.52, i32 noundef 92, i32 noundef 12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i64 noundef %i.bt, i64 noundef %i.bu) #11 ; 2 uses
  %i.ca = extractvalue { i32, ptr } %i.bz, 0      ; 2 uses
  %i.cb = extractvalue { i32, ptr } %i.bz, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ca, ptr %i.cb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %.thread151

bb.p:                                             ; preds = %bb.t, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.t ] ; 6 uses
  %i.cc = icmp ult i64 %i.bw, %indvars.iv
  br i1 %i.cc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !19
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sink = phi ptr [ %i.cg, %bb.q ], [ null, %bb.p ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not27 = icmp ugt i64 %i.bw, %indvars.iv
  br i1 %.not27, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.next
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !19
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ck
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.1 = phi ptr [ %i.cl, %bb.s ], [ null, %bb.r ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.next
  store ptr %.sink.1, ptr %i.cm, align 8, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.thread151, label %bb.p, !llvm.loop !113

.thread151:                                       ; preds = %bb.t, %bb.k, %.thread134, %bb.n, %.thread155, %bb.h
  %.sroa.090.8 = phi i32 [ %i.ab, %bb.h ], [ %i.as, %bb.k ], [ %i.ca, %.thread155 ], [ %i.az, %.thread134 ], [ %i.bm, %bb.n ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.u

bb.u:                                             ; preds = %.thread, %.thread151, %decodeCodes.exit, %bb.b
  %.sroa.090.9 = phi i32 [ 0, %bb.b ], [ %.sroa.090.8, %.thread151 ], [ %.sroa.07.0.i, %decodeCodes.exit ], [ %i.h, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.sroa.090.9
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decodeMatchTypes(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 5 uses
  %5 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12 ; 2 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.d = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef 1, ptr noundef nonnull %4) #11 ; 2 uses
  %i.e = extractvalue { i32, i64 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %decodeCodes.exit.thread, label %decodeCodes.exit, !prof !18

decodeCodes.exit.thread:                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %.preheader

decodeCodes.exit:                                 ; preds = %bb.a
  %i.f = extractvalue { i32, i64 } %i.d, 1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.e, ptr %i.g, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader, label %bb.b, !prof !48

.preheader:                                       ; preds = %decodeCodes.exit.thread, %decodeCodes.exit
  %.not2634.not = icmp eq i64 %1, 0
  br i1 %.not2634.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.j = icmp samesign ult i64 %1, 4
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 4294967292
  br label %.lr.ph

bb.b:                                             ; preds = %decodeCodes.exit
  %i.k = extractvalue { i32, ptr } %i.h, 1
  %i.l = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %5, i32 %i.i, ptr %i.k, ptr nonnull @decodeMatchTypes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.72, i32 noundef 123, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.m = extractvalue { i32, ptr } %i.l, 0
  br label %.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.035
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  %i.q = icmp ult i8 %i.p, 4
  br i1 %i.q, label %.lr.ph.2, label %.thread31, !prof !18

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.035
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19    ; 2 uses
  %i.u = icmp ult i8 %i.t, 4
  br i1 %i.u, label %.lr.ph.3, label %.thread31, !prof !18

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19    ; 2 uses
  %i.y = icmp ult i8 %i.x, 4
  br i1 %i.y, label %bb.c, label %.thread31, !prof !18

bb.c:                                             ; preds = %.lr.ph.3
  %i.z = add nuw nsw i64 %.035, 4                 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !118

.lr.ph:                                           ; preds = %bb.c, %.lr.ph.preheader.new
  %.035 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.035
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19  ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 4
  br i1 %i.ac, label %.lr.ph.1, label %.thread31, !prof !18

.thread31:                                        ; preds = %.lr.ph.epil, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3
  %.lcssa = phi i8 [ %i.x, %.lr.ph.3 ], [ %i.ab, %.lr.ph ], [ %i.p, %.lr.ph.1 ], [ %i.t, %.lr.ph.2 ], [ %i.ai, %.lr.ph.epil ]
  %i.ad = zext i8 %.lcssa to i32
  %i.ae = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeMatchTypes.__zl_static_error_info.73, ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.72, i32 noundef 125, i32 noundef 12, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.60, i32 noundef %i.ad, i32 noundef 4) #11 ; 2 uses
  %i.af = extractvalue { i32, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.ae, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.af, ptr %i.ag, ptr noundef nonnull @.str.77) #11
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.035.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.d, %.lr.ph.epil.preheader
  %.035.epil = phi i64 [ %i.ak, %bb.d ], [ %.035.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.d ], [ 0, %.lr.ph.epil.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.035.epil
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !19  ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 4
  br i1 %i.aj, label %bb.d, label %.thread31, !prof !18

bb.d:                                             ; preds = %.lr.ph.epil
  %i.ak = add nuw nsw i64 %.035.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !119

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %.preheader, %.thread31, %bb.b
  %.sroa.019.3 = phi i32 [ %i.m, %bb.b ], [ %i.af, %.thread31 ], [ 0, %.preheader ], [ 0, %bb.d ], [ 0, %.loopexit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.sroa.019.3
}

declare i32 @ZS_window_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ZS_RolzDTable2_destroy(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @ZL_ContextClustering_decode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare { i32, i64 } @ZS_Entropy_decode(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decodeSeq(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 31 uses
  %5 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 30 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 13 uses
  %i.a = alloca [6 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !17
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val147 = load ptr, ptr %3, align 8, !tbaa !21 ; 15 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val148 = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.f = ptrtoint ptr %.val148 to i64             ; 2 uses
  %i.g = ptrtoint ptr %.val147 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp ugt i64 %i.h, 27
  br i1 %i.i, label %bb.d, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 159, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.80, i64 noundef %i.h, i64 noundef 28) #11 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val147, i64 4 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !21
  %.val.i = load i32, ptr %.val147, align 1       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.n = getelementptr inbounds nuw i8, ptr %.val147, i64 8 ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !21
  %.val.i151 = load i32, ptr %i.m, align 1        ; 5 uses
  store i32 %.val.i151, ptr %i.a, align 16, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %.val147, i64 12 ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !21
  %.val.i151.1 = load i32, ptr %i.n, align 1      ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %.val.i151.1, ptr %i.p, align 4, !tbaa !29
  %.not136.1 = icmp ugt i32 %.val.i151, %.val.i151.1
  br i1 %.not136.1, label %bb.j, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val147, i64 16 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !21
  %.val.i151.2 = load i32, ptr %i.o, align 1      ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.val.i151.2, ptr %i.r, align 8, !tbaa !29
  %.not136.2 = icmp ugt i32 %.val.i151.1, %.val.i151.2
  br i1 %.not136.2, label %bb.j, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val147, i64 20 ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !21
  %.val.i151.3 = load i32, ptr %i.q, align 1      ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.val.i151.3, ptr %i.t, align 4, !tbaa !29
  %.not136.3 = icmp ugt i32 %.val.i151.2, %.val.i151.3
  br i1 %.not136.3, label %bb.j, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val147, i64 24 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !21
  %.val.i151.4 = load i32, ptr %i.s, align 1      ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.val.i151.4, ptr %i.v, align 16, !tbaa !29
  %.not136.4 = icmp ugt i32 %.val.i151.3, %.val.i151.4
  br i1 %.not136.4, label %bb.j, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val147, i64 28 ; 9 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !21
  %.val.i151.5 = load i32, ptr %i.u, align 1      ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.not136.5 = icmp ugt i32 %.val.i151.4, %.val.i151.5
  br i1 %.not136.5, label %bb.j, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.y = zext i32 %.val.i151.5 to i64             ; 2 uses
  %.not137 = icmp eq i64 %1, %i.y
  br i1 %.not137, label %bb.l, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.val.i151.lcssa = phi i32 [ %.val.i151.5, %bb.h ], [ %.val.i151.1, %bb.d ], [ %.val.i151.2, %bb.e ], [ %.val.i151.3, %bb.f ], [ %.val.i151.4, %bb.g ]
  %.lcssa238 = phi i32 [ %.val.i151.4, %bb.h ], [ %.val.i151, %bb.d ], [ %.val.i151.1, %bb.e ], [ %.val.i151.2, %bb.f ], [ %.val.i151.3, %bb.g ]
  %i.z = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.81, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 165, i32 noundef 12, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.84, i32 noundef %.lcssa238, i32 noundef %.val.i151.lcssa) #11 ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { i32, ptr } %i.z, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aa, ptr %i.ab, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %BIT_reloadDStream.exit.thread213

bb.k:                                             ; preds = %bb.i
  %i.ac = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.85, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 167, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.33, i64 noundef %i.y, i64 noundef %1) #11 ; 2 uses
  %i.ad = extractvalue { i32, ptr } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ac, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ad, ptr %i.ae, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %BIT_reloadDStream.exit.thread213

bb.l:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.f, %i.af                     ; 2 uses
  %i.ah = zext i32 %.val.i to i64                 ; 6 uses
  %.not138 = icmp ult i64 %i.ag, %i.ah
  br i1 %.not138, label %.thread179, label %bb.m, !prof !22

.thread179:                                       ; preds = %bb.l
  %i.ai = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.88, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 169, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.90, i64 noundef %i.ag, i64 noundef %i.ah) #11 ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, ptr } %i.ai, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aj, ptr %i.ak, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %BIT_reloadDStream.exit.thread213

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i32 %.val.i, 0
  br i1 %i.al, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = icmp ugt i32 %.val.i, 7
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.ptr = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.an = getelementptr i8, ptr %.ptr, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19  ; 2 uses
  %.not51.i = icmp eq i8 %i.ao, 0
  br i1 %.not51.i, label %bb.y, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  %.add = add nsw i64 %i.ah, -8                   ; 2 uses
  %.ptr221 = getelementptr inbounds i8, ptr %i.w, i64 %.add
  %.val.i152 = load i64, ptr %.ptr221, align 1, !tbaa !122
  %i.ap = zext i8 %i.ao to i32
  %i.aq = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ap, i1 true)
  %i.ar = xor i32 %i.aq, 31
  %i.as = sub nuw nsw i32 8, %i.ar
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.at = load i8, ptr %i.w, align 1, !tbaa !19
  %i.au = zext i8 %i.at to i64                    ; 7 uses
  switch i32 %.val.i, label %bb.w [
    i32 7, label %bb.q
    i32 6, label %bb.r
    i32 5, label %bb.s
    i32 4, label %bb.t
    i32 3, label %bb.u
    i32 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.val147, i64 34
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 48
  %i.az = or disjoint i64 %i.ay, %i.au
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ba = phi i64 [ %i.az, %bb.q ], [ %i.au, %bb.p ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val147, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 40
  %i.bf = add nuw nsw i64 %i.be, %i.ba
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %i.bg = phi i64 [ %i.bf, %bb.r ], [ %i.au, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.val147, i64 32
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 32
  %i.bl = add nuw nsw i64 %i.bk, %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bm = phi i64 [ %i.bl, %bb.s ], [ %i.au, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val147, i64 31
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 24
  %i.br = add nuw nsw i64 %i.bq, %i.bm
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.bs = phi i64 [ %i.br, %bb.t ], [ %i.au, %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val147, i64 30
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !19
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 16
  %i.bx = add nuw nsw i64 %i.bw, %i.bs
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %i.by = phi i64 [ %i.bx, %bb.u ], [ %i.au, %bb.p ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.val147, i64 29
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !19
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 8
  %i.cd = add nuw nsw i64 %i.cc, %i.by
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.p
  %.sroa.0.2 = phi i64 [ %i.au, %bb.p ], [ %i.cd, %bb.v ]
  %i.ce = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.cf = getelementptr i8, ptr %i.ce, i64 -1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !19  ; 2 uses
  %.not.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = zext i8 %i.cg to i32
  %i.ci = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ch, i1 true)
  %i.cj = shl nuw nsw i32 %.val.i, 3
  %reass.sub = sub nsw i32 %i.ci, %i.cj
  %i.ck = add nsw i32 %reass.sub, 41
  br label %bb.z

bb.y:                                             ; preds = %bb.o, %bb.m, %bb.w
  %i.cl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.91, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 175, i32 noundef 12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.93) #11 ; 2 uses
  %i.cm = extractvalue { i32, ptr } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { i32, ptr } %i.cl, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cm, ptr %i.cn, ptr noundef nonnull @.str.94) #11
  br label %BIT_reloadDStream.exit.thread213

bb.z:                                             ; preds = %bb.x, %.thread.i
  %.sroa.0.3 = phi i64 [ %.sroa.0.2, %bb.x ], [ %.val.i152, %.thread.i ]
  %.sroa.14.2 = phi i32 [ %i.ck, %bb.x ], [ %i.as, %.thread.i ]
  %.sroa.24159.2.idx = phi i64 [ 0, %bb.x ], [ %.add, %.thread.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  store ptr %i.co, ptr %3, align 8, !tbaa !21
  %i.cp = tail call ptr @ZL_malloc(i64 noundef %1) #11 ; 12 uses
  %.not140 = icmp eq ptr %i.cp, null
  br i1 %.not140, label %.thread, label %bb.aa, !prof !22

.thread:                                          ; preds = %bb.z
  %i.cq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.95, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 179, i32 noundef 70, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null) #11 ; 2 uses
  %i.cr = extractvalue { i32, ptr } %i.cq, 0      ; 2 uses
  %i.cs = extractvalue { i32, ptr } %i.cq, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.cr, ptr %i.cs, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %BIT_reloadDStream.exit.thread213

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.cu = zext i32 %.val.i151 to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.cv = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.cp, i64 noundef %i.cu, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.cw = extractvalue { i32, i64 } %i.cv, 0      ; 2 uses
  %.not.i153 = icmp eq i32 %i.cw, 0
  br i1 %.not.i153, label %decodeCodes.exit.thread, label %decodeCodes.exit, !prof !18

decodeCodes.exit.thread:                          ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge

decodeCodes.exit:                                 ; preds = %bb.aa
  %i.cx = extractvalue { i32, i64 } %i.cv, 1
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cw, ptr %i.cy, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.da = extractvalue { i32, ptr } %i.cz, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219 = icmp eq i32 %i.da, 0
  br i1 %.not219, label %.critedge, label %.thread198

.thread198:                                       ; preds = %decodeCodes.exit.5, %decodeCodes.exit.4, %decodeCodes.exit.3, %decodeCodes.exit.2, %decodeCodes.exit.1, %decodeCodes.exit
  %.lcssa = phi i32 [ %i.da, %decodeCodes.exit ], [ %i.dj, %decodeCodes.exit.1 ], [ %i.dt, %decodeCodes.exit.2 ], [ %i.ed, %decodeCodes.exit.3 ], [ %i.en, %decodeCodes.exit.4 ], [ %i.ex, %decodeCodes.exit.5 ]
  call void @ZL_free(ptr noundef nonnull %i.cp) #11
  br label %BIT_reloadDStream.exit.thread213

.critedge:                                        ; preds = %decodeCodes.exit.thread, %decodeCodes.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %i.dc = sub i32 %.val.i151.1, %.val.i151
  %i.dd = zext i32 %i.dc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.de = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.db, i64 noundef %i.dd, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.df = extractvalue { i32, i64 } %i.de, 0      ; 2 uses
  %.not.i153.1 = icmp eq i32 %i.df, 0
  br i1 %.not.i153.1, label %decodeCodes.exit.thread.1, label %decodeCodes.exit.1, !prof !18

decodeCodes.exit.1:                               ; preds = %.critedge
  %i.dg = extractvalue { i32, i64 } %i.de, 1
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.df, ptr %i.dh, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.dj = extractvalue { i32, ptr } %i.di, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219.1 = icmp eq i32 %i.dj, 0
  br i1 %.not219.1, label %.critedge.1, label %.thread198

decodeCodes.exit.thread.1:                        ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge.1

.critedge.1:                                      ; preds = %decodeCodes.exit.thread.1, %decodeCodes.exit.1
  %i.dk = zext i32 %.val.i151.1 to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dk
  %i.dm = sub i32 %.val.i151.2, %.val.i151.1
  %i.dn = zext i32 %i.dm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.do = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.dl, i64 noundef %i.dn, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.dp = extractvalue { i32, i64 } %i.do, 0      ; 2 uses
  %.not.i153.2 = icmp eq i32 %i.dp, 0
  br i1 %.not.i153.2, label %decodeCodes.exit.thread.2, label %decodeCodes.exit.2, !prof !18

decodeCodes.exit.2:                               ; preds = %.critedge.1
  %i.dq = extractvalue { i32, i64 } %i.do, 1
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.dp, ptr %i.dr, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.dt = extractvalue { i32, ptr } %i.ds, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219.2 = icmp eq i32 %i.dt, 0
  br i1 %.not219.2, label %.critedge.2, label %.thread198

decodeCodes.exit.thread.2:                        ; preds = %.critedge.1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge.2

.critedge.2:                                      ; preds = %decodeCodes.exit.thread.2, %decodeCodes.exit.2
  %i.du = zext i32 %.val.i151.2 to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.du
  %i.dw = sub i32 %.val.i151.3, %.val.i151.2
  %i.dx = zext i32 %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.dy = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.dv, i64 noundef %i.dx, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.dz = extractvalue { i32, i64 } %i.dy, 0      ; 2 uses
  %.not.i153.3 = icmp eq i32 %i.dz, 0
  br i1 %.not.i153.3, label %decodeCodes.exit.thread.3, label %decodeCodes.exit.3, !prof !18

decodeCodes.exit.3:                               ; preds = %.critedge.2
  %i.ea = extractvalue { i32, i64 } %i.dy, 1
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.dz, ptr %i.eb, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.ed = extractvalue { i32, ptr } %i.ec, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219.3 = icmp eq i32 %i.ed, 0
  br i1 %.not219.3, label %.critedge.3, label %.thread198

decodeCodes.exit.thread.3:                        ; preds = %.critedge.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge.3

.critedge.3:                                      ; preds = %decodeCodes.exit.thread.3, %decodeCodes.exit.3
  %i.ee = zext i32 %.val.i151.3 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ee
  %i.eg = sub i32 %.val.i151.4, %.val.i151.3
  %i.eh = zext i32 %i.eg to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.ei = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.ef, i64 noundef %i.eh, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.ej = extractvalue { i32, i64 } %i.ei, 0      ; 2 uses
  %.not.i153.4 = icmp eq i32 %i.ej, 0
  br i1 %.not.i153.4, label %decodeCodes.exit.thread.4, label %decodeCodes.exit.4, !prof !18

decodeCodes.exit.4:                               ; preds = %.critedge.3
  %i.ek = extractvalue { i32, i64 } %i.ei, 1
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.ej, ptr %i.el, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.en = extractvalue { i32, ptr } %i.em, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219.4 = icmp eq i32 %i.en, 0
  br i1 %.not219.4, label %.critedge.4, label %.thread198

decodeCodes.exit.thread.4:                        ; preds = %.critedge.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge.4

.critedge.4:                                      ; preds = %decodeCodes.exit.thread.4, %decodeCodes.exit.4
  %i.eo = zext i32 %.val.i151.4 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.eo
  %i.eq = sub i32 %.val.i151.5, %.val.i151.4
  %i.er = zext i32 %i.eq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes.params, i64 24, i1 false)
  %i.es = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.ep, i64 noundef %i.er, ptr noundef nonnull %3, i64 noundef 1, ptr noundef nonnull %5) #11 ; 2 uses
  %i.et = extractvalue { i32, i64 } %i.es, 0      ; 2 uses
  %.not.i153.5 = icmp eq i32 %i.et, 0
  br i1 %.not.i153.5, label %decodeCodes.exit.thread.5, label %decodeCodes.exit.5, !prof !18

decodeCodes.exit.5:                               ; preds = %.critedge.4
  %i.eu = extractvalue { i32, i64 } %i.es, 1
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.et, ptr %i.ev, ptr nonnull @decodeCodes.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.71, i32 noundef 115, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.9) #11
  %i.ex = extractvalue { i32, ptr } %i.ew, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %.not219.5 = icmp eq i32 %i.ex, 0
  br i1 %.not219.5, label %.critedge.5, label %.thread198

decodeCodes.exit.thread.5:                        ; preds = %.critedge.4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.critedge.5

.critedge.5:                                      ; preds = %decodeCodes.exit.thread.5, %decodeCodes.exit.5
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, ptr noundef nonnull align 16 dereferenceable(20) %i.a, i64 20, i1 false), !tbaa !29
  store i32 0, ptr %i.a, align 16, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.5, %bb.aj
  %.0120235 = phi i64 [ 0, %.critedge.5 ], [ %i.gt, %bb.aj ] ; 3 uses
  %.0121234 = phi i32 [ 0, %.critedge.5 ], [ %i.fe, %bb.aj ]
  %.sroa.24159.0.idx233 = phi i64 [ %.sroa.24159.2.idx, %.critedge.5 ], [ %.sroa.24159.1.ph.idx, %bb.aj ] ; 6 uses
  %.sroa.14.0232 = phi i32 [ %.sroa.14.2, %.critedge.5 ], [ %.sroa.14.1.ph, %bb.aj ]
  %.sroa.0.0231 = phi i64 [ %.sroa.0.3, %.critedge.5 ], [ %.sroa.0.1.ph, %bb.aj ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %.0120235
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !19
  %i.fa = zext i32 %.0121234 to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr @ZS_markov_nextState.kNextState, i64 %i.fa
  %i.fc = zext i8 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !29 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !29 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !29
  %i.fj = zext i32 %i.fh to i64                   ; 2 uses
  %.not143 = icmp samesign ugt i64 %1, %i.fj
  br i1 %.not143, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @ZL_free(ptr noundef nonnull %i.cp) #11
  %i.fk = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.100, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 202, i32 noundef 12, ptr noundef nonnull @.str.102) #11 ; 2 uses
  %i.fl = extractvalue { i32, ptr } %i.fk, 0      ; 2 uses
  %i.fm = extractvalue { i32, ptr } %i.fk, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fl, ptr %i.fm, ptr noundef nonnull @.str.13) #11
  br label %BIT_reloadDStream.exit.thread213

bb.ad:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.fj
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !19  ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 59
  br i1 %i.fp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @ZL_free(ptr noundef nonnull %i.cp) #11
  %i.fq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.103, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 207, i32 noundef 12, ptr noundef nonnull @.str.105) #11 ; 2 uses
  %i.fr = extractvalue { i32, ptr } %i.fq, 0      ; 2 uses
  %i.fs = extractvalue { i32, ptr } %i.fq, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.fr, ptr %i.fs, ptr noundef nonnull @.str.13) #11
  br label %BIT_reloadDStream.exit.thread213

bb.af:                                            ; preds = %bb.ad
  %i.ft = zext nneg i8 %i.fo to i64               ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @base, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !29
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @bits, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29 ; 2 uses
  %i.fy = add i32 %i.fx, %.sroa.14.0232           ; 8 uses
  %i.fz = sub i32 0, %i.fy
  %i.ga = and i32 %i.fz, 63
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %.sroa.0.0231, %i.gb
  %i.gd = zext nneg i32 %i.fx to i64
  %notmask.i = shl nsw i64 -1, %i.gd
  %i.ge = xor i64 %notmask.i, -1
  %i.gf = and i64 %i.gc, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.fv, %i.gg
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0120235
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !29
  %i.gj = icmp ugt i32 %i.fy, 64
  br i1 %i.gj, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i154 = icmp slt i64 %.sroa.24159.0.idx233, 8
  br i1 %.not.i154, label %bb.ah, label %BIT_reloadDStreamFast.exit.i, !prof !22

BIT_reloadDStreamFast.exit.i:                     ; preds = %bb.ag
  %i.gk = lshr i32 %i.fy, 3
  %i.gl = zext nneg i32 %i.gk to i64
  %.sroa.24159.0.add220 = sub nuw nsw i64 %.sroa.24159.0.idx233, %i.gl ; 2 uses
  %.ptr223 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.24159.0.add220
  %i.gm = and i32 %i.fy, 7
  %.val.i.i155 = load i64, ptr %.ptr223, align 1, !tbaa !122
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gn = icmp eq i64 %.sroa.24159.0.idx233, 0
  br i1 %i.gn, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.go = lshr i32 %i.fy, 3
  %i.gp = zext nneg i32 %i.go to i64
  %.020.i224 = call i64 @llvm.smin.i64(i64 %.sroa.24159.0.idx233, i64 %i.gp) ; 2 uses
  %.020.i = trunc i64 %.020.i224 to i32
  %i.gq = and i64 %.020.i224, 4294967295
  %.sroa.24159.0.add = sub nsw i64 %.sroa.24159.0.idx233, %i.gq ; 2 uses
  %.ptr222 = getelementptr inbounds i8, ptr %i.w, i64 %.sroa.24159.0.add
  %i.gr = shl i32 %.020.i, 3
  %i.gs = sub i32 %i.fy, %i.gr
  %.val.i156 = load i64, ptr %.ptr222, align 1, !tbaa !122
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.af, %BIT_reloadDStreamFast.exit.i, %bb.ai
  %.sroa.0.1.ph = phi i64 [ %.val.i.i155, %BIT_reloadDStreamFast.exit.i ], [ %.val.i156, %bb.ai ], [ %.sroa.0.0231, %bb.af ], [ %.sroa.0.0231, %bb.ah ]
  %.sroa.14.1.ph = phi i32 [ %i.gm, %BIT_reloadDStreamFast.exit.i ], [ %i.gs, %bb.ai ], [ %i.fy, %bb.af ], [ %i.fy, %bb.ah ]
  %.sroa.24159.1.ph.idx = phi i64 [ %.sroa.24159.0.add220, %BIT_reloadDStreamFast.exit.i ], [ %.sroa.24159.0.add, %bb.ai ], [ %.sroa.24159.0.idx233, %bb.af ], [ 0, %bb.ah ]
  %i.gt = add nuw nsw i64 %.0120235, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %1
  br i1 %exitcond.not, label %BIT_reloadDStream.exit, label %bb.ab, !llvm.loop !120

BIT_reloadDStream.exit:                           ; preds = %bb.aj
  call void @ZL_free(ptr noundef nonnull %i.cp) #11
  %i.gu = load i32, ptr %i.x, align 4, !tbaa !29
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %.not145 = icmp eq i64 %1, %i.gv
  br i1 %.not145, label %BIT_reloadDStream.exit.thread213, label %bb.ak, !prof !18

bb.ak:                                            ; preds = %BIT_reloadDStream.exit
  %i.gw = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @decodeSeq.__zl_static_error_info.106, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.79, i32 noundef 213, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.33, i64 noundef %i.gv, i64 noundef %1) #11 ; 2 uses
  %i.gx = extractvalue { i32, ptr } %i.gw, 0      ; 2 uses
  %i.gy = extractvalue { i32, ptr } %i.gw, 1
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.gx, ptr %i.gy, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  br label %BIT_reloadDStream.exit.thread213

BIT_reloadDStream.exit.thread213:                 ; preds = %bb.ae, %bb.ac, %bb.y, %.thread, %.thread198, %bb.ak, %BIT_reloadDStream.exit, %.thread179, %bb.k, %bb.j
  %.sroa.0117.18 = phi i32 [ %i.aa, %bb.j ], [ %i.aj, %.thread179 ], [ %i.ad, %bb.k ], [ %i.cm, %bb.y ], [ %i.cr, %.thread ], [ %.lcssa, %.thread198 ], [ 0, %BIT_reloadDStream.exit ], [ %i.gx, %bb.ak ], [ %i.fr, %bb.ae ], [ %i.fl, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %bb.a, %BIT_reloadDStream.exit.thread213
  %.sroa.0117.19 = phi i32 [ %i.k, %bb.c ], [ %.sroa.0117.18, %BIT_reloadDStream.exit.thread213 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.sroa.0117.19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZS_RolzDTable2_get(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !46, !range !31, !noundef !32
  %notmask.i = shl nsw i32 -1, %i.b
  %i.g = xor i32 %notmask.i, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = shl i32 %1, %i.b
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i16, ptr %i.m, align 4, !tbaa !42
  %i.o = zext i16 %i.n to i32
  %i.p = add i32 %2, %i.o
  %i.q = and i32 %i.p, %i.g
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.v = load i8, ptr %i.u, align 2, !tbaa !44
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = add i32 %i.d, %3                         ; 3 uses
  %.not.not.i = icmp ugt i32 %i.x, %i.w
  %.not.i6 = icmp eq i32 %3, 0
  %i.y = add nsw i32 %i.x, -1
  %spec.select.i = select i1 %.not.i6, i32 %i.w, i32 %i.y
  %.0.i = select i1 %.not.not.i, i32 %i.x, i32 %spec.select.i
  br label %ZS_RolzDTable2_get2.exit

bb.c:                                             ; preds = %bb.a
  %i.z = add i32 %i.d, %3
  br label %ZS_RolzDTable2_get2.exit

ZS_RolzDTable2_get2.exit:                         ; preds = %bb.b, %bb.c
  %.sroa.2.0.i = phi i32 [ %.0.i, %bb.b ], [ %i.z, %bb.c ]
  %.sroa.2.0.insert.ext.i = zext i32 %.sroa.2.0.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.t to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.0.insert.insert.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @ZL_hashPtr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  switch i32 %2, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 12, label %bb.j
    i32 16, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.val = load i16, ptr %0, align 1
  %i.b = zext i16 %.val to i32
  %i.c = mul i32 %i.b, -1480785920
  %i.d = sub i32 32, %1
  %i.e = lshr i32 %i.c, %i.d
  %i.f = zext i32 %i.e to i64
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %.val22 = load i32, ptr %0, align 1
  %i.g = mul i32 %.val22, 900185344
  %i.h = sub i32 32, %1
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %.val23 = load i32, ptr %0, align 1
  %i.k = mul i32 %.val23, -1640531535
  %i.l = sub i32 32, %1
  %i.m = lshr i32 %i.k, %i.l
  %i.n = zext i32 %i.m to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %.val24 = load i64, ptr %0, align 1
  %i.o = mul i64 %.val24, -3523014627271114752
  %i.p = sub i32 64, %1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %i.o, %i.q
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %.val25 = load i64, ptr %0, align 1
  %i.s = mul i64 %.val25, -3523014627193847808
  %i.t = sub i32 64, %1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 %i.s, %i.u
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %.val26 = load i64, ptr %0, align 1
  %i.w = mul i64 %.val26, -3523014627193167104
  %i.x = sub i32 64, %1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 %i.w, %i.y
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %.val28 = load i64, ptr %0, align 1
  %i.aa = mul i64 %.val28, -3523014627327384477
  %i.ab = sub i32 64, %1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %.val29 = load i64, ptr %0, align 1
  %i.ae = getelementptr i8, ptr %0, i64 8
  %.val30 = load i32, ptr %i.ae, align 1
  %i.af = zext i32 %.val30 to i64
  %i.ag = xor i64 %.val29, %i.af
  %i.ah = mul i64 %i.ag, -3523014627327384477
  %i.ai = sub i32 64, %1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %i.ah, %i.aj
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %.val31 = load i64, ptr %0, align 1
  %i.al = getelementptr i8, ptr %0, i64 8
  %.val32 = load i64, ptr %i.al, align 1
  %i.am = xor i64 %.val32, %.val31
  %i.an = mul i64 %i.am, -3523014627327384477
  %i.ao = sub i32 64, %1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %.val27 = load i64, ptr %0, align 1
  %i.ar = mul i64 %.val27, -3523014627327384477
  %i.as = sub i32 64, %1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.ar, %i.at
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.au, %bb.l ], [ %i.a, %bb.b ], [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ], [ %i.ak, %bb.j ], [ %i.aq, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!13 = !{!"", !8, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"", !13, i64 0, !13, i64 4, !8, i64 8, !14, i64 16}
!16 = !{!"", !12, i64 0, !15, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!7, !7, i64 0}
!20 = !{!"", !14, i64 0, !14, i64 8}
!21 = !{!20, !14, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"_Bool", !7, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!"", !23, i64 0, !14, i64 8, !14, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !7, i64 48, !7, i64 2096, !7, i64 4144}
!26 = !{!25, !14, i64 8}
!27 = !{!25, !24, i64 24}
!28 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !23, i64 20, !11, i64 24}
!29 = !{!8, !8, i64 0}
!30 = !{!25, !23, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"any p2 pointer", !11, i64 0}
!34 = !{!"p2 omnipotent char", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!28, !8, i64 8}
!39 = !{!28, !11, i64 24}
!40 = !{!"short", !7, i64 0}
!41 = !{!"", !8, i64 0, !40, i64 4, !7, i64 6}
!42 = !{!41, !40, i64 4}
!43 = !{!41, !8, i64 0}
!44 = !{!41, !7, i64 6}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!28, !23, i64 20}
!47 = !{!20, !14, i64 8}
!48 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37, !101, !102}
!52 = distinct !{!52, !37, !101, !102}
!53 = distinct !{!53, !45}
!54 = distinct !{!54, !37, !101}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37, !101, !102}
!59 = distinct !{!59, !37, !101, !102}
!60 = distinct !{!60, !37, !101}
!61 = distinct !{!61, i1 false, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !37, !101, !102}
!65 = distinct !{!65, !37, !101}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37, !101, !102}
!68 = distinct !{!68, !37, !101, !102}
!69 = distinct !{!69, !37, !101}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !37, !101, !102}
!74 = distinct !{!74, !37, !101}
!75 = distinct !{!75, !37}
!76 = distinct !{!76, !37, !101, !102}
!77 = distinct !{!77, !37, !101, !102}
!78 = distinct !{!78, !37, !101}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !37, !101, !102}
!83 = distinct !{!83, !37, !101}
!84 = distinct !{!84, !37, !101, !102}
!85 = distinct !{!85, !37, !101, !102}
!86 = distinct !{!86, !37, !101}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !37, !101, !102}
!91 = distinct !{!91, !37, !101}
!92 = distinct !{!92, !37}
!93 = distinct !{!93, !37}
!94 = !{!25, !14, i64 16}
!95 = !{!25, !24, i64 32}
!96 = !{!28, !8, i64 0}
!97 = !{!28, !8, i64 4}
!98 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!99 = !{!98, !14, i64 8}
!100 = !{!98, !8, i64 28}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!"branch_weights", i32 4, i32 28}
!104 = !{!"branch_weights", i32 8, i32 24}
!105 = !{!62}
!106 = !{!63}
!107 = !{!72, !71}
!108 = !{!"branch_weights", i32 4001, i32 4000000}
!109 = !{!80}
!110 = !{!81}
!111 = !{!89, !88}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !37}
!114 = !{!"", !7, i64 0, !24, i64 256, !24, i64 264}
!115 = !{!114, !24, i64 256}
!116 = !{!25, !24, i64 40}
!117 = !{!114, !24, i64 264}
!118 = distinct !{!118, !37}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !37}
!121 = !{!"", !24, i64 0}
!122 = !{!121, !24, i64 0}
!123 = !{!28, !8, i64 16}
end_hunk_0
