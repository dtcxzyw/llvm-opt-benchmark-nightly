Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/iconv?download=true
inline.NumInlined: 40
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zif_iconv_mime_decode:bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @_php_iconv_mime_decode(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %6 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  %i.k = alloca [80 x i8], align 16               ; 6 uses
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = call noalias ptr @iconv_open(ptr noundef %3, ptr noundef nonnull @.str.97) #16 ; 25 uses
  %i.m = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %.thread443, label %bb.d

.thread443:                                       ; preds = %bb.c
  %i.n = call ptr @__errno_location() #18
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18
  %i.p = icmp eq i32 %i.o, 22
  %. = select i1 %i.p, i32 2, i32 1
  br label %bb.ch

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %6, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.r = call i32 @__sigsetjmp(ptr noundef nonnull %6, i32 noundef 0) #19
  %.not449 = icmp eq i32 %i.r, 0
  br i1 %.not449, label %.preheader450, label %.split.thread

.preheader450:                                    ; preds = %bb.d
  %.not313471 = icmp eq i64 %2, 0
  br i1 %.not313471, label %._crit_edge484.thread, label %.lr.ph483

.lr.ph483:                                        ; preds = %.preheader450
  %i.s = and i32 %5, 1
  %.not315 = icmp eq i32 %i.s, 0                  ; 4 uses
  %.371 = select i1 %.not315, i32 0, i32 12       ; 9 uses
  %i.t = and i32 %5, 2
  %.not329 = icmp eq i32 %i.t, 0                  ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph483, %.thread391
  %.0220482 = phi i32 [ 0, %.lr.ph483 ], [ %.2222.ph, %.thread391 ] ; 41 uses
  %.0223481 = phi ptr [ null, %.lr.ph483 ], [ %.6.ph, %.thread391 ] ; 43 uses
  %.0227480 = phi ptr [ null, %.lr.ph483 ], [ %.5232.ph, %.thread391 ] ; 46 uses
  %.0233479 = phi i64 [ 0, %.lr.ph483 ], [ %.2235.ph, %.thread391 ] ; 44 uses
  %.0236478 = phi ptr [ null, %.lr.ph483 ], [ %.2238.ph, %.thread391 ] ; 45 uses
  %.0239477 = phi ptr [ null, %.lr.ph483 ], [ %.2241.ph, %.thread391 ] ; 46 uses
  %.0242476 = phi i32 [ 0, %.lr.ph483 ], [ %.11.ph, %.thread391 ]
  %.0249475 = phi i64 [ %2, %.lr.ph483 ], [ %i.eq, %.thread391 ] ; 47 uses
  %.0255474 = phi ptr [ %1, %.lr.ph483 ], [ %i.er, %.thread391 ] ; 72 uses
  %.0262473 = phi ptr [ inttoptr (i64 -1 to ptr), %.lr.ph483 ], [ %.3265.ph, %.thread391 ] ; 64 uses
  %.0271472 = phi i32 [ 0, %.lr.ph483 ], [ %.8279.ph, %.thread391 ] ; 29 uses
  %i.u = load i8, ptr %.0255474, align 1, !tbaa !12 ; 16 uses
  switch i32 %.0242476, label %default.unreachable515 [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.z
    i32 4, label %bb.ad
    i32 5, label %bb.ah
    i32 7, label %bb.aj
    i32 8, label %bb.al
    i32 6, label %bb.ao
    i32 9, label %bb.as
    i32 10, label %bb.bn
    i32 11, label %bb.bo
    i32 12, label %bb.bv
  ]

bb.f:                                             ; preds = %bb.e
  switch i8 %i.u, label %bb.h [
    i8 13, label %.thread391
    i8 10, label %bb.bw
    i8 61, label %bb.g
    i8 32, label %bb.bx
    i8 9, label %bb.bx
  ]

bb.g:                                             ; preds = %bb.f
  br label %.thread391

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 %i.u, ptr %i.j, align 1, !tbaa !12
  %i.v = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef 1, ptr noundef %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not353 = icmp ne i32 %i.v, 0
  %or.cond372 = and i1 %.not329, %.not353
  br i1 %or.cond372, label %.loopexit, label %.thread391

bb.i:                                             ; preds = %bb.e
  switch i8 %i.u, label %bb.k [
    i8 63, label %bb.l
    i8 13, label %bb.j
    i8 10, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.w = getelementptr inbounds i8, ptr %.0255474, i64 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1256 = phi ptr [ %i.w, %bb.j ], [ %.0255474, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1256, i64 1
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.0227480 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.aa, ptr noundef %i.l) ; 2 uses
  %.not351 = icmp eq i32 %i.ab, 0
  br i1 %.not351, label %.thread391, label %.loopexit

bb.l:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  br label %.thread391

bb.m:                                             ; preds = %bb.e
  switch i8 %i.u, label %.thread391 [
    i8 63, label %bb.q
    i8 42, label %bb.n
    i8 13, label %bb.o
    i8 10, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 61, ptr %i.i, align 1, !tbaa !12
  %i.ad = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 63, ptr %i.h, align 1, !tbaa !12
  %i.ae = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.af = ptrtoint ptr %.0255474 to i64
  %i.ag = ptrtoint ptr %.0239477 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0239477, i64 noundef %i.ah, ptr noundef %i.l) ; 2 uses
  %.not341 = icmp eq i32 %i.ai, 0
  br i1 %.not341, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds i8, ptr %.0255474, i64 -1
  br label %.thread391

bb.q:                                             ; preds = %bb.m, %bb.n
  %.2244 = phi i32 [ 10, %bb.n ], [ 3, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.ak = icmp eq ptr %.0239477, null
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = ptrtoint ptr %.0255474 to i64
  %i.am = ptrtoint ptr %.0239477 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 79
  br i1 %i.ao, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %.not329, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.0227480 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.as, ptr noundef %i.l) ; 2 uses
  %.not348 = icmp eq i32 %i.at, 0
  br i1 %.not348, label %select.unfold, label %.thread

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.k, ptr nonnull align 1 %.0239477, i64 %i.an, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an
  store i8 0, ptr %i.au, align 1, !tbaa !12
  %.not344 = icmp eq ptr %.0262473, inttoptr (i64 -1 to ptr)
  br i1 %.not344, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = call i32 @iconv_close(ptr noundef %.0262473) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.aw = call noalias ptr @iconv_open(ptr noundef %3, ptr noundef nonnull %i.k) #16 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, inttoptr (i64 -1 to ptr)
  br i1 %i.ax, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  br i1 %.not329, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.ay = icmp ugt i64 %.0249475, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0216469 = phi i32 [ %spec.select361, %.lr.ph ], [ 2, %.preheader ]
  %.1250468 = phi i64 [ %i.bd, %.lr.ph ], [ %.0249475, %.preheader ]
  %.2257467 = phi ptr [ %i.az, %.lr.ph ], [ %.0255474, %.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.2257467, i64 1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = icmp eq i8 %i.ba, 63
  %i.bc = sext i1 %i.bb to i32
  %spec.select361 = add nsw i32 %.0216469, %i.bc  ; 2 uses
  %i.bd = add i64 %.1250468, -1                   ; 3 uses
  %i.be = icmp ne i32 %spec.select361, 0
  %i.bf = icmp ugt i64 %i.bd, 1
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2257.lcssa = phi ptr [ %.0255474, %.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.1250.lcssa = phi i64 [ 1, %.preheader ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.2257.lcssa, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12
  %i.bj = icmp eq i8 %i.bi, 61                    ; 2 uses
  %i.bk = call i64 @llvm.umax.i64(i64 %.1250.lcssa, i64 2)
  %spec.select362 = add i64 %i.bk, -1
  %.3258 = select i1 %i.bj, ptr %i.bh, ptr %.2257.lcssa ; 2 uses
  %.2251 = select i1 %i.bj, i64 %spec.select362, i64 %.1250.lcssa
  %i.bl = getelementptr inbounds nuw i8, ptr %.3258, i64 1
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %.0227480 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.bo, ptr noundef %i.l) ; 2 uses
  %.not346 = icmp eq i32 %i.bp, 0
  br i1 %.not346, label %select.unfold, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bq = call ptr @__errno_location() #18
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18
  %i.bs = icmp eq i32 %i.br, 22
  %.364 = select i1 %i.bs, i32 2, i32 1
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.q, %bb.t, %._crit_edge, %bb.y
  %.3274.ph = phi i32 [ %.364, %bb.y ], [ 7, %bb.s ], [ 7, %bb.q ], [ %i.at, %bb.t ], [ %i.bp, %._crit_edge ]
  %.1263.ph = phi ptr [ %i.aw, %bb.y ], [ %.0262473, %bb.s ], [ %.0262473, %bb.q ], [ %.0262473, %bb.t ], [ %i.aw, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %.loopexit

select.unfold:                                    ; preds = %bb.t, %._crit_edge, %bb.w
  %.3274 = phi i32 [ 0, %._crit_edge ], [ %.0271472, %bb.w ], [ 0, %bb.t ]
  %.1263 = phi ptr [ %i.aw, %._crit_edge ], [ %i.aw, %bb.w ], [ %.0262473, %bb.t ]
  %.4259 = phi ptr [ %.3258, %._crit_edge ], [ %.0255474, %bb.w ], [ %.0255474, %bb.t ]
  %.3252 = phi i64 [ %.2251, %._crit_edge ], [ %.0249475, %bb.w ], [ %.0249475, %bb.t ]
  %.5247 = phi i32 [ 12, %._crit_edge ], [ %.2244, %bb.w ], [ %.371, %bb.t ]
  %.1228 = phi ptr [ %.0227480, %._crit_edge ], [ %.0227480, %bb.w ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %.thread391

bb.z:                                             ; preds = %bb.e
  switch i8 %i.u, label %bb.ab [
    i8 98, label %.thread391
    i8 66, label %.thread391
    i8 113, label %bb.aa
    i8 81, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  br label %.thread391

bb.ab:                                            ; preds = %bb.z
  br i1 %.not329, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.0227480 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.bw, ptr noundef %i.l) ; 2 uses
  %.not339 = icmp eq i32 %i.bx, 0
  br i1 %.not339, label %.thread391, label %.loopexit

bb.ad:                                            ; preds = %bb.e
  %.not334 = icmp eq i8 %i.u, 63
  br i1 %.not334, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not329, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %.0227480 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.cb, ptr noundef %i.l) ; 2 uses
  %.not336 = icmp eq i32 %i.cc, 0
  br i1 %.not336, label %.thread391, label %.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  br label %.thread391

bb.ah:                                            ; preds = %bb.e
  %i.ce = icmp eq i8 %i.u, 63
  br i1 %i.ce, label %bb.ai, label %.thread391

bb.ai:                                            ; preds = %bb.ah
  %i.cf = ptrtoint ptr %.0255474 to i64
  %i.cg = ptrtoint ptr %.0236478 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  br label %.thread391

bb.aj:                                            ; preds = %bb.e
  %i.ci = icmp eq i8 %i.u, 10
  br i1 %i.ci, label %.thread391, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 13, ptr %i.g, align 1, !tbaa !12
  %i.cj = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ck = load i8, ptr %.0255474, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.ck, ptr %i.f, align 1, !tbaa !12
  %i.cl = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.thread391

bb.al:                                            ; preds = %bb.e
  switch i8 %i.u, label %._crit_edge484.thread [
    i8 32, label %bb.am
    i8 9, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.cm = icmp eq ptr %.0227480, null
  br i1 %i.cm, label %bb.an, label %.thread391

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 32, ptr %i.e, align 1, !tbaa !12
  %i.cn = call fastcc range(i32 0, 7) i32 @_php_iconv_appendl(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef 1, ptr noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.thread391

bb.ao:                                            ; preds = %bb.e
  %.not318 = icmp eq i8 %i.u, 61
  br i1 %.not318, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not329, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %.0227480 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.cr, ptr noundef %i.l) ; 2 uses
  %.not330 = icmp eq i32 %i.cs, 0
  br i1 %.not330, label %.thread391, label %.loopexit

bb.ar:                                            ; preds = %bb.ao
  %i.ct = icmp eq i64 %.0249475, 1
  br i1 %i.ct, label %.thread385, label %.thread391

bb.as:                                            ; preds = %bb.e
  %switch.tableidx = add i8 %i.u, -9              ; 2 uses
  %i.cu = icmp ult i8 %switch.tableidx, 24
  br i1 %i.cu, label %switch.hole_check, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %.not315, label %.thread385, label %bb.au

bb.au:                                            ; preds = %switch.hole_check, %bb.at
  %i.cv = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %.0227480 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.cy, ptr noundef %i.l) ; 2 uses
  %.not321 = icmp eq i32 %i.cz, 0
  br i1 %.not321, label %.thread391, label %.loopexit

switch.hole_check:                                ; preds = %bb.as
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388627, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %brmerge = or i1 %.not315, %switch.lobit
  br i1 %brmerge, label %.thread385, label %bb.au

.thread385:                                       ; preds = %switch.hole_check, %bb.ar, %bb.at
  %.not319383 = phi i1 [ true, %bb.at ], [ false, %bb.ar ], [ true, %switch.hole_check ]
  %i.da = icmp eq i32 %.0220482, 0
  br i1 %i.da, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread385
  %i.db = call ptr @php_base64_decode_ex(ptr noundef %.0236478, i64 noundef %.0233479, i1 noundef zeroext false) #16
  br label %bb.ax

bb.aw:                                            ; preds = %.thread385
  %i.dc = call ptr @php_quot_print_decode(ptr noundef %.0236478, i64 noundef %.0233479, i32 noundef 1) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0 = phi ptr [ %i.dc, %bb.aw ], [ %i.db, %bb.av ] ; 7 uses
  %i.dd = icmp eq ptr %.0, null
  br i1 %i.dd, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not329, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = getelementptr inbounds nuw i8, ptr %.0255474, i64 1
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %.0227480 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef %.0227480, i64 noundef %i.dh, ptr noundef %i.l) ; 2 uses
  %.not327 = icmp eq i32 %i.di, 0
  br i1 %.not327, label %.thread391, label %.loopexit

bb.ba:                                            ; preds = %bb.ax
  %i.dj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !56
  %i.dm = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef nonnull %i.dj, i64 noundef %i.dl, ptr noundef %.0262473) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.do = call fastcc i32 @_php_iconv_appendl(ptr noundef %0, ptr noundef null, i64 noundef 0, ptr noundef %.0262473)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.4275 = phi i32 [ %i.do, %bb.bb ], [ %i.dm, %bb.ba ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dr = and i32 %i.dq, 64
  %.not.i = icmp eq i32 %i.dr, 0
  br i1 %.not.i, label %bb.bd, label %zend_string_release_ex.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ds = load i32, ptr %.0, align 8, !tbaa !53   ; 2 uses
  %i.dt = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %i.dt)
  %i.du = add i32 %i.ds, -1                       ; 2 uses
  store i32 %i.du, ptr %.0, align 8, !tbaa !53
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.be, label %zend_string_release_ex.exit

bb.be:                                            ; preds = %bb.bd
  call void @_efree(ptr noundef nonnull %.0) #16
  br label %zend_string_release_ex.exit

end_hunk_0
