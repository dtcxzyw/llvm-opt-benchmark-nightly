Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_fast_dec?download=true
inline.NumInlined: 93
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZS_fastDecoder_decompress:bb.a
  %5 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 4 uses
  %6 = alloca %struct.ZS_Entropy_DecodeParameters, align 8 ; 4 uses
  %7 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %8 = alloca %struct.ZL_ErrorContext, align 8    ; 11 uses
  %9 = alloca %struct.ZL_ReadCursor, align 8      ; 17 uses
  %10 = alloca %struct.ZS_window, align 8         ; 4 uses
  %i.a = alloca [4 x i32], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9 ; 2 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %4
  store ptr %3, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 22 uses
  %i.j = trunc i64 %2 to i32
  %i.k = call i32 @ZS_window_init(ptr noundef nonnull %10, i32 noundef %i.j, i32 noundef 8) #8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.l = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastDecoder_decompress.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1279, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8 ; 2 uses
  %i.m = extractvalue { i32, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.l, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.m, ptr %i.n, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  %i.o = ptrtoint ptr %i.n to i64
  br label %bb.ew

bb.c:                                             ; preds = %bb.a
  %i.p = call { i32, i64 } @ZS_Entropy_getDecodedSize(ptr noundef %3, i64 noundef %4, i64 noundef 1) #8 ; 2 uses
  %i.q = extractvalue { i32, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.p, 1        ; 6 uses
  %.not905 = icmp eq i32 %i.q, 0
  br i1 %.not905, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.q, ptr %i.s, ptr nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1281, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.u = extractvalue { i32, ptr } %i.t, 0
  %i.v = extractvalue { i32, ptr } %i.t, 1
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.ew

bb.e:                                             ; preds = %bb.c
  %i.x = icmp ult i64 %i.r, 1073741824
  br i1 %i.x, label %bb.g, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.y = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.11, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1282, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i64 noundef %i.r, i64 noundef 1073741824) #8 ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.y, 1       ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.z, ptr %i.aa, ptr noundef nonnull @.str.17) #8
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.ew

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %9, align 8               ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %7, align 8, !tbaa !17
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call { i32, i64 } @ZS_Entropy_getType(ptr noundef %i.ac, i64 noundef %i.ah) #8 ; 2 uses
  %i.aj = extractvalue { i32, i64 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i32, i64 } %i.ai, 1      ; 2 uses
  %.not.i1093 = icmp eq i32 %i.aj, 0
  br i1 %.not.i1093, label %isRaw.exit.thread, label %isRaw.exit, !prof !18

isRaw.exit.thread:                                ; preds = %bb.g
  %i.al = icmp eq i64 %i.ak, 3
  %i.am = zext i1 %i.al to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.i

isRaw.exit:                                       ; preds = %bb.g
  %i.an = inttoptr i64 %i.ak to ptr
  %i.ao = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.aj, ptr %i.an, ptr nonnull @isRaw.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef 56, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.ap = extractvalue { i32, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { i32, ptr } %i.ao, 1      ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %.not906 = icmp eq i32 %i.ap, 0
  br i1 %.not906, label %bb.i, label %bb.h, !prof !47

bb.h:                                             ; preds = %isRaw.exit
  %i.as = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %8, i32 %i.ap, ptr %i.aq, ptr nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1284, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.at = extractvalue { i32, ptr } %i.as, 0
  %i.au = extractvalue { i32, ptr } %i.as, 1
  %i.av = ptrtoint ptr %i.au to i64
  br label %bb.ew

bb.i:                                             ; preds = %isRaw.exit, %isRaw.exit.thread
  %.sroa.9.0.i1255 = phi i64 [ %i.am, %isRaw.exit.thread ], [ %i.ar, %isRaw.exit ]
  %i.aw = icmp eq i64 %.sroa.9.0.i1255, 0
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = call fastcc ptr @getRawBuffer(ptr noundef %9, i64 noundef 1) ; 2 uses
  %.not910 = icmp eq ptr %i.ax, null
  br i1 %.not910, label %.thread1265, label %bb.m, !prof !48

.thread1265:                                      ; preds = %bb.j
  %i.ay = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.19, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1287, i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.az = extractvalue { i32, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i32, ptr } %i.ay, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.az, ptr %i.ba, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %bb.ew

bb.k:                                             ; preds = %bb.i
  %i.bc = add nuw nsw i64 %i.r, 32                ; 2 uses
  %i.bd = call ptr @ZL_malloc(i64 noundef %i.bc) #8 ; 5 uses
  %.not908 = icmp eq ptr %i.bd, null
  br i1 %.not908, label %.thread1268, label %bb.l, !prof !48

.thread1268:                                      ; preds = %bb.k
  %i.be = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.25, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1291, i32 noundef 70, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.bf = extractvalue { i32, ptr } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.be, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bf, ptr %i.bg, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  %i.bh = ptrtoint ptr %i.bg to i64
  br label %bb.ew

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes16.params, i64 24, i1 false)
  %i.bi = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.bd, i64 noundef %i.bc, ptr noundef nonnull %9, i64 noundef 1, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.bj = extractvalue { i32, i64 } %i.bi, 0
  %.not909 = icmp eq i32 %i.bj, 0
  br i1 %.not909, label %bb.m, label %.thread1419

bb.m:                                             ; preds = %bb.j, %bb.l
  %.0871 = phi ptr [ %i.bd, %bb.l ], [ %i.ax, %bb.j ] ; 5 uses
  %.0769 = phi ptr [ %i.bd, %bb.l ], [ null, %bb.j ] ; 46 uses
  %i.bk = load ptr, ptr %9, align 8               ; 2 uses
  %i.bl = load ptr, ptr %i.g, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = call { i32, i64 } @ZS_Entropy_getDecodedSize(ptr noundef %i.bk, i64 noundef %i.bo, i64 noundef 1) #8 ; 2 uses
  %i.bq = extractvalue { i32, i64 } %i.bp, 0
  %i.br = extractvalue { i32, i64 } %i.bp, 1      ; 8 uses
  %.not1424 = icmp eq i32 %i.bq, 0
  br i1 %.not1424, label %bb.n, label %.thread1419

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %9, align 8
  %i.bt = load ptr, ptr %i.g, align 8
  %i.bu = call fastcc { i32, i64 } @isRaw(ptr %i.bs, ptr %i.bt) ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 0
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = icmp ugt i64 %i.br, 1073741823
  %or.cond1423 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond1423, label %.thread1419, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = extractvalue { i32, i64 } %i.bu, 1
  %.not913 = icmp eq i64 %i.by, 0
  br i1 %.not913, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call fastcc ptr @getRawBuffer(ptr noundef %9, i64 noundef 2)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ca = shl nuw nsw i64 %i.br, 1
  %i.cb = call ptr @ZL_malloc(i64 noundef %i.ca) #8 ; 5 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.thread1419, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.decodeCodes16.params, i64 24, i1 false)
  %i.cd = call { i32, i64 } @ZS_Entropy_decode(ptr noundef nonnull %i.cb, i64 noundef range(i64 0, 1073741824) %i.br, ptr noundef nonnull %9, i64 noundef 2, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.ce = extractvalue { i32, i64 } %i.cd, 0
  %.not914 = icmp eq i32 %i.ce, 0
  br i1 %.not914, label %bb.s, label %.thread1419

bb.s:                                             ; preds = %bb.r, %bb.p
  %.0873 = phi ptr [ %i.bz, %bb.p ], [ %i.cb, %bb.r ] ; 3 uses
  %.0771 = phi ptr [ null, %bb.p ], [ %i.cb, %bb.r ] ; 42 uses
  %i.cf = call fastcc { i32, i64 } @ZL_RC_popVarint(ptr noundef %9) ; 2 uses
  %i.cg = extractvalue { i32, i64 } %i.cf, 0
  %.not915 = icmp eq i32 %i.cg, 0
  %i.ch = extractvalue { i32, i64 } %i.cf, 1      ; 3 uses
  br i1 %.not915, label %bb.t, label %.thread1419

bb.t:                                             ; preds = %bb.s
  %.val1055 = load ptr, ptr %9, align 8, !tbaa !20 ; 5 uses
  %.val1061 = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.ci = ptrtoint ptr %.val1061 to i64
  %i.cj = ptrtoint ptr %.val1055 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %.thread1419, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1055, i64 %i.ch ; 4 uses
  store ptr %i.cm, ptr %9, align 8, !tbaa !20
  %i.cn = call fastcc { i32, i64 } @ZL_RC_popVarint(ptr noundef %9) ; 2 uses
  %i.co = extractvalue { i32, i64 } %i.cn, 0
  %.not916 = icmp eq i32 %i.co, 0
  %i.cp = extractvalue { i32, i64 } %i.cn, 1      ; 2 uses
  br i1 %.not916, label %bb.v, label %.thread1419

bb.v:                                             ; preds = %bb.u
  %.val = load ptr, ptr %9, align 8, !tbaa !20    ; 5 uses
  %.val1059 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %i.cq = ptrtoint ptr %.val1059 to i64
  %i.cr = ptrtoint ptr %.val to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ugt i64 %i.cp, %i.cs
  br i1 %i.ct, label %.thread1419, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cp ; 3 uses
  store ptr %i.cu, ptr %9, align 8, !tbaa !20
  %i.cv = ptrtoint ptr %i.cu to i64               ; 12 uses
  %.not917 = icmp eq ptr %.val1059, %i.cu
  br i1 %.not917, label %bb.x, label %.thread1419

bb.x:                                             ; preds = %bb.w
  %i.cw = call i32 @ZS_window_update(ptr noundef nonnull %10, ptr noundef %1, i64 noundef %2) #8 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0871, i64 %i.r ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -32 ; 5 uses
  %i.cz = add nsw i64 %i.br, -32                  ; 2 uses
  %.not918 = icmp eq i64 %i.br, 0
  br i1 %.not918, label %.critedge.._crit_edge_crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0873.val1080 = load i16, ptr %.0873, align 1
  %i.da = icmp eq i16 %.0873.val1080, 60
  br i1 %i.da, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.db = icmp samesign ult i64 %i.r, 15
  %i.dc = icmp ult i64 %2, 15
  %or.cond937 = or i1 %i.dc, %i.db
  br i1 %or.cond937, label %.thread1419, label %.thread1271

.thread1271:                                      ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) %.0871, i64 15, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.de = getelementptr inbounds nuw i8, ptr %.0871, i64 15
  br label %bb.aa

bb.aa:                                            ; preds = %.thread1271, %bb.y
  %.1842 = phi ptr [ %i.de, %.thread1271 ], [ %.0871, %bb.y ] ; 5 uses
  %.1765 = phi i64 [ 1, %.thread1271 ], [ 0, %bb.y ] ; 4 uses
  %.1 = phi ptr [ %i.dd, %.thread1271 ], [ %1, %bb.y ] ; 5 uses
  %i.df = icmp samesign ugt i64 %i.br, 31
  %i.dg = icmp ult ptr %.1, %i.e
  %or.cond = select i1 %i.df, i1 %i.dg, i1 false
  %i.dh = icmp ult ptr %.1842, %i.cy
  %or.cond926 = select i1 %or.cond, i1 %i.dh, i1 false
  br i1 %or.cond926, label %.preheader1468, label %.critedge

.preheader1468:                                   ; preds = %bb.aa
  %i.di = ptrtoint ptr %i.cm to i64
  %i.dj = icmp samesign ult i64 %.1765, %i.cz
  %i.dk = getelementptr inbounds nuw i8, ptr %.1, i64 768
  %.not9191621 = icmp ule ptr %i.dk, %i.e
  %or.cond927.not14271622 = select i1 %i.dj, i1 %.not9191621, i1 false
  %i.dl = getelementptr inbounds nuw i8, ptr %.1842, i64 256
  %.not9201623 = icmp ule ptr %i.dl, %i.cy
  %or.cond928.not14251624 = select i1 %or.cond927.not14271622, i1 %.not9201623, i1 false
  %i.dm = icmp ugt i64 %i.ch, 47
  %or.cond9321625 = select i1 %or.cond928.not14251624, i1 %i.dm, i1 false
  br i1 %or.cond9321625, label %.lr.ph1632, label %.critedge

.lr.ph1632:                                       ; preds = %.preheader1468
  %i.dn = ptrtoint ptr %i.cx to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %isFast.exit

isFast.exit:                                      ; preds = %.lr.ph1632, %.thread1379
  %.21631 = phi ptr [ %.1, %.lr.ph1632 ], [ %.26.ph, %.thread1379 ] ; 3 uses
  %.27661630 = phi i64 [ %.1765, %.lr.ph1632 ], [ %i.abq, %.thread1379 ] ; 2 uses
  %.07731629 = phi i32 [ 16, %.lr.ph1632 ], [ %.6779.ph, %.thread1379 ] ; 2 uses
  %.08191628 = phi ptr [ %.val, %.lr.ph1632 ], [ %.12831.ph, %.thread1379 ] ; 2 uses
  %.28431627 = phi ptr [ %.1842, %.lr.ph1632 ], [ %.10851.ph, %.thread1379 ] ; 3 uses
  %.08601626 = phi ptr [ %.val1055, %.lr.ph1632 ], [ %.5865.ph, %.thread1379 ] ; 8 uses
  %i.dx = getelementptr [2 x i8], ptr %.0873, i64 %.27661630 ; 26 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 10
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 26
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 30
  %i.en = load <16 x i16>, ptr %i.dx, align 2, !tbaa !50 ; 5 uses
  %i.eo = icmp ult <16 x i16> %i.en, splat (i16 4)
  %i.ep = bitcast <16 x i1> %i.eo to i16
  %i.eq = icmp eq i16 %i.ep, 0
  br i1 %i.eq, label %bb.ab, label %.preheader1467, !prof !18

bb.ab:                                            ; preds = %isFast.exit
  %i.er = extractelement <16 x i16> %i.en, i64 0  ; 2 uses
  %i.es = and i16 %i.er, 3
  switch i16 %i.es, label %.unreachabledefault [
    i16 0, label %bb.af
    i16 1, label %bb.ac
    i16 2, label %bb.ad
    i16 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %.08601626, i64 1
  %i.eu = load i8, ptr %.08601626, align 1, !tbaa !22
  %i.ev = zext i8 %i.eu to i32
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %.028.i976.val = load i16, ptr %.08601626, align 1
  %i.ew = zext i16 %.028.i976.val to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %.08601626, i64 2
  br label %bb.af

.unreachabledefault:                              ; preds = %bb.ab
  unreachable

default.unreachable:                              ; preds = %bb.cg, %bb.cc, %bb.by, %.preheader1455.preheader, %bb.br, %bb.bn, %bb.bj, %.preheader1459.preheader, %bb.bc, %bb.ay, %bb.au, %.preheader1463.preheader, %bb.an, %bb.aj, %bb.af, %bb.cy, %bb.ct, %bb.co, %.preheader1467, %bb.dx
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %.028.i976.val1081 = load i24, ptr %.08601626, align 1
  %.0.insert.ext.i.i = zext i24 %.028.i976.val1081 to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.08601626, i64 3
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae, %bb.ad, %bb.ac
  %.sroa.0.0 = phi i32 [ %.0.insert.ext.i.i, %bb.ae ], [ %i.ev, %bb.ac ], [ %i.ew, %bb.ad ], [ %.07731629, %bb.ab ] ; 3 uses
  %.129.i979 = phi ptr [ %i.ey, %bb.ae ], [ %i.et, %bb.ac ], [ %i.ex, %bb.ad ], [ %.08601626, %bb.ab ] ; 7 uses
  %i.ez = extractelement <16 x i16> %i.en, i64 1
  %i.fa = and i16 %i.ez, 3
  switch i16 %i.fa, label %default.unreachable [
    i16 0, label %bb.aj
    i16 1, label %bb.ai
    i16 2, label %bb.ah
    i16 3, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %.028.i976.val1081.1 = load i24, ptr %.129.i979, align 1
  %.0.insert.ext.i.i.1 = zext i24 %.028.i976.val1081.1 to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %.129.i979, i64 3
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %.028.i976.val.1 = load i16, ptr %.129.i979, align 1
  %i.fc = zext i16 %.028.i976.val.1 to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.129.i979, i64 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %.129.i979, i64 1
  %i.ff = load i8, ptr %.129.i979, align 1, !tbaa !22
  %i.fg = zext i8 %i.ff to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ag
  %.sroa.23.0 = phi i32 [ %.0.insert.ext.i.i.1, %bb.ag ], [ %i.fg, %bb.ai ], [ %i.fc, %bb.ah ], [ %.sroa.0.0, %bb.af ] ; 3 uses
  %.129.i979.1 = phi ptr [ %i.fb, %bb.ag ], [ %i.fe, %bb.ai ], [ %i.fd, %bb.ah ], [ %.129.i979, %bb.af ] ; 7 uses
  %i.fh = extractelement <16 x i16> %i.en, i64 2
  %i.fi = and i16 %i.fh, 3
  switch i16 %i.fi, label %default.unreachable [
    i16 0, label %bb.an
    i16 1, label %bb.am
    i16 2, label %bb.al
    i16 3, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %.028.i976.val1081.2 = load i24, ptr %.129.i979.1, align 1
  %.0.insert.ext.i.i.2 = zext i24 %.028.i976.val1081.2 to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.129.i979.1, i64 3
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %.028.i976.val.2 = load i16, ptr %.129.i979.1, align 1
  %i.fk = zext i16 %.028.i976.val.2 to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %.129.i979.1, i64 2
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %.129.i979.1, i64 1
  %i.fn = load i8, ptr %.129.i979.1, align 1, !tbaa !22
  %i.fo = zext i8 %i.fn to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.am, %bb.al, %bb.ak
  %.sroa.43.0 = phi i32 [ %.0.insert.ext.i.i.2, %bb.ak ], [ %i.fo, %bb.am ], [ %i.fk, %bb.al ], [ %.sroa.23.0, %bb.aj ] ; 3 uses
  %.129.i979.2 = phi ptr [ %i.fj, %bb.ak ], [ %i.fm, %bb.am ], [ %i.fl, %bb.al ], [ %.129.i979.1, %bb.aj ] ; 7 uses
  %i.fp = extractelement <16 x i16> %i.en, i64 3
  %i.fq = and i16 %i.fp, 3
  switch i16 %i.fq, label %default.unreachable [
    i16 0, label %getOffsets4.exit982
    i16 1, label %bb.aq
    i16 2, label %bb.ap
    i16 3, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %.028.i976.val1081.3 = load i24, ptr %.129.i979.2, align 1
  %.0.insert.ext.i.i.3 = zext i24 %.028.i976.val1081.3 to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %.129.i979.2, i64 3
  br label %getOffsets4.exit982

bb.ap:                                            ; preds = %bb.an
  %.028.i976.val.3 = load i16, ptr %.129.i979.2, align 1
  %i.fs = zext i16 %.028.i976.val.3 to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %.129.i979.2, i64 2
end_hunk_0
begin_hunk_1_@ZS_fastDecoder_decompress:bb.a
  %n.vec1834 = and i64 %i.zr, -8                  ; 4 uses
  %i.zz = getelementptr i8, ptr %.0.i1046, i64 %n.vec1834
  %i.aaa = getelementptr i8, ptr %.017.i1045, i64 %n.vec1834
  br label %vec.epilog.vector.body1835

vec.epilog.vector.body1835:                       ; preds = %vec.epilog.vector.body1835, %vec.epilog.ph1833
  %index1836 = phi i64 [ %vec.epilog.resume.val1827, %vec.epilog.ph1833 ], [ %index.next1840, %vec.epilog.vector.body1835 ] ; 3 uses
  %next.gep1837 = getelementptr i8, ptr %.0.i1046, i64 %index1836
  %next.gep1838 = getelementptr i8, ptr %.017.i1045, i64 %index1836
  %wide.load1839 = load <8 x i8>, ptr %next.gep1837, align 1, !tbaa !22
  store <8 x i8> %wide.load1839, ptr %next.gep1838, align 1, !tbaa !22
  %index.next1840 = add nuw i64 %index1836, 8     ; 2 uses
  %i.aab = icmp eq i64 %index.next1840, %n.vec1834
  br i1 %i.aab, label %vec.epilog.middle.block1841, label %vec.epilog.vector.body1835, !llvm.loop !26

vec.epilog.middle.block1841:                      ; preds = %vec.epilog.vector.body1835
  %cmp.n1842 = icmp eq i64 %i.zr, %n.vec1834
  br i1 %cmp.n1842, label %ZS_safecopy.exit1052, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check1829, %vec.epilog.iter.check1831, %vec.epilog.middle.block1841
  %.1.i10481579.ph = phi ptr [ %.0.i1046, %iter.check1829 ], [ %i.zu, %vec.epilog.iter.check1831 ], [ %i.zz, %vec.epilog.middle.block1841 ]
  %.118.i10471578.ph = phi ptr [ %.017.i1045, %iter.check1829 ], [ %i.zv, %vec.epilog.iter.check1831 ], [ %i.aaa, %vec.epilog.middle.block1841 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1.i10481579 = phi ptr [ %i.aac, %.lr.ph ], [ %.1.i10481579.ph, %.lr.ph.preheader ] ; 2 uses
  %.118.i10471578 = phi ptr [ %i.aae, %.lr.ph ], [ %.118.i10471578.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.1.i10481579, i64 1
  %i.aad = load i8, ptr %.1.i10481579, align 1, !tbaa !22
  %i.aae = getelementptr inbounds nuw i8, ptr %.118.i10471578, i64 1 ; 2 uses
  store i8 %i.aad, ptr %.118.i10471578, align 1, !tbaa !22
  %i.aaf = icmp ult ptr %i.aae, %i.zg
  br i1 %i.aaf, label %.lr.ph, label %ZS_safecopy.exit1052, !llvm.loop !27

ZS_safecopy.exit1052:                             ; preds = %.lr.ph, %middle.block1825, %vec.epilog.middle.block1841, %bb.dr
  %i.aag = getelementptr inbounds nuw i8, ptr %.58461583, i64 %.2761 ; 4 uses
  %i.aah = icmp ult i32 %i.vx, 16
  br i1 %i.aah, label %.loopexit1445, label %bb.ds

bb.ds:                                            ; preds = %ZS_safecopy.exit1052
  %i.aai = zext i32 %i.vx to i64                  ; 2 uses
  %i.aaj = ptrtoint ptr %i.zg to i64
  %i.aak = sub i64 %i.aaj, %i.i
  %i.aal = icmp ult i64 %i.aak, %i.aai
  br i1 %i.aal, label %.loopexit1445, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aam = sub nsw i64 0, %i.aai
  %i.aan = getelementptr inbounds i8, ptr %i.zg, i64 %i.aam ; 4 uses
  %i.aao = getelementptr inbounds i8, ptr %i.zg, i64 %.2758 ; 6 uses
  %i.aap = icmp sgt i64 %.2758, 32
  br i1 %i.aap, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.aaq = add nsw i64 %.2758, -32                ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.aaq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.zg, ptr noundef nonnull align 1 dereferenceable(16) %i.aan, i64 16, i1 false)
  %.not.i.i1041 = icmp samesign ugt i64 %.2758, 48
  br i1 %.not.i.i1041, label %.preheader1442.preheader, label %ZS_wildcopy.exit.i1042

.preheader1442.preheader:                         ; preds = %bb.du
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  br label %.preheader1442

.preheader1442:                                   ; preds = %.preheader1442.preheader, %.preheader1442
  %.pn = phi ptr [ %i.aau, %.preheader1442 ], [ %i.aan, %.preheader1442.preheader ] ; 2 uses
  %.01234 = phi ptr [ %i.aav, %.preheader1442 ], [ %i.aas, %.preheader1442.preheader ] ; 3 uses
  %.01236 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.01234, ptr noundef nonnull align 1 dereferenceable(16) %.01236, i64 16, i1 false)
  %i.aat = getelementptr inbounds nuw i8, ptr %.01234, i64 16
  %i.aau = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aat, ptr noundef nonnull align 1 dereferenceable(16) %i.aau, i64 16, i1 false)
  %i.aav = getelementptr inbounds nuw i8, ptr %.01234, i64 32 ; 2 uses
  %i.aaw = icmp ult ptr %i.aav, %i.aar
  br i1 %i.aaw, label %.preheader1442, label %ZS_wildcopy.exit.i1042, !llvm.loop !24

ZS_wildcopy.exit.i1042:                           ; preds = %.preheader1442, %bb.du
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aaq
  br label %bb.dv

bb.dv:                                            ; preds = %ZS_wildcopy.exit.i1042, %bb.dt
  %.017.i1037 = phi ptr [ %i.aar, %ZS_wildcopy.exit.i1042 ], [ %i.zg, %bb.dt ] ; 6 uses
  %.0.i1038 = phi ptr [ %i.aax, %ZS_wildcopy.exit.i1042 ], [ %i.aan, %bb.dt ] ; 5 uses
  %i.aay = icmp ult ptr %.017.i1037, %i.aao
  br i1 %i.aay, label %iter.check, label %ZS_wildcopy.exit

iter.check:                                       ; preds = %bb.dv
  %i.aaz = call i64 @llvm.smin.i64(i64 %.2758, i64 32) ; 7 uses
  %min.iters.check = icmp ult i64 %i.aaz, 8
  %diff.check = icmp ult i32 %i.vx, 32
  %or.cond1985 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1985, label %.lr.ph1582.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1797 = icmp ult i64 %i.aaz, 32
  br i1 %min.iters.check1797, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aba = and i64 %i.aaz, 24
  %n.vec = and i64 %i.aaz, -32                    ; 5 uses
  %i.abb = getelementptr i8, ptr %.0.i1038, i64 %n.vec
  %i.abc = getelementptr i8, ptr %.017.i1037, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i1038, i64 %index ; 2 uses
  %next.gep1798 = getelementptr i8, ptr %.017.i1037, i64 %index ; 2 uses
  %i.abd = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !22
  %wide.load1799 = load <16 x i8>, ptr %i.abd, align 1, !tbaa !22
  %i.abe = getelementptr i8, ptr %next.gep1798, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1798, align 1, !tbaa !22
  store <16 x i8> %wide.load1799, ptr %i.abe, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.abf = icmp eq i64 %index.next, %n.vec
  br i1 %i.abf, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aaz, %n.vec
  br i1 %cmp.n, label %ZS_wildcopy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1582.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1801 = and i64 %i.aaz, -8                 ; 4 uses
  %i.abg = getelementptr i8, ptr %.0.i1038, i64 %n.vec1801
  %i.abh = getelementptr i8, ptr %.017.i1037, i64 %n.vec1801
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1802 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1806, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1803 = getelementptr i8, ptr %.0.i1038, i64 %index1802
  %next.gep1804 = getelementptr i8, ptr %.017.i1037, i64 %index1802
  %wide.load1805 = load <8 x i8>, ptr %next.gep1803, align 1, !tbaa !22
  store <8 x i8> %wide.load1805, ptr %next.gep1804, align 1, !tbaa !22
  %index.next1806 = add nuw i64 %index1802, 8     ; 2 uses
  %i.abi = icmp eq i64 %index.next1806, %n.vec1801
  br i1 %i.abi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1807 = icmp eq i64 %i.aaz, %n.vec1801
  br i1 %cmp.n1807, label %ZS_wildcopy.exit, label %.lr.ph1582.preheader

.lr.ph1582.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i10401581.ph = phi ptr [ %.0.i1038, %iter.check ], [ %i.abb, %vec.epilog.iter.check ], [ %i.abg, %vec.epilog.middle.block ]
  %.118.i10391580.ph = phi ptr [ %.017.i1037, %iter.check ], [ %i.abc, %vec.epilog.iter.check ], [ %i.abh, %vec.epilog.middle.block ]
  br label %.lr.ph1582

.lr.ph1582:                                       ; preds = %.lr.ph1582.preheader, %.lr.ph1582
  %.1.i10401581 = phi ptr [ %i.abj, %.lr.ph1582 ], [ %.1.i10401581.ph, %.lr.ph1582.preheader ] ; 2 uses
  %.118.i10391580 = phi ptr [ %i.abl, %.lr.ph1582 ], [ %.118.i10391580.ph, %.lr.ph1582.preheader ] ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.1.i10401581, i64 1
  %i.abk = load i8, ptr %.1.i10401581, align 1, !tbaa !22
  %i.abl = getelementptr inbounds nuw i8, ptr %.118.i10391580, i64 1 ; 2 uses
  store i8 %i.abk, ptr %.118.i10391580, align 1, !tbaa !22
  %i.abm = icmp ult ptr %i.abl, %i.aao
  br i1 %i.abm, label %.lr.ph1582, label %ZS_wildcopy.exit, !llvm.loop !30

ZS_wildcopy.exit:                                 ; preds = %.lr.ph1582, %.preheader1439, %middle.block, %vec.epilog.middle.block, %bb.dv, %copy.exit, %bb.dj
  %.6847 = phi ptr [ %i.yo, %copy.exit ], [ %i.aag, %bb.dv ], [ %i.xf, %bb.dj ], [ %i.aag, %middle.block ], [ %i.xf, %.preheader1439 ], [ %i.aag, %vec.epilog.middle.block ], [ %i.aag, %.lr.ph1582 ] ; 3 uses
  %.8827 = phi ptr [ %.28211584, %copy.exit ], [ %.7826, %bb.dv ], [ %.6825, %bb.dj ], [ %.7826, %middle.block ], [ %.6825, %.preheader1439 ], [ %.7826, %vec.epilog.middle.block ], [ %.7826, %.lr.ph1582 ] ; 3 uses
  %.22 = phi ptr [ %i.yy, %copy.exit ], [ %i.aao, %bb.dv ], [ %i.xh, %bb.dj ], [ %i.aao, %middle.block ], [ %i.xh, %.preheader1439 ], [ %i.aao, %vec.epilog.middle.block ], [ %i.aao, %.lr.ph1582 ] ; 3 uses
  %i.abn = add nuw nsw i64 %.07621585, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.abn, 4
  br i1 %exitcond.not, label %bb.dw, label %bb.dd, !llvm.loop !31

bb.dw:                                            ; preds = %ZS_wildcopy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.abo = add nuw nsw i64 %.07631591, 4
  %i.abp = icmp samesign ult i64 %.07631591, 12
  br i1 %i.abp, label %.preheader1467, label %.thread1379, !llvm.loop !32

.loopexit1445:                                    ; preds = %bb.dl, %bb.di, %ZS_safecopy.exit1052, %bb.do, %bb.dn, %bb.dm, %bb.ds, %ZS_wildcopy.exit1018, %.loopexit1449, %bb.de, %.preheader1447.preheader, %.preheader1444.preheader, %.preheader1447, %.preheader1444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread1419

.thread1379:                                      ; preds = %bb.dw, %.preheader1451.preheader
  %.5865.ph = phi ptr [ %.129.i958.3, %.preheader1451.preheader ], [ %.129.i.3, %bb.dw ] ; 3 uses
  %.10851.ph = phi ptr [ %i.uc, %.preheader1451.preheader ], [ %.6847, %bb.dw ] ; 3 uses
  %.12831.ph = phi ptr [ %.08191628, %.preheader1451.preheader ], [ %.8827, %bb.dw ] ; 2 uses
  %.6779.ph = phi i32 [ %.sroa.63.3, %.preheader1451.preheader ], [ %i.vu, %bb.dw ] ; 2 uses
  %.26.ph = phi ptr [ %i.uf, %.preheader1451.preheader ], [ %.22, %bb.dw ] ; 3 uses
  %i.abq = add nuw i64 %.27661630, 16             ; 3 uses
  %i.abr = icmp ult i64 %i.abq, %i.cz
  %i.abs = getelementptr inbounds nuw i8, ptr %.26.ph, i64 768
  %.not919 = icmp ule ptr %i.abs, %i.e
  %or.cond927.not1427 = select i1 %i.abr, i1 %.not919, i1 false
  %i.abt = getelementptr inbounds nuw i8, ptr %.10851.ph, i64 256
  %.not920 = icmp ule ptr %i.abt, %i.cy
  %or.cond928.not1425 = select i1 %or.cond927.not1427, i1 %.not920, i1 false
  %i.abu = ptrtoint ptr %.5865.ph to i64
  %i.abv = sub i64 %i.di, %i.abu
  %i.abw = icmp ugt i64 %i.abv, 47
  %or.cond932 = select i1 %or.cond928.not1425, i1 %i.abw, i1 false
  br i1 %or.cond932, label %isFast.exit, label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.thread1379, %.preheader1468, %bb.aa
  %.6866 = phi ptr [ %.val1055, %bb.aa ], [ %.val1055, %.preheader1468 ], [ %.5865.ph, %.thread1379 ]
  %.11852 = phi ptr [ %.1842, %bb.aa ], [ %.1842, %.preheader1468 ], [ %.10851.ph, %.thread1379 ] ; 2 uses
  %.13832 = phi ptr [ %.val, %bb.aa ], [ %.val, %.preheader1468 ], [ %.12831.ph, %.thread1379 ]
  %.7780 = phi i32 [ 16, %bb.aa ], [ 16, %.preheader1468 ], [ %.6779.ph, %.thread1379 ]
  %.3767 = phi i64 [ %.1765, %bb.aa ], [ %.1765, %.preheader1468 ], [ %i.abq, %.thread1379 ] ; 2 uses
  %.27 = phi ptr [ %.1, %bb.aa ], [ %.1, %.preheader1468 ], [ %.26.ph, %.thread1379 ] ; 2 uses
  %i.abx = icmp ult i64 %.3767, %i.br
  br i1 %i.abx, label %.lr.ph1658, label %.critedge.._crit_edge_crit_edge

.critedge.._crit_edge_crit_edge:                  ; preds = %bb.x, %.critedge
  %.271744 = phi ptr [ %.27, %.critedge ], [ %1, %bb.x ]
  %.118521743 = phi ptr [ %.11852, %.critedge ], [ %.0871, %bb.x ]
  %.pre = ptrtoint ptr %i.cx to i64
  br label %._crit_edge

.lr.ph1658:                                       ; preds = %.critedge
  %i.aby = ptrtoint ptr %i.cm to i64              ; 2 uses
  %i.abz = ptrtoint ptr %i.cx to i64              ; 3 uses
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph1658, %ZS_safecopy.exit1028
  %.281657 = phi ptr [ %.27, %.lr.ph1658 ], [ %.32, %ZS_safecopy.exit1028 ] ; 13 uses
  %.47681656 = phi i64 [ %.3767, %.lr.ph1658 ], [ %i.aiq, %ZS_safecopy.exit1028 ] ; 2 uses
  %.87811655 = phi i32 [ %.7780, %.lr.ph1658 ], [ %.0755, %ZS_safecopy.exit1028 ]
  %.148331654 = phi ptr [ %.13832, %.lr.ph1658 ], [ %.21840, %ZS_safecopy.exit1028 ] ; 7 uses
  %.128531651 = phi ptr [ %.11852, %.lr.ph1658 ], [ %.16857, %ZS_safecopy.exit1028 ] ; 12 uses
  %.78671650 = phi ptr [ %.6866, %.lr.ph1658 ], [ %.8868, %ZS_safecopy.exit1028 ] ; 10 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %.0873, i64 %.47681656
  %.val1062 = load i16, ptr %i.aca, align 1       ; 2 uses
  %i.acb = zext i16 %.val1062 to i32              ; 3 uses
  %i.acc = and i32 %i.acb, 3
  switch i32 %i.acc, label %default.unreachable [
    i32 0, label %bb.ee
    i32 1, label %bb.dy
    i32 2, label %bb.ea
    i32 3, label %bb.ec
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.acd = icmp eq ptr %i.cm, %.78671650
  br i1 %i.acd, label %.thread1419, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ace = getelementptr inbounds nuw i8, ptr %.78671650, i64 1
  %i.acf = load i8, ptr %.78671650, align 1, !tbaa !22
  %i.acg = zext i8 %i.acf to i32
  br label %bb.ee

bb.ea:                                            ; preds = %bb.dx
  %i.ach = ptrtoint ptr %.78671650 to i64
  %i.aci = sub i64 %i.aby, %i.ach
  %i.acj = icmp ult i64 %i.aci, 2
  br i1 %i.acj, label %.thread1419, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.7867.val = load i16, ptr %.78671650, align 1
  %i.ack = zext i16 %.7867.val to i32
  %i.acl = getelementptr inbounds nuw i8, ptr %.78671650, i64 2
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dx
  %i.acm = ptrtoint ptr %.78671650 to i64
  %i.acn = sub i64 %i.aby, %i.acm
  %i.aco = icmp ult i64 %i.acn, 3
  br i1 %i.aco, label %.thread1419, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %.7867.val1086 = load i24, ptr %.78671650, align 1
  %.0.insert.ext.i.i1100 = zext i24 %.7867.val1086 to i32
  %i.acp = getelementptr inbounds nuw i8, ptr %.78671650, i64 3
  br label %bb.ee

bb.ee:                                            ; preds = %bb.dx, %bb.dz, %bb.ed, %bb.eb
  %.8868 = phi ptr [ %i.acp, %bb.ed ], [ %i.ace, %bb.dz ], [ %i.acl, %bb.eb ], [ %.78671650, %bb.dx ]
  %.0755 = phi i32 [ %.0.insert.ext.i.i1100, %bb.ed ], [ %i.acg, %bb.dz ], [ %i.ack, %bb.eb ], [ %.87811655, %bb.dx ] ; 7 uses
  %i.acq = icmp ult i16 %.val1062, 4
  br i1 %i.acq, label %bb.ef, label %bb.eq, !prof !48

bb.ef:                                            ; preds = %bb.ee
  %i.acr = ptrtoint ptr %.148331654 to i64
  %i.acs = sub i64 %i.cv, %i.acr
  %i.act = icmp slt i64 %i.acs, 1
  br i1 %i.act, label %.thread1419, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acu = getelementptr inbounds nuw i8, ptr %.148331654, i64 1 ; 3 uses
  %i.acv = load i8, ptr %.148331654, align 1, !tbaa !22 ; 2 uses
  %i.acw = zext i8 %i.acv to i64
  %i.acx = icmp eq i8 %i.acv, -1
  br i1 %i.acx, label %.preheader1434.preheader, label %.loopexit1436, !prof !48

.preheader1434.preheader:                         ; preds = %bb.eg
  %i.acy = ptrtoint ptr %i.acu to i64
  %i.acz = sub i64 %i.cv, %i.acy
  %i.ada = icmp slt i64 %i.acz, 2
  br i1 %i.ada, label %.thread1419, label %.lr.ph1793

.preheader1434:                                   ; preds = %.lr.ph1793
  %i.adb = ptrtoint ptr %i.adf to i64
  %i.adc = sub i64 %i.cv, %i.adb
  %i.add = icmp slt i64 %i.adc, 2
  br i1 %i.add, label %.thread1419, label %.lr.ph1793

.lr.ph1793:                                       ; preds = %.preheader1434.preheader, %.preheader1434
  %.07531792 = phi i64 [ %i.adg, %.preheader1434 ], [ 255, %.preheader1434.preheader ]
  %.158341791 = phi ptr [ %i.adf, %.preheader1434 ], [ %i.acu, %.preheader1434.preheader ] ; 2 uses
  %.15834.val = load i16, ptr %.158341791, align 1 ; 2 uses
  %i.ade = zext i16 %.15834.val to i64
  %i.adf = getelementptr inbounds nuw i8, ptr %.158341791, i64 2 ; 3 uses
  %i.adg = add i64 %.07531792, %i.ade             ; 2 uses
  %.not921 = icmp eq i16 %.15834.val, -1
  br i1 %.not921, label %.preheader1434, label %.loopexit1436

.loopexit1436:                                    ; preds = %.lr.ph1793, %bb.eg
  %.16835 = phi ptr [ %i.acu, %bb.eg ], [ %i.adf, %.lr.ph1793 ] ; 3 uses
  %.1754 = phi i64 [ %i.acw, %bb.eg ], [ %i.adg, %.lr.ph1793 ] ; 11 uses
  %i.adh = ptrtoint ptr %.16835 to i64
  %i.adi = sub i64 %i.cv, %i.adh
  %i.adj = icmp slt i64 %i.adi, 1
  br i1 %i.adj, label %.thread1419, label %bb.eh

bb.eh:                                            ; preds = %.loopexit1436
  %i.adk = getelementptr inbounds nuw i8, ptr %.16835, i64 1 ; 3 uses
  %i.adl = load i8, ptr %.16835, align 1, !tbaa !22 ; 2 uses
  %i.adm = zext i8 %i.adl to i64
  %i.adn = icmp eq i8 %i.adl, -1
  br i1 %i.adn, label %.preheader1433.preheader, label %.loopexit, !prof !48

.preheader1433.preheader:                         ; preds = %bb.eh
  %i.ado = ptrtoint ptr %i.adk to i64
  %i.adp = sub i64 %i.cv, %i.ado
  %i.adq = icmp slt i64 %i.adp, 2
  br i1 %i.adq, label %.thread1419, label %.lr.ph1796

.preheader1433:                                   ; preds = %.lr.ph1796
  %i.adr = ptrtoint ptr %i.adv to i64
  %i.ads = sub i64 %i.cv, %i.adr
  %i.adt = icmp slt i64 %i.ads, 2
  br i1 %i.adt, label %.thread1419, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %.preheader1433.preheader, %.preheader1433
  %.07511795 = phi i64 [ %i.adw, %.preheader1433 ], [ 255, %.preheader1433.preheader ]
  %.178361794 = phi ptr [ %i.adv, %.preheader1433 ], [ %i.adk, %.preheader1433.preheader ] ; 2 uses
  %.17836.val = load i16, ptr %.178361794, align 1 ; 2 uses
  %i.adu = zext i16 %.17836.val to i64
  %i.adv = getelementptr inbounds nuw i8, ptr %.178361794, i64 2 ; 3 uses
  %i.adw = add i64 %.07511795, %i.adu             ; 2 uses
  %.not922 = icmp eq i16 %.17836.val, -1
  br i1 %.not922, label %.preheader1433, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph1796, %bb.eh
  %.18837 = phi ptr [ %i.adk, %bb.eh ], [ %i.adv, %.lr.ph1796 ] ; 4 uses
  %.1752 = phi i64 [ %i.adm, %bb.eh ], [ %i.adw, %.lr.ph1796 ] ; 6 uses
  %i.adx = ptrtoint ptr %.128531651 to i64        ; 2 uses
  %i.ady = sub i64 %i.abz, %i.adx
  %i.adz = icmp ugt i64 %.1754, %i.ady
  br i1 %i.adz, label %.thread1419, label %bb.ei

bb.ei:                                            ; preds = %.loopexit
  %i.aea = add i64 %.1752, %.1754
  %i.aeb = ptrtoint ptr %.281657 to i64           ; 2 uses
  %i.aec = sub i64 %i.h, %i.aeb
  %i.aed = icmp ugt i64 %i.aea, %i.aec
  br i1 %i.aed, label %.thread1419, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aee = getelementptr inbounds i8, ptr %.281657, i64 %.1754 ; 9 uses
  %i.aef = icmp sgt i64 %.1754, 32
  br i1 %i.aef, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aeg = add nsw i64 %.1754, -32                ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.281657, i64 %i.aeg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.281657, ptr noundef nonnull align 1 dereferenceable(16) %.128531651, i64 16, i1 false)
  %.not.i.i1033 = icmp samesign ugt i64 %.1754, 48
  br i1 %.not.i.i1033, label %.preheader1432.preheader, label %ZS_wildcopy.exit.i1034

.preheader1432.preheader:                         ; preds = %bb.ek
  %i.aei = getelementptr inbounds nuw i8, ptr %.281657, i64 16
  br label %.preheader1432

.preheader1432:                                   ; preds = %.preheader1432.preheader, %.preheader1432
  %.12853.pn = phi ptr [ %i.aek, %.preheader1432 ], [ %.128531651, %.preheader1432.preheader ] ; 2 uses
  %.01232 = phi ptr [ %i.ael, %.preheader1432 ], [ %i.aei, %.preheader1432.preheader ] ; 3 uses
  %.01233 = getelementptr inbounds nuw i8, ptr %.12853.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.01232, ptr noundef nonnull align 1 dereferenceable(16) %.01233, i64 16, i1 false)
  %i.aej = getelementptr inbounds nuw i8, ptr %.01232, i64 16
  %i.aek = getelementptr inbounds nuw i8, ptr %.12853.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aej, ptr noundef nonnull align 1 dereferenceable(16) %i.aek, i64 16, i1 false)
  %i.ael = getelementptr inbounds nuw i8, ptr %.01232, i64 32 ; 2 uses
  %i.aem = icmp ult ptr %i.ael, %i.aeh
  br i1 %i.aem, label %.preheader1432, label %ZS_wildcopy.exit.i1034, !llvm.loop !24

ZS_wildcopy.exit.i1034:                           ; preds = %.preheader1432, %bb.ek
  %i.aen = getelementptr inbounds nuw i8, ptr %.128531651, i64 %i.aeg
  br label %bb.el

bb.el:                                            ; preds = %ZS_wildcopy.exit.i1034, %bb.ej
  %.017.i1029 = phi ptr [ %i.aeh, %ZS_wildcopy.exit.i1034 ], [ %.281657, %bb.ej ] ; 6 uses
  %.0.i1030 = phi ptr [ %i.aen, %ZS_wildcopy.exit.i1034 ], [ %.128531651, %bb.ej ] ; 5 uses
  %i.aeo = icmp ult ptr %.017.i1029, %i.aee
  br i1 %i.aeo, label %iter.check1899, label %ZS_safecopy.exit1036

iter.check1899:                                   ; preds = %bb.el
  %i.aep = call i64 @llvm.smin.i64(i64 %.1754, i64 32) ; 7 uses
  %min.iters.check1883 = icmp ult i64 %i.aep, 8
  %i.aeq = sub i64 %i.adx, %i.aeb
  %diff.check1881 = icmp ugt i64 %i.aeq, -32
  %or.cond1986 = or i1 %min.iters.check1883, %diff.check1881
  br i1 %or.cond1986, label %.lr.ph1646.preheader, label %vector.main.loop.iter.check1884

vector.main.loop.iter.check1884:                  ; preds = %iter.check1899
end_hunk_1
begin_hunk_2_@ZS_fastDecoder_decompress:bb.a
  %i.agv = sub i64 %i.h, %i.agu
  %i.agw = icmp ugt i64 %i.agt, %i.agv
  br i1 %i.agw, label %.thread1419, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.agx = getelementptr inbounds nuw i8, ptr %.281657, i64 %i.agm ; 9 uses
  %.not1661 = icmp eq i32 %i.agl, 0
  br i1 %.not1661, label %ZS_safecopy.exit1024, label %iter.check1968

iter.check1968:                                   ; preds = %bb.es
  %i.agy = add i64 %i.agu, %i.agm
  %i.agz = add i64 %i.agu, 1
  %umax1951 = call i64 @llvm.umax.i64(i64 %i.agy, i64 %i.agz)
  %i.aha = sub i64 %umax1951, %i.agu              ; 7 uses
  %min.iters.check1952 = icmp ult i64 %i.aha, 8
  %i.ahb = sub i64 %i.agq, %i.agu
  %diff.check1950 = icmp ugt i64 %i.ahb, -32
  %or.cond1988 = or i1 %min.iters.check1952, %diff.check1950
  br i1 %or.cond1988, label %.lr.ph1640.preheader, label %vector.main.loop.iter.check1953

vector.main.loop.iter.check1953:                  ; preds = %iter.check1968
  %min.iters.check1954 = icmp ult i64 %i.aha, 32
  br i1 %min.iters.check1954, label %vec.epilog.ph1972, label %vector.ph1955

vector.ph1955:                                    ; preds = %vector.main.loop.iter.check1953
  %i.ahc = and i64 %i.aha, 24
  %n.vec1956 = and i64 %i.aha, -32                ; 5 uses
  %i.ahd = getelementptr i8, ptr %.128531651, i64 %n.vec1956
  %i.ahe = getelementptr i8, ptr %.281657, i64 %n.vec1956
  br label %vector.body1957

vector.body1957:                                  ; preds = %vector.ph1955, %vector.body1957
  %index1958 = phi i64 [ 0, %vector.ph1955 ], [ %index.next1963, %vector.body1957 ] ; 3 uses
  %next.gep1959 = getelementptr i8, ptr %.128531651, i64 %index1958 ; 2 uses
  %next.gep1960 = getelementptr i8, ptr %.281657, i64 %index1958 ; 2 uses
  %i.ahf = getelementptr i8, ptr %next.gep1959, i64 16
  %wide.load1961 = load <16 x i8>, ptr %next.gep1959, align 1, !tbaa !22
  %wide.load1962 = load <16 x i8>, ptr %i.ahf, align 1, !tbaa !22
  %i.ahg = getelementptr i8, ptr %next.gep1960, i64 16
  store <16 x i8> %wide.load1961, ptr %next.gep1960, align 1, !tbaa !22
  store <16 x i8> %wide.load1962, ptr %i.ahg, align 1, !tbaa !22
  %index.next1963 = add nuw i64 %index1958, 32    ; 2 uses
  %i.ahh = icmp eq i64 %index.next1963, %n.vec1956
  br i1 %i.ahh, label %middle.block1964, label %vector.body1957, !llvm.loop !40

middle.block1964:                                 ; preds = %vector.body1957
  %cmp.n1965 = icmp eq i64 %i.aha, %n.vec1956
  br i1 %cmp.n1965, label %ZS_safecopy.exit1024, label %vec.epilog.iter.check1970

vec.epilog.iter.check1970:                        ; preds = %middle.block1964
  %min.epilog.iters.check1971 = icmp eq i64 %i.ahc, 0
  br i1 %min.epilog.iters.check1971, label %.lr.ph1640.preheader, label %vec.epilog.ph1972, !prof !54

vec.epilog.ph1972:                                ; preds = %vector.main.loop.iter.check1953, %vec.epilog.iter.check1970
  %vec.epilog.resume.val1966 = phi i64 [ %n.vec1956, %vec.epilog.iter.check1970 ], [ 0, %vector.main.loop.iter.check1953 ]
  %n.vec1973 = and i64 %i.aha, -8                 ; 4 uses
  %i.ahi = getelementptr i8, ptr %.128531651, i64 %n.vec1973
  %i.ahj = getelementptr i8, ptr %.281657, i64 %n.vec1973
  br label %vec.epilog.vector.body1974

vec.epilog.vector.body1974:                       ; preds = %vec.epilog.vector.body1974, %vec.epilog.ph1972
  %index1975 = phi i64 [ %vec.epilog.resume.val1966, %vec.epilog.ph1972 ], [ %index.next1979, %vec.epilog.vector.body1974 ] ; 3 uses
  %next.gep1976 = getelementptr i8, ptr %.128531651, i64 %index1975
  %next.gep1977 = getelementptr i8, ptr %.281657, i64 %index1975
  %wide.load1978 = load <8 x i8>, ptr %next.gep1976, align 1, !tbaa !22
  store <8 x i8> %wide.load1978, ptr %next.gep1977, align 1, !tbaa !22
  %index.next1979 = add nuw i64 %index1975, 8     ; 2 uses
  %i.ahk = icmp eq i64 %index.next1979, %n.vec1973
  br i1 %i.ahk, label %vec.epilog.middle.block1980, label %vec.epilog.vector.body1974, !llvm.loop !41

vec.epilog.middle.block1980:                      ; preds = %vec.epilog.vector.body1974
  %cmp.n1981 = icmp eq i64 %i.aha, %n.vec1973
  br i1 %cmp.n1981, label %ZS_safecopy.exit1024, label %.lr.ph1640.preheader

.lr.ph1640.preheader:                             ; preds = %iter.check1968, %vec.epilog.iter.check1970, %vec.epilog.middle.block1980
  %.1.i10231639.ph = phi ptr [ %.128531651, %iter.check1968 ], [ %i.ahd, %vec.epilog.iter.check1970 ], [ %i.ahi, %vec.epilog.middle.block1980 ]
  %.118.i10221638.ph = phi ptr [ %.281657, %iter.check1968 ], [ %i.ahe, %vec.epilog.iter.check1970 ], [ %i.ahj, %vec.epilog.middle.block1980 ]
  br label %.lr.ph1640

.lr.ph1640:                                       ; preds = %.lr.ph1640.preheader, %.lr.ph1640
  %.1.i10231639 = phi ptr [ %i.ahl, %.lr.ph1640 ], [ %.1.i10231639.ph, %.lr.ph1640.preheader ] ; 2 uses
  %.118.i10221638 = phi ptr [ %i.ahn, %.lr.ph1640 ], [ %.118.i10221638.ph, %.lr.ph1640.preheader ] ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.1.i10231639, i64 1
  %i.ahm = load i8, ptr %.1.i10231639, align 1, !tbaa !22
  %i.ahn = getelementptr inbounds nuw i8, ptr %.118.i10221638, i64 1 ; 2 uses
  store i8 %i.ahm, ptr %.118.i10221638, align 1, !tbaa !22
  %i.aho = icmp ult ptr %i.ahn, %i.agx
  br i1 %i.aho, label %.lr.ph1640, label %ZS_safecopy.exit1024, !llvm.loop !42

ZS_safecopy.exit1024:                             ; preds = %.lr.ph1640, %middle.block1964, %vec.epilog.middle.block1980, %bb.es
  %i.ahp = icmp ult i32 %.0755, 16
  br i1 %i.ahp, label %.thread1419, label %bb.et

bb.et:                                            ; preds = %ZS_safecopy.exit1024
  %i.ahq = zext i32 %.0755 to i64                 ; 2 uses
  %i.ahr = ptrtoint ptr %i.agx to i64
  %i.ahs = sub i64 %i.ahr, %i.i
  %i.aht = icmp ult i64 %i.ahs, %i.ahq
  br i1 %i.aht, label %.thread1419, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agx, i64 %i.agp ; 5 uses
  %.not1662 = icmp eq i32 %i.ago, 0
  br i1 %.not1662, label %ZS_safecopy.exit1028, label %iter.check1933

iter.check1933:                                   ; preds = %bb.eu
  %i.ahv = sub nsw i64 0, %i.ahq
  %i.ahw = getelementptr inbounds i8, ptr %i.agx, i64 %i.ahv ; 5 uses
  %i.ahx = add i64 %i.agu, %i.agp
  %i.ahy = add i64 %i.ahx, %i.agm
  %i.ahz = add i64 %i.agu, 1
  %i.aia = add i64 %i.ahz, %i.agm
  %umax = call i64 @llvm.umax.i64(i64 %i.ahy, i64 %i.aia)
  %i.aib = add i64 %i.agu, %i.agm
  %i.aic = sub i64 %umax, %i.aib                  ; 7 uses
  %min.iters.check1917 = icmp ult i64 %i.aic, 8
  %diff.check1916 = icmp ult i32 %.0755, 32
  %or.cond1989 = select i1 %min.iters.check1917, i1 true, i1 %diff.check1916
  br i1 %or.cond1989, label %.lr.ph1643.preheader, label %vector.main.loop.iter.check1918

vector.main.loop.iter.check1918:                  ; preds = %iter.check1933
  %min.iters.check1919 = icmp ult i64 %i.aic, 32
  br i1 %min.iters.check1919, label %vec.epilog.ph1937, label %vector.ph1920

vector.ph1920:                                    ; preds = %vector.main.loop.iter.check1918
  %i.aid = and i64 %i.aic, 24
  %n.vec1921 = and i64 %i.aic, -32                ; 5 uses
  %i.aie = getelementptr i8, ptr %i.ahw, i64 %n.vec1921
  %i.aif = getelementptr i8, ptr %i.agx, i64 %n.vec1921
  br label %vector.body1922

vector.body1922:                                  ; preds = %vector.ph1920, %vector.body1922
  %index1923 = phi i64 [ 0, %vector.ph1920 ], [ %index.next1928, %vector.body1922 ] ; 3 uses
  %next.gep1924 = getelementptr i8, ptr %i.ahw, i64 %index1923 ; 2 uses
  %next.gep1925 = getelementptr i8, ptr %i.agx, i64 %index1923 ; 2 uses
  %i.aig = getelementptr i8, ptr %next.gep1924, i64 16
  %wide.load1926 = load <16 x i8>, ptr %next.gep1924, align 1, !tbaa !22
  %wide.load1927 = load <16 x i8>, ptr %i.aig, align 1, !tbaa !22
  %i.aih = getelementptr i8, ptr %next.gep1925, i64 16
  store <16 x i8> %wide.load1926, ptr %next.gep1925, align 1, !tbaa !22
  store <16 x i8> %wide.load1927, ptr %i.aih, align 1, !tbaa !22
  %index.next1928 = add nuw i64 %index1923, 32    ; 2 uses
  %i.aii = icmp eq i64 %index.next1928, %n.vec1921
  br i1 %i.aii, label %middle.block1929, label %vector.body1922, !llvm.loop !43

middle.block1929:                                 ; preds = %vector.body1922
  %cmp.n1930 = icmp eq i64 %i.aic, %n.vec1921
  br i1 %cmp.n1930, label %ZS_safecopy.exit1028, label %vec.epilog.iter.check1935

vec.epilog.iter.check1935:                        ; preds = %middle.block1929
  %min.epilog.iters.check1936 = icmp eq i64 %i.aid, 0
  br i1 %min.epilog.iters.check1936, label %.lr.ph1643.preheader, label %vec.epilog.ph1937, !prof !54

vec.epilog.ph1937:                                ; preds = %vector.main.loop.iter.check1918, %vec.epilog.iter.check1935
  %vec.epilog.resume.val1931 = phi i64 [ %n.vec1921, %vec.epilog.iter.check1935 ], [ 0, %vector.main.loop.iter.check1918 ]
  %n.vec1938 = and i64 %i.aic, -8                 ; 4 uses
  %i.aij = getelementptr i8, ptr %i.ahw, i64 %n.vec1938
  %i.aik = getelementptr i8, ptr %i.agx, i64 %n.vec1938
  br label %vec.epilog.vector.body1939

vec.epilog.vector.body1939:                       ; preds = %vec.epilog.vector.body1939, %vec.epilog.ph1937
  %index1940 = phi i64 [ %vec.epilog.resume.val1931, %vec.epilog.ph1937 ], [ %index.next1944, %vec.epilog.vector.body1939 ] ; 3 uses
  %next.gep1941 = getelementptr i8, ptr %i.ahw, i64 %index1940
  %next.gep1942 = getelementptr i8, ptr %i.agx, i64 %index1940
  %wide.load1943 = load <8 x i8>, ptr %next.gep1941, align 1, !tbaa !22
  store <8 x i8> %wide.load1943, ptr %next.gep1942, align 1, !tbaa !22
  %index.next1944 = add nuw i64 %index1940, 8     ; 2 uses
  %i.ail = icmp eq i64 %index.next1944, %n.vec1938
  br i1 %i.ail, label %vec.epilog.middle.block1945, label %vec.epilog.vector.body1939, !llvm.loop !44

vec.epilog.middle.block1945:                      ; preds = %vec.epilog.vector.body1939
  %cmp.n1946 = icmp eq i64 %i.aic, %n.vec1938
  br i1 %cmp.n1946, label %ZS_safecopy.exit1028, label %.lr.ph1643.preheader

.lr.ph1643.preheader:                             ; preds = %iter.check1933, %vec.epilog.iter.check1935, %vec.epilog.middle.block1945
  %.1.i10201642.ph = phi ptr [ %i.ahw, %iter.check1933 ], [ %i.aie, %vec.epilog.iter.check1935 ], [ %i.aij, %vec.epilog.middle.block1945 ]
  %.118.i1641.ph = phi ptr [ %i.agx, %iter.check1933 ], [ %i.aif, %vec.epilog.iter.check1935 ], [ %i.aik, %vec.epilog.middle.block1945 ]
  br label %.lr.ph1643

.lr.ph1643:                                       ; preds = %.lr.ph1643.preheader, %.lr.ph1643
  %.1.i10201642 = phi ptr [ %i.aim, %.lr.ph1643 ], [ %.1.i10201642.ph, %.lr.ph1643.preheader ] ; 2 uses
  %.118.i1641 = phi ptr [ %i.aio, %.lr.ph1643 ], [ %.118.i1641.ph, %.lr.ph1643.preheader ] ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.1.i10201642, i64 1
  %i.ain = load i8, ptr %.1.i10201642, align 1, !tbaa !22
  %i.aio = getelementptr inbounds nuw i8, ptr %.118.i1641, i64 1 ; 2 uses
  store i8 %i.ain, ptr %.118.i1641, align 1, !tbaa !22
  %i.aip = icmp ult ptr %i.aio, %i.ahu
  br i1 %i.aip, label %.lr.ph1643, label %ZS_safecopy.exit1028, !llvm.loop !45

ZS_safecopy.exit1028:                             ; preds = %.lr.ph1643, %.lr.ph1649, %middle.block1929, %vec.epilog.middle.block1945, %middle.block1860, %vec.epilog.middle.block1876, %bb.eu, %bb.ep
  %.pn1431 = phi i64 [ %.1754, %bb.ep ], [ %i.agm, %bb.eu ], [ %.1754, %middle.block1860 ], [ %i.agm, %middle.block1929 ], [ %.1754, %vec.epilog.middle.block1876 ], [ %.1754, %.lr.ph1649 ], [ %i.agm, %vec.epilog.middle.block1945 ], [ %i.agm, %.lr.ph1643 ]
  %.21840 = phi ptr [ %.18837, %bb.ep ], [ %.148331654, %bb.eu ], [ %.18837, %middle.block1860 ], [ %.148331654, %middle.block1929 ], [ %.18837, %vec.epilog.middle.block1876 ], [ %.18837, %.lr.ph1649 ], [ %.148331654, %vec.epilog.middle.block1945 ], [ %.148331654, %.lr.ph1643 ]
  %.32 = phi ptr [ %i.afl, %bb.ep ], [ %i.ahu, %bb.eu ], [ %i.afl, %middle.block1860 ], [ %i.ahu, %middle.block1929 ], [ %i.afl, %vec.epilog.middle.block1876 ], [ %i.afl, %.lr.ph1649 ], [ %i.ahu, %vec.epilog.middle.block1945 ], [ %i.ahu, %.lr.ph1643 ] ; 2 uses
  %.16857 = getelementptr inbounds nuw i8, ptr %.128531651, i64 %.pn1431 ; 2 uses
  %i.aiq = add i64 %.47681656, 1                  ; 2 uses
  %exitcond1686.not = icmp eq i64 %i.aiq, %i.br
  br i1 %exitcond1686.not, label %._crit_edge, label %bb.dx, !llvm.loop !46

._crit_edge:                                      ; preds = %ZS_safecopy.exit1028, %.critedge.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.critedge.._crit_edge_crit_edge ], [ %i.abz, %ZS_safecopy.exit1028 ]
  %.12853.lcssa = phi ptr [ %.118521743, %.critedge.._crit_edge_crit_edge ], [ %.16857, %ZS_safecopy.exit1028 ] ; 2 uses
  %.28.lcssa = phi ptr [ %.271744, %.critedge.._crit_edge_crit_edge ], [ %.32, %ZS_safecopy.exit1028 ] ; 3 uses
  %i.air = ptrtoint ptr %.12853.lcssa to i64
  %i.ais = sub i64 %.pre-phi, %i.air              ; 3 uses
  %i.ait = ptrtoint ptr %.28.lcssa to i64
  %i.aiu = sub i64 %i.h, %i.ait
  %i.aiv = icmp ugt i64 %i.ais, %i.aiu
  br i1 %i.aiv, label %.thread1419, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.28.lcssa, ptr align 1 %.12853.lcssa, i64 %i.ais, i1 false)
  %i.aiw = getelementptr inbounds nuw i8, ptr %.28.lcssa, i64 %i.ais
  call void @ZL_free(ptr noundef %.0771) #8
  call void @ZL_free(ptr noundef %.0769) #8
  %i.aix = ptrtoint ptr %i.aiw to i64
  %i.aiy = sub i64 %i.aix, %i.i
  br label %bb.ew

.thread1419:                                      ; preds = %.preheader1466.preheader, %.preheader1465.preheader, %.preheader1464.preheader, %getOffsets4.exit975, %.preheader1462.preheader, %.preheader1461.preheader, %.preheader1460.preheader, %getOffsets4.exit968, %.preheader1458.preheader, %.preheader1457.preheader, %.preheader1456.preheader, %getOffsets4.exit961, %.preheader1454.preheader, %.preheader1453.preheader, %getOffsets4.exit982, %.preheader1452.preheader, %ZS_safecopy.exit1024, %bb.er, %bb.eq, %bb.et, %ZS_safecopy.exit1036, %bb.ei, %.loopexit, %.loopexit1436, %bb.ef, %bb.em, %bb.dy, %bb.ea, %bb.ec, %.preheader1434.preheader, %.preheader1433.preheader, %.preheader1434, %.preheader1433, %.loopexit1445, %bb.z, %bb.u, %bb.s, %._crit_edge, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l
  %.1772 = phi ptr [ null, %bb.m ], [ null, %bb.n ], [ %.0771, %.preheader1433 ], [ null, %bb.l ], [ %.0771, %bb.t ], [ %.0771, %bb.v ], [ %.0771, %bb.w ], [ %.0771, %._crit_edge ], [ %.0771, %bb.z ], [ %i.cb, %bb.r ], [ %.0771, %bb.u ], [ %.0771, %bb.s ], [ null, %bb.q ], [ %.0771, %ZS_safecopy.exit1024 ], [ %.0771, %.loopexit1445 ], [ %.0771, %.preheader1434 ], [ %.0771, %.preheader1433.preheader ], [ %.0771, %.preheader1434.preheader ], [ %.0771, %bb.ec ], [ %.0771, %bb.ea ], [ %.0771, %bb.dy ], [ %.0771, %bb.em ], [ %.0771, %bb.ef ], [ %.0771, %.loopexit1436 ], [ %.0771, %.loopexit ], [ %.0771, %bb.ei ], [ %.0771, %ZS_safecopy.exit1036 ], [ %.0771, %bb.et ], [ %.0771, %bb.eq ], [ %.0771, %bb.er ], [ %.0771, %.preheader1452.preheader ], [ %.0771, %getOffsets4.exit982 ], [ %.0771, %.preheader1453.preheader ], [ %.0771, %.preheader1454.preheader ], [ %.0771, %getOffsets4.exit961 ], [ %.0771, %.preheader1456.preheader ], [ %.0771, %.preheader1457.preheader ], [ %.0771, %.preheader1458.preheader ], [ %.0771, %getOffsets4.exit968 ], [ %.0771, %.preheader1460.preheader ], [ %.0771, %.preheader1461.preheader ], [ %.0771, %.preheader1462.preheader ], [ %.0771, %getOffsets4.exit975 ], [ %.0771, %.preheader1464.preheader ], [ %.0771, %.preheader1465.preheader ], [ %.0771, %.preheader1466.preheader ]
  %.1770 = phi ptr [ %.0769, %bb.m ], [ %.0769, %bb.n ], [ %.0769, %.preheader1433 ], [ %i.bd, %bb.l ], [ %.0769, %bb.t ], [ %.0769, %bb.v ], [ %.0769, %bb.w ], [ %.0769, %._crit_edge ], [ %.0769, %bb.z ], [ %.0769, %bb.r ], [ %.0769, %bb.u ], [ %.0769, %bb.s ], [ %.0769, %bb.q ], [ %.0769, %ZS_safecopy.exit1024 ], [ %.0769, %.loopexit1445 ], [ %.0769, %.preheader1434 ], [ %.0769, %.preheader1433.preheader ], [ %.0769, %.preheader1434.preheader ], [ %.0769, %bb.ec ], [ %.0769, %bb.ea ], [ %.0769, %bb.dy ], [ %.0769, %bb.em ], [ %.0769, %bb.ef ], [ %.0769, %.loopexit1436 ], [ %.0769, %.loopexit ], [ %.0769, %bb.ei ], [ %.0769, %ZS_safecopy.exit1036 ], [ %.0769, %bb.et ], [ %.0769, %bb.eq ], [ %.0769, %bb.er ], [ %.0769, %.preheader1452.preheader ], [ %.0769, %getOffsets4.exit982 ], [ %.0769, %.preheader1453.preheader ], [ %.0769, %.preheader1454.preheader ], [ %.0769, %getOffsets4.exit961 ], [ %.0769, %.preheader1456.preheader ], [ %.0769, %.preheader1457.preheader ], [ %.0769, %.preheader1458.preheader ], [ %.0769, %getOffsets4.exit968 ], [ %.0769, %.preheader1460.preheader ], [ %.0769, %.preheader1461.preheader ], [ %.0769, %.preheader1462.preheader ], [ %.0769, %getOffsets4.exit975 ], [ %.0769, %.preheader1464.preheader ], [ %.0769, %.preheader1465.preheader ], [ %.0769, %.preheader1466.preheader ]
  call void @ZL_free(ptr noundef %.1772) #8
  call void @ZL_free(ptr noundef %.1770) #8
  %i.aiz = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_fastDecoder_decompress.__zl_static_error_info.28, ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 1757, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.aja = extractvalue { i32, ptr } %i.aiz, 0    ; 2 uses
  %i.ajb = extractvalue { i32, ptr } %i.aiz, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aja, ptr %i.ajb, ptr noundef nonnull @.str.31) #8
  %i.ajc = ptrtoint ptr %i.ajb to i64
  br label %bb.ew

bb.ew:                                            ; preds = %.thread1268, %.thread1265, %bb.h, %bb.f, %bb.d, %.thread1419, %bb.ev, %bb.b
  %.sroa.0745.8 = phi i32 [ %i.m, %bb.b ], [ %i.u, %bb.d ], [ %i.z, %bb.f ], [ %i.aja, %.thread1419 ], [ %i.bf, %.thread1268 ], [ %i.az, %.thread1265 ], [ %i.at, %bb.h ], [ 0, %bb.ev ]
  %.sroa.25.8 = phi i64 [ %i.o, %bb.b ], [ %i.w, %bb.d ], [ %i.ab, %bb.f ], [ %i.ajc, %.thread1419 ], [ %i.bh, %.thread1268 ], [ %i.bb, %.thread1265 ], [ %i.av, %bb.h ], [ %i.aiy, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0745.8, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.25.8, 1
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

declare i32 @ZS_window_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @isRaw(ptr %0, ptr %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call { i32, i64 } @ZS_Entropy_getType(ptr noundef %0, i64 noundef %i.e) #8 ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.f, 1        ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.g, ptr %i.i, ptr nonnull @isRaw.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef 56, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0
  %i.l = extractvalue { i32, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %i.h, 3
  %i.o = zext i1 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.c ]
  %.sroa.9.0 = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.06.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getRawBuffer(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 1, 3) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.e, ptr %2, align 8, !tbaa !17
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = tail call { i32, i64 } @ZS_Entropy_getType(ptr noundef %i.a, i64 noundef %i.h) #8 ; 2 uses
  %i.j = extractvalue { i32, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.i, 1        ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %isRaw.exit.thread, label %isRaw.exit, !prof !18

isRaw.exit.thread:                                ; preds = %bb.a
  %i.l = icmp eq i64 %i.k, 3
  %i.m = zext i1 %i.l to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.b

isRaw.exit:                                       ; preds = %bb.a
  %i.n = inttoptr i64 %i.k to ptr
  %i.o = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.j, ptr %i.n, ptr nonnull @isRaw.__zl_static_error_info, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef 56, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #8 ; 2 uses
  %i.p = extractvalue { i32, ptr } %i.o, 0
  %i.q = extractvalue { i32, ptr } %i.o, 1
  %i.r = ptrtoint ptr %i.q to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %.not41 = icmp eq i32 %i.p, 0
  br i1 %.not41, label %bb.b, label %bb.g

bb.b:                                             ; preds = %isRaw.exit.thread, %isRaw.exit
  %.sroa.9.0.i40 = phi i64 [ %i.m, %isRaw.exit.thread ], [ %i.r, %isRaw.exit ]
  %.not24 = icmp eq i64 %.sroa.9.0.i40, 0
  br i1 %.not24, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val28 = load ptr, ptr %0, align 8, !tbaa !20  ; 2 uses
  %.val34 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.s = ptrtoint ptr %.val34 to i64
  %i.t = ptrtoint ptr %.val28 to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = call { i32, i64 } @ZS_Entropy_getHeaderSize(ptr noundef %.val28, i64 noundef %i.u) #8 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0
  %i.x = extractvalue { i32, i64 } %i.v, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.val27 = load ptr, ptr %0, align 8, !tbaa !20  ; 2 uses
  %.val32 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.y = ptrtoint ptr %.val32 to i64
  %i.z = ptrtoint ptr %.val27 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = call { i32, i64 } @ZS_Entropy_getEncodedSize(ptr noundef %.val27, i64 noundef %i.aa, i64 noundef %1) #8 ; 2 uses
  %i.ac = extractvalue { i32, i64 } %i.ab, 0
  %i.ad = extractvalue { i32, i64 } %i.ab, 1      ; 2 uses
  %.not42 = icmp eq i32 %i.ac, 0
  br i1 %.not42, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.val29 = load ptr, ptr %0, align 8, !tbaa !20  ; 3 uses
  %.val30 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ae = ptrtoint ptr %.val30 to i64
  %i.af = ptrtoint ptr %.val29 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.val29, i64 %i.x
  %i.aj = getelementptr inbounds nuw i8, ptr %.val29, i64 %i.ad
  store ptr %i.aj, ptr %0, align 8, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %isRaw.exit, %bb.b
  %.2 = phi ptr [ null, %isRaw.exit ], [ null, %bb.b ], [ null, %bb.c ], [ %i.ai, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, i64 } @ZL_RC_popVarint(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
end_hunk_2
