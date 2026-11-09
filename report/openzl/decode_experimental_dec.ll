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
  %9 = alloca %struct.ZS_RolzDTable2, align 8     ; 17 uses
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
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph715, %bb.ba
  %.0237712 = phi ptr [ %1, %.lr.ph715 ], [ %i.lw, %bb.ba ] ; 8 uses
  %.0239711 = phi i64 [ 0, %.lr.ph715 ], [ %i.lx, %bb.ba ] ; 6 uses
  %i.di = ptrtoint ptr %.0237712 to i64           ; 2 uses
  %i.dj = sub i64 %i.di, %i.bk
  %i.dk = load i32, ptr %9, align 8, !tbaa !96    ; 6 uses
  %i.dl = zext i32 %i.dk to i64                   ; 7 uses
  %i.dm = icmp slt i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0239711
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29 ; 3 uses
  %.sroa.051.0.insert.ext = zext i32 %i.do to i64 ; 10 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0239711
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29 ; 8 uses
  %.sroa.051.4.insert.ext = zext i32 %i.dq to i64 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.0239711
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29 ; 11 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0239711
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !19  ; 2 uses
  %i.dv = sub i64 %i.bj, %i.di
  %i.dw = icmp ult i64 %i.dv, %.sroa.051.0.insert.ext
  br i1 %i.dw, label %ZS_execExperimentalSequence.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.dy = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp ult i64 %i.dz, %.sroa.051.0.insert.ext
  br i1 %i.ea, label %ZS_execExperimentalSequence.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ed = icmp eq ptr %.0237712, %1
  br i1 %i.ed, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds i8, ptr %.0237712, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eg = phi i8 [ %i.ef, %bb.ac ], [ 0, %bb.ab ]
  %.not154.i702.not = icmp eq i32 %i.do, 0
  br i1 %.not154.i702.not, label %.critedge158.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.0141.i704 = phi i64 [ %i.ep, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.0142.i703 = phi i8 [ %i.el, %bb.ae ], [ %i.eg, %bb.ad ]
  %i.eh = zext i8 %.0142.i703 to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !35 ; 4 uses
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.0141.i704
  store i8 %i.el, ptr %i.em, align 1, !tbaa !19
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !36
  %i.ep = add nuw nsw i64 %.0141.i704, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %.sroa.051.0.insert.ext
  br i1 %exitcond.not, label %.critedge158.i, label %.lr.ph, !llvm.loop !49

bb.af:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0237712, ptr align 1 %i.eq, i64 %.sroa.051.0.insert.ext, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.051.0.insert.ext
  store ptr %i.er, ptr %i.co, align 8, !tbaa !26
  br label %.critedge158.i

.critedge158.i:                                   ; preds = %bb.ae, %bb.ad, %bb.af
  %i.es = add i64 %i.dy, %.sroa.051.0.insert.ext
  store i64 %i.es, ptr %i.ct, align 8, !tbaa !95
  %i.et = call i64 @llvm.umin.i64(i64 %i.dl, i64 %.sroa.051.0.insert.ext)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0237712, i64 %i.et ; 2 uses
  %i.ev = icmp ult i32 %i.dk, %i.do
  br i1 %i.ev, label %.lr.ph707, label %._crit_edge

.lr.ph707:                                        ; preds = %.critedge158.i
  %i.ew = load i32, ptr %i.db, align 4, !tbaa !97
  %i.ex = sub nsw i64 0, %i.dl
  %i.ey = load ptr, ptr %i.dc, align 8, !tbaa !99
  %i.ez = ptrtoint ptr %i.ey to i64
  %.val335 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val336 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i = shl nsw i32 -1, %.val335
  %i.fa = xor i32 %notmask.i.i, -1
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %.critedge158.i
  %.0136.i.lcssa = phi ptr [ %i.eu, %.critedge158.i ], [ %i.fu, %bb.ag ] ; 17 uses
  %.0136.i.lcssa905 = ptrtoaddr ptr %.0136.i.lcssa to i64
  switch i8 %i.du, label %ZS_execExperimentalSequence.exit.thread [
    i8 0, label %bb.ah
    i8 1, label %bb.aj
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 4, label %ZS_execExperimentalSequence.exit
  ]

bb.ag:                                            ; preds = %.lr.ph707, %bb.ag
  %.0136.i706 = phi ptr [ %i.eu, %.lr.ph707 ], [ %i.fu, %bb.ag ] ; 3 uses
  %.0140.i705 = phi i64 [ %i.dl, %.lr.ph707 ], [ %i.ft, %bb.ag ]
  %i.fb = getelementptr inbounds i8, ptr %.0136.i706, i64 %i.ex
  %i.fc = call fastcc i64 @ZL_hashPtr(ptr noundef %i.fb, i32 noundef %i.ew, i32 noundef %i.dk)
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = ptrtoint ptr %.0136.i706 to i64
  %i.ff = sub i64 %i.fe, %i.ez
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = shl i32 %i.fd, %.val335
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val336, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !42
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw i32 %i.fm, 2147483647
  %i.fo = and i32 %i.fn, %i.fa                    ; 2 uses
  %i.fp = trunc i32 %i.fo to i16
  store i16 %i.fp, ptr %i.fk, align 4, !tbaa !42
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fq ; 2 uses
  store i32 %i.fg, ptr %i.fr, align 4, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  store i8 0, ptr %i.fs, align 2, !tbaa !44
  %i.ft = add nuw nsw i64 %.0140.i705, 1          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0136.i706, i64 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %i.ft, %.sroa.051.0.insert.ext
  br i1 %exitcond791.not, label %._crit_edge, label %bb.ag, !llvm.loop !50

bb.ah:                                            ; preds = %._crit_edge
  %i.fv = icmp eq i32 %i.dq, 0
  %i.fw = ptrtoint ptr %.0136.i.lcssa to i64
  %i.fx = sub i64 %i.fw, %i.bk
  %i.fy = icmp ult i64 %i.fx, %.sroa.051.4.insert.ext
  %or.cond.i = select i1 %i.fv, i1 true, i1 %i.fy
  br i1 %or.cond.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = sub nsw i64 0, %.sroa.051.4.insert.ext
  %i.ga = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.fz
  %i.gb = add i32 %i.ds, %i.ab
  %i.gc = load <2 x i32>, ptr %5, align 8
  store i32 %i.dq, ptr %5, align 8
  store <2 x i32> %i.gc, ptr %i.df, align 4
  br label %bb.aw

bb.aj:                                            ; preds = %._crit_edge
  %i.gd = load i32, ptr %i.db, align 4, !tbaa !97
  %i.ge = sub nsw i64 0, %i.dl
  %i.gf = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.ge
  %i.gg = call fastcc i64 @ZL_hashPtr(ptr noundef %i.gf, i32 noundef %i.gd, i32 noundef %i.dk)
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = call fastcc i64 @ZS_RolzDTable2_get(ptr noundef nonnull %9, i32 noundef %i.gh, i32 noundef %i.dq, i32 noundef %i.ds) ; 3 uses
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
  %i.hn = icmp eq i32 %i.dq, 0
  br i1 %i.hn, label %.split.i, label %.split148.i

.split.i:                                         ; preds = %bb.al
  %.sroa.0.0.copyload378 = load i32, ptr %5, align 8 ; 2 uses
  %i.ho = load <2 x i32>, ptr %i.df, align 4      ; 2 uses
  %i.hp = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.hq = icmp eq i32 %i.ds, %i.hp
  %.sroa.19.12.copyload = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.hq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.i
  %.sroa.23.12.copyload = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.an:                                            ; preds = %.split.i
  %i.hr = icmp eq i32 %i.ds, %.sroa.19.12.copyload
  %i.hs = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select = select i1 %i.hr, i32 %i.hs, i32 %.sroa.19.12.copyload
  br label %ZS_rep_update.exit

.split148.i:                                      ; preds = %bb.al
  %i.ht = lshr i32 %i.dq, 2
  %i.hu = add nsw i32 %i.ht, -4
  %i.hv = add i32 %i.hu, %i.hm                    ; 5 uses
  %i.hw = and i32 %i.dq, 3                        ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 3
  %i.hy = and i32 %i.dq, 2
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
  %.pre = load i32, ptr %i.dg, align 4
  %i.id = insertelement <2 x i32> %i.ic, i32 %i.ib, i64 1
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.0.copyload379 = load i32, ptr %5, align 8
  %i.ie = load <2 x i32>, ptr %i.df, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload379, %bb.aq ], [ %i.hv, %bb.ao ] ; 2 uses
  %i.if = phi <2 x i32> [ %i.ie, %bb.aq ], [ %i.hz, %bb.ao ] ; 2 uses
  %.pre800 = load i32, ptr %i.dg, align 4         ; 2 uses
  br i1 %i.hx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.19.12.copyload393 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8
  %.sroa.23.12.copyload397 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.at:                                            ; preds = %bb.ar, %.thread.i
  %i.ig = phi i32 [ %.pre, %.thread.i ], [ %.pre800, %bb.ar ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.hv, %.thread.i ], [ %.sroa.0.1, %bb.ar ] ; 2 uses
  %i.ih = phi <2 x i32> [ %i.id, %.thread.i ], [ %i.if, %bb.ar ] ; 2 uses
  %i.ii = icmp eq i32 %i.ds, %i.ig
  %.sroa.19.12.copyload391 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.ii, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.23.12.copyload395 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.av:                                            ; preds = %bb.at
  %i.ij = icmp eq i32 %i.ds, %.sroa.19.12.copyload391
  %i.ik = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select759 = select i1 %i.ij, i32 %i.ik, i32 %.sroa.19.12.copyload391
  br label %ZS_rep_update.exit

ZS_rep_update.exit:                               ; preds = %bb.av, %bb.an, %bb.au, %bb.as, %bb.am
  %.sroa.23.0 = phi i32 [ %.sroa.23.12.copyload397, %bb.as ], [ %.sroa.23.12.copyload, %bb.am ], [ %spec.select759, %bb.av ], [ %.sroa.23.12.copyload395, %bb.au ], [ %spec.select, %bb.an ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.12.copyload393, %bb.as ], [ %.sroa.19.12.copyload, %bb.am ], [ %i.ig, %bb.av ], [ %.sroa.19.12.copyload391, %bb.au ], [ %i.hp, %bb.an ]
  %.sroa.12.0 = phi i32 [ %.pre800, %bb.as ], [ %i.ds, %bb.am ], [ %i.ds, %bb.av ], [ %i.ds, %bb.au ], [ %i.ds, %bb.an ]
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
  %i.iq = add i32 %i.ds, %i.ae
  br label %bb.aw

bb.aw:                                            ; preds = %ZS_rep_update.exit, %bb.ak, %bb.ai
  %.0139.i = phi ptr [ %i.ga, %bb.ai ], [ %i.gm, %bb.ak ], [ %i.ip, %ZS_rep_update.exit ] ; 8 uses
  %.0138.i = phi i32 [ %i.gb, %bb.ai ], [ %.sroa.5.0.extract.trunc.i, %bb.ak ], [ %i.iq, %ZS_rep_update.exit ] ; 6 uses
  %.0139.i904 = ptrtoaddr ptr %.0139.i to i64
  %i.ir = zext i32 %.0138.i to i64                ; 10 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.ir
  %i.it = icmp ugt ptr %i.is, %i.c
  br i1 %i.it, label %ZS_execExperimentalSequence.exit.thread, label %.preheader692

.preheader692:                                    ; preds = %bb.aw
  %.not765 = icmp eq i32 %.0138.i, 0
  br i1 %.not765, label %._crit_edge710, label %iter.check

iter.check:                                       ; preds = %.preheader692
  %min.iters.check = icmp ult i32 %.0138.i, 4
  %i.iu = sub i64 %.0139.i904, %.0136.i.lcssa905
  %diff.check = icmp ugt i64 %i.iu, -32
  %or.cond1245 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1245, label %.lr.ph709.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check906 = icmp ult i32 %.0138.i, 32
  br i1 %min.iters.check906, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iv = and i64 %i.ir, 28
  %n.vec = and i64 %i.ir, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <16 x i8>, ptr %i.iw, align 1, !tbaa !19
  %wide.load907 = load <16 x i8>, ptr %i.ix, align 1, !tbaa !19
  %i.iy = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store <16 x i8> %wide.load, ptr %i.iy, align 1, !tbaa !19
  store <16 x i8> %wide.load907, ptr %i.iz, align 1, !tbaa !19
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
  %n.vec908 = and i64 %i.ir, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index909 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next911, %vec.epilog.vector.body ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index909
  %wide.load910 = load <4 x i8>, ptr %i.jb, align 1, !tbaa !19
  %i.jc = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index909
  store <4 x i8> %wide.load910, ptr %i.jc, align 1, !tbaa !19
  %index.next911 = add nuw i64 %index909, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next911, %n.vec908
  br i1 %i.jd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n912 = icmp eq i64 %n.vec908, %i.ir
  br i1 %cmp.n912, label %._crit_edge710, label %.lr.ph709.preheader

.lr.ph709.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0137.i708.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec908, %vec.epilog.middle.block ] ; 3 uses
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
  %.not156.i = icmp eq i8 %i.du, 1
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
  %.not157.i = icmp slt i64 %i.kb, %i.dl
  br i1 %.not157.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load i32, ptr %i.db, align 4, !tbaa !97 ; 2 uses
  %i.kd = sub nsw i64 0, %i.dl                    ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.kd
  %i.kf = call fastcc i64 @ZL_hashPtr(ptr noundef %i.ke, i32 noundef %i.kc, i32 noundef %i.dk)
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = load ptr, ptr %i.dc, align 8, !tbaa !99
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = sub i64 %i.ka, %i.ki
  %i.kk = trunc i64 %i.kj to i32                  ; 2 uses
  %.val341 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 3 uses
  %.val342 = load ptr, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %notmask.i.i355 = shl nsw i32 -1, %.val341
  %i.kl = xor i32 %notmask.i.i355, -1             ; 2 uses
  %i.km = shl i32 %i.kg, %.val341
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.kq = load i16, ptr %i.kp, align 4, !tbaa !42
  %i.kr = zext i16 %i.kq to i32
  %i.ks = add nuw i32 %i.kr, 2147483647
  %i.kt = and i32 %i.ks, %i.kl                    ; 2 uses
  %i.ku = trunc i32 %i.kt to i16
  store i16 %i.ku, ptr %i.kp, align 4, !tbaa !42
  %i.kv = zext nneg i32 %i.kt to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kv ; 2 uses
  store i32 %i.kk, ptr %i.kw, align 4, !tbaa !43
  %i.kx = call i32 @llvm.umin.i32(i32 %.0138.i, i32 255)
  %i.ky = trunc nuw i32 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  store i8 %i.ky, ptr %i.kz, align 2, !tbaa !44
  %i.la = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 1
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %i.kd
  %i.lc = call fastcc i64 @ZL_hashPtr(ptr noundef nonnull %i.lb, i32 noundef %i.kc, i32 noundef %i.dk)
  %i.ld = trunc i64 %i.lc to i32
  %i.le = add i32 %i.kk, 1
  %i.lf = add i32 %.0138.i, -1
  %i.lg = shl i32 %i.ld, %.val341
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4 ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 4, !tbaa !42
  %i.ll = zext i16 %i.lk to i32
  %i.lm = add nuw i32 %i.ll, 2147483647
  %i.ln = and i32 %i.lm, %i.kl                    ; 2 uses
  %i.lo = trunc i32 %i.ln to i16
  store i16 %i.lo, ptr %i.lj, align 4, !tbaa !42
  %i.lp = zext nneg i32 %i.ln to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lp ; 2 uses
  store i32 %i.le, ptr %i.lq, align 4, !tbaa !43
  %i.lr = call i32 @llvm.umin.i32(i32 %i.lf, i32 255)
  %i.ls = trunc nuw i32 %i.lr to i8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 6
  store i8 %i.ls, ptr %i.lt, align 2, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge710
  %i.lu = add nuw nsw i64 %i.ir, %.sroa.051.0.insert.ext
  br label %ZS_execExperimentalSequence.exit

ZS_execExperimentalSequence.exit:                 ; preds = %._crit_edge, %bb.az
  %.6.i = phi i64 [ %i.lu, %bb.az ], [ %.sroa.051.0.insert.ext, %._crit_edge ] ; 2 uses
  %i.lv = icmp eq i64 %.6.i, 0
  br i1 %i.lv, label %ZS_execExperimentalSequence.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %ZS_execExperimentalSequence.exit
  %i.lw = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.6.i ; 2 uses
  %i.lx = add nuw nsw i64 %.0239711, 1            ; 2 uses
  %exitcond793.not = icmp eq i64 %i.lx, %i.ca
  br i1 %exitcond793.not, label %.critedge, label %bb.x, !llvm.loop !55

.critedge:                                        ; preds = %bb.x, %bb.ba, %bb.w
  %.0239.lcssa = phi i64 [ 0, %bb.w ], [ %i.ca, %bb.ba ], [ %.0239711, %bb.x ] ; 3 uses
  %.0237.lcssa = phi ptr [ %1, %bb.w ], [ %i.lw, %bb.ba ], [ %.0237712, %bb.x ] ; 6 uses
  %i.ly = load i32, ptr %9, align 8, !tbaa !96
  %i.lz = icmp eq i32 %i.ly, 2
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = icmp eq i32 %i.mb, 12
  %or.cond17 = select i1 %i.lz, i1 %i.mc, i1 false
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.me = load i32, ptr %i.md, align 8
  %i.mf = icmp eq i32 %i.me, 4
  %or.cond20 = select i1 %or.cond17, i1 %i.mf, i1 false
  br i1 %or.cond20, label %bb.bb, label %.loopexit676

bb.bb:                                            ; preds = %.critedge
  %i.mg = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !46, !range !31, !noundef !32
  %i.mi = trunc nuw i8 %i.mh to i1
  %i.mj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = icmp eq i32 %i.mk, 3
  %or.cond23 = select i1 %i.mi, i1 %i.ml, i1 false
  %i.mm = icmp eq i8 %i.aa, 7
  %or.cond25 = select i1 %or.cond23, i1 %i.mm, i1 false
  %i.mn = icmp eq i8 %i.ad, 3
  %or.cond27 = select i1 %or.cond25, i1 %i.mn, i1 false
  br i1 %or.cond27, label %bb.bc, label %.loopexit676

bb.bc:                                            ; preds = %bb.bb
  %i.mo = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.mp = trunc nuw i8 %i.mo to i1
  %i.mq = icmp samesign ult i64 %.0239.lcssa, %i.ca ; 2 uses
  br i1 %i.mp, label %.preheader675, label %.preheader689

.preheader689:                                    ; preds = %bb.bc
  br i1 %i.mq, label %.lr.ph734, label %.loopexit676

.lr.ph734:                                        ; preds = %.preheader689
  %i.mr = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.19419.12..sroa_idx422 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23424.12..sroa_idx427 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.ck

.preheader675:                                    ; preds = %bb.bc
  br i1 %i.mq, label %.lr.ph753, label %.loopexit676

.lr.ph753:                                        ; preds = %.preheader675
  %i.mx = getelementptr inbounds nuw i8, ptr %10, i64 4144
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.nd = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.19453.12..sroa_idx456 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23458.12..sroa_idx461 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph753, %bb.cj
  %.2752 = phi ptr [ %.0237.lcssa, %.lr.ph753 ], [ %i.aam, %bb.cj ] ; 7 uses
  %.1240751 = phi i64 [ %.0239.lcssa, %.lr.ph753 ], [ %i.aan, %bb.cj ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.1240751
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !29 ; 4 uses
  %.sroa.047.0.insert.ext = zext i32 %i.nf to i64 ; 7 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.1240751
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !29 ; 7 uses
  %.sroa.047.4.insert.ext = zext i32 %i.nh to i64 ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.1240751
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !29 ; 13 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.1240751
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !19
  %i.nm = ptrtoint ptr %.2752 to i64
  %i.nn = sub i64 %i.bj, %i.nm
  %i.no = icmp ult i64 %i.nn, %.sroa.047.0.insert.ext
  br i1 %i.no, label %ZS_execExperimentalSequence.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.np = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.nq = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = icmp ult i64 %i.nr, %.sroa.047.0.insert.ext
  br i1 %i.ns, label %ZS_execExperimentalSequence.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not171.i736.not = icmp eq i32 %i.nf, 0
  br i1 %.not171.i736.not, label %.critedge172.i._crit_edge, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %bb.bf
  %i.nt = getelementptr inbounds i8, ptr %.2752, i64 -1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !19
  br label %.lr.ph740

.lr.ph743:                                        ; preds = %bb.bg
  %i.nv = load ptr, ptr %i.my, align 8, !tbaa !99
  %i.nw = ptrtoint ptr %i.nv to i64               ; 3 uses
  %i.nx = load ptr, ptr %i.mz, align 8, !tbaa !39 ; 3 uses
  %xtraiter1276 = and i64 %.sroa.047.0.insert.ext, 1
  %i.ny = icmp eq i32 %i.nf, 1
  br i1 %i.ny, label %.critedge172.i.epil.preheader, label %.lr.ph743.new

.lr.ph743.new:                                    ; preds = %.lr.ph743
  %unroll_iter1280 = and i64 %.sroa.047.0.insert.ext, 4294967294
  br label %.critedge172.i

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %bb.bg
  %.0161.i738 = phi i64 [ %i.oh, %bb.bg ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %.0162.i737 = phi i8 [ %i.od, %bb.bg ], [ %i.nu, %.lr.ph740.preheader ]
  %i.nz = zext i8 %.0162.i737 to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.nz
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !35 ; 4 uses
  %.not.i300 = icmp eq ptr %i.ob, null
  br i1 %.not.i300, label %ZS_execExperimentalSequence.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph740
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !36
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !19  ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.2752, i64 %.0161.i738
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !19
  %i.of = load ptr, ptr %i.ob, align 8, !tbaa !36
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  store ptr %i.og, ptr %i.ob, align 8, !tbaa !36
  %i.oh = add nuw nsw i64 %.0161.i738, 1          ; 2 uses
  %exitcond796.not = icmp eq i64 %i.oh, %.sroa.047.0.insert.ext
  br i1 %exitcond796.not, label %.lr.ph743, label %.lr.ph740, !llvm.loop !56

.critedge172.i._crit_edge.loopexit.unr-lcssa:     ; preds = %.critedge172.i
  %lcmp.mod1277.not = icmp eq i64 %xtraiter1276, 0
  br i1 %lcmp.mod1277.not, label %.critedge172.i._crit_edge, label %.critedge172.i.epil.preheader

.critedge172.i.epil.preheader:                    ; preds = %.critedge172.i._crit_edge.loopexit.unr-lcssa, %.lr.ph743
  %.0147.i284742.epil.init = phi ptr [ %.2752, %.lr.ph743 ], [ %i.qe, %.critedge172.i._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1279 = trunc i32 %i.nf to i1
  call void @llvm.assume(i1 %lcmp.mod1279)
  %i.oi = getelementptr inbounds i8, ptr %.0147.i284742.epil.init, i64 -2
  %.val.i357.epil = load i16, ptr %i.oi, align 1
  %i.oj = ptrtoint ptr %.0147.i284742.epil.init to i64
  %i.ok = sub i64 %i.oj, %i.nw
  %i.ol = trunc i64 %i.ok to i32
  %i.om = mul i16 %.val.i357.epil, -22595
  %i.on = and i16 %i.om, -16
  %i.oo = zext i16 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.oo ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 2 uses
  %i.or = load i16, ptr %i.oq, align 4, !tbaa !42
  %i.os = add i16 %i.or, 15
  %i.ot = and i16 %i.os, 15                       ; 2 uses
  store i16 %i.ot, ptr %i.oq, align 4, !tbaa !42
  %i.ou = zext nneg i16 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.ou ; 2 uses
  store i32 %i.ol, ptr %i.ov, align 4, !tbaa !43
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 6
  store i8 0, ptr %i.ow, align 2, !tbaa !44
  %i.ox = getelementptr inbounds nuw i8, ptr %.0147.i284742.epil.init, i64 1
  br label %.critedge172.i._crit_edge

.critedge172.i._crit_edge:                        ; preds = %.critedge172.i.epil.preheader, %.critedge172.i._crit_edge.loopexit.unr-lcssa, %bb.bf
  %.0147.i284.lcssa = phi ptr [ %.2752, %bb.bf ], [ %i.qe, %.critedge172.i._crit_edge.loopexit.unr-lcssa ], [ %i.ox, %.critedge172.i.epil.preheader ] ; 40 uses
  %.0147.i284.lcssa1075 = ptrtoaddr ptr %.0147.i284.lcssa to i64 ; 12 uses
  %i.oy = add i64 %i.nq, %.sroa.047.0.insert.ext
  store i64 %i.oy, ptr %i.ct, align 8, !tbaa !95
  switch i8 %i.nl, label %bb.br [
    i8 1, label %bb.bh
    i8 0, label %bb.bp
  ]

.critedge172.i:                                   ; preds = %.critedge172.i, %.lr.ph743.new
  %.0147.i284742 = phi ptr [ %.2752, %.lr.ph743.new ], [ %i.qe, %.critedge172.i ] ; 5 uses
  %niter1281 = phi i64 [ 0, %.lr.ph743.new ], [ %niter1281.next.1, %.critedge172.i ]
  %i.oz = getelementptr inbounds i8, ptr %.0147.i284742, i64 -2
  %.val.i357 = load i16, ptr %i.oz, align 1
  %i.pa = ptrtoint ptr %.0147.i284742 to i64
  %i.pb = sub i64 %i.pa, %i.nw
  %i.pc = trunc i64 %i.pb to i32
  %i.pd = mul i16 %.val.i357, -22595
  %i.pe = and i16 %i.pd, -16
  %i.pf = zext i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4 ; 2 uses
  %i.pi = load i16, ptr %i.ph, align 4, !tbaa !42
  %i.pj = add i16 %i.pi, 15
  %i.pk = and i16 %i.pj, 15                       ; 2 uses
  store i16 %i.pk, ptr %i.ph, align 4, !tbaa !42
  %i.pl = zext nneg i16 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pl ; 2 uses
  store i32 %i.pc, ptr %i.pm, align 4, !tbaa !43
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 6
  store i8 0, ptr %i.pn, align 2, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 1
  %i.pp = getelementptr inbounds i8, ptr %.0147.i284742, i64 -1
  %.val.i357.1 = load i16, ptr %i.pp, align 1
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pq, %i.nw
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = mul i16 %.val.i357.1, -22595
  %i.pu = and i16 %i.pt, -16
  %i.pv = zext i16 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4 ; 2 uses
  %i.py = load i16, ptr %i.px, align 4, !tbaa !42
  %i.pz = add i16 %i.py, 15
  %i.qa = and i16 %i.pz, 15                       ; 2 uses
  store i16 %i.qa, ptr %i.px, align 4, !tbaa !42
  %i.qb = zext nneg i16 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.qb ; 2 uses
  store i32 %i.ps, ptr %i.qc, align 4, !tbaa !43
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 6
  store i8 0, ptr %i.qd, align 2, !tbaa !44
  %i.qe = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 2 ; 3 uses
  %niter1281.next.1 = add i64 %niter1281, 2       ; 2 uses
  %niter1281.ncmp.1 = icmp eq i64 %niter1281.next.1, %unroll_iter1280
  br i1 %niter1281.ncmp.1, label %.critedge172.i._crit_edge.loopexit.unr-lcssa, label %.critedge172.i, !llvm.loop !57

bb.bh:                                            ; preds = %.critedge172.i._crit_edge
  %i.qf = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i359 = load i16, ptr %i.qf, align 1
  %i.qg = load ptr, ptr %i.mz, align 8, !tbaa !39
  %i.qh = mul i16 %.val.i359, -22595
  %i.qi = and i16 %i.qh, -16
  %i.qj = zext i16 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qj ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 4 ; 3 uses
  %i.qm = load i16, ptr %i.ql, align 4, !tbaa !42
  %i.qn = zext i16 %i.qm to i32
  %i.qo = add i32 %i.nh, %i.qn
  %i.qp = and i32 %i.qo, 15
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qq ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !43 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 6
  %i.qu = load i8, ptr %i.qt, align 2, !tbaa !44
  %i.qv = zext i8 %i.qu to i32                    ; 2 uses
  %i.qw = add i32 %i.nj, 3                        ; 2 uses
  %.not.not.i309 = icmp ugt i32 %i.qw, %i.qv
  %.not.i310 = icmp eq i32 %i.nj, 0
  %i.qx = add i32 %i.nj, 2
  %spec.select.i311 = select i1 %.not.i310, i32 %i.qv, i32 %i.qx
  %.0.i312 = select i1 %.not.not.i309, i32 %i.qw, i32 %spec.select.i311 ; 5 uses
  %.sroa.2.0.insert.ext.i = zext i32 %.0.i312 to i64 ; 11 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.qs to i64
  %i.qy = load ptr, ptr %i.my, align 8, !tbaa !99 ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qy, i64 %.sroa.0.0.insert.ext.i ; 15 uses
  %i.ra = load i32, ptr %i.nc, align 4, !tbaa !100
  %i.rb = icmp ugt i32 %i.ra, %i.qs
  br i1 %i.rb, label %ZS_execExperimentalSequence.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rc = ptrtoint ptr %.0147.i284.lcssa to i64   ; 2 uses
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = sub i64 %i.rc, %i.rd                    ; 6 uses
  %i.rf = trunc i64 %i.re to i32
  %i.rg = load <2 x i32>, ptr %5, align 8
  store i32 %i.rf, ptr %5, align 8
  store <2 x i32> %i.rg, ptr %i.na, align 4
  %i.rh = ptrtoint ptr %i.qy to i64
  %i.ri = sub i64 %i.rc, %i.rh
  %i.rj = trunc i64 %i.ri to i32
  %i.rk = load i16, ptr %i.ql, align 4, !tbaa !42
  %i.rl = add i16 %i.rk, 15
  %i.rm = and i16 %i.rl, 15                       ; 2 uses
  store i16 %i.rm, ptr %i.ql, align 4, !tbaa !42
  %i.rn = zext nneg i16 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.rn ; 2 uses
  store i32 %i.rj, ptr %i.ro, align 4, !tbaa !43
  %i.rp = call i32 @llvm.umin.i32(i32 %.0.i312, i32 255)
  %i.rq = trunc nuw i32 %i.rp to i8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 6
  store i8 %i.rq, ptr %i.rr, align 2, !tbaa !44
  %i.rs = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %.sroa.2.0.insert.ext.i ; 5 uses
  %i.rt = icmp ugt ptr %i.rs, %i.nd
  br i1 %i.rt, label %bb.bj, label %bb.bk, !prof !22

bb.bj:                                            ; preds = %bb.bi
  %i.ru = icmp ugt ptr %i.rs, %i.c
  br i1 %i.ru, label %ZS_execExperimentalSequence.exit.thread, label %.preheader669

.preheader669:                                    ; preds = %bb.bj
  %.not770 = icmp eq i32 %.0.i312, 0
  br i1 %.not770, label %ZS_execExperimentalSequence2.exit302, label %iter.check1198

iter.check1198:                                   ; preds = %.preheader669
  %i.rv = add i64 %.0147.i284.lcssa1075, %.sroa.2.0.insert.ext.i
  %i.rw = add i64 %.0147.i284.lcssa1075, 1
  %umax1180 = call i64 @llvm.umax.i64(i64 %i.rv, i64 %i.rw)
  %i.rx = sub i64 %umax1180, %.0147.i284.lcssa1075 ; 7 uses
  %min.iters.check1182 = icmp ult i64 %i.rx, 8
  %i.ry = add i64 %i.re, -1
  %diff.check1184 = icmp ult i64 %i.ry, 31
  %or.cond1246 = select i1 %min.iters.check1182, i1 true, i1 %diff.check1184
  br i1 %or.cond1246, label %.lr.ph747.preheader, label %vector.main.loop.iter.check1185

vector.main.loop.iter.check1185:                  ; preds = %iter.check1198
  %min.iters.check1186 = icmp ult i64 %i.rx, 32
  br i1 %min.iters.check1186, label %vec.epilog.ph1202, label %vector.ph1187

vector.ph1187:                                    ; preds = %vector.main.loop.iter.check1185
  %i.rz = and i64 %i.rx, 24
  %n.vec1188 = and i64 %i.rx, -32                 ; 5 uses
  %i.sa = getelementptr i8, ptr %i.qz, i64 %n.vec1188
  %i.sb = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1188
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.ph1187, %vector.body1189
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1195, %vector.body1189 ] ; 3 uses
  %next.gep1191 = getelementptr i8, ptr %i.qz, i64 %index1190 ; 2 uses
  %next.gep1192 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1190 ; 2 uses
  %i.sc = getelementptr i8, ptr %next.gep1191, i64 16
  %wide.load1193 = load <16 x i8>, ptr %next.gep1191, align 1, !tbaa !19
  %wide.load1194 = load <16 x i8>, ptr %i.sc, align 1, !tbaa !19
  %i.sd = getelementptr i8, ptr %next.gep1192, i64 16
  store <16 x i8> %wide.load1193, ptr %next.gep1192, align 1, !tbaa !19
  store <16 x i8> %wide.load1194, ptr %i.sd, align 1, !tbaa !19
  %index.next1195 = add nuw i64 %index1190, 32    ; 2 uses
  %i.se = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.se, label %middle.block1196, label %vector.body1189, !llvm.loop !58

middle.block1196:                                 ; preds = %vector.body1189
  %cmp.n1197 = icmp eq i64 %i.rx, %n.vec1188
  br i1 %cmp.n1197, label %ZS_execExperimentalSequence2.exit302, label %vec.epilog.iter.check1199

vec.epilog.iter.check1199:                        ; preds = %middle.block1196
  %min.epilog.iters.check1201 = icmp eq i64 %i.rz, 0
  br i1 %min.epilog.iters.check1201, label %.lr.ph747.preheader, label %vec.epilog.ph1202, !prof !104

vec.epilog.ph1202:                                ; preds = %vector.main.loop.iter.check1185, %vec.epilog.iter.check1199
  %vec.epilog.resume.val1203 = phi i64 [ %n.vec1188, %vec.epilog.iter.check1199 ], [ 0, %vector.main.loop.iter.check1185 ]
  %n.vec1204 = and i64 %i.rx, -8                  ; 4 uses
  %i.sf = getelementptr i8, ptr %i.qz, i64 %n.vec1204
  %i.sg = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1204
  br label %vec.epilog.vector.body1205

vec.epilog.vector.body1205:                       ; preds = %vec.epilog.vector.body1205, %vec.epilog.ph1202
  %index1206 = phi i64 [ %vec.epilog.resume.val1203, %vec.epilog.ph1202 ], [ %index.next1210, %vec.epilog.vector.body1205 ] ; 3 uses
  %next.gep1207 = getelementptr i8, ptr %i.qz, i64 %index1206
  %next.gep1208 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1206
  %wide.load1209 = load <8 x i8>, ptr %next.gep1207, align 1, !tbaa !19
  store <8 x i8> %wide.load1209, ptr %next.gep1208, align 1, !tbaa !19
  %index.next1210 = add nuw i64 %index1206, 8     ; 2 uses
  %i.sh = icmp eq i64 %index.next1210, %n.vec1204
  br i1 %i.sh, label %vec.epilog.middle.block1211, label %vec.epilog.vector.body1205, !llvm.loop !59

vec.epilog.middle.block1211:                      ; preds = %vec.epilog.vector.body1205
  %cmp.n1212 = icmp eq i64 %i.rx, %n.vec1204
  br i1 %cmp.n1212, label %ZS_execExperimentalSequence2.exit302, label %.lr.ph747.preheader

.lr.ph747.preheader:                              ; preds = %iter.check1198, %vec.epilog.iter.check1199, %vec.epilog.middle.block1211
  %.0150.i297746.ph = phi ptr [ %i.qz, %iter.check1198 ], [ %i.sa, %vec.epilog.iter.check1199 ], [ %i.sf, %vec.epilog.middle.block1211 ]
  %.0151.i296745.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1198 ], [ %i.sb, %vec.epilog.iter.check1199 ], [ %i.sg, %vec.epilog.middle.block1211 ]
  br label %.lr.ph747

.lr.ph747:                                        ; preds = %.lr.ph747.preheader, %.lr.ph747
  %.0150.i297746 = phi ptr [ %i.si, %.lr.ph747 ], [ %.0150.i297746.ph, %.lr.ph747.preheader ] ; 2 uses
  %.0151.i296745 = phi ptr [ %i.sk, %.lr.ph747 ], [ %.0151.i296745.ph, %.lr.ph747.preheader ] ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0150.i297746, i64 1
  %i.sj = load i8, ptr %.0150.i297746, align 1, !tbaa !19
  %i.sk = getelementptr inbounds nuw i8, ptr %.0151.i296745, i64 1 ; 2 uses
  store i8 %i.sj, ptr %.0151.i296745, align 1, !tbaa !19
  %i.sl = icmp ult ptr %i.sk, %i.rs
  br i1 %i.sl, label %.lr.ph747, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !60

bb.bk:                                            ; preds = %bb.bi
  %i.sm = icmp slt i64 %i.re, 16
  br i1 %i.sm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.sn = icmp ult i64 %i.re, 8
  br i1 %i.sn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.so = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.re
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !29
  %i.sq = load i8, ptr %i.qz, align 1, !tbaa !19
  store i8 %i.sq, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qz, i64 1
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %i.qz, i64 2
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !19
  %i.sw = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !19
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qz, i64 3
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !19
  %i.sz = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.sy, ptr %i.sz, align 1, !tbaa !19
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.re
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !29
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds i8, ptr %i.qz, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val343 = load i32, ptr %i.td, align 1
  store i32 %.val343, ptr %i.te, align 1
  %i.tf = sext i32 %i.sp to i64
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds i8, ptr %i.td, i64 %i.tg
  br label %ZS_overlapCopy8.exit333

bb.bn:                                            ; preds = %bb.bl
  %.val347 = load i64, ptr %i.qz, align 1
  store i64 %.val347, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit333

ZS_overlapCopy8.exit333:                          ; preds = %bb.bm, %bb.bn
  %.2622 = phi ptr [ %i.th, %bb.bm ], [ %i.qz, %bb.bn ] ; 7 uses
  %.not12.i = icmp ugt i32 %.0.i312, 8
  br i1 %.not12.i, label %.preheader670.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader670.preheader:                          ; preds = %ZS_overlapCopy8.exit333
  %i.ti = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 6 uses
  %i.tj = add i64 %.0147.i284.lcssa1075, %.sroa.2.0.insert.ext.i
  %i.tk = add i64 %.0147.i284.lcssa1075, 24
  %i.tl = call i64 @llvm.umax.i64(i64 %i.tj, i64 %i.tk)
  %i.tm = add i64 %i.tl, -9
  %i.tn = sub i64 %i.tm, %.0147.i284.lcssa1075    ; 3 uses
  %i.to = lshr i64 %i.tn, 4
  %i.tp = add nuw nsw i64 %i.to, 1                ; 2 uses
  %min.iters.check1225 = icmp ult i64 %i.tn, 112
  br i1 %min.iters.check1225, label %.preheader670.preheader1253, label %vector.memcheck1226

vector.memcheck1226:                              ; preds = %.preheader670.preheader
  %i.tq = and i64 %i.tn, -16
  %i.tr = add i64 %i.tq, 24                       ; 2 uses
  %i.ts = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.tr
  %i.tt = getelementptr i8, ptr %.2622, i64 8
  %i.tu = getelementptr i8, ptr %.2622, i64 %i.tr
  %bound01227 = icmp ult ptr %i.ti, %i.tu
  %bound11228 = icmp ult ptr %i.tt, %i.ts
  %found.conflict1229 = and i1 %bound01227, %bound11228
  br i1 %found.conflict1229, label %.preheader670.preheader1253, label %vector.ph1230

vector.ph1230:                                    ; preds = %vector.memcheck1226
  %n.vec1231 = and i64 %i.tp, 2305843009213693950 ; 3 uses
  %i.tv = shl i64 %n.vec1231, 4                   ; 2 uses
  %i.tw = getelementptr i8, ptr %i.ti, i64 %i.tv
  %i.tx = getelementptr i8, ptr %.2622, i64 %i.tv
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1240, %vector.body1232 ] ; 2 uses
  %i.ty = shl i64 %index1233, 4                   ; 3 uses
  %i.tz = or disjoint i64 %i.ty, 16               ; 2 uses
  %next.gep1234 = getelementptr i8, ptr %i.ti, i64 %i.ty
  %next.gep1235 = getelementptr i8, ptr %i.ti, i64 %i.tz
  %next.gep1236 = getelementptr i8, ptr %.2622, i64 %i.ty
  %next.gep1237 = getelementptr i8, ptr %.2622, i64 %i.tz
  %i.ua = getelementptr inbounds nuw i8, ptr %next.gep1236, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %next.gep1237, i64 8
  %wide.load1238 = load <2 x i64>, ptr %i.ua, align 1, !alias.scope !105
  %wide.load1239 = load <2 x i64>, ptr %i.ub, align 1, !alias.scope !105
  store <2 x i64> %wide.load1238, ptr %next.gep1234, align 1, !alias.scope !106, !noalias !105
  store <2 x i64> %wide.load1239, ptr %next.gep1235, align 1, !alias.scope !106, !noalias !105
  %index.next1240 = add nuw i64 %index1233, 2     ; 2 uses
  %i.uc = icmp eq i64 %index.next1240, %n.vec1231
  br i1 %i.uc, label %middle.block1241, label %vector.body1232, !llvm.loop !64

middle.block1241:                                 ; preds = %vector.body1232
  %cmp.n1242 = icmp eq i64 %i.tp, %n.vec1231
  br i1 %cmp.n1242, label %ZS_execExperimentalSequence2.exit302, label %.preheader670.preheader1253

.preheader670.preheader1253:                      ; preds = %vector.memcheck1226, %.preheader670.preheader, %middle.block1241
  %.1624.ph = phi ptr [ %i.ti, %vector.memcheck1226 ], [ %i.ti, %.preheader670.preheader ], [ %i.tw, %middle.block1241 ]
  %.2622.pn.ph = phi ptr [ %.2622, %vector.memcheck1226 ], [ %.2622, %.preheader670.preheader ], [ %i.tx, %middle.block1241 ]
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader670.preheader1253, %.preheader670
  %.1624 = phi ptr [ %i.uh, %.preheader670 ], [ %.1624.ph, %.preheader670.preheader1253 ] ; 3 uses
  %.2622.pn = phi ptr [ %i.uf, %.preheader670 ], [ %.2622.pn.ph, %.preheader670.preheader1253 ] ; 2 uses
  %.1621 = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 8
  %i.ud = load i64, ptr %.1621, align 1
  store i64 %i.ud, ptr %.1624, align 1
  %i.ue = getelementptr inbounds nuw i8, ptr %.1624, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 16 ; 2 uses
  %i.ug = load i64, ptr %i.uf, align 1
  store i64 %i.ug, ptr %i.ue, align 1
  %i.uh = getelementptr inbounds nuw i8, ptr %.1624, i64 16 ; 2 uses
  %i.ui = icmp ult ptr %i.uh, %i.rs
  br i1 %i.ui, label %.preheader670, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !65

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.qz, i64 16, i1 false)
  %.not.i314 = icmp ugt i32 %.0.i312, 16
  br i1 %.not.i314, label %.preheader672.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader672.preheader:                          ; preds = %bb.bo
  %i.uj = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %.preheader672
  %.0623 = phi ptr [ %i.um, %.preheader672 ], [ %i.uj, %.preheader672.preheader ] ; 3 uses
  %.pn664 = phi ptr [ %i.ul, %.preheader672 ], [ %i.qz, %.preheader672.preheader ] ; 2 uses
  %.0620 = getelementptr inbounds nuw i8, ptr %.pn664, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0623, ptr noundef nonnull align 1 dereferenceable(16) %.0620, i64 16, i1 false)
  %i.uk = getelementptr inbounds nuw i8, ptr %.0623, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %.pn664, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.uk, ptr noundef nonnull align 1 dereferenceable(16) %i.ul, i64 16, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %.0623, i64 32 ; 2 uses
  %i.un = icmp ult ptr %i.um, %i.rs
  br i1 %i.un, label %.preheader672, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !66

bb.bp:                                            ; preds = %.critedge172.i._crit_edge
  %i.uo = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.up = sub i64 %i.uo, %i.bk
  %i.uq = icmp ult i64 %i.up, %.sroa.047.4.insert.ext
  br i1 %i.uq, label %ZS_execExperimentalSequence.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ur = add i32 %i.nj, 7
  %i.us = load <2 x i32>, ptr %5, align 8
  store i32 %i.nh, ptr %5, align 8
  store <2 x i32> %i.us, ptr %i.na, align 4
  br label %bb.cc

bb.br:                                            ; preds = %.critedge172.i._crit_edge
  %i.ut = and i64 %.sroa.047.4.insert.ext, 3
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4            ; 3 uses
  %i.uw = icmp eq i32 %i.nh, 0
  br i1 %i.uw, label %.split.i299, label %.split165.i298

.split.i299:                                      ; preds = %bb.br
  %.sroa.0437.0.copyload438 = load i32, ptr %5, align 8 ; 2 uses
  %i.ux = load <2 x i32>, ptr %i.na, align 4      ; 2 uses
  %i.uy = load i32, ptr %i.nb, align 4            ; 2 uses
  %i.uz = icmp eq i32 %i.nj, %i.uy
  %.sroa.19453.12.copyload = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.uz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.split.i299
  %.sroa.23458.12.copyload = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bt:                                            ; preds = %.split.i299
  %i.va = icmp eq i32 %i.nj, %.sroa.19453.12.copyload
  %i.vb = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select760 = select i1 %i.va, i32 %i.vb, i32 %.sroa.19453.12.copyload
  br label %ZS_rep_update.exit361

.split165.i298:                                   ; preds = %bb.br
  %i.vc = lshr i32 %i.nh, 2
  %i.vd = add nsw i32 %i.vc, -4
  %i.ve = add i32 %i.vd, %i.uv                    ; 5 uses
  %i.vf = and i32 %i.nh, 3                        ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 3
  %i.vh = and i32 %i.nh, 2
  %or.cond.not.i362 = icmp eq i32 %i.vh, 0
  br i1 %or.cond.not.i362, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.split165.i298
  %i.vi = load <2 x i32>, ptr %5, align 8
  br label %bb.bx

bb.bv:                                            ; preds = %.split165.i298
  %i.vj = icmp eq i32 %i.vf, 1
  br i1 %i.vj, label %.thread.i363, label %bb.bw

.thread.i363:                                     ; preds = %bb.bv
  %i.vk = load i32, ptr %.sroa.5465.0..sroa_idx, align 8
  %i.vl = load <2 x i32>, ptr %5, align 8
  %.pre802 = load i32, ptr %i.nb, align 4
  %i.vm = insertelement <2 x i32> %i.vl, i32 %i.vk, i64 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %.sroa.0437.0.copyload439 = load i32, ptr %5, align 8
  %i.vn = load <2 x i32>, ptr %i.na, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %.sroa.0437.1 = phi i32 [ %.sroa.0437.0.copyload439, %bb.bw ], [ %i.ve, %bb.bu ] ; 2 uses
  %i.vo = phi <2 x i32> [ %i.vn, %bb.bw ], [ %i.vi, %bb.bu ] ; 2 uses
  %.pre803 = load i32, ptr %i.nb, align 4         ; 2 uses
  br i1 %i.vg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.sroa.19453.12.copyload457 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8
  %.sroa.23458.12.copyload462 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bz:                                            ; preds = %bb.bx, %.thread.i363
  %i.vp = phi i32 [ %.pre802, %.thread.i363 ], [ %.pre803, %bb.bx ] ; 2 uses
  %.sroa.0437.2 = phi i32 [ %i.ve, %.thread.i363 ], [ %.sroa.0437.1, %bb.bx ] ; 2 uses
  %i.vq = phi <2 x i32> [ %i.vm, %.thread.i363 ], [ %i.vo, %bb.bx ] ; 2 uses
  %i.vr = icmp eq i32 %i.nj, %i.vp
  %.sroa.19453.12.copyload455 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.vr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.23458.12.copyload460 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.cb:                                            ; preds = %bb.bz
  %i.vs = icmp eq i32 %i.nj, %.sroa.19453.12.copyload455
  %i.vt = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select761 = select i1 %i.vs, i32 %i.vt, i32 %.sroa.19453.12.copyload455
  br label %ZS_rep_update.exit361

ZS_rep_update.exit361:                            ; preds = %bb.cb, %bb.bt, %bb.ca, %bb.by, %bb.bs
  %.sroa.12450.0 = phi i32 [ %.pre803, %bb.by ], [ %i.nj, %bb.bs ], [ %i.nj, %bb.cb ], [ %i.nj, %bb.ca ], [ %i.nj, %bb.bt ]
  %.sroa.0437.0 = phi i32 [ %.sroa.0437.1, %bb.by ], [ %.sroa.0437.0.copyload438, %bb.bs ], [ %.sroa.0437.2, %bb.cb ], [ %.sroa.0437.2, %bb.ca ], [ %.sroa.0437.0.copyload438, %bb.bt ]
  %.sroa.19453.0 = phi i32 [ %.sroa.19453.12.copyload457, %bb.by ], [ %.sroa.19453.12.copyload, %bb.bs ], [ %i.vp, %bb.cb ], [ %.sroa.19453.12.copyload455, %bb.ca ], [ %i.uy, %bb.bt ]
  %.sroa.23458.0 = phi i32 [ %.sroa.23458.12.copyload462, %bb.by ], [ %.sroa.23458.12.copyload, %bb.bs ], [ %spec.select761, %bb.cb ], [ %.sroa.23458.12.copyload460, %bb.ca ], [ %spec.select760, %bb.bt ]
  %i.vu = phi i32 [ %i.ve, %bb.by ], [ %i.uv, %bb.bs ], [ %i.ve, %bb.cb ], [ %i.ve, %bb.ca ], [ %i.uv, %bb.bt ]
  %i.vv = phi <2 x i32> [ %i.vo, %bb.by ], [ %i.ux, %bb.bs ], [ %i.vq, %bb.cb ], [ %i.vq, %bb.ca ], [ %i.ux, %bb.bt ]
  store i32 %.sroa.0437.0, ptr %5, align 8
  store <2 x i32> %i.vv, ptr %i.na, align 4
  store i32 %.sroa.12450.0, ptr %i.nb, align 4
  store i32 %.sroa.19453.0, ptr %.sroa.19453.12..sroa_idx456, align 8
  store i32 %.sroa.23458.0, ptr %.sroa.23458.12..sroa_idx461, align 4
  %i.vw = zext i32 %i.vu to i64
  %i.vx = add i32 %i.nj, 3
  br label %bb.cc

bb.cc:                                            ; preds = %ZS_rep_update.exit361, %bb.bq
  %.sroa.2.0.extract.shift.pn.i285 = phi i64 [ %.sroa.047.4.insert.ext, %bb.bq ], [ %i.vw, %ZS_rep_update.exit361 ] ; 6 uses
  %.0152.i286 = phi i32 [ %i.ur, %bb.bq ], [ %i.vx, %ZS_rep_update.exit361 ] ; 6 uses
  %.pn.i287 = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i285
  %.0154.i288 = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 %.pn.i287 ; 15 uses
  %i.vy = zext i32 %.0152.i286 to i64             ; 4 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %i.vy ; 5 uses
  %i.wa = icmp ugt ptr %i.vz, %i.nd
  br i1 %i.wa, label %bb.cd, label %bb.ce, !prof !22

bb.cd:                                            ; preds = %bb.cc
  %i.wb = icmp ugt ptr %i.vz, %i.c
  br i1 %i.wb, label %ZS_execExperimentalSequence.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.cd
  %.not771 = icmp eq i32 %.0152.i286, 0
  br i1 %.not771, label %ZS_wildcopy.exit318, label %iter.check1094

iter.check1094:                                   ; preds = %.preheader
  %i.wc = add nuw i64 %.0147.i284.lcssa1075, %i.vy
  %i.wd = add i64 %.0147.i284.lcssa1075, 1
  %umax1076 = call i64 @llvm.umax.i64(i64 %i.wc, i64 %i.wd)
  %i.we = sub i64 %umax1076, %.0147.i284.lcssa1075 ; 7 uses
  %min.iters.check1078 = icmp ult i64 %i.we, 8
  %i.wf = add nsw i64 %.sroa.2.0.extract.shift.pn.i285, -1
  %diff.check1080 = icmp ult i64 %i.wf, 31
  %or.cond1247 = select i1 %min.iters.check1078, i1 true, i1 %diff.check1080
  br i1 %or.cond1247, label %.lr.ph750.preheader, label %vector.main.loop.iter.check1081

vector.main.loop.iter.check1081:                  ; preds = %iter.check1094
  %min.iters.check1082 = icmp ult i64 %i.we, 32
  br i1 %min.iters.check1082, label %vec.epilog.ph1098, label %vector.ph1083

vector.ph1083:                                    ; preds = %vector.main.loop.iter.check1081
  %i.wg = and i64 %i.we, 24
  %n.vec1084 = and i64 %i.we, -32                 ; 5 uses
  %i.wh = getelementptr i8, ptr %.0154.i288, i64 %n.vec1084
  %i.wi = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1084
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.ph1083, %vector.body1085
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1091, %vector.body1085 ] ; 3 uses
  %next.gep1087 = getelementptr i8, ptr %.0154.i288, i64 %index1086 ; 2 uses
  %next.gep1088 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1086 ; 2 uses
  %i.wj = getelementptr i8, ptr %next.gep1087, i64 16
  %wide.load1089 = load <16 x i8>, ptr %next.gep1087, align 1, !tbaa !19
  %wide.load1090 = load <16 x i8>, ptr %i.wj, align 1, !tbaa !19
  %i.wk = getelementptr i8, ptr %next.gep1088, i64 16
  store <16 x i8> %wide.load1089, ptr %next.gep1088, align 1, !tbaa !19
  store <16 x i8> %wide.load1090, ptr %i.wk, align 1, !tbaa !19
  %index.next1091 = add nuw i64 %index1086, 32    ; 2 uses
  %i.wl = icmp eq i64 %index.next1091, %n.vec1084
  br i1 %i.wl, label %middle.block1092, label %vector.body1085, !llvm.loop !67

middle.block1092:                                 ; preds = %vector.body1085
  %cmp.n1093 = icmp eq i64 %i.we, %n.vec1084
  br i1 %cmp.n1093, label %ZS_wildcopy.exit318, label %vec.epilog.iter.check1095

vec.epilog.iter.check1095:                        ; preds = %middle.block1092
  %min.epilog.iters.check1097 = icmp eq i64 %i.wg, 0
  br i1 %min.epilog.iters.check1097, label %.lr.ph750.preheader, label %vec.epilog.ph1098, !prof !104

vec.epilog.ph1098:                                ; preds = %vector.main.loop.iter.check1081, %vec.epilog.iter.check1095
  %vec.epilog.resume.val1099 = phi i64 [ %n.vec1084, %vec.epilog.iter.check1095 ], [ 0, %vector.main.loop.iter.check1081 ]
  %n.vec1100 = and i64 %i.we, -8                  ; 4 uses
  %i.wm = getelementptr i8, ptr %.0154.i288, i64 %n.vec1100
  %i.wn = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1100
  br label %vec.epilog.vector.body1101

vec.epilog.vector.body1101:                       ; preds = %vec.epilog.vector.body1101, %vec.epilog.ph1098
  %index1102 = phi i64 [ %vec.epilog.resume.val1099, %vec.epilog.ph1098 ], [ %index.next1106, %vec.epilog.vector.body1101 ] ; 3 uses
  %next.gep1103 = getelementptr i8, ptr %.0154.i288, i64 %index1102
  %next.gep1104 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1102
  %wide.load1105 = load <8 x i8>, ptr %next.gep1103, align 1, !tbaa !19
  store <8 x i8> %wide.load1105, ptr %next.gep1104, align 1, !tbaa !19
  %index.next1106 = add nuw i64 %index1102, 8     ; 2 uses
  %i.wo = icmp eq i64 %index.next1106, %n.vec1100
  br i1 %i.wo, label %vec.epilog.middle.block1107, label %vec.epilog.vector.body1101, !llvm.loop !68

vec.epilog.middle.block1107:                      ; preds = %vec.epilog.vector.body1101
  %cmp.n1108 = icmp eq i64 %i.we, %n.vec1100
  br i1 %cmp.n1108, label %ZS_wildcopy.exit318, label %.lr.ph750.preheader

.lr.ph750.preheader:                              ; preds = %iter.check1094, %vec.epilog.iter.check1095, %vec.epilog.middle.block1107
  %.0148.i292749.ph = phi ptr [ %.0154.i288, %iter.check1094 ], [ %i.wh, %vec.epilog.iter.check1095 ], [ %i.wm, %vec.epilog.middle.block1107 ]
  %.0149.i291748.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1094 ], [ %i.wi, %vec.epilog.iter.check1095 ], [ %i.wn, %vec.epilog.middle.block1107 ]
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750.preheader, %.lr.ph750
  %.0148.i292749 = phi ptr [ %i.wp, %.lr.ph750 ], [ %.0148.i292749.ph, %.lr.ph750.preheader ] ; 2 uses
  %.0149.i291748 = phi ptr [ %i.wr, %.lr.ph750 ], [ %.0149.i291748.ph, %.lr.ph750.preheader ] ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %.0148.i292749, i64 1
  %i.wq = load i8, ptr %.0148.i292749, align 1, !tbaa !19
  %i.wr = getelementptr inbounds nuw i8, ptr %.0149.i291748, i64 1 ; 2 uses
  store i8 %i.wq, ptr %.0149.i291748, align 1, !tbaa !19
  %i.ws = icmp ult ptr %i.wr, %i.vz
  br i1 %i.ws, label %.lr.ph750, label %ZS_wildcopy.exit318, !llvm.loop !69

bb.ce:                                            ; preds = %bb.cc
  %i.wt = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 16
  br i1 %i.wt, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.wu = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 8
  br i1 %i.wu, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !29
  %i.wx = load i8, ptr %.0154.i288, align 1, !tbaa !19
  store i8 %i.wx, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.wy = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 1
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !19
  %i.xa = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !19
  %i.xb = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 2
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !19
  %i.xd = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.xc, ptr %i.xd, align 1, !tbaa !19
  %i.xe = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 3
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !19
  %i.xg = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.xf, ptr %i.xg, align 1, !tbaa !19
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !29
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %.0154.i288, i64 %i.xj ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val344 = load i32, ptr %i.xk, align 1
  store i32 %.val344, ptr %i.xl, align 1
  %i.xm = sext i32 %i.ww to i64
  %i.xn = sub nsw i64 0, %i.xm
  %i.xo = getelementptr inbounds i8, ptr %i.xk, i64 %i.xn
  br label %ZS_overlapCopy8.exit332

bb.ch:                                            ; preds = %bb.cf
  %.val348 = load i64, ptr %.0154.i288, align 1
  store i64 %.val348, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit332

ZS_overlapCopy8.exit332:                          ; preds = %bb.cg, %bb.ch
  %.2617 = phi ptr [ %i.xo, %bb.cg ], [ %.0154.i288, %bb.ch ] ; 7 uses
  %.not12.i317 = icmp ugt i32 %.0152.i286, 8
  br i1 %.not12.i317, label %.preheader665.preheader, label %ZS_wildcopy.exit318

.preheader665.preheader:                          ; preds = %ZS_overlapCopy8.exit332
  %i.xp = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 6 uses
  %i.xq = add nuw i64 %.0147.i284.lcssa1075, %i.vy
  %i.xr = add i64 %.0147.i284.lcssa1075, 24
  %i.xs = call i64 @llvm.umax.i64(i64 %i.xq, i64 %i.xr)
  %i.xt = add i64 %i.xs, -9
  %i.xu = sub i64 %i.xt, %.0147.i284.lcssa1075    ; 3 uses
  %i.xv = lshr i64 %i.xu, 4
  %i.xw = add nuw nsw i64 %i.xv, 1                ; 2 uses
  %min.iters.check1142 = icmp ult i64 %i.xu, 112
  br i1 %min.iters.check1142, label %.preheader665.preheader1250, label %vector.memcheck1143

vector.memcheck1143:                              ; preds = %.preheader665.preheader
  %i.xx = and i64 %i.xu, -16
  %i.xy = add i64 %i.xx, 24                       ; 2 uses
  %i.xz = getelementptr i8, ptr %.0147.i284.lcssa, i64 %i.xy
  %i.ya = getelementptr i8, ptr %.2617, i64 8
  %i.yb = getelementptr i8, ptr %.2617, i64 %i.xy
  %bound01159 = icmp ult ptr %i.xp, %i.yb
  %bound11160 = icmp ult ptr %i.ya, %i.xz
  %found.conflict1161 = and i1 %bound01159, %bound11160
  br i1 %found.conflict1161, label %.preheader665.preheader1250, label %vector.ph1163

vector.ph1163:                                    ; preds = %vector.memcheck1143
  %n.vec1164 = and i64 %i.xw, 2305843009213693950 ; 3 uses
  %i.yc = shl i64 %n.vec1164, 4                   ; 2 uses
  %i.yd = getelementptr i8, ptr %i.xp, i64 %i.yc
  %i.ye = getelementptr i8, ptr %.2617, i64 %i.yc
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %vector.ph1163
  %index1166 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1173, %vector.body1165 ] ; 2 uses
  %i.yf = shl i64 %index1166, 4                   ; 3 uses
  %i.yg = or disjoint i64 %i.yf, 16               ; 2 uses
  %next.gep1167 = getelementptr i8, ptr %i.xp, i64 %i.yf
  %next.gep1168 = getelementptr i8, ptr %i.xp, i64 %i.yg
  %next.gep1169 = getelementptr i8, ptr %.2617, i64 %i.yf
  %next.gep1170 = getelementptr i8, ptr %.2617, i64 %i.yg
  %i.yh = getelementptr inbounds nuw i8, ptr %next.gep1169, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %next.gep1170, i64 8
  %wide.load1171 = load <2 x i64>, ptr %i.yh, align 1, !alias.scope !107
  %wide.load1172 = load <2 x i64>, ptr %i.yi, align 1, !alias.scope !107
  store <2 x i64> %wide.load1171, ptr %next.gep1167, align 1, !alias.scope !108, !noalias !107
  store <2 x i64> %wide.load1172, ptr %next.gep1168, align 1, !alias.scope !108, !noalias !107
  %index.next1173 = add nuw i64 %index1166, 2     ; 2 uses
  %i.yj = icmp eq i64 %index.next1173, %n.vec1164
  br i1 %i.yj, label %middle.block1174, label %vector.body1165, !llvm.loop !73

middle.block1174:                                 ; preds = %vector.body1165
  %cmp.n1175 = icmp eq i64 %i.xw, %n.vec1164
  br i1 %cmp.n1175, label %ZS_wildcopy.exit318, label %.preheader665.preheader1250

.preheader665.preheader1250:                      ; preds = %vector.memcheck1143, %.preheader665.preheader, %middle.block1174
  %.1619.ph = phi ptr [ %i.xp, %vector.memcheck1143 ], [ %i.xp, %.preheader665.preheader ], [ %i.yd, %middle.block1174 ]
  %.2617.pn.ph = phi ptr [ %.2617, %vector.memcheck1143 ], [ %.2617, %.preheader665.preheader ], [ %i.ye, %middle.block1174 ]
  br label %.preheader665

.preheader665:                                    ; preds = %.preheader665.preheader1250, %.preheader665
  %.1619 = phi ptr [ %i.yo, %.preheader665 ], [ %.1619.ph, %.preheader665.preheader1250 ] ; 3 uses
  %.2617.pn = phi ptr [ %i.ym, %.preheader665 ], [ %.2617.pn.ph, %.preheader665.preheader1250 ] ; 2 uses
  %.1616 = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 8
  %i.yk = load i64, ptr %.1616, align 1
  store i64 %i.yk, ptr %.1619, align 1
  %i.yl = getelementptr inbounds nuw i8, ptr %.1619, i64 8
  %i.ym = getelementptr inbounds nuw i8, ptr %.2617.pn, i64 16 ; 2 uses
  %i.yn = load i64, ptr %i.ym, align 1
  store i64 %i.yn, ptr %i.yl, align 1
  %i.yo = getelementptr inbounds nuw i8, ptr %.1619, i64 16 ; 2 uses
  %i.yp = icmp ult ptr %i.yo, %i.vz
  br i1 %i.yp, label %.preheader665, label %ZS_wildcopy.exit318, !llvm.loop !74

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %.0154.i288, i64 16, i1 false)
  %.not.i316 = icmp ugt i32 %.0152.i286, 16
  br i1 %.not.i316, label %.preheader667.preheader, label %ZS_wildcopy.exit318

.preheader667.preheader:                          ; preds = %bb.ci
  %i.yq = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader667

.preheader667:                                    ; preds = %.preheader667.preheader, %.preheader667
  %.0618 = phi ptr [ %i.yt, %.preheader667 ], [ %i.yq, %.preheader667.preheader ] ; 3 uses
  %.0154.i288.pn = phi ptr [ %i.ys, %.preheader667 ], [ %.0154.i288, %.preheader667.preheader ] ; 2 uses
  %.0615 = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0618, ptr noundef nonnull align 1 dereferenceable(16) %.0615, i64 16, i1 false)
  %i.yr = getelementptr inbounds nuw i8, ptr %.0618, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %.0154.i288.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.yr, ptr noundef nonnull align 1 dereferenceable(16) %i.ys, i64 16, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %.0618, i64 32 ; 2 uses
  %i.yu = icmp ult ptr %i.yt, %i.vz
  br i1 %i.yu, label %.preheader667, label %ZS_wildcopy.exit318, !llvm.loop !66

ZS_wildcopy.exit318:                              ; preds = %.preheader667, %.preheader665, %.lr.ph750, %middle.block1174, %middle.block1092, %vec.epilog.middle.block1107, %.preheader, %bb.ci, %ZS_overlapCopy8.exit332
  %i.yv = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i365 = load i16, ptr %i.yv, align 1
  %i.yw = load ptr, ptr %i.my, align 8, !tbaa !99
  %i.yx = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %i.za = trunc i64 %i.yz to i32                  ; 2 uses
  %i.zb = load ptr, ptr %i.mz, align 8, !tbaa !39 ; 2 uses
  %i.zc = mul i16 %.val.i365, -22595
  %i.zd = and i16 %i.zc, -16
  %i.ze = zext i16 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %i.ze ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 4 ; 2 uses
  %i.zh = load i16, ptr %i.zg, align 4, !tbaa !42
  %i.zi = add i16 %i.zh, 15
  %i.zj = and i16 %i.zi, 15                       ; 2 uses
  store i16 %i.zj, ptr %i.zg, align 4, !tbaa !42
  %i.zk = zext nneg i16 %i.zj to i64
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.zk ; 2 uses
  store i32 %i.za, ptr %i.zl, align 4, !tbaa !43
  %i.zm = call i32 @llvm.umin.i32(i32 %.0152.i286, i32 255)
  %i.zn = trunc nuw i32 %i.zm to i8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 6
  store i8 %i.zn, ptr %i.zo, align 2, !tbaa !44
  %i.zp = load i8, ptr %.0154.i288, align 1, !tbaa !19
  %i.zq = zext i8 %i.zp to i64
  %i.zr = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -1
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !19
  %i.zt = zext i8 %i.zs to i64
  %i.zu = shl nuw nsw i64 %i.zq, 8
  %i.zv = or disjoint i64 %i.zu, %i.zt
  %i.zw = add i32 %i.za, 1
  %i.zx = add i32 %.0152.i286, -1
  %i.zy = mul nuw nsw i64 %i.zv, 42941
  %i.zz = and i64 %i.zy, 65520
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %i.zz ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4 ; 2 uses
  %i.aac = load i16, ptr %i.aab, align 4, !tbaa !42
  %i.aad = add i16 %i.aac, 15
  %i.aae = and i16 %i.aad, 15                     ; 2 uses
  store i16 %i.aae, ptr %i.aab, align 4, !tbaa !42
  %i.aaf = zext nneg i16 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.aaf ; 2 uses
  store i32 %i.zw, ptr %i.aag, align 4, !tbaa !43
  %i.aah = call i32 @llvm.umin.i32(i32 %i.zx, i32 255)
  %i.aai = trunc nuw i32 %i.aah to i8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 6
  store i8 %i.aai, ptr %i.aaj, align 2, !tbaa !44
  br label %ZS_execExperimentalSequence2.exit302

ZS_execExperimentalSequence2.exit302:             ; preds = %.preheader672, %.preheader670, %.lr.ph747, %middle.block1241, %middle.block1196, %vec.epilog.middle.block1211, %.preheader669, %ZS_wildcopy.exit318, %ZS_overlapCopy8.exit333, %bb.bo
  %.1153.i289 = phi i64 [ %i.vy, %ZS_wildcopy.exit318 ], [ 0, %.preheader669 ], [ %.sroa.2.0.insert.ext.i, %ZS_overlapCopy8.exit333 ], [ %.sroa.2.0.insert.ext.i, %middle.block1241 ], [ %.sroa.2.0.insert.ext.i, %bb.bo ], [ %.sroa.2.0.insert.ext.i, %middle.block1196 ], [ %.sroa.2.0.insert.ext.i, %.lr.ph747 ], [ %.sroa.2.0.insert.ext.i, %vec.epilog.middle.block1211 ], [ %.sroa.2.0.insert.ext.i, %.preheader670 ], [ %.sroa.2.0.insert.ext.i, %.preheader672 ]
  %i.aak = add nuw nsw i64 %.1153.i289, %.sroa.047.0.insert.ext ; 2 uses
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %ZS_execExperimentalSequence.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %ZS_execExperimentalSequence2.exit302
  %i.aam = getelementptr inbounds nuw i8, ptr %.2752, i64 %i.aak ; 2 uses
  %i.aan = add nuw nsw i64 %.1240751, 1           ; 2 uses
  %exitcond798.not = icmp eq i64 %i.aan, %i.ca
  br i1 %exitcond798.not, label %.loopexit676, label %bb.bd, !llvm.loop !75

bb.ck:                                            ; preds = %.lr.ph734, %bb.dr
  %.4733 = phi ptr [ %.0237.lcssa, %.lr.ph734 ], [ %i.aoa, %bb.dr ] ; 9 uses
  %.2241732 = phi i64 [ %.0239.lcssa, %.lr.ph734 ], [ %i.aob, %bb.dr ] ; 5 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.2241732
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !29 ; 5 uses
  %.sroa.043.0.insert.ext = zext i32 %i.aap to i64 ; 11 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.2241732
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !29 ; 7 uses
  %.sroa.043.4.insert.ext = zext i32 %i.aar to i64 ; 3 uses
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.2241732
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !29 ; 13 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.2241732
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !19
  %i.aaw = ptrtoint ptr %.4733 to i64
  %i.aax = sub i64 %i.bj, %i.aaw
  %i.aay = icmp ult i64 %i.aax, %.sroa.043.0.insert.ext
  br i1 %i.aay, label %ZS_execExperimentalSequence.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aaz = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.aba = load i64, ptr %i.ct, align 8, !tbaa !95 ; 2 uses
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = icmp ult i64 %i.abb, %.sroa.043.0.insert.ext
  br i1 %i.abc, label %ZS_execExperimentalSequence.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abd = getelementptr inbounds nuw i8, ptr %.4733, i64 %.sroa.043.0.insert.ext ; 2 uses
  %i.abe = icmp ugt ptr %i.abd, %i.mr
  %.pre801 = load ptr, ptr %i.co, align 8, !tbaa !26 ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.pre801, i64 %.sroa.043.0.insert.ext
  %i.abg = load ptr, ptr %i.cr, align 8
  %i.abh = getelementptr inbounds i8, ptr %i.abg, i64 -32
  %i.abi = icmp ugt ptr %i.abf, %i.abh
  %or.cond879 = select i1 %i.abe, i1 true, i1 %i.abi, !prof !109
  br i1 %or.cond879, label %.critedge174.i, label %bb.cn, !prof !109

.critedge174.i:                                   ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4733, ptr align 1 %.pre801, i64 %.sroa.043.0.insert.ext, i1 false)
  br label %ZS_wildcopy.exit330

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.4733, ptr noundef nonnull align 1 dereferenceable(16) %.pre801, i64 16, i1 false)
  %.not.i328 = icmp ugt i32 %i.aap, 16
  br i1 %.not.i328, label %.preheader688.preheader, label %ZS_wildcopy.exit330

.preheader688.preheader:                          ; preds = %bb.cn
  %i.abj = getelementptr inbounds nuw i8, ptr %.4733, i64 16
  br label %.preheader688

.preheader688:                                    ; preds = %.preheader688.preheader, %.preheader688
  %.0604 = phi ptr [ %i.abm, %.preheader688 ], [ %i.abj, %.preheader688.preheader ] ; 3 uses
  %.pn = phi ptr [ %i.abl, %.preheader688 ], [ %.pre801, %.preheader688.preheader ] ; 2 uses
  %.0603 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0604, ptr noundef nonnull align 1 dereferenceable(16) %.0603, i64 16, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %.0604, i64 16
  %i.abl = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abk, ptr noundef nonnull align 1 dereferenceable(16) %i.abl, i64 16, i1 false)
  %i.abm = getelementptr inbounds nuw i8, ptr %.0604, i64 32 ; 2 uses
  %i.abn = icmp ult ptr %i.abm, %i.abd
  br i1 %i.abn, label %.preheader688, label %ZS_wildcopy.exit330.thread, !llvm.loop !66

ZS_wildcopy.exit330.thread:                       ; preds = %.preheader688
  %i.abo = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.sroa.043.0.insert.ext
  store ptr %i.abp, ptr %i.co, align 8, !tbaa !26
  br label %.lr.ph723

ZS_wildcopy.exit330:                              ; preds = %bb.cn, %.critedge174.i
  %i.abq = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 %.sroa.043.0.insert.ext
  store ptr %i.abr, ptr %i.co, align 8, !tbaa !26
  %.not766 = icmp eq i32 %i.aap, 0
  br i1 %.not766, label %._crit_edge724, label %.lr.ph723

.lr.ph723:                                        ; preds = %ZS_wildcopy.exit330.thread, %ZS_wildcopy.exit330
  %i.abs = load ptr, ptr %i.ms, align 8, !tbaa !99
  %i.abt = ptrtoint ptr %i.abs to i64             ; 3 uses
  %i.abu = load ptr, ptr %i.mt, align 8, !tbaa !39 ; 3 uses
  %xtraiter1272 = and i64 %.sroa.043.0.insert.ext, 1
  %i.abv = icmp eq i32 %i.aap, 1
  br i1 %i.abv, label %.epil.preheader, label %.lr.ph723.new

.lr.ph723.new:                                    ; preds = %.lr.ph723
  %unroll_iter = and i64 %.sroa.043.0.insert.ext, 4294967294
  br label %bb.co

._crit_edge724.loopexit.unr-lcssa:                ; preds = %bb.co
  %lcmp.mod1273.not = icmp eq i64 %xtraiter1272, 0
  br i1 %lcmp.mod1273.not, label %._crit_edge724, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge724.loopexit.unr-lcssa, %.lr.ph723
  %.0147.i722.epil.init = phi ptr [ %.4733, %.lr.ph723 ], [ %i.ads, %._crit_edge724.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1275 = trunc i32 %i.aap to i1
  call void @llvm.assume(i1 %lcmp.mod1275)
  %i.abw = getelementptr inbounds i8, ptr %.0147.i722.epil.init, i64 -2
  %.val.i367.epil = load i16, ptr %i.abw, align 1
  %i.abx = ptrtoint ptr %.0147.i722.epil.init to i64
  %i.aby = sub i64 %i.abx, %i.abt
  %i.abz = trunc i64 %i.aby to i32
  %i.aca = mul i16 %.val.i367.epil, -22595
  %i.acb = and i16 %i.aca, -16
  %i.acc = zext i16 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.acc ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 4 ; 2 uses
  %i.acf = load i16, ptr %i.ace, align 4, !tbaa !42
  %i.acg = add i16 %i.acf, 15
  %i.ach = and i16 %i.acg, 15                     ; 2 uses
  store i16 %i.ach, ptr %i.ace, align 4, !tbaa !42
  %i.aci = zext nneg i16 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.aci ; 2 uses
  store i32 %i.abz, ptr %i.acj, align 4, !tbaa !43
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 6
  store i8 0, ptr %i.ack, align 2, !tbaa !44
  %i.acl = getelementptr inbounds nuw i8, ptr %.0147.i722.epil.init, i64 1
  br label %._crit_edge724

._crit_edge724:                                   ; preds = %.epil.preheader, %._crit_edge724.loopexit.unr-lcssa, %ZS_wildcopy.exit330
  %.0147.i.lcssa = phi ptr [ %.4733, %ZS_wildcopy.exit330 ], [ %i.ads, %._crit_edge724.loopexit.unr-lcssa ], [ %i.acl, %.epil.preheader ] ; 40 uses
  %.0147.i.lcssa915 = ptrtoaddr ptr %.0147.i.lcssa to i64 ; 12 uses
  %i.acm = add i64 %i.aba, %.sroa.043.0.insert.ext
  store i64 %i.acm, ptr %i.ct, align 8, !tbaa !95
  switch i8 %i.aav, label %bb.cz [
    i8 1, label %bb.cp
    i8 0, label %bb.cx
  ]

bb.co:                                            ; preds = %bb.co, %.lr.ph723.new
  %.0147.i722 = phi ptr [ %.4733, %.lr.ph723.new ], [ %i.ads, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph723.new ], [ %niter.next.1, %bb.co ]
  %i.acn = getelementptr inbounds i8, ptr %.0147.i722, i64 -2
  %.val.i367 = load i16, ptr %i.acn, align 1
  %i.aco = ptrtoint ptr %.0147.i722 to i64
  %i.acp = sub i64 %i.aco, %i.abt
  %i.acq = trunc i64 %i.acp to i32
  %i.acr = mul i16 %.val.i367, -22595
  %i.acs = and i16 %i.acr, -16
  %i.act = zext i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.act ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 4 ; 2 uses
  %i.acw = load i16, ptr %i.acv, align 4, !tbaa !42
  %i.acx = add i16 %i.acw, 15
  %i.acy = and i16 %i.acx, 15                     ; 2 uses
  store i16 %i.acy, ptr %i.acv, align 4, !tbaa !42
  %i.acz = zext nneg i16 %i.acy to i64
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acz ; 2 uses
  store i32 %i.acq, ptr %i.ada, align 4, !tbaa !43
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 6
  store i8 0, ptr %i.adb, align 2, !tbaa !44
  %i.adc = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 1
  %i.add = getelementptr inbounds i8, ptr %.0147.i722, i64 -1
  %.val.i367.1 = load i16, ptr %i.add, align 1
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = sub i64 %i.ade, %i.abt
  %i.adg = trunc i64 %i.adf to i32
  %i.adh = mul i16 %.val.i367.1, -22595
  %i.adi = and i16 %i.adh, -16
  %i.adj = zext i16 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.adj ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 4 ; 2 uses
  %i.adm = load i16, ptr %i.adl, align 4, !tbaa !42
  %i.adn = add i16 %i.adm, 15
  %i.ado = and i16 %i.adn, 15                     ; 2 uses
  store i16 %i.ado, ptr %i.adl, align 4, !tbaa !42
  %i.adp = zext nneg i16 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %i.adp ; 2 uses
  store i32 %i.adg, ptr %i.adq, align 4, !tbaa !43
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 6
  store i8 0, ptr %i.adr, align 2, !tbaa !44
  %i.ads = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge724.loopexit.unr-lcssa, label %bb.co, !llvm.loop !57

bb.cp:                                            ; preds = %._crit_edge724
  %i.adt = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i369 = load i16, ptr %i.adt, align 1
  %i.adu = load ptr, ptr %i.mt, align 8, !tbaa !39
  %i.adv = mul i16 %.val.i369, -22595
  %i.adw = and i16 %i.adv, -16
  %i.adx = zext i16 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.adx ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4 ; 3 uses
  %i.aea = load i16, ptr %i.adz, align 4, !tbaa !42
  %i.aeb = zext i16 %i.aea to i32
  %i.aec = add i32 %i.aar, %i.aeb
  %i.aed = and i32 %i.aec, 15
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.aee ; 2 uses
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !43 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 6
  %i.aei = load i8, ptr %i.aeh, align 2, !tbaa !44
  %i.aej = zext i8 %i.aei to i32                  ; 2 uses
  %i.aek = add i32 %i.aat, 3                      ; 2 uses
  %.not.not.i = icmp ugt i32 %i.aek, %i.aej
  %.not.i307 = icmp eq i32 %i.aat, 0
  %i.ael = add i32 %i.aat, 2
  %spec.select.i308 = select i1 %.not.i307, i32 %i.aej, i32 %i.ael
  %.0.i = select i1 %.not.not.i, i32 %i.aek, i32 %spec.select.i308 ; 5 uses
  %.sroa.2.0.insert.ext.i303 = zext i32 %.0.i to i64 ; 11 uses
  %.sroa.0.0.insert.ext.i305 = zext i32 %i.aeg to i64
  %i.aem = load ptr, ptr %i.ms, align 8, !tbaa !99 ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aem, i64 %.sroa.0.0.insert.ext.i305 ; 15 uses
  %i.aeo = load i32, ptr %i.mw, align 4, !tbaa !100
  %i.aep = icmp ugt i32 %i.aeo, %i.aeg
  br i1 %i.aep, label %ZS_execExperimentalSequence.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aeq = ptrtoint ptr %.0147.i.lcssa to i64     ; 2 uses
  %i.aer = ptrtoint ptr %i.aen to i64
  %i.aes = sub i64 %i.aeq, %i.aer                 ; 6 uses
  %i.aet = trunc i64 %i.aes to i32
  %i.aeu = load <2 x i32>, ptr %5, align 8
  store i32 %i.aet, ptr %5, align 8
  store <2 x i32> %i.aeu, ptr %i.mu, align 4
  %i.aev = ptrtoint ptr %i.aem to i64
  %i.aew = sub i64 %i.aeq, %i.aev
  %i.aex = trunc i64 %i.aew to i32
  %i.aey = load i16, ptr %i.adz, align 4, !tbaa !42
  %i.aez = add i16 %i.aey, 15
  %i.afa = and i16 %i.aez, 15                     ; 2 uses
  store i16 %i.afa, ptr %i.adz, align 4, !tbaa !42
  %i.afb = zext nneg i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.afb ; 2 uses
  store i32 %i.aex, ptr %i.afc, align 4, !tbaa !43
  %i.afd = call i32 @llvm.umin.i32(i32 %.0.i, i32 255)
  %i.afe = trunc nuw i32 %i.afd to i8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 6
  store i8 %i.afe, ptr %i.aff, align 2, !tbaa !44
  %i.afg = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %.sroa.2.0.insert.ext.i303 ; 5 uses
  %i.afh = icmp ugt ptr %i.afg, %i.mr
  br i1 %i.afh, label %bb.cr, label %bb.cs, !prof !22

bb.cr:                                            ; preds = %bb.cq
  %i.afi = icmp ugt ptr %i.afg, %i.c
  br i1 %i.afi, label %ZS_execExperimentalSequence.exit.thread, label %.preheader683

.preheader683:                                    ; preds = %bb.cr
  %.not767 = icmp eq i32 %.0.i, 0
  br i1 %.not767, label %ZS_execExperimentalSequence2.exit, label %iter.check1026

iter.check1026:                                   ; preds = %.preheader683
  %i.afj = add i64 %.0147.i.lcssa915, %.sroa.2.0.insert.ext.i303
  %i.afk = add i64 %.0147.i.lcssa915, 1
  %umax1008 = call i64 @llvm.umax.i64(i64 %i.afj, i64 %i.afk)
  %i.afl = sub i64 %umax1008, %.0147.i.lcssa915   ; 7 uses
  %min.iters.check1010 = icmp ult i64 %i.afl, 8
  %i.afm = add i64 %i.aes, -1
  %diff.check1012 = icmp ult i64 %i.afm, 31
  %or.cond1248 = select i1 %min.iters.check1010, i1 true, i1 %diff.check1012
  br i1 %or.cond1248, label %.lr.ph728.preheader, label %vector.main.loop.iter.check1013

vector.main.loop.iter.check1013:                  ; preds = %iter.check1026
  %min.iters.check1014 = icmp ult i64 %i.afl, 32
  br i1 %min.iters.check1014, label %vec.epilog.ph1030, label %vector.ph1015

vector.ph1015:                                    ; preds = %vector.main.loop.iter.check1013
  %i.afn = and i64 %i.afl, 24
  %n.vec1016 = and i64 %i.afl, -32                ; 5 uses
  %i.afo = getelementptr i8, ptr %i.aen, i64 %n.vec1016
  %i.afp = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec1016
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.ph1015, %vector.body1017
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1023, %vector.body1017 ] ; 3 uses
  %next.gep1019 = getelementptr i8, ptr %i.aen, i64 %index1018 ; 2 uses
  %next.gep1020 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index1018 ; 2 uses
  %i.afq = getelementptr i8, ptr %next.gep1019, i64 16
  %wide.load1021 = load <16 x i8>, ptr %next.gep1019, align 1, !tbaa !19
  %wide.load1022 = load <16 x i8>, ptr %i.afq, align 1, !tbaa !19
  %i.afr = getelementptr i8, ptr %next.gep1020, i64 16
  store <16 x i8> %wide.load1021, ptr %next.gep1020, align 1, !tbaa !19
  store <16 x i8> %wide.load1022, ptr %i.afr, align 1, !tbaa !19
  %index.next1023 = add nuw i64 %index1018, 32    ; 2 uses
  %i.afs = icmp eq i64 %index.next1023, %n.vec1016
  br i1 %i.afs, label %middle.block1024, label %vector.body1017, !llvm.loop !76

middle.block1024:                                 ; preds = %vector.body1017
  %cmp.n1025 = icmp eq i64 %i.afl, %n.vec1016
  br i1 %cmp.n1025, label %ZS_execExperimentalSequence2.exit, label %vec.epilog.iter.check1027

vec.epilog.iter.check1027:                        ; preds = %middle.block1024
  %min.epilog.iters.check1029 = icmp eq i64 %i.afn, 0
  br i1 %min.epilog.iters.check1029, label %.lr.ph728.preheader, label %vec.epilog.ph1030, !prof !104

vec.epilog.ph1030:                                ; preds = %vector.main.loop.iter.check1013, %vec.epilog.iter.check1027
  %vec.epilog.resume.val1031 = phi i64 [ %n.vec1016, %vec.epilog.iter.check1027 ], [ 0, %vector.main.loop.iter.check1013 ]
  %n.vec1032 = and i64 %i.afl, -8                 ; 4 uses
  %i.aft = getelementptr i8, ptr %i.aen, i64 %n.vec1032
  %i.afu = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec1032
  br label %vec.epilog.vector.body1033

vec.epilog.vector.body1033:                       ; preds = %vec.epilog.vector.body1033, %vec.epilog.ph1030
  %index1034 = phi i64 [ %vec.epilog.resume.val1031, %vec.epilog.ph1030 ], [ %index.next1038, %vec.epilog.vector.body1033 ] ; 3 uses
  %next.gep1035 = getelementptr i8, ptr %i.aen, i64 %index1034
  %next.gep1036 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index1034
  %wide.load1037 = load <8 x i8>, ptr %next.gep1035, align 1, !tbaa !19
  store <8 x i8> %wide.load1037, ptr %next.gep1036, align 1, !tbaa !19
  %index.next1038 = add nuw i64 %index1034, 8     ; 2 uses
  %i.afv = icmp eq i64 %index.next1038, %n.vec1032
  br i1 %i.afv, label %vec.epilog.middle.block1039, label %vec.epilog.vector.body1033, !llvm.loop !77

vec.epilog.middle.block1039:                      ; preds = %vec.epilog.vector.body1033
  %cmp.n1040 = icmp eq i64 %i.afl, %n.vec1032
  br i1 %cmp.n1040, label %ZS_execExperimentalSequence2.exit, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %iter.check1026, %vec.epilog.iter.check1027, %vec.epilog.middle.block1039
  %.0150.i727.ph = phi ptr [ %i.aen, %iter.check1026 ], [ %i.afo, %vec.epilog.iter.check1027 ], [ %i.aft, %vec.epilog.middle.block1039 ]
  %.0151.i726.ph = phi ptr [ %.0147.i.lcssa, %iter.check1026 ], [ %i.afp, %vec.epilog.iter.check1027 ], [ %i.afu, %vec.epilog.middle.block1039 ]
  br label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %.lr.ph728
  %.0150.i727 = phi ptr [ %i.afw, %.lr.ph728 ], [ %.0150.i727.ph, %.lr.ph728.preheader ] ; 2 uses
  %.0151.i726 = phi ptr [ %i.afy, %.lr.ph728 ], [ %.0151.i726.ph, %.lr.ph728.preheader ] ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.0150.i727, i64 1
  %i.afx = load i8, ptr %.0150.i727, align 1, !tbaa !19
  %i.afy = getelementptr inbounds nuw i8, ptr %.0151.i726, i64 1 ; 2 uses
  store i8 %i.afx, ptr %.0151.i726, align 1, !tbaa !19
  %i.afz = icmp ult ptr %i.afy, %i.afg
  br i1 %i.afz, label %.lr.ph728, label %ZS_execExperimentalSequence2.exit, !llvm.loop !78

bb.cs:                                            ; preds = %bb.cq
  %i.aga = icmp slt i64 %i.aes, 16
  br i1 %i.aga, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.agb = icmp ult i64 %i.aes, 8
  br i1 %i.agb, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.aes
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !29
  %i.age = load i8, ptr %i.aen, align 1, !tbaa !19
  store i8 %i.age, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aen, i64 1
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !19
  %i.agh = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !19
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aen, i64 2
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !19
  %i.agk = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !19
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aen, i64 3
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !19
  %i.agn = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !19
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.aes
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !29
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds i8, ptr %i.aen, i64 %i.agq ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val345 = load i32, ptr %i.agr, align 1
  store i32 %.val345, ptr %i.ags, align 1
  %i.agt = sext i32 %i.agd to i64
  %i.agu = sub nsw i64 0, %i.agt
  %i.agv = getelementptr inbounds i8, ptr %i.agr, i64 %i.agu
  br label %ZS_overlapCopy8.exit331

bb.cv:                                            ; preds = %bb.ct
  %.val349 = load i64, ptr %i.aen, align 1
  store i64 %.val349, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit331

ZS_overlapCopy8.exit331:                          ; preds = %bb.cu, %bb.cv
  %.2612 = phi ptr [ %i.agv, %bb.cu ], [ %i.aen, %bb.cv ] ; 7 uses
  %.not12.i321 = icmp ugt i32 %.0.i, 8
  br i1 %.not12.i321, label %.preheader684.preheader, label %ZS_execExperimentalSequence2.exit

.preheader684.preheader:                          ; preds = %ZS_overlapCopy8.exit331
  %i.agw = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 6 uses
  %i.agx = add i64 %.0147.i.lcssa915, %.sroa.2.0.insert.ext.i303
  %i.agy = add i64 %.0147.i.lcssa915, 24
  %i.agz = call i64 @llvm.umax.i64(i64 %i.agx, i64 %i.agy)
  %i.aha = add i64 %i.agz, -9
  %i.ahb = sub i64 %i.aha, %.0147.i.lcssa915      ; 3 uses
  %i.ahc = lshr i64 %i.ahb, 4
  %i.ahd = add nuw nsw i64 %i.ahc, 1              ; 2 uses
  %min.iters.check1053 = icmp ult i64 %i.ahb, 112
  br i1 %min.iters.check1053, label %.preheader684.preheader1262, label %vector.memcheck1054

vector.memcheck1054:                              ; preds = %.preheader684.preheader
  %i.ahe = and i64 %i.ahb, -16
  %i.ahf = add i64 %i.ahe, 24                     ; 2 uses
  %i.ahg = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.ahf
  %i.ahh = getelementptr i8, ptr %.2612, i64 8
  %i.ahi = getelementptr i8, ptr %.2612, i64 %i.ahf
  %bound01055 = icmp ult ptr %i.agw, %i.ahi
  %bound11056 = icmp ult ptr %i.ahh, %i.ahg
  %found.conflict1057 = and i1 %bound01055, %bound11056
  br i1 %found.conflict1057, label %.preheader684.preheader1262, label %vector.ph1058

vector.ph1058:                                    ; preds = %vector.memcheck1054
  %n.vec1059 = and i64 %i.ahd, 2305843009213693950 ; 3 uses
  %i.ahj = shl i64 %n.vec1059, 4                  ; 2 uses
  %i.ahk = getelementptr i8, ptr %i.agw, i64 %i.ahj
  %i.ahl = getelementptr i8, ptr %.2612, i64 %i.ahj
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %vector.ph1058
  %index1061 = phi i64 [ 0, %vector.ph1058 ], [ %index.next1068, %vector.body1060 ] ; 2 uses
  %i.ahm = shl i64 %index1061, 4                  ; 3 uses
  %i.ahn = or disjoint i64 %i.ahm, 16             ; 2 uses
  %next.gep1062 = getelementptr i8, ptr %i.agw, i64 %i.ahm
  %next.gep1063 = getelementptr i8, ptr %i.agw, i64 %i.ahn
  %next.gep1064 = getelementptr i8, ptr %.2612, i64 %i.ahm
  %next.gep1065 = getelementptr i8, ptr %.2612, i64 %i.ahn
  %i.aho = getelementptr inbounds nuw i8, ptr %next.gep1064, i64 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %next.gep1065, i64 8
  %wide.load1066 = load <2 x i64>, ptr %i.aho, align 1, !alias.scope !110
  %wide.load1067 = load <2 x i64>, ptr %i.ahp, align 1, !alias.scope !110
  store <2 x i64> %wide.load1066, ptr %next.gep1062, align 1, !alias.scope !111, !noalias !110
  store <2 x i64> %wide.load1067, ptr %next.gep1063, align 1, !alias.scope !111, !noalias !110
  %index.next1068 = add nuw i64 %index1061, 2     ; 2 uses
  %i.ahq = icmp eq i64 %index.next1068, %n.vec1059
  br i1 %i.ahq, label %middle.block1069, label %vector.body1060, !llvm.loop !82

middle.block1069:                                 ; preds = %vector.body1060
  %cmp.n1070 = icmp eq i64 %i.ahd, %n.vec1059
  br i1 %cmp.n1070, label %ZS_execExperimentalSequence2.exit, label %.preheader684.preheader1262

.preheader684.preheader1262:                      ; preds = %vector.memcheck1054, %.preheader684.preheader, %middle.block1069
  %.1614.ph = phi ptr [ %i.agw, %vector.memcheck1054 ], [ %i.agw, %.preheader684.preheader ], [ %i.ahk, %middle.block1069 ]
  %.2612.pn.ph = phi ptr [ %.2612, %vector.memcheck1054 ], [ %.2612, %.preheader684.preheader ], [ %i.ahl, %middle.block1069 ]
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader1262, %.preheader684
  %.1614 = phi ptr [ %i.ahv, %.preheader684 ], [ %.1614.ph, %.preheader684.preheader1262 ] ; 3 uses
  %.2612.pn = phi ptr [ %i.aht, %.preheader684 ], [ %.2612.pn.ph, %.preheader684.preheader1262 ] ; 2 uses
  %.1611 = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 8
  %i.ahr = load i64, ptr %.1611, align 1
  store i64 %i.ahr, ptr %.1614, align 1
  %i.ahs = getelementptr inbounds nuw i8, ptr %.1614, i64 8
  %i.aht = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 16 ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 1
  store i64 %i.ahu, ptr %i.ahs, align 1
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1614, i64 16 ; 2 uses
  %i.ahw = icmp ult ptr %i.ahv, %i.afg
  br i1 %i.ahw, label %.preheader684, label %ZS_execExperimentalSequence2.exit, !llvm.loop !83

bb.cw:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.aen, i64 16, i1 false)
  %.not.i320 = icmp ugt i32 %.0.i, 16
  br i1 %.not.i320, label %.preheader686.preheader, label %ZS_execExperimentalSequence2.exit

.preheader686.preheader:                          ; preds = %bb.cw
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 16
  br label %.preheader686

.preheader686:                                    ; preds = %.preheader686.preheader, %.preheader686
  %.0613 = phi ptr [ %i.aia, %.preheader686 ], [ %i.ahx, %.preheader686.preheader ] ; 3 uses
  %.pn663 = phi ptr [ %i.ahz, %.preheader686 ], [ %i.aen, %.preheader686.preheader ] ; 2 uses
  %.0610 = getelementptr inbounds nuw i8, ptr %.pn663, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0613, ptr noundef nonnull align 1 dereferenceable(16) %.0610, i64 16, i1 false)
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0613, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %.pn663, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ahy, ptr noundef nonnull align 1 dereferenceable(16) %i.ahz, i64 16, i1 false)
  %i.aia = getelementptr inbounds nuw i8, ptr %.0613, i64 32 ; 2 uses
  %i.aib = icmp ult ptr %i.aia, %i.afg
  br i1 %i.aib, label %.preheader686, label %ZS_execExperimentalSequence2.exit, !llvm.loop !66

bb.cx:                                            ; preds = %._crit_edge724
  %i.aic = ptrtoint ptr %.0147.i.lcssa to i64
  %i.aid = sub i64 %i.aic, %i.bk
  %i.aie = icmp ult i64 %i.aid, %.sroa.043.4.insert.ext
  br i1 %i.aie, label %ZS_execExperimentalSequence.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aif = add i32 %i.aat, 7
  %i.aig = load <2 x i32>, ptr %5, align 8
  store i32 %i.aar, ptr %5, align 8
  store <2 x i32> %i.aig, ptr %i.mu, align 4
  br label %bb.dk

bb.cz:                                            ; preds = %._crit_edge724
  %i.aih = and i64 %.sroa.043.4.insert.ext, 3
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4          ; 3 uses
  %i.aik = icmp eq i32 %i.aar, 0
  br i1 %i.aik, label %.split.i281, label %.split165.i

.split.i281:                                      ; preds = %bb.cz
  %.sroa.0403.0.copyload404 = load i32, ptr %5, align 8 ; 2 uses
  %i.ail = load <2 x i32>, ptr %i.mu, align 4     ; 2 uses
  %i.aim = load i32, ptr %i.mv, align 4           ; 2 uses
  %i.ain = icmp eq i32 %i.aat, %i.aim
  %.sroa.19419.12.copyload = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.ain, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split.i281
  %.sroa.23424.12.copyload = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.db:                                            ; preds = %.split.i281
  %i.aio = icmp eq i32 %i.aat, %.sroa.19419.12.copyload
  %i.aip = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select762 = select i1 %i.aio, i32 %i.aip, i32 %.sroa.19419.12.copyload
  br label %ZS_rep_update.exit371

.split165.i:                                      ; preds = %bb.cz
  %i.aiq = lshr i32 %i.aar, 2
  %i.air = add nsw i32 %i.aiq, -4
  %i.ais = add i32 %i.air, %i.aij                 ; 5 uses
  %i.ait = and i32 %i.aar, 3                      ; 2 uses
  %i.aiu = icmp eq i32 %i.ait, 3
  %i.aiv = and i32 %i.aar, 2
  %or.cond.not.i372 = icmp eq i32 %i.aiv, 0
  br i1 %or.cond.not.i372, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.split165.i
  %i.aiw = load <2 x i32>, ptr %5, align 8
  br label %bb.df

bb.dd:                                            ; preds = %.split165.i
  %i.aix = icmp eq i32 %i.ait, 1
  br i1 %i.aix, label %.thread.i373, label %bb.de

.thread.i373:                                     ; preds = %bb.dd
  %i.aiy = load i32, ptr %.sroa.5431.0..sroa_idx, align 8
  %i.aiz = load <2 x i32>, ptr %5, align 8
  %i.aja = insertelement <2 x i32> %i.aiz, i32 %i.aiy, i64 1
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %.sroa.0403.0.copyload405 = load i32, ptr %5, align 8
  %i.ajb = load <2 x i32>, ptr %i.mu, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %.sroa.0403.1 = phi i32 [ %.sroa.0403.0.copyload405, %bb.de ], [ %i.ais, %bb.dc ] ; 2 uses
  %i.ajc = phi <2 x i32> [ %i.ajb, %bb.de ], [ %i.aiw, %bb.dc ] ; 2 uses
  br i1 %i.aiu, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %.sroa.12416.12.copyload418 = load i32, ptr %i.mv, align 4
  %.sroa.19419.12.copyload423 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8
  %.sroa.23424.12.copyload428 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dh:                                            ; preds = %bb.df, %.thread.i373
  %.sroa.0403.2 = phi i32 [ %i.ais, %.thread.i373 ], [ %.sroa.0403.1, %bb.df ] ; 2 uses
  %i.ajd = phi <2 x i32> [ %i.aja, %.thread.i373 ], [ %i.ajc, %bb.df ] ; 2 uses
  %i.aje = load i32, ptr %i.mv, align 4           ; 2 uses
  %i.ajf = icmp eq i32 %i.aat, %i.aje
  %.sroa.19419.12.copyload421 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.ajf, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.sroa.23424.12.copyload426 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dj:                                            ; preds = %bb.dh
  %i.ajg = icmp eq i32 %i.aat, %.sroa.19419.12.copyload421
  %i.ajh = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select763 = select i1 %i.ajg, i32 %i.ajh, i32 %.sroa.19419.12.copyload421
  br label %ZS_rep_update.exit371

ZS_rep_update.exit371:                            ; preds = %bb.dj, %bb.db, %bb.di, %bb.dg, %bb.da
  %.sroa.23424.0 = phi i32 [ %.sroa.23424.12.copyload428, %bb.dg ], [ %.sroa.23424.12.copyload, %bb.da ], [ %spec.select763, %bb.dj ], [ %.sroa.23424.12.copyload426, %bb.di ], [ %spec.select762, %bb.db ]
  %.sroa.19419.0 = phi i32 [ %.sroa.19419.12.copyload423, %bb.dg ], [ %.sroa.19419.12.copyload, %bb.da ], [ %i.aje, %bb.dj ], [ %.sroa.19419.12.copyload421, %bb.di ], [ %i.aim, %bb.db ]
  %.sroa.12416.0 = phi i32 [ %.sroa.12416.12.copyload418, %bb.dg ], [ %i.aat, %bb.da ], [ %i.aat, %bb.dj ], [ %i.aat, %bb.di ], [ %i.aat, %bb.db ]
  %.sroa.0403.0 = phi i32 [ %.sroa.0403.1, %bb.dg ], [ %.sroa.0403.0.copyload404, %bb.da ], [ %.sroa.0403.2, %bb.dj ], [ %.sroa.0403.2, %bb.di ], [ %.sroa.0403.0.copyload404, %bb.db ]
  %i.aji = phi i32 [ %i.ais, %bb.dg ], [ %i.aij, %bb.da ], [ %i.ais, %bb.dj ], [ %i.ais, %bb.di ], [ %i.aij, %bb.db ]
  %i.ajj = phi <2 x i32> [ %i.ajc, %bb.dg ], [ %i.ail, %bb.da ], [ %i.ajd, %bb.dj ], [ %i.ajd, %bb.di ], [ %i.ail, %bb.db ]
  store i32 %.sroa.0403.0, ptr %5, align 8
  store <2 x i32> %i.ajj, ptr %i.mu, align 4
  store i32 %.sroa.12416.0, ptr %i.mv, align 4
  store i32 %.sroa.19419.0, ptr %.sroa.19419.12..sroa_idx422, align 8
  store i32 %.sroa.23424.0, ptr %.sroa.23424.12..sroa_idx427, align 4
  %i.ajk = zext i32 %i.aji to i64
  %i.ajl = add i32 %i.aat, 3
  br label %bb.dk

bb.dk:                                            ; preds = %ZS_rep_update.exit371, %bb.cy
  %.sroa.2.0.extract.shift.pn.i = phi i64 [ %.sroa.043.4.insert.ext, %bb.cy ], [ %i.ajk, %ZS_rep_update.exit371 ] ; 6 uses
  %.0152.i = phi i32 [ %i.aif, %bb.cy ], [ %i.ajl, %ZS_rep_update.exit371 ] ; 6 uses
  %.pn.i = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i
  %.0154.i = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 %.pn.i ; 15 uses
  %i.ajm = zext i32 %.0152.i to i64               ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %i.ajm ; 5 uses
  %i.ajo = icmp ugt ptr %i.ajn, %i.mr
  br i1 %i.ajo, label %bb.dl, label %bb.dm, !prof !22

bb.dl:                                            ; preds = %bb.dk
  %i.ajp = icmp ugt ptr %i.ajn, %i.c
  br i1 %i.ajp, label %ZS_execExperimentalSequence.exit.thread, label %.preheader678

.preheader678:                                    ; preds = %bb.dl
  %.not768 = icmp eq i32 %.0152.i, 0
  br i1 %.not768, label %ZS_wildcopy.exit326, label %iter.check931

iter.check931:                                    ; preds = %.preheader678
  %i.ajq = add nuw i64 %.0147.i.lcssa915, %i.ajm
  %i.ajr = add i64 %.0147.i.lcssa915, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ajq, i64 %i.ajr)
  %i.ajs = sub i64 %umax, %.0147.i.lcssa915       ; 7 uses
  %min.iters.check916 = icmp ult i64 %i.ajs, 8
  %i.ajt = add nsw i64 %.sroa.2.0.extract.shift.pn.i, -1
  %diff.check918 = icmp ult i64 %i.ajt, 31
  %or.cond1249 = select i1 %min.iters.check916, i1 true, i1 %diff.check918
  br i1 %or.cond1249, label %.lr.ph731.preheader, label %vector.main.loop.iter.check919

vector.main.loop.iter.check919:                   ; preds = %iter.check931
  %min.iters.check920 = icmp ult i64 %i.ajs, 32
  br i1 %min.iters.check920, label %vec.epilog.ph935, label %vector.ph921

vector.ph921:                                     ; preds = %vector.main.loop.iter.check919
  %i.aju = and i64 %i.ajs, 24
  %n.vec922 = and i64 %i.ajs, -32                 ; 5 uses
  %i.ajv = getelementptr i8, ptr %.0154.i, i64 %n.vec922
  %i.ajw = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec922
  br label %vector.body923

vector.body923:                                   ; preds = %vector.ph921, %vector.body923
  %index924 = phi i64 [ 0, %vector.ph921 ], [ %index.next928, %vector.body923 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0154.i, i64 %index924 ; 2 uses
  %next.gep925 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index924 ; 2 uses
  %i.ajx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load926 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load927 = load <16 x i8>, ptr %i.ajx, align 1, !tbaa !19
  %i.ajy = getelementptr i8, ptr %next.gep925, i64 16
  store <16 x i8> %wide.load926, ptr %next.gep925, align 1, !tbaa !19
  store <16 x i8> %wide.load927, ptr %i.ajy, align 1, !tbaa !19
  %index.next928 = add nuw i64 %index924, 32      ; 2 uses
  %i.ajz = icmp eq i64 %index.next928, %n.vec922
  br i1 %i.ajz, label %middle.block929, label %vector.body923, !llvm.loop !84

middle.block929:                                  ; preds = %vector.body923
  %cmp.n930 = icmp eq i64 %i.ajs, %n.vec922
  br i1 %cmp.n930, label %ZS_wildcopy.exit326, label %vec.epilog.iter.check932

vec.epilog.iter.check932:                         ; preds = %middle.block929
  %min.epilog.iters.check934 = icmp eq i64 %i.aju, 0
  br i1 %min.epilog.iters.check934, label %.lr.ph731.preheader, label %vec.epilog.ph935, !prof !104

vec.epilog.ph935:                                 ; preds = %vector.main.loop.iter.check919, %vec.epilog.iter.check932
  %vec.epilog.resume.val936 = phi i64 [ %n.vec922, %vec.epilog.iter.check932 ], [ 0, %vector.main.loop.iter.check919 ]
  %n.vec937 = and i64 %i.ajs, -8                  ; 4 uses
  %i.aka = getelementptr i8, ptr %.0154.i, i64 %n.vec937
  %i.akb = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec937
  br label %vec.epilog.vector.body938

vec.epilog.vector.body938:                        ; preds = %vec.epilog.vector.body938, %vec.epilog.ph935
  %index939 = phi i64 [ %vec.epilog.resume.val936, %vec.epilog.ph935 ], [ %index.next943, %vec.epilog.vector.body938 ] ; 3 uses
  %next.gep940 = getelementptr i8, ptr %.0154.i, i64 %index939
  %next.gep941 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index939
  %wide.load942 = load <8 x i8>, ptr %next.gep940, align 1, !tbaa !19
  store <8 x i8> %wide.load942, ptr %next.gep941, align 1, !tbaa !19
  %index.next943 = add nuw i64 %index939, 8       ; 2 uses
  %i.akc = icmp eq i64 %index.next943, %n.vec937
  br i1 %i.akc, label %vec.epilog.middle.block944, label %vec.epilog.vector.body938, !llvm.loop !85

vec.epilog.middle.block944:                       ; preds = %vec.epilog.vector.body938
  %cmp.n945 = icmp eq i64 %i.ajs, %n.vec937
  br i1 %cmp.n945, label %ZS_wildcopy.exit326, label %.lr.ph731.preheader

.lr.ph731.preheader:                              ; preds = %iter.check931, %vec.epilog.iter.check932, %vec.epilog.middle.block944
  %.0148.i730.ph = phi ptr [ %.0154.i, %iter.check931 ], [ %i.ajv, %vec.epilog.iter.check932 ], [ %i.aka, %vec.epilog.middle.block944 ]
  %.0149.i729.ph = phi ptr [ %.0147.i.lcssa, %iter.check931 ], [ %i.ajw, %vec.epilog.iter.check932 ], [ %i.akb, %vec.epilog.middle.block944 ]
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %.lr.ph731.preheader, %.lr.ph731
  %.0148.i730 = phi ptr [ %i.akd, %.lr.ph731 ], [ %.0148.i730.ph, %.lr.ph731.preheader ] ; 2 uses
  %.0149.i729 = phi ptr [ %i.akf, %.lr.ph731 ], [ %.0149.i729.ph, %.lr.ph731.preheader ] ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.0148.i730, i64 1
  %i.ake = load i8, ptr %.0148.i730, align 1, !tbaa !19
  %i.akf = getelementptr inbounds nuw i8, ptr %.0149.i729, i64 1 ; 2 uses
  store i8 %i.ake, ptr %.0149.i729, align 1, !tbaa !19
  %i.akg = icmp ult ptr %i.akf, %i.ajn
  br i1 %i.akg, label %.lr.ph731, label %ZS_wildcopy.exit326, !llvm.loop !86

bb.dm:                                            ; preds = %bb.dk
  %i.akh = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 16
  br i1 %i.akh, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.aki = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 8
  br i1 %i.aki, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !29
  %i.akl = load i8, ptr %.0154.i, align 1, !tbaa !19
  store i8 %i.akl, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.akm = getelementptr inbounds nuw i8, ptr %.0154.i, i64 1
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !19
  %i.ako = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.akn, ptr %i.ako, align 1, !tbaa !19
  %i.akp = getelementptr inbounds nuw i8, ptr %.0154.i, i64 2
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !19
  %i.akr = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.akq, ptr %i.akr, align 1, !tbaa !19
  %i.aks = getelementptr inbounds nuw i8, ptr %.0154.i, i64 3
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !19
  %i.aku = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.akt, ptr %i.aku, align 1, !tbaa !19
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !29
  %i.akx = sext i32 %i.akw to i64
  %i.aky = getelementptr inbounds i8, ptr %.0154.i, i64 %i.akx ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val346 = load i32, ptr %i.aky, align 1
  store i32 %.val346, ptr %i.akz, align 1
  %i.ala = sext i32 %i.akk to i64
  %i.alb = sub nsw i64 0, %i.ala
  %i.alc = getelementptr inbounds i8, ptr %i.aky, i64 %i.alb
  br label %ZS_overlapCopy8.exit

bb.dp:                                            ; preds = %bb.dn
  %.val350 = load i64, ptr %.0154.i, align 1
  store i64 %.val350, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.do, %bb.dp
  %.2607 = phi ptr [ %i.alc, %bb.do ], [ %.0154.i, %bb.dp ] ; 7 uses
  %.not12.i325 = icmp ugt i32 %.0152.i, 8
  br i1 %.not12.i325, label %.preheader679.preheader, label %ZS_wildcopy.exit326

.preheader679.preheader:                          ; preds = %ZS_overlapCopy8.exit
  %i.ald = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 6 uses
  %i.ale = add nuw i64 %.0147.i.lcssa915, %i.ajm
  %i.alf = add i64 %.0147.i.lcssa915, 24
  %i.alg = call i64 @llvm.umax.i64(i64 %i.ale, i64 %i.alf)
  %i.alh = add i64 %i.alg, -9
  %i.ali = sub i64 %i.alh, %.0147.i.lcssa915      ; 3 uses
  %i.alj = lshr i64 %i.ali, 4
  %i.alk = add nuw nsw i64 %i.alj, 1              ; 2 uses
  %min.iters.check974 = icmp ult i64 %i.ali, 112
  br i1 %min.iters.check974, label %.preheader679.preheader1259, label %vector.memcheck975

vector.memcheck975:                               ; preds = %.preheader679.preheader
  %i.all = and i64 %i.ali, -16
  %i.alm = add i64 %i.all, 24                     ; 2 uses
  %i.aln = getelementptr i8, ptr %.0147.i.lcssa, i64 %i.alm
  %i.alo = getelementptr i8, ptr %.2607, i64 8
  %i.alp = getelementptr i8, ptr %.2607, i64 %i.alm
  %bound0987 = icmp ult ptr %i.ald, %i.alp
  %bound1988 = icmp ult ptr %i.alo, %i.aln
  %found.conflict989 = and i1 %bound0987, %bound1988
  br i1 %found.conflict989, label %.preheader679.preheader1259, label %vector.ph991

vector.ph991:                                     ; preds = %vector.memcheck975
  %n.vec992 = and i64 %i.alk, 2305843009213693950 ; 3 uses
  %i.alq = shl i64 %n.vec992, 4                   ; 2 uses
  %i.alr = getelementptr i8, ptr %i.ald, i64 %i.alq
  %i.als = getelementptr i8, ptr %.2607, i64 %i.alq
  br label %vector.body993

vector.body993:                                   ; preds = %vector.body993, %vector.ph991
  %index994 = phi i64 [ 0, %vector.ph991 ], [ %index.next1001, %vector.body993 ] ; 2 uses
  %i.alt = shl i64 %index994, 4                   ; 3 uses
  %i.alu = or disjoint i64 %i.alt, 16             ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.ald, i64 %i.alt
  %next.gep996 = getelementptr i8, ptr %i.ald, i64 %i.alu
  %next.gep997 = getelementptr i8, ptr %.2607, i64 %i.alt
  %next.gep998 = getelementptr i8, ptr %.2607, i64 %i.alu
  %i.alv = getelementptr inbounds nuw i8, ptr %next.gep997, i64 8
  %i.alw = getelementptr inbounds nuw i8, ptr %next.gep998, i64 8
  %wide.load999 = load <2 x i64>, ptr %i.alv, align 1, !alias.scope !112
  %wide.load1000 = load <2 x i64>, ptr %i.alw, align 1, !alias.scope !112
  store <2 x i64> %wide.load999, ptr %next.gep995, align 1, !alias.scope !113, !noalias !112
  store <2 x i64> %wide.load1000, ptr %next.gep996, align 1, !alias.scope !113, !noalias !112
  %index.next1001 = add nuw i64 %index994, 2      ; 2 uses
  %i.alx = icmp eq i64 %index.next1001, %n.vec992
  br i1 %i.alx, label %middle.block1002, label %vector.body993, !llvm.loop !90

middle.block1002:                                 ; preds = %vector.body993
  %cmp.n1003 = icmp eq i64 %i.alk, %n.vec992
  br i1 %cmp.n1003, label %ZS_wildcopy.exit326, label %.preheader679.preheader1259

.preheader679.preheader1259:                      ; preds = %vector.memcheck975, %.preheader679.preheader, %middle.block1002
  %.1609.ph = phi ptr [ %i.ald, %vector.memcheck975 ], [ %i.ald, %.preheader679.preheader ], [ %i.alr, %middle.block1002 ]
  %.2607.pn.ph = phi ptr [ %.2607, %vector.memcheck975 ], [ %.2607, %.preheader679.preheader ], [ %i.als, %middle.block1002 ]
  br label %.preheader679

.preheader679:                                    ; preds = %.preheader679.preheader1259, %.preheader679
  %.1609 = phi ptr [ %i.amc, %.preheader679 ], [ %.1609.ph, %.preheader679.preheader1259 ] ; 3 uses
  %.2607.pn = phi ptr [ %i.ama, %.preheader679 ], [ %.2607.pn.ph, %.preheader679.preheader1259 ] ; 2 uses
  %.1606 = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 8
  %i.aly = load i64, ptr %.1606, align 1
  store i64 %i.aly, ptr %.1609, align 1
  %i.alz = getelementptr inbounds nuw i8, ptr %.1609, i64 8
  %i.ama = getelementptr inbounds nuw i8, ptr %.2607.pn, i64 16 ; 2 uses
  %i.amb = load i64, ptr %i.ama, align 1
  store i64 %i.amb, ptr %i.alz, align 1
  %i.amc = getelementptr inbounds nuw i8, ptr %.1609, i64 16 ; 2 uses
  %i.amd = icmp ult ptr %i.amc, %i.ajn
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
  %i.ami = icmp ult ptr %i.amh, %i.ajn
  br i1 %i.ami, label %.preheader681, label %ZS_wildcopy.exit326, !llvm.loop !66

ZS_wildcopy.exit326:                              ; preds = %.preheader681, %.preheader679, %.lr.ph731, %middle.block1002, %middle.block929, %vec.epilog.middle.block944, %.preheader678, %bb.dq, %ZS_overlapCopy8.exit
  %i.amj = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i375 = load i16, ptr %i.amj, align 1
  %i.amk = load ptr, ptr %i.ms, align 8, !tbaa !99
  %i.aml = ptrtoint ptr %.0147.i.lcssa to i64
  %i.amm = ptrtoint ptr %i.amk to i64
  %i.amn = sub i64 %i.aml, %i.amm
  %i.amo = trunc i64 %i.amn to i32                ; 2 uses
  %i.amp = load ptr, ptr %i.mt, align 8, !tbaa !39 ; 2 uses
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

ZS_execExperimentalSequence2.exit:                ; preds = %.preheader686, %.preheader684, %.lr.ph728, %middle.block1069, %middle.block1024, %vec.epilog.middle.block1039, %.preheader683, %ZS_wildcopy.exit326, %ZS_overlapCopy8.exit331, %bb.cw
  %.1153.i = phi i64 [ %i.ajm, %ZS_wildcopy.exit326 ], [ 0, %.preheader683 ], [ %.sroa.2.0.insert.ext.i303, %ZS_overlapCopy8.exit331 ], [ %.sroa.2.0.insert.ext.i303, %middle.block1069 ], [ %.sroa.2.0.insert.ext.i303, %bb.cw ], [ %.sroa.2.0.insert.ext.i303, %middle.block1024 ], [ %.sroa.2.0.insert.ext.i303, %.lr.ph728 ], [ %.sroa.2.0.insert.ext.i303, %vec.epilog.middle.block1039 ], [ %.sroa.2.0.insert.ext.i303, %.preheader684 ], [ %.sroa.2.0.insert.ext.i303, %.preheader686 ]
  %i.any = add nuw nsw i64 %.1153.i, %.sroa.043.0.insert.ext ; 2 uses
  %i.anz = icmp eq i64 %i.any, 0
  br i1 %i.anz, label %ZS_execExperimentalSequence.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %ZS_execExperimentalSequence2.exit
  %i.aoa = getelementptr inbounds nuw i8, ptr %.4733, i64 %i.any ; 2 uses
  %i.aob = add nuw nsw i64 %.2241732, 1           ; 2 uses
  %exitcond795.not = icmp eq i64 %i.aob, %i.ca
  br i1 %exitcond795.not, label %.loopexit676, label %bb.ck, !llvm.loop !92

.loopexit676:                                     ; preds = %bb.dr, %bb.cj, %.preheader689, %.preheader675, %bb.bb, %.critedge
  %.6 = phi ptr [ %.0237.lcssa, %.critedge ], [ %i.aam, %bb.cj ], [ %.0237.lcssa, %bb.bb ], [ %.0237.lcssa, %.preheader675 ], [ %.0237.lcssa, %.preheader689 ], [ %i.aoa, %bb.dr ] ; 6 uses
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !118
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
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !117
  %.not116 = icmp ult i64 %i.bn, %i.bo
  br i1 %.not116, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !114

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
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !119 ; 2 uses
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
  br i1 %exitcond.not.1, label %.thread151, label %bb.p, !llvm.loop !115

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
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !120

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
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !121

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
  %.val.i152 = load i64, ptr %.ptr221, align 1, !tbaa !124
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
  %.val.i.i155 = load i64, ptr %.ptr223, align 1, !tbaa !124
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
  %.val.i156 = load i64, ptr %.ptr222, align 1, !tbaa !124
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.af, %BIT_reloadDStreamFast.exit.i, %bb.ai
  %.sroa.0.1.ph = phi i64 [ %.val.i.i155, %BIT_reloadDStreamFast.exit.i ], [ %.val.i156, %bb.ai ], [ %.sroa.0.0231, %bb.af ], [ %.sroa.0.0231, %bb.ah ]
  %.sroa.14.1.ph = phi i32 [ %i.gm, %BIT_reloadDStreamFast.exit.i ], [ %i.gs, %bb.ai ], [ %i.fy, %bb.af ], [ %i.fy, %bb.ah ]
  %.sroa.24159.1.ph.idx = phi i64 [ %.sroa.24159.0.add220, %BIT_reloadDStreamFast.exit.i ], [ %.sroa.24159.0.add, %bb.ai ], [ %.sroa.24159.0.idx233, %bb.af ], [ 0, %bb.ah ]
  %i.gt = add nuw nsw i64 %.0120235, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %1
  br i1 %exitcond.not, label %BIT_reloadDStream.exit, label %bb.ab, !llvm.loop !122

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
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125  ; 2 uses
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
!107 = !{!71}
!108 = !{!72}
!109 = !{!"branch_weights", i32 4001, i32 4000000}
!110 = !{!80}
!111 = !{!81}
!112 = !{!88}
!113 = !{!89}
!114 = distinct !{!114, !37}
!115 = distinct !{!115, !37}
!116 = !{!"", !7, i64 0, !24, i64 256, !24, i64 264}
!117 = !{!116, !24, i64 256}
!118 = !{!25, !24, i64 40}
!119 = !{!116, !24, i64 264}
!120 = distinct !{!120, !37}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !37}
!123 = !{!"", !24, i64 0}
!124 = !{!123, !24, i64 0}
!125 = !{!28, !8, i64 16}
end_hunk_0
