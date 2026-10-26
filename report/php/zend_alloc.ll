Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_alloc?download=true
inline.NumInlined: 60
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@start_memory_manager:bb.a
  store i32 0, ptr %i.af, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  store double 1.000000e+00, ptr %i.ag, align 16, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  store i32 0, ptr %i.ah, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 428
  store i32 0, ptr %i.ai, align 4, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  store i64 2097152, ptr %i.aj, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 352
  store i64 2097152, ptr %i.ak, align 16, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 480 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.am, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr @zend_random_bytes_insecure, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  tail call void %i.an(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ao, i64 noundef 8) #38, !inline_history !114
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  store i64 9223372036854775807, ptr %i.ap, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  store i32 0, ptr %i.aq, align 16, !tbaa !82
  store i32 0, ptr %i.t, align 16, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr null, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  store ptr null, ptr %i.as, align 8, !tbaa !72
  store ptr %i.t, ptr @alloc_globals.0, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.au = tail call ptr @getenv(ptr noundef nonnull @.str.17) #38 ; 4 uses
  %.not31.i = icmp eq ptr %i.au, null
  br i1 %.not31.i, label %alloc_globals_ctor.exit, label %bb.m

bb.m:                                             ; preds = %zend_mm_init.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #48
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i, %bb.m
  %i.aw = phi ptr [ %i.az, %.critedge.i.i ], [ %i.au, %bb.m ] ; 8 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  switch i8 %i.ax, label %.preheader.i.i [
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 10, label %.critedge.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av ; 2 uses
  %.not90.i.i = icmp eq ptr %i.ay, %i.aw
  br i1 %.not90.i.i, label %poison_enable.exit.i, label %.lr.ph.i.i

.critedge.i.i:                                    ; preds = %bb.n, %bb.n, %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  br label %bb.n, !llvm.loop !115

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.critedge4.i.i
  %.091.i.i = phi ptr [ %i.ba, %.critedge4.i.i ], [ %i.ay, %.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.091.i.i, i64 -1 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  switch i8 %i.bb, label %.critedge2.preheader.i.i [
    i8 32, label %.critedge4.i.i
    i8 9, label %.critedge4.i.i
    i8 10, label %.critedge4.i.i
  ]

.critedge2.preheader.i.i:                         ; preds = %.lr.ph.i.i
  %i.bc = ptrtoint ptr %.091.i.i to i64           ; 2 uses
  %i.bd = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = tail call ptr @memchr(ptr noundef nonnull %i.aw, i32 noundef 61, i64 noundef %i.be) #48 ; 3 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !117
  %.not5992.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5992.i.i, label %.critedge2._crit_edge.i.i, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.critedge2.preheader.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 477
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 476
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 474
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 475
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 473
  br label %bb.o

.critedge4.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.ba, %i.aw
  br i1 %.not.i.i, label %poison_enable.exit.i, label %.lr.ph.i.i, !llvm.loop !116

.critedge2._crit_edge.i.i:                        ; preds = %.critedge2.i.i, %.critedge2.preheader.i.i
  %.lcssa78.i.i = phi ptr [ %i.aw, %.critedge2.preheader.i.i ], [ %i.eb, %.critedge2.i.i ]
  %.lcssa73.i.i = phi i64 [ %i.be, %.critedge2.preheader.i.i ], [ %i.ed, %.critedge2.i.i ]
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.bm = trunc i64 %.lcssa73.i.i to i32
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.19, i32 noundef %i.bm, ptr noundef nonnull %.lcssa78.i.i) #40 ; 0 uses
  br label %poison_enable.exit.i

bb.o:                                             ; preds = %.critedge2.i.i, %.lr.ph93.i.i
  %i.bo = phi ptr [ %i.bf, %.lr.ph93.i.i ], [ %i.ee, %.critedge2.i.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bd, %.lr.ph93.i.i ], [ %i.ec, %.critedge2.i.i ]
  %i.bq = phi ptr [ %i.aw, %.lr.ph93.i.i ], [ %i.eb, %.critedge2.i.i ] ; 10 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 4 uses
  switch i64 %i.bs, label %bb.y [
    i64 12, label %bb.p
    i64 11, label %bb.r
    i64 7, label %bb.t
    i64 27, label %bb.w
  ]

bb.p:                                             ; preds = %bb.o
  %i.bu = load i64, ptr %i.bq, align 1
  %i.bv = xor i64 %i.bu, 7016448169423236976
  %i.bw = getelementptr i8, ptr %i.bq, i64 8
  %i.bx = load i32, ptr %i.bw, align 1
  %i.by = zext i32 %i.bx to i64
  %i.bz = xor i64 %i.by, 1668246636
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not60.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not60.i.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.at, align 8, !tbaa !64
  %i.cd = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, i32 noundef 0) #38
  %i.ce = trunc i64 %i.cd to i8
  store i8 %i.ce, ptr %i.bk, align 1, !tbaa !64
  br label %bb.z

bb.r:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.bq, align 1
  %i.cg = xor i64 %i.cf, 7376736139612876656
  %i.ch = getelementptr i8, ptr %i.bq, i64 3
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 7306371754491801459
  %i.ck = or i64 %i.cg, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not62.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not62.i.i, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.bi, align 2, !tbaa !64
  %i.cn = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, i32 noundef 0) #38
  %i.co = trunc i64 %i.cn to i8
  store i8 %i.co, ptr %i.bj, align 1, !tbaa !64
  br label %bb.z

bb.t:                                             ; preds = %bb.o
  %i.cp = load i32, ptr %i.bq, align 1
  %i.cq = xor i32 %i.cp, 1684300144
  %i.cr = getelementptr i8, ptr %i.bq, i64 3
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = xor i32 %i.cs, 1735289188
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not64.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not64.i.i, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cx = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, i32 noundef 0) #38 ; 3 uses
  %i.cy = and i64 %i.cx, 255                      ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 7
  %i.da = and i64 %i.cz, 504
  %.not65.i.i = icmp eq i64 %i.da, %i.cy
  br i1 %.not65.i.i, label %.thread.i.i, label %bb.v

.thread.i.i:                                      ; preds = %bb.u
  %i.db = trunc i64 %i.cx to i8
  store i8 %i.db, ptr %i.bh, align 4, !tbaa !64
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.dd = trunc i64 %i.cx to i32
  %i.de = and i32 %i.dd, 255
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.23, i32 noundef 8, i32 noundef %i.de) #40 ; 0 uses
  br label %poison_enable.exit.i

bb.w:                                             ; preds = %bb.o
  %i.dg = load i128, ptr %i.bq, align 1
  %i.dh = xor i128 %i.dg, 126876135641678194687449593471780087907
  %i.di = getelementptr i8, ptr %i.bq, i64 11
  %i.dj = load i128, ptr %i.di, align 1
  %i.dk = xor i128 %i.dj, 146835222168830845983602005835309675369
  %i.dl = or i128 %i.dh, %i.dk
  %i.dm = icmp ne i128 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %.not67.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not67.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.a, i32 noundef 0) #38
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i8
  store i8 %i.dq, ptr %i.bg, align 1, !tbaa !64
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.r, %bb.p, %bb.o
  %.lcssa76 = phi i64 [ 27, %bb.w ], [ 7, %bb.t ], [ 11, %bb.r ], [ 12, %bb.p ], [ %i.bs, %bb.o ]
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ds = trunc i64 %.lcssa76 to i32
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.25, i32 noundef %i.ds, ptr noundef nonnull %i.bq) #40 ; 0 uses
  br label %poison_enable.exit.i

bb.z:                                             ; preds = %bb.x, %.thread.i.i, %bb.s, %bb.q
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !117 ; 3 uses
  %i.dv = icmp eq ptr %i.du, %.091.i.i
  br i1 %i.dv, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = load i8, ptr %i.du, align 1, !tbaa !64  ; 2 uses
  %.not68.i.i = icmp eq i8 %i.dw, 44
  br i1 %.not68.i.i, label %.critedge2.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = sext i8 %i.dw to i32
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.dz = trunc nuw nsw i64 %i.bs to i32
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.26, i32 noundef %i.dx, i32 noundef %i.dz, ptr noundef nonnull %i.bq) #40 ; 0 uses
  br label %poison_enable.exit.i

.critedge2.i.i:                                   ; preds = %bb.aa
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 5 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !117
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = sub i64 %i.bc, %i.ec                    ; 2 uses
  %i.ee = call ptr @memchr(ptr noundef nonnull %i.eb, i32 noundef 61, i64 noundef %i.ed) #48 ; 3 uses
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !117
  %.not59.i.i = icmp eq ptr %i.ee, null
  br i1 %.not59.i.i, label %.critedge2._crit_edge.i.i, label %bb.o

bb.ac:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 432
  store ptr @poison_malloc, ptr %i.ef, align 16, !tbaa !63
  %i.eg = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  store ptr @poison_free, ptr %i.eg, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  store ptr @poison_realloc, ptr %i.eh, align 16, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  store ptr @poison_gc, ptr %i.ei, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 464
  store ptr @poison_shutdown, ptr %i.ej, align 16, !tbaa !71
  store i32 1, ptr %i.t, align 16, !tbaa !37
  br label %poison_enable.exit.i

poison_enable.exit.i:                             ; preds = %.critedge4.i.i, %bb.ac, %bb.ab, %bb.y, %bb.v, %.critedge2._crit_edge.i.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %alloc_globals_ctor.exit

alloc_globals_ctor.exit:                          ; preds = %bb.f, %bb.g, %zend_mm_init.exit.i, %poison_enable.exit.i
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @zend_mm_set_heap(ptr noundef %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80
  store ptr %0, ptr @alloc_globals.0, align 8, !tbaa !80
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @zend_mm_get_heap() local_unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @zend_mm_is_custom_heap(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @alloc_globals.0, align 8, !tbaa !80
  %i.b = load i32, ptr %i.a, align 16, !tbaa !37
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zend_mm_set_custom_handlers(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %bb.b, label %zend_mm_set_custom_handlers_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %1, ptr %i.d, align 16, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %2, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %3, ptr %i.f, align 16, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %zend_mm_set_custom_handlers_ex.exit

zend_mm_set_custom_handlers_ex.exit:              ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink.i, ptr %0, align 16, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @zend_mm_set_custom_handlers_ex(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp ne ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %1, ptr %i.d, align 16, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %2, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %3, ptr %i.f, align 16, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %4, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %5, ptr %i.h, align 16, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink, ptr %0, align 16, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @zend_mm_get_custom_handlers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !37
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !63
  store ptr %i.c, ptr %1, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  store ptr %i.e, ptr %2, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !88
  br label %zend_mm_get_custom_handlers_ex.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !27
  store ptr null, ptr %2, align 8, !tbaa !27
  br label %zend_mm_get_custom_handlers_ex.exit

zend_mm_get_custom_handlers_ex.exit:              ; preds = %bb.b, %bb.c
  %storemerge = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ]
  store ptr %storemerge, ptr %3, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @zend_mm_get_custom_handlers_ex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !tbaa !37
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !63
  store ptr %i.c, ptr %1, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  store ptr %i.e, ptr %2, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !88
  store ptr %i.g, ptr %3, align 8, !tbaa !27
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  store ptr %i.i, ptr %4, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not26 = icmp eq ptr %5, null
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !71
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
end_hunk_0
