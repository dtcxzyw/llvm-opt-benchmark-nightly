Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/crc32_vpclmulqdq?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0_@crc32_fold_vpclmulqdq:bb.a
  %i.j = icmp ne ptr %0, null, !nosanitize !14
  %i.k = ptrtoint ptr %0 to i64, !nosanitize !14  ; 3 uses
  %i.l = and i64 %i.k, 3, !nosanitize !14
  %i.m = icmp eq i64 %i.l, 0, !nosanitize !14
  %i.n = and i1 %i.j, %i.m, !nosanitize !14       ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.b, !prof !15, !nosanitize !14

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @2, i64 %i.k) #6, !nosanitize !14
  br label %bb.c, !nosanitize !14

bb.c:                                             ; preds = %bb.b, %bb.a
  call fastcc void @crc32_fold_load(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.o = icmp ult i64 %2, 16
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %bb.bq, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not409 = icmp eq ptr %1, null, !nosanitize !14
  br i1 %.not409, label %bb.f, label %.thread469, !prof !16, !nosanitize !14

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @3) #6, !nosanitize !14
  br label %.thread469, !nosanitize !14

.thread469:                                       ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 1 %1, i64 %2, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0.502 = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !13
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0.502, ptr %i.e, align 16, !tbaa !13
  br label %bb.bk

bb.g:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %1 to i64                   ; 10 uses
  %i.r = sub i64 0, %i.q
  %i.s = and i64 %i.r, 15                         ; 6 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not522 = icmp eq ptr %1, null, !nosanitize !14
  br i1 %.not522, label %bb.i, label %_mm_loadu_si128.exit464, !prof !16, !nosanitize !14

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.q) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.q) #6, !nosanitize !14
  br label %_mm_loadu_si128.exit464, !nosanitize !14

_mm_loadu_si128.exit464:                          ; preds = %bb.h, %bb.i
  %i.t = load <2 x i64>, ptr %1, align 1, !tbaa !13 ; 2 uses
  store <2 x i64> %i.t, ptr %i.e, align 16, !tbaa !13
  br i1 %i.h, label %bb.j, label %.thread

bb.j:                                             ; preds = %_mm_loadu_si128.exit464
  %i.u = xor <2 x i64> %i.t, %i.g                 ; 4 uses
  store <2 x i64> %i.u, ptr %i.e, align 16, !tbaa !13
  %i.v = icmp samesign ult i64 %i.s, 4
  br i1 %i.v, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %2, 31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.y = add i64 %i.q, 16, !nosanitize !14        ; 5 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult ptr %1, inttoptr (i64 -16 to ptr)
  %i.ab = and i1 %i.aa, %i.z, !nosanitize !14     ; 3 uses
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.ab, label %_mm_loadu_si128.exit, label %_mm_loadu_si128.exit463, !prof !15, !nosanitize !14

_mm_loadu_si128.exit463:                          ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @4, i64 %i.q, i64 %i.y) #6, !nosanitize !14
  %i.ac = load <2 x i64>, ptr %i.x, align 1, !tbaa !13
  store <2 x i64> %i.ac, ptr %i.e, align 16, !tbaa !13
  call fastcc void @fold_1(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.ad = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %i.ae = xor <2 x i64> %i.ad, %i.u
  store <2 x i64> %i.ae, ptr %i.d, align 16, !tbaa !13
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @7, i64 %i.q, i64 %i.y) #6, !nosanitize !14
  br label %bb.p, !nosanitize !14

bb.m:                                             ; preds = %bb.k
  br i1 %i.ab, label %_mm_load_si128.exit461, label %bb.n, !prof !15, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @5, i64 %i.q, i64 %i.y) #6, !nosanitize !14
  br label %_mm_load_si128.exit461, !nosanitize !14

_mm_load_si128.exit461:                           ; preds = %bb.n, %bb.m
  %i.af = add nsw i64 %2, -16                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr nonnull align 1 %i.x, i64 %i.af, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !13
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.e, align 16, !tbaa !13
  call fastcc void @fold_1(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.ag = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %i.ah = xor <2 x i64> %i.ag, %i.u
  store <2 x i64> %i.ah, ptr %i.d, align 16, !tbaa !13
  br i1 %i.ab, label %bb.bj, label %bb.o, !prof !15, !nosanitize !14

bb.o:                                             ; preds = %_mm_load_si128.exit461
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @6, i64 %i.q, i64 %i.y) #6, !nosanitize !14
  br label %bb.bj, !nosanitize !14

_mm_loadu_si128.exit:                             ; preds = %bb.l
  %i.ai = load <2 x i64>, ptr %i.x, align 1, !tbaa !13
  store <2 x i64> %i.ai, ptr %i.e, align 16, !tbaa !13
  call fastcc void @fold_1(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.aj = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %i.ak = xor <2 x i64> %i.aj, %i.u
  store <2 x i64> %i.ak, ptr %i.d, align 16, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %_mm_loadu_si128.exit463, %_mm_loadu_si128.exit
  %i.al = add i64 %2, -16
  %.pre = ptrtoint ptr %i.x to i64, !nosanitize !14
  br label %.thread

.thread:                                          ; preds = %_mm_loadu_si128.exit464, %bb.p, %bb.j
  %.pre-phi = phi i64 [ %i.q, %_mm_loadu_si128.exit464 ], [ %.pre, %bb.p ], [ %i.q, %bb.j ] ; 3 uses
  %.0324 = phi i64 [ %2, %_mm_loadu_si128.exit464 ], [ %i.al, %bb.p ], [ %2, %bb.j ]
  %.0318 = phi ptr [ %1, %_mm_loadu_si128.exit464 ], [ %i.x, %bb.p ], [ %1, %bb.j ]
  call fastcc void @partial_fold(i64 noundef %i.s, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.am = getelementptr inbounds nuw i8, ptr %.0318, i64 %i.s
  %i.an = add i64 %i.s, %.pre-phi, !nosanitize !14 ; 2 uses
  %.not479 = icmp ult i64 %i.an, %.pre-phi, !nosanitize !14
  br i1 %.not479, label %bb.q, label %bb.r, !prof !16, !nosanitize !14

bb.q:                                             ; preds = %.thread
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @8, i64 %.pre-phi, i64 %i.an) #6, !nosanitize !14
  br label %bb.r, !nosanitize !14

bb.r:                                             ; preds = %.thread, %bb.q
  %i.ao = sub nuw i64 %.0324, %i.s
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.g
  %.1325 = phi i64 [ %i.ao, %bb.r ], [ %2, %bb.g ] ; 4 uses
  %.1319 = phi ptr [ %i.am, %bb.r ], [ %1, %bb.g ] ; 13 uses
  %.1 = phi i32 [ 0, %bb.r ], [ %i.i, %bb.g ]     ; 2 uses
  %i.ap = icmp ugt i64 %.1325, 255
  br i1 %i.ap, label %bb.t, label %.preheader

bb.t:                                             ; preds = %bb.s
  %i.aq = shufflevector <2 x i64> %i.g, <2 x i64> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %.not523 = icmp eq ptr %.1319, null, !nosanitize !14
  %.pre.i = ptrtoint ptr %.1319 to i64, !nosanitize !14 ; 13 uses
  br i1 %.not523, label %bb.u, label %_mm512_loadu_si512.exit112.i, !prof !16, !nosanitize !14

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @129, i64 %.pre.i) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %.pre.i) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit112.i, !nosanitize !14

_mm512_loadu_si512.exit112.i:                     ; preds = %bb.u, %bb.t
  %i.ar = load <8 x i64>, ptr %.1319, align 1, !tbaa !13
  %.not.i = icmp eq i32 %.1, 0
  %i.as = select i1 %.not.i, <8 x i64> zeroinitializer, <8 x i64> %i.aq
  %spec.select.i = xor <8 x i64> %i.ar, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %.1319, i64 64
  %i.au = add i64 %.pre.i, 64, !nosanitize !14    ; 2 uses
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = icmp ult ptr %.1319, inttoptr (i64 -64 to ptr)
  %i.ax = and i1 %i.aw, %i.av
  br i1 %i.ax, label %_mm512_loadu_si512.exit111.i, label %bb.v, !prof !15, !nosanitize !14

bb.v:                                             ; preds = %_mm512_loadu_si512.exit112.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @120, i64 %.pre.i, i64 %i.au) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit111.i, !nosanitize !14

_mm512_loadu_si512.exit111.i:                     ; preds = %_mm512_loadu_si512.exit112.i, %bb.v
  %i.ay = load <8 x i64>, ptr %i.at, align 1, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1319, i64 128
  %i.ba = add i64 %.pre.i, 128, !nosanitize !14   ; 2 uses
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = icmp ult ptr %.1319, inttoptr (i64 -128 to ptr)
  %i.bd = and i1 %i.bc, %i.bb
  br i1 %i.bd, label %_mm512_loadu_si512.exit110.i, label %bb.w, !prof !15, !nosanitize !14

bb.w:                                             ; preds = %_mm512_loadu_si512.exit111.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @121, i64 %.pre.i, i64 %i.ba) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit110.i, !nosanitize !14

_mm512_loadu_si512.exit110.i:                     ; preds = %_mm512_loadu_si512.exit111.i, %bb.w
  %i.be = load <8 x i64>, ptr %i.az, align 1, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1319, i64 192
  %i.bg = add i64 %.pre.i, 192, !nosanitize !14   ; 2 uses
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = icmp ult ptr %.1319, inttoptr (i64 -192 to ptr)
  %i.bj = and i1 %i.bi, %i.bh
  br i1 %i.bj, label %_mm512_loadu_si512.exit109.i, label %bb.x, !prof !15, !nosanitize !14

bb.x:                                             ; preds = %_mm512_loadu_si512.exit110.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @122, i64 %.pre.i, i64 %i.bg) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit109.i, !nosanitize !14

_mm512_loadu_si512.exit109.i:                     ; preds = %_mm512_loadu_si512.exit110.i, %bb.x
  %i.bk = load <8 x i64>, ptr %i.bf, align 1, !tbaa !13 ; 2 uses
  %4 = load <2 x i64>, ptr %i.a, align 16, !tbaa !13
  %5 = load <2 x i64>, ptr %i.b, align 16, !tbaa !13
  %6 = shufflevector <2 x i64> %4, <2 x i64> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = load <2 x i64>, ptr %i.c, align 16, !tbaa !13
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = bitcast <8 x i64> %9 to <16 x i32>
  %i.bl = shufflevector <16 x i32> %7, <16 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = bitcast <8 x i64> %12 to <16 x i32>
  %i.bm = shufflevector <16 x i32> %i.bl, <16 x i32> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.bn = bitcast <16 x i32> %i.bm to <8 x i64>   ; 2 uses
  %i.bo = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bn, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.bp = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.bn, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.bq = bitcast <8 x i64> %i.bp to <16 x i32>
  %i.br = bitcast <8 x i64> %i.bo to <16 x i32>
  %i.bs = bitcast <8 x i64> %spec.select.i to <16 x i32>
  %i.bt = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bq, <16 x i32> %i.br, <16 x i32> %i.bs, i32 150)
  %i.bu = add i64 %.pre.i, 256, !nosanitize !14   ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = icmp ult ptr %.1319, inttoptr (i64 -256 to ptr)
  %i.bx = and i1 %i.bw, %i.bv
  br i1 %i.bx, label %bb.z, label %bb.y, !prof !15, !nosanitize !14

bb.y:                                             ; preds = %_mm512_loadu_si512.exit109.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @123, i64 %.pre.i, i64 %i.bu) #6, !nosanitize !14
  br label %bb.z, !nosanitize !14

bb.z:                                             ; preds = %bb.y, %_mm512_loadu_si512.exit109.i
  %.096121.i = add i64 %.1325, -256               ; 3 uses
  %.093122.i = bitcast <16 x i32> %i.bt to <8 x i64> ; 2 uses
  %i.by = icmp ugt i64 %.096121.i, 255
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.ae
  %.093129.i = phi <8 x i64> [ %.093.i, %bb.ae ], [ %.093122.i, %bb.z ] ; 2 uses
  %.096128.i = phi i64 [ %.096.i, %bb.ae ], [ %.096121.i, %bb.z ]
  %.0127.i = phi <8 x i64> [ %i.df, %bb.ae ], [ %i.bk, %bb.z ] ; 2 uses
  %.091126.i = phi <8 x i64> [ %i.db, %bb.ae ], [ %i.be, %bb.z ] ; 2 uses
  %.092125.i = phi <8 x i64> [ %i.cx, %bb.ae ], [ %i.ay, %bb.z ] ; 2 uses
  %.pn124.i = phi ptr [ %.095130.i, %bb.ae ], [ %.1319, %bb.z ] ; 4 uses
  %.095130.i = getelementptr inbounds nuw i8, ptr %.pn124.i, i64 256 ; 7 uses
  %.pre139.i = ptrtoint ptr %.095130.i to i64, !nosanitize !14 ; 8 uses
  %i.bz = load <16 x i32>, ptr %.095130.i, align 1, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn124.i, i64 320
  %.not102.i = icmp ugt ptr %.095130.i, inttoptr (i64 -65 to ptr)
  br i1 %.not102.i, label %bb.aa, label %_mm512_loadu_si512.exit107.i, !prof !16, !nosanitize !14

bb.aa:                                            ; preds = %.lr.ph.i
  %i.cb = add i64 %.pre139.i, 64, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @124, i64 %.pre139.i, i64 %i.cb) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit107.i, !nosanitize !14

_mm512_loadu_si512.exit107.i:                     ; preds = %.lr.ph.i, %bb.aa
  %i.cc = load <16 x i32>, ptr %i.ca, align 1, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn124.i, i64 384
  %.not103.i = icmp ugt ptr %.095130.i, inttoptr (i64 -129 to ptr)
  br i1 %.not103.i, label %bb.ab, label %_mm512_loadu_si512.exit106.i, !prof !16, !nosanitize !14

bb.ab:                                            ; preds = %_mm512_loadu_si512.exit107.i
  %i.ce = add i64 %.pre139.i, 128, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @125, i64 %.pre139.i, i64 %i.ce) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit106.i, !nosanitize !14

_mm512_loadu_si512.exit106.i:                     ; preds = %_mm512_loadu_si512.exit107.i, %bb.ab
  %i.cf = load <16 x i32>, ptr %i.cd, align 1, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn124.i, i64 448
  %.not104.i = icmp ugt ptr %.095130.i, inttoptr (i64 -193 to ptr)
  br i1 %.not104.i, label %bb.ac, label %_mm512_loadu_si512.exit.i, !prof !16, !nosanitize !14

bb.ac:                                            ; preds = %_mm512_loadu_si512.exit106.i
  %i.ch = add i64 %.pre139.i, 192, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @126, i64 %.pre139.i, i64 %i.ch) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit.i, !nosanitize !14

_mm512_loadu_si512.exit.i:                        ; preds = %_mm512_loadu_si512.exit106.i, %bb.ac
  %i.ci = load <16 x i32>, ptr %i.cg, align 1, !tbaa !13
  %i.cj = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.093129.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ck = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.092125.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cl = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.091126.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cm = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0127.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cn = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.093129.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.co = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.092125.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cp = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.091126.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cq = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0127.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cr = bitcast <8 x i64> %i.cn to <16 x i32>
  %i.cs = bitcast <8 x i64> %i.cj to <16 x i32>
  %i.ct = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cr, <16 x i32> %i.cs, <16 x i32> %i.bz, i32 150)
  %i.cu = bitcast <8 x i64> %i.co to <16 x i32>
  %i.cv = bitcast <8 x i64> %i.ck to <16 x i32>
  %i.cw = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cu, <16 x i32> %i.cv, <16 x i32> %i.cc, i32 150)
  %i.cx = bitcast <16 x i32> %i.cw to <8 x i64>   ; 2 uses
  %i.cy = bitcast <8 x i64> %i.cp to <16 x i32>
  %i.cz = bitcast <8 x i64> %i.cl to <16 x i32>
  %i.da = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cy, <16 x i32> %i.cz, <16 x i32> %i.cf, i32 150)
  %i.db = bitcast <16 x i32> %i.da to <8 x i64>   ; 2 uses
  %i.dc = bitcast <8 x i64> %i.cq to <16 x i32>
  %i.dd = bitcast <8 x i64> %i.cm to <16 x i32>
  %i.de = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dc, <16 x i32> %i.dd, <16 x i32> %i.ci, i32 150)
  %i.df = bitcast <16 x i32> %i.de to <8 x i64>   ; 2 uses
  %.not105.i = icmp ugt ptr %.095130.i, inttoptr (i64 -257 to ptr)
  br i1 %.not105.i, label %bb.ad, label %bb.ae, !prof !16, !nosanitize !14

bb.ad:                                            ; preds = %_mm512_loadu_si512.exit.i
  %i.dg = add i64 %.pre139.i, 256, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @127, i64 %.pre139.i, i64 %i.dg) #6, !nosanitize !14
  br label %bb.ae, !nosanitize !14

bb.ae:                                            ; preds = %bb.ad, %_mm512_loadu_si512.exit.i
  %.096.i = add i64 %.096128.i, -256              ; 3 uses
  %.093.i = bitcast <16 x i32> %i.ct to <8 x i64> ; 2 uses
  %i.dh = icmp ugt i64 %.096.i, 255
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %bb.ae, %bb.z
  %.092.lcssa.i = phi <8 x i64> [ %i.ay, %bb.z ], [ %i.cx, %bb.ae ]
  %.091.lcssa.i = phi <8 x i64> [ %i.be, %bb.z ], [ %i.db, %bb.ae ]
  %.0.lcssa.i = phi <8 x i64> [ %i.bk, %bb.z ], [ %i.df, %bb.ae ]
  %.096.lcssa.i = phi i64 [ %.096121.i, %bb.z ], [ %.096.i, %bb.ae ] ; 3 uses
  %.093.lcssa.i = phi <8 x i64> [ %.093122.i, %bb.z ], [ %.093.i, %bb.ae ] ; 2 uses
  %i.di = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.093.lcssa.i, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.dj = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.093.lcssa.i, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.dk = bitcast <8 x i64> %i.dj to <16 x i32>
  %i.dl = bitcast <8 x i64> %i.di to <16 x i32>
  %i.dm = bitcast <8 x i64> %.092.lcssa.i to <16 x i32>
  %i.dn = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dk, <16 x i32> %i.dl, <16 x i32> %i.dm, i32 150)
  %i.do = bitcast <16 x i32> %i.dn to <8 x i64>   ; 2 uses
  %i.dp = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.do, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.dq = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.do, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.dr = bitcast <8 x i64> %i.dq to <16 x i32>
  %i.ds = bitcast <8 x i64> %i.dp to <16 x i32>
  %i.dt = bitcast <8 x i64> %.091.lcssa.i to <16 x i32>
  %i.du = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dr, <16 x i32> %i.ds, <16 x i32> %i.dt, i32 150)
  %i.dv = bitcast <16 x i32> %i.du to <8 x i64>   ; 2 uses
  %i.dw = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.dv, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.dx = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.dv, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.dy = bitcast <8 x i64> %i.dx to <16 x i32>
  %i.dz = bitcast <8 x i64> %i.dw to <16 x i32>
  %i.ea = bitcast <8 x i64> %.0.lcssa.i to <16 x i32>
  %i.eb = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dy, <16 x i32> %i.dz, <16 x i32> %i.ea, i32 150) ; 4 uses
  %i.ec = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ec, ptr %i.a, align 16, !tbaa !13
  %i.ed = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ed, ptr %i.b, align 16, !tbaa !13
  %i.ee = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ee, ptr %i.c, align 16, !tbaa !13
  %i.ef = shufflevector <16 x i32> %i.eb, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.ef, ptr %i.d, align 16, !tbaa !13
  %i.eg = sub nuw i64 %.1325, %.096.lcssa.i       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1319, i64 %i.eg ; 2 uses
  %i.ei = add i64 %i.eg, %.pre.i, !nosanitize !14 ; 2 uses
  %.not480 = icmp ult i64 %i.ei, %.pre.i, !nosanitize !14
  br i1 %.not480, label %bb.af, label %.preheader, !prof !16, !nosanitize !14

bb.af:                                            ; preds = %._crit_edge.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @9, i64 %.pre.i, i64 %i.ei) #6, !nosanitize !14
  br label %.preheader, !nosanitize !14

.preheader:                                       ; preds = %bb.s, %bb.af, %._crit_edge.i
  %.2326 = phi i64 [ %.1325, %bb.s ], [ %.096.lcssa.i, %bb.af ], [ %.096.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.2320 = phi ptr [ %.1319, %bb.s ], [ %i.eh, %bb.af ], [ %i.eh, %._crit_edge.i ] ; 12 uses
  %.2 = phi i32 [ %.1, %bb.s ], [ 0, %bb.af ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.ej = icmp samesign ugt i64 %.2326, 63
  br i1 %i.ej, label %.lr.ph491.preheader, label %._crit_edge

.lr.ph491.preheader:                              ; preds = %.preheader
  %i.ek = add nsw i64 %.2326, -64                 ; 2 uses
  %i.el = icmp ne ptr %.2320, null, !nosanitize !14
  %i.em = ptrtoint ptr %.2320 to i64, !nosanitize !14 ; 10 uses
  %i.en = and i64 %i.em, 15, !nosanitize !14
  %i.eo = icmp eq i64 %i.en, 0, !nosanitize !14
  %i.ep = and i1 %i.el, %i.eo, !nosanitize !14
  br i1 %i.ep, label %_mm_load_si128.exit420.peel, label %bb.ag, !prof !15, !nosanitize !14

bb.ag:                                            ; preds = %.lr.ph491.preheader
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @74, i64 %i.em) #6, !nosanitize !14
  br label %_mm_load_si128.exit420.peel, !nosanitize !14

_mm_load_si128.exit420.peel:                      ; preds = %bb.ag, %.lr.ph491.preheader
  %i.eq = load <2 x i64>, ptr %.2320, align 16, !tbaa !13
  %i.er = getelementptr inbounds nuw i8, ptr %.2320, i64 16
  %i.es = add i64 %i.em, 16, !nosanitize !14      ; 2 uses
  %i.et = icmp ne i64 %i.es, 0
  %i.eu = icmp ult ptr %.2320, inttoptr (i64 -16 to ptr)
  %i.ev = and i1 %i.eu, %i.et
  br i1 %i.ev, label %_mm_load_si128.exit419.peel, label %bb.ah, !prof !15, !nosanitize !14

bb.ah:                                            ; preds = %_mm_load_si128.exit420.peel
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @10, i64 %i.em, i64 %i.es) #6, !nosanitize !14
  br label %_mm_load_si128.exit419.peel, !nosanitize !14

_mm_load_si128.exit419.peel:                      ; preds = %_mm_load_si128.exit420.peel, %bb.ah
  %i.ew = load <2 x i64>, ptr %i.er, align 16, !tbaa !13
  %i.ex = getelementptr inbounds nuw i8, ptr %.2320, i64 32
  %i.ey = add i64 %i.em, 32, !nosanitize !14      ; 2 uses
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = icmp ult ptr %.2320, inttoptr (i64 -32 to ptr)
  %i.fb = and i1 %i.fa, %i.ez
  br i1 %i.fb, label %_mm_load_si128.exit418.peel, label %bb.ai, !prof !15, !nosanitize !14

bb.ai:                                            ; preds = %_mm_load_si128.exit419.peel
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @11, i64 %i.em, i64 %i.ey) #6, !nosanitize !14
  br label %_mm_load_si128.exit418.peel, !nosanitize !14

_mm_load_si128.exit418.peel:                      ; preds = %_mm_load_si128.exit419.peel, %bb.ai
  %i.fc = load <2 x i64>, ptr %i.ex, align 16, !tbaa !13
  %i.fd = getelementptr inbounds nuw i8, ptr %.2320, i64 48
  %i.fe = add i64 %i.em, 48, !nosanitize !14      ; 2 uses
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = icmp ult ptr %.2320, inttoptr (i64 -48 to ptr)
  %i.fh = and i1 %i.fg, %i.ff
end_hunk_0
begin_hunk_1_@fold_2:bb.a
  br i1 %i.k, label %bb.ae, label %bb.ad, !prof !15, !nosanitize !14

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @200, i64 %i.i) #6, !nosanitize !14
  br label %bb.ae, !nosanitize !14

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store <2 x i64> %i.d, ptr %1, align 16, !tbaa !13
  br i1 %i.g, label %bb.ag, label %bb.af, !prof !15, !nosanitize !14

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @201, i64 %i.e) #6, !nosanitize !14
  br label %bb.ag, !nosanitize !14

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store <4 x i32> %i.ao, ptr %2, align 16, !tbaa !13
  br i1 %i.c, label %bb.ai, label %bb.ah, !prof !15, !nosanitize !14

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @202, i64 %i.a) #6, !nosanitize !14
  br label %bb.ai, !nosanitize !14

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ap = xor <4 x i32> %i.x, %i.w
  store <4 x i32> %i.ap, ptr %3, align 16, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @crc32_fold_vpclmulqdq_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 !func_sanitize !28 {
bb.a:
  %i.a = alloca <2 x i64>, align 16               ; 14 uses
  %i.b = alloca <2 x i64>, align 16               ; 16 uses
  %i.c = alloca <2 x i64>, align 16               ; 18 uses
  %i.d = alloca <2 x i64>, align 16               ; 16 uses
  %i.e = alloca <2 x i64>, align 16               ; 9 uses
  %.sroa.0 = alloca <2 x i64>, align 16           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store <2 x i64> zeroinitializer, ptr %i.e, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store <2 x i64> zeroinitializer, ptr %.sroa.0, align 16
  %i.f = icmp ne ptr %0, null, !nosanitize !14
  %i.g = ptrtoint ptr %0 to i64, !nosanitize !14  ; 3 uses
  %i.h = and i64 %i.g, 3, !nosanitize !14
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !14
  %i.j = and i1 %i.f, %i.i, !nosanitize !14       ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.b, !prof !15, !nosanitize !14

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @22, i64 %i.g) #6, !nosanitize !14
  br label %bb.c, !nosanitize !14

bb.c:                                             ; preds = %bb.b, %bb.a
  call fastcc void @crc32_fold_load(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.k = icmp ult i64 %3, 16
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %3, 0
  br i1 %i.l, label %bb.cn, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not580 = icmp eq ptr %2, null, !nosanitize !14
  br i1 %.not580, label %bb.f, label %_mm_load_si128.exit634, !prof !16, !nosanitize !14

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @23) #6, !nosanitize !14
  br label %_mm_load_si128.exit634, !nosanitize !14

_mm_load_si128.exit634:                           ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.0, ptr align 1 %2, i64 %3, i1 false)
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load <2 x i64>, ptr %.sroa.0, align 16, !tbaa !13
  store <2 x i64> %.sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.e, align 16, !tbaa !13
  %.not581 = icmp eq ptr %1, null, !nosanitize !14
  br i1 %.not581, label %bb.g, label %.thread, !prof !16, !nosanitize !14

bb.g:                                             ; preds = %_mm_load_si128.exit634
  call void @__ubsan_handle_nonnull_arg(ptr nonnull @24) #6, !nosanitize !14
  br label %.thread, !nosanitize !14

.thread:                                          ; preds = %bb.g, %_mm_load_si128.exit634
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %.sroa.0, i64 %3, i1 false)
  br label %bb.cg

bb.h:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %2 to i64                   ; 6 uses
  %i.n = sub i64 0, %i.m
  %i.o = and i64 %i.n, 15                         ; 7 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not770 = icmp eq ptr %2, null, !nosanitize !14
  br i1 %.not770, label %bb.j, label %_mm_loadu_si128.exit, !prof !16, !nosanitize !14

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @76, i64 %i.m) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @78, i64 %i.m) #6, !nosanitize !14
  br label %_mm_loadu_si128.exit, !nosanitize !14

_mm_loadu_si128.exit:                             ; preds = %bb.i, %bb.j
  %i.p = load <2 x i64>, ptr %2, align 1, !tbaa !13 ; 2 uses
  store <2 x i64> %i.p, ptr %i.e, align 16, !tbaa !13
  %.not771 = icmp eq ptr %1, null, !nosanitize !14
  %.pre744 = ptrtoint ptr %1 to i64, !nosanitize !14 ; 5 uses
  br i1 %.not771, label %bb.k, label %_mm_storeu_si128.exit685, !prof !16, !nosanitize !14

bb.k:                                             ; preds = %_mm_loadu_si128.exit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @204, i64 %.pre744) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @206, i64 %.pre744) #6, !nosanitize !14
  br label %_mm_storeu_si128.exit685, !nosanitize !14

_mm_storeu_si128.exit685:                         ; preds = %_mm_loadu_si128.exit, %bb.k
  store <2 x i64> %i.p, ptr %1, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.r = add i64 %i.o, %.pre744, !nosanitize !14  ; 2 uses
  %.not694 = icmp ult i64 %i.r, %.pre744, !nosanitize !14
  br i1 %.not694, label %bb.l, label %bb.m, !prof !16, !nosanitize !14

bb.l:                                             ; preds = %_mm_storeu_si128.exit685
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @25, i64 %.pre744, i64 %i.r) #6, !nosanitize !14
  br label %bb.m, !nosanitize !14

bb.m:                                             ; preds = %bb.l, %_mm_storeu_si128.exit685
  call fastcc void @partial_fold(i64 noundef %i.o, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.t = add i64 %i.o, %i.m, !nosanitize !14      ; 2 uses
  %.not695 = icmp ult i64 %i.t, %i.m, !nosanitize !14
  br i1 %.not695, label %bb.n, label %bb.o, !prof !16, !nosanitize !14

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @26, i64 %i.m, i64 %i.t) #6, !nosanitize !14
  br label %bb.o, !nosanitize !14

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.u = sub nuw i64 %3, %i.o
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.0407 = phi ptr [ %i.q, %bb.o ], [ %1, %bb.h ] ; 13 uses
  %.0402 = phi ptr [ %i.s, %bb.o ], [ %2, %bb.h ] ; 13 uses
  %.0 = phi i64 [ %i.u, %bb.o ], [ %3, %bb.h ]    ; 4 uses
  %i.v = icmp ugt i64 %.0, 255
  br i1 %i.v, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  %.not772 = icmp eq ptr %.0402, null, !nosanitize !14
  %.pre.i = ptrtoint ptr %.0402 to i64, !nosanitize !14 ; 13 uses
  br i1 %.not772, label %bb.r, label %_mm512_loadu_si512.exit138.i, !prof !16, !nosanitize !14

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @129, i64 %.pre.i) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @131, i64 %.pre.i) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit138.i, !nosanitize !14

_mm512_loadu_si512.exit138.i:                     ; preds = %bb.r, %bb.q
  %i.w = load <8 x i64>, ptr %.0402, align 1, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0402, i64 64
  %i.y = add i64 %.pre.i, 64, !nosanitize !14     ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult ptr %.0402, inttoptr (i64 -64 to ptr)
  %i.ab = and i1 %i.aa, %i.z
  br i1 %i.ab, label %_mm512_loadu_si512.exit137.i, label %bb.s, !prof !15, !nosanitize !14

bb.s:                                             ; preds = %_mm512_loadu_si512.exit138.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @207, i64 %.pre.i, i64 %i.y) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit137.i, !nosanitize !14

_mm512_loadu_si512.exit137.i:                     ; preds = %_mm512_loadu_si512.exit138.i, %bb.s
  %i.ac = load <8 x i64>, ptr %i.x, align 1, !tbaa !13 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0402, i64 128
  %i.ae = add i64 %.pre.i, 128, !nosanitize !14   ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = icmp ult ptr %.0402, inttoptr (i64 -128 to ptr)
  %i.ah = and i1 %i.ag, %i.af
  br i1 %i.ah, label %_mm512_loadu_si512.exit136.i, label %bb.t, !prof !15, !nosanitize !14

bb.t:                                             ; preds = %_mm512_loadu_si512.exit137.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @208, i64 %.pre.i, i64 %i.ae) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit136.i, !nosanitize !14

_mm512_loadu_si512.exit136.i:                     ; preds = %_mm512_loadu_si512.exit137.i, %bb.t
  %i.ai = load <8 x i64>, ptr %i.ad, align 1, !tbaa !13 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0402, i64 192
  %i.ak = add i64 %.pre.i, 192, !nosanitize !14   ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = icmp ult ptr %.0402, inttoptr (i64 -192 to ptr)
  %i.an = and i1 %i.am, %i.al
  br i1 %i.an, label %_mm512_loadu_si512.exit135.i, label %bb.u, !prof !15, !nosanitize !14

bb.u:                                             ; preds = %_mm512_loadu_si512.exit136.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @209, i64 %.pre.i, i64 %i.ak) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit135.i, !nosanitize !14

_mm512_loadu_si512.exit135.i:                     ; preds = %_mm512_loadu_si512.exit136.i, %bb.u
  %i.ao = load <8 x i64>, ptr %i.aj, align 1, !tbaa !13 ; 3 uses
  %4 = load <2 x i64>, ptr %i.a, align 16, !tbaa !13
  %5 = load <2 x i64>, ptr %i.b, align 16, !tbaa !13
  %6 = shufflevector <2 x i64> %4, <2 x i64> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = bitcast <8 x i64> %6 to <16 x i32>
  %8 = load <2 x i64>, ptr %i.c, align 16, !tbaa !13
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = bitcast <8 x i64> %9 to <16 x i32>
  %i.ap = shufflevector <16 x i32> %7, <16 x i32> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = load <2 x i64>, ptr %i.d, align 16, !tbaa !13
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = bitcast <8 x i64> %12 to <16 x i32>
  %i.aq = shufflevector <16 x i32> %i.ap, <16 x i32> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.ar = bitcast <16 x i32> %i.aq to <8 x i64>   ; 2 uses
  %i.as = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.ar, <8 x i64> <i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison, i64 7631803798, i64 poison>, i8 1)
  %i.at = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %i.ar, <8 x i64> <i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108, i64 poison, i64 5708721108>, i8 16)
  %i.au = bitcast <8 x i64> %i.at to <16 x i32>
  %i.av = bitcast <8 x i64> %i.as to <16 x i32>
  %i.aw = bitcast <8 x i64> %i.w to <16 x i32>
  %i.ax = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.au, <16 x i32> %i.av, <16 x i32> %i.aw, i32 150)
  %.not773 = icmp eq ptr %.0407, null, !nosanitize !14
  %.pre174.i = ptrtoint ptr %.0407 to i64, !nosanitize !14 ; 13 uses
  br i1 %.not773, label %bb.v, label %_mm512_storeu_si512.exit145.i, !prof !16, !nosanitize !14

bb.v:                                             ; preds = %_mm512_loadu_si512.exit135.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @224, i64 %.pre174.i) #6, !nosanitize !14
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @226, i64 %.pre174.i) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit145.i, !nosanitize !14

_mm512_storeu_si512.exit145.i:                    ; preds = %bb.v, %_mm512_loadu_si512.exit135.i
  store <8 x i64> %i.w, ptr %.0407, align 1, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.0407, i64 64
  %i.az = add i64 %.pre174.i, 64, !nosanitize !14 ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = icmp ult ptr %.0407, inttoptr (i64 -64 to ptr)
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %_mm512_storeu_si512.exit144.i, label %bb.w, !prof !15, !nosanitize !14

bb.w:                                             ; preds = %_mm512_storeu_si512.exit145.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @210, i64 %.pre174.i, i64 %i.az) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit144.i, !nosanitize !14

_mm512_storeu_si512.exit144.i:                    ; preds = %_mm512_storeu_si512.exit145.i, %bb.w
  store <8 x i64> %i.ac, ptr %i.ay, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.0407, i64 128
  %i.be = add i64 %.pre174.i, 128, !nosanitize !14 ; 2 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = icmp ult ptr %.0407, inttoptr (i64 -128 to ptr)
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %_mm512_storeu_si512.exit143.i, label %bb.x, !prof !15, !nosanitize !14

bb.x:                                             ; preds = %_mm512_storeu_si512.exit144.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @211, i64 %.pre174.i, i64 %i.be) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit143.i, !nosanitize !14

_mm512_storeu_si512.exit143.i:                    ; preds = %_mm512_storeu_si512.exit144.i, %bb.x
  store <8 x i64> %i.ai, ptr %i.bd, align 1, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %.0407, i64 192
  %i.bj = add i64 %.pre174.i, 192, !nosanitize !14 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = icmp ult ptr %.0407, inttoptr (i64 -192 to ptr)
  %i.bm = and i1 %i.bl, %i.bk
  br i1 %i.bm, label %_mm512_storeu_si512.exit142.i, label %bb.y, !prof !15, !nosanitize !14

bb.y:                                             ; preds = %_mm512_storeu_si512.exit143.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @212, i64 %.pre174.i, i64 %i.bj) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit142.i, !nosanitize !14

_mm512_storeu_si512.exit142.i:                    ; preds = %_mm512_storeu_si512.exit143.i, %bb.y
  store <8 x i64> %i.ao, ptr %i.bi, align 1, !tbaa !13
  %i.bn = add i64 %.pre174.i, 256, !nosanitize !14 ; 2 uses
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = icmp ult ptr %.0407, inttoptr (i64 -256 to ptr)
  %i.bq = and i1 %i.bp, %i.bo
  br i1 %i.bq, label %bb.aa, label %bb.z, !prof !15, !nosanitize !14

bb.z:                                             ; preds = %_mm512_storeu_si512.exit142.i
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @213, i64 %.pre174.i, i64 %i.bn) #6, !nosanitize !14
  br label %bb.aa, !nosanitize !14

bb.aa:                                            ; preds = %bb.z, %_mm512_storeu_si512.exit142.i
  %i.br = add i64 %.pre.i, 256, !nosanitize !14   ; 2 uses
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = icmp ult ptr %.0402, inttoptr (i64 -256 to ptr)
  %i.bu = and i1 %i.bt, %i.bs
  br i1 %i.bu, label %bb.ac, label %bb.ab, !prof !15, !nosanitize !14

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @214, i64 %.pre.i, i64 %i.br) #6, !nosanitize !14
  br label %bb.ac, !nosanitize !14

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0108153.i = add i64 %.0, -256                 ; 3 uses
  %.0107154.i = bitcast <16 x i32> %i.ax to <8 x i64> ; 2 uses
  %i.bv = icmp ugt i64 %.0108153.i, 255
  br i1 %i.bv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.am
  %.0107163.i = phi <8 x i64> [ %.0107.i, %bb.am ], [ %.0107154.i, %bb.ac ] ; 2 uses
  %.0108162.i = phi i64 [ %.0108.i, %bb.am ], [ %.0108153.i, %bb.ac ]
  %.0161.i = phi <8 x i64> [ %i.dg, %bb.am ], [ %i.ao, %bb.ac ] ; 2 uses
  %.0105160.i = phi <8 x i64> [ %i.db, %bb.am ], [ %i.ai, %bb.ac ] ; 2 uses
  %.0106159.i = phi <8 x i64> [ %i.cw, %bb.am ], [ %i.ac, %bb.ac ] ; 2 uses
  %.pn124158.i = phi ptr [ %.0109164.i, %bb.am ], [ %.0402, %bb.ac ] ; 4 uses
  %.pn157.i = phi ptr [ %.0110165.i, %bb.am ], [ %.0407, %bb.ac ] ; 4 uses
  %.0109164.i = getelementptr inbounds nuw i8, ptr %.pn124158.i, i64 256 ; 7 uses
  %.0110165.i = getelementptr inbounds nuw i8, ptr %.pn157.i, i64 256 ; 7 uses
  %.pre176.i = ptrtoint ptr %.0109164.i to i64, !nosanitize !14 ; 8 uses
  %i.bw = load <8 x i64>, ptr %.0109164.i, align 1, !tbaa !13 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn124158.i, i64 320
  %.not.i = icmp ugt ptr %.0109164.i, inttoptr (i64 -65 to ptr)
  br i1 %.not.i, label %bb.ad, label %_mm512_loadu_si512.exit133.i, !prof !16, !nosanitize !14

bb.ad:                                            ; preds = %.lr.ph.i
  %i.by = add i64 %.pre176.i, 64, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @215, i64 %.pre176.i, i64 %i.by) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit133.i, !nosanitize !14

_mm512_loadu_si512.exit133.i:                     ; preds = %.lr.ph.i, %bb.ad
  %i.bz = load <8 x i64>, ptr %i.bx, align 1, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn124158.i, i64 384
  %.not125.i = icmp ugt ptr %.0109164.i, inttoptr (i64 -129 to ptr)
  br i1 %.not125.i, label %bb.ae, label %_mm512_loadu_si512.exit132.i, !prof !16, !nosanitize !14

bb.ae:                                            ; preds = %_mm512_loadu_si512.exit133.i
  %i.cb = add i64 %.pre176.i, 128, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @216, i64 %.pre176.i, i64 %i.cb) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit132.i, !nosanitize !14

_mm512_loadu_si512.exit132.i:                     ; preds = %_mm512_loadu_si512.exit133.i, %bb.ae
  %i.cc = load <8 x i64>, ptr %i.ca, align 1, !tbaa !13 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.pn124158.i, i64 448
  %.not126.i = icmp ugt ptr %.0109164.i, inttoptr (i64 -193 to ptr)
  br i1 %.not126.i, label %bb.af, label %_mm512_loadu_si512.exit.i, !prof !16, !nosanitize !14

bb.af:                                            ; preds = %_mm512_loadu_si512.exit132.i
  %i.ce = add i64 %.pre176.i, 192, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @217, i64 %.pre176.i, i64 %i.ce) #6, !nosanitize !14
  br label %_mm512_loadu_si512.exit.i, !nosanitize !14

_mm512_loadu_si512.exit.i:                        ; preds = %_mm512_loadu_si512.exit132.i, %bb.af
  %i.cf = load <8 x i64>, ptr %i.cd, align 1, !tbaa !13 ; 2 uses
  %i.cg = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107163.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ch = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0106159.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ci = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0105160.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.cj = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0161.i, <8 x i64> <i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison, i64 5136782384, i64 poison>, i8 1)
  %i.ck = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0107163.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cl = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0106159.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cm = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0105160.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.cn = call <8 x i64> @llvm.x86.pclmulqdq.512(<8 x i64> %.0161.i, <8 x i64> <i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810, i64 poison, i64 4651644810>, i8 16)
  %i.co = bitcast <8 x i64> %i.ck to <16 x i32>
  %i.cp = bitcast <8 x i64> %i.cg to <16 x i32>
  %i.cq = bitcast <8 x i64> %i.bw to <16 x i32>
  %i.cr = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.co, <16 x i32> %i.cp, <16 x i32> %i.cq, i32 150)
  %i.cs = bitcast <8 x i64> %i.cl to <16 x i32>
  %i.ct = bitcast <8 x i64> %i.ch to <16 x i32>
  %i.cu = bitcast <8 x i64> %i.bz to <16 x i32>
  %i.cv = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cs, <16 x i32> %i.ct, <16 x i32> %i.cu, i32 150)
  %i.cw = bitcast <16 x i32> %i.cv to <8 x i64>   ; 2 uses
  %i.cx = bitcast <8 x i64> %i.cm to <16 x i32>
  %i.cy = bitcast <8 x i64> %i.ci to <16 x i32>
  %i.cz = bitcast <8 x i64> %i.cc to <16 x i32>
  %i.da = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cx, <16 x i32> %i.cy, <16 x i32> %i.cz, i32 150)
  %i.db = bitcast <16 x i32> %i.da to <8 x i64>   ; 2 uses
  %i.dc = bitcast <8 x i64> %i.cn to <16 x i32>
  %i.dd = bitcast <8 x i64> %i.cj to <16 x i32>
  %i.de = bitcast <8 x i64> %i.cf to <16 x i32>
  %i.df = call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.dc, <16 x i32> %i.dd, <16 x i32> %i.de, i32 150)
  %i.dg = bitcast <16 x i32> %i.df to <8 x i64>   ; 2 uses
  %.pre178.i = ptrtoint ptr %.0110165.i to i64, !nosanitize !14 ; 8 uses
  store <8 x i64> %i.bw, ptr %.0110165.i, align 1, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn157.i, i64 320
  %.not127.i = icmp ugt ptr %.0110165.i, inttoptr (i64 -65 to ptr)
  br i1 %.not127.i, label %bb.ag, label %_mm512_storeu_si512.exit140.i, !prof !16, !nosanitize !14

bb.ag:                                            ; preds = %_mm512_loadu_si512.exit.i
  %i.di = add i64 %.pre178.i, 64, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @218, i64 %.pre178.i, i64 %i.di) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit140.i, !nosanitize !14

_mm512_storeu_si512.exit140.i:                    ; preds = %_mm512_loadu_si512.exit.i, %bb.ag
  store <8 x i64> %i.bz, ptr %i.dh, align 1, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn157.i, i64 384
  %.not128.i = icmp ugt ptr %.0110165.i, inttoptr (i64 -129 to ptr)
  br i1 %.not128.i, label %bb.ah, label %_mm512_storeu_si512.exit139.i, !prof !16, !nosanitize !14

bb.ah:                                            ; preds = %_mm512_storeu_si512.exit140.i
  %i.dk = add i64 %.pre178.i, 128, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @219, i64 %.pre178.i, i64 %i.dk) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit139.i, !nosanitize !14

_mm512_storeu_si512.exit139.i:                    ; preds = %_mm512_storeu_si512.exit140.i, %bb.ah
  store <8 x i64> %i.cc, ptr %i.dj, align 1, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn157.i, i64 448
  %.not129.i = icmp ugt ptr %.0110165.i, inttoptr (i64 -193 to ptr)
  br i1 %.not129.i, label %bb.ai, label %_mm512_storeu_si512.exit.i, !prof !16, !nosanitize !14

bb.ai:                                            ; preds = %_mm512_storeu_si512.exit139.i
  %i.dm = add i64 %.pre178.i, 192, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @220, i64 %.pre178.i, i64 %i.dm) #6, !nosanitize !14
  br label %_mm512_storeu_si512.exit.i, !nosanitize !14

_mm512_storeu_si512.exit.i:                       ; preds = %_mm512_storeu_si512.exit139.i, %bb.ai
  store <8 x i64> %i.cf, ptr %i.dl, align 1, !tbaa !13
  %.not130.i = icmp ugt ptr %.0110165.i, inttoptr (i64 -257 to ptr)
  br i1 %.not130.i, label %bb.aj, label %bb.ak, !prof !16, !nosanitize !14

bb.aj:                                            ; preds = %_mm512_storeu_si512.exit.i
  %i.dn = add i64 %.pre178.i, 256, !nosanitize !14
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @221, i64 %.pre178.i, i64 %i.dn) #6, !nosanitize !14
  br label %bb.ak, !nosanitize !14

bb.ak:                                            ; preds = %bb.aj, %_mm512_storeu_si512.exit.i
end_hunk_1
