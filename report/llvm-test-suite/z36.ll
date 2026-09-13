Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z36?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@TrieRead:bb.a
  %i.hs = getelementptr inbounds i8, ptr %i.c, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !12
  %i.ht = getelementptr inbounds i8, ptr %i.d, i64 %i.hr ; 2 uses
  store i8 %.294.lcssa, ptr %i.ht, align 1, !tbaa !12
  %i.hu = getelementptr i8, ptr %i.ht, i64 1
  store i8 0, ptr %i.hu, align 1, !tbaa !12
  %i.hv = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.hw = icmp ne i32 %i.hv, 0
  %.not113 = icmp sgt i32 %.289.lcssa, %i.hv
  %or.cond127 = and i1 %i.hw, %.not113
  br i1 %or.cond127, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge158
  %i.hx = call fastcc i32 @TrieInsert(ptr noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.bd, ptr noundef %i.m, i32 noundef %i.bt)
  %.not114 = icmp eq i32 %i.hx, 0
  br i1 %.not114, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hy = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 12, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.9, i32 noundef %i.bt) #11 ; 0 uses
  br label %.critedge129

default.unreachable191:                           ; preds = %DecodeEscapes.exit
  unreachable

bb.ar:                                            ; preds = %._crit_edge158, %bb.ak, %bb.ad, %bb.ac, %bb.v, %bb.u, %bb.t, %bb.r, %bb.s, %bb.ap, %bb.al, %bb.ai, %AddClassToTrie.exit
  %.2 = phi i32 [ 4, %._crit_edge158 ], [ 4, %bb.ap ], [ 1, %bb.r ], [ 2, %bb.t ], [ 4, %bb.u ], [ 1, %AddClassToTrie.exit ], [ 3, %bb.v ], [ 4, %bb.ac ], [ 2, %bb.ai ], [ 3, %bb.ad ], [ 3, %bb.al ], [ 1, %bb.s ], [ 4, %bb.ak ] ; 2 uses
  %i.hz = sext i32 %i.cy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.e, i64 %i.hz
  %i.ib = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #11
  %i.ic = icmp eq i32 %i.ib, 1
  %i.id = load i8, ptr %i.b, align 16             ; 2 uses
  %i.ie = icmp ne i8 %i.id, 37
  %i.if = select i1 %i.ic, i1 %i.ie, i1 false
  br i1 %i.if, label %.lr.ph164, label %.loopexit, !llvm.loop !33

._crit_edge170:                                   ; preds = %.loopexit
  %i.ig = icmp eq i32 %.1.lcssa, 4
  br i1 %i.ig, label %bb.as, label %._crit_edge170.thread

._crit_edge170.thread:                            ; preds = %NewTrie.exit, %._crit_edge170
  %i.ih = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ii = call ptr @FileName(i16 noundef zeroext %i.r) #11
  %i.ij = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 13, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef %i.ih, ptr noundef %i.ii) #11 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge170.thread, %._crit_edge170
  %i.ik = call i32 @fclose(ptr noundef nonnull %i.s) ; 0 uses
  call fastcc void @CompressTrie(ptr noundef nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.e
  %.198 = phi ptr [ %i.bd, %bb.as ], [ undef, %bb.e ]
  store i32 1, ptr %1, align 4, !tbaa !7
  br label %bb.au

.critedge129:                                     ; preds = %bb.k, %bb.aq, %bb.am, %bb.aj, %bb.f
  %.sink = phi i32 [ 0, %bb.f ], [ 0, %bb.aq ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 1, %bb.k ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.au

bb.au:                                            ; preds = %.critedge129, %bb.at, %.critedge
  %.1100 = phi ptr [ null, %.critedge ], [ %.198, %bb.at ], [ null, %.critedge129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.1100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Hyphenate(ptr nofree noundef readonly returned captures(address, ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2050 x i8], align 16             ; 12 uses
  %i.b = alloca [2051 x i8], align 16             ; 10 uses
  %i.c = alloca [2051 x i8], align 16             ; 10 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12
  %i.g = icmp eq i8 %i.f, 17
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.i = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.h, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0279.in409 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0279410 = load ptr, ptr %.0279.in409, align 8, !tbaa !12 ; 2 uses
  %.not411 = icmp eq ptr %.0279410, %0
  br i1 %.not411, label %._crit_edge413, label %.preheader343.lr.ph

.preheader343.lr.ph:                              ; preds = %bb.c
  %i.j = ptrtoint ptr %i.a to i64
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %.preheader343

.preheader343:                                    ; preds = %.preheader343.lr.ph, %.thread
  %.0279412 = phi ptr [ %.0279410, %.preheader343.lr.ph ], [ %.0279, %.thread ] ; 14 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader343, %bb.d
  %.0279.pn = phi ptr [ %.0278, %bb.d ], [ %.0279412, %.preheader343 ]
  %.0278.in = getelementptr inbounds nuw i8, ptr %.0279.pn, i64 16
  %.0278 = load ptr, ptr %.0278.in, align 8, !tbaa !12 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0278, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !12
  switch i8 %i.l, label %.thread [
    i8 0, label %bb.d
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0278, i64 32 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0278, i64 64 ; 9 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !12
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.0278, i64 40 ; 16 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not316 = icmp sgt i32 %i.r, -1
  br i1 %.not316, label %.thread, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0278, i64 44 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4              ; 2 uses
  %.mask = and i16 %i.t, -8192
  %i.u = icmp eq i16 %.mask, 16384
  br i1 %i.u, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = and i16 %i.t, 24447
  store i16 %i.v, ptr %i.s, align 4
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.w = lshr i32 %i.r, 23
  %i.x = and i32 %i.w, 63                         ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 19, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = zext nneg i32 %i.x to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @HyphTables, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @TriedFile, i64 %i.aa ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %.not317 = icmp eq i32 %i.af, 0
  br i1 %.not317, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = call fastcc ptr @TrieRead(i32 noundef %i.x, ptr noundef %i.d) ; 3 uses
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !11
  store i32 1, ptr %i.ae, align 4, !tbaa !7
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.1277 = phi ptr [ %i.ag, %bb.m ], [ %i.ac, %bb.k ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1277, i64 8 ; 7 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.n ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12
  %i.ao = icmp eq i8 %i.an, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ao, label %bb.o, label %.preheader342, !llvm.loop !36

.preheader342:                                    ; preds = %bb.o, %.preheader342
  %indvars.iv437 = phi i32 [ %indvars.iv.next438, %.preheader342 ], [ 0, %bb.o ] ; 5 uses
  %indvar = phi i64 [ %indvar.next, %.preheader342 ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %.preheader342 ], [ %indvars.iv, %bb.o ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv431
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12  ; 3 uses
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !12  ; 2 uses
  %i.au = icmp ugt i8 %i.at, 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1
  %indvar.next = add i64 %indvar, 1
  %indvars.iv.next438 = add i32 %indvars.iv437, 1 ; 2 uses
  br i1 %i.au, label %.preheader342, label %bb.p, !llvm.loop !37

bb.p:                                             ; preds = %.preheader342
  %i.av = icmp eq i8 %i.aq, 45
  br i1 %i.av, label %bb.q, label %bb.am

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv431
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.0279412, i64 8 ; 3 uses
  %i.bb = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.m) #11 ; 6 uses
  %i.bc = load i32, ptr %i.q, align 8
  %i.bd = and i32 %i.bc, 4095
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 7 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = and i32 %i.bf, -4096
  %i.bh = or disjoint i32 %i.bg, %i.bd            ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8
  %i.bi = load i32, ptr %i.q, align 8
  %i.bj = and i32 %i.bi, 4190208
  %i.bk = and i32 %i.bh, -4190209
  %i.bl = or disjoint i32 %i.bk, %i.bj            ; 2 uses
  store i32 %i.bl, ptr %i.be, align 8
  %i.bm = load i32, ptr %i.q, align 8
  %i.bn = and i32 %i.bm, 4194304
  %i.bo = and i32 %i.bl, -4194305
  %i.bp = or disjoint i32 %i.bo, %i.bn            ; 2 uses
  store i32 %i.bp, ptr %i.be, align 8
  %i.bq = load i32, ptr %i.q, align 8
  %i.br = and i32 %i.bq, 528482304
  %i.bs = and i32 %i.bp, -528482305
  %i.bt = or disjoint i32 %i.bs, %i.br            ; 2 uses
  store i32 %i.bt, ptr %i.be, align 8
  %i.bu = load i32, ptr %i.q, align 8
  %i.bv = and i32 %i.bu, -2147483648
  %i.bw = and i32 %i.bt, 2147483647
  %i.bx = or disjoint i32 %i.bw, %i.bv            ; 2 uses
  store i32 %i.bx, ptr %i.be, align 8
  %i.by = load i32, ptr %i.q, align 8
  %i.bz = and i32 %i.by, 1610612736
  %i.ca = and i32 %i.bx, -1610612737
  %i.cb = or disjoint i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.be, align 8
  call void @FontWordSize(ptr noundef %i.bb) #11
  %i.cc = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr @zz_size, align 4, !tbaa !7
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cj = call ptr @GetMemory(i32 noundef %i.cd, ptr noundef %i.ci) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store ptr %i.cg, ptr @zz_hold, align 8, !tbaa !52
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !12
  store ptr %i.ck, ptr %i.cf, align 8, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cl = phi ptr [ %i.cj, %bb.s ], [ %i.cg, %bb.t ] ; 13 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i8 0, ptr %i.cm, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !12
  store ptr %i.cl, ptr %i.cl, align 8, !tbaa !12
  store ptr %i.cl, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.cl, ptr @zz_res, align 8, !tbaa !52
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !12 ; 4 uses
  store ptr %i.cq, ptr @zz_hold, align 8, !tbaa !52
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread507, label %bb.v

.thread507:                                       ; preds = %bb.u
  store ptr %i.bb, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !12
  store ptr %i.cs, ptr @zz_tmp, align 8, !tbaa !52
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !12
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !12
  %i.cu = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.cv = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !12
  %i.cy = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !12
  %i.cz = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !12
  %.pre459 = load ptr, ptr @xx_link, align 8, !tbaa !52 ; 3 uses
  store ptr %.pre459, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.bb, ptr @zz_hold, align 8, !tbaa !52
  %i.db = icmp eq ptr %.pre459, null
  br i1 %i.db, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread507, %bb.v
  %i.dc = phi ptr [ %i.cl, %.thread507 ], [ %.pre459, %bb.v ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 3 uses
  store ptr %i.de, ptr @zz_tmp, align 8, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !12 ; 2 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.bb, ptr %i.dh, align 8, !tbaa !12
  store ptr %i.de, ptr %i.df, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.dc, ptr %i.di, align 8, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !12 ; 2 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  store i32 %i.dk, ptr @zz_size, align 4, !tbaa !7
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !52 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.dq = call ptr @GetMemory(i32 noundef %i.dk, ptr noundef %i.dp) #11 ; 2 uses
  store ptr %i.dq, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store ptr %i.dn, ptr @zz_hold, align 8, !tbaa !52
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !12
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ds = phi ptr [ %i.dq, %bb.y ], [ %i.dn, %bb.z ] ; 20 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i8 1, ptr %i.dt, align 8, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !12
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !12
  store ptr %i.ds, ptr %i.ds, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 42
  store i8 0, ptr %i.dy, align 2, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 41
  store i8 0, ptr %i.dz, align 1, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 44 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 4
  %i.ec = and i16 %i.eb, 127
  %i.ed = or disjoint i16 %i.ec, 17920
  store i16 %i.ed, ptr %i.ea, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 46
  store i16 0, ptr %i.ee, align 2, !tbaa !12
  %i.ef = load i32, ptr %i.q, align 8
  %i.eg = and i32 %i.ef, 1610612736
  %i.eh = load i32, ptr %i.dx, align 8
  %i.ei = and i32 %i.eh, -1610612737
  %i.ej = or disjoint i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.dx, align 8
  %i.ek = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  store i32 %i.el, ptr @zz_size, align 4, !tbaa !7
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.em ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.er = call ptr @GetMemory(i32 noundef %i.el, ptr noundef %i.eq) #11
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.eo, ptr @zz_hold, align 8, !tbaa !52
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !12
  store ptr %i.es, ptr %i.en, align 8, !tbaa !52
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.et = phi ptr [ %i.er, %bb.ab ], [ %i.eo, %bb.ac ] ; 14 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i8 0, ptr %i.eu, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !12
  store ptr %i.et, ptr %i.et, align 8, !tbaa !12
  store ptr %i.et, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.et, ptr @zz_res, align 8, !tbaa !52
  %i.ey = load ptr, ptr %i.ba, align 8, !tbaa !12 ; 4 uses
  store ptr %i.ey, ptr @zz_hold, align 8, !tbaa !52
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.thread334, label %bb.ae

.thread334:                                       ; preds = %bb.ad
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !12
  store ptr %i.fa, ptr @zz_tmp, align 8, !tbaa !52
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !12
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !12
  %i.fc = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.fd = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !12
  %i.fg = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !12
  %i.fh = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !12
  %.pr = load ptr, ptr @xx_link, align 8, !tbaa !52 ; 4 uses
  store ptr %.pr, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !52
  %i.fj = icmp eq ptr %.pr, null
  br i1 %i.fj, label %bb.ag, label %._crit_edge460

._crit_edge460:                                   ; preds = %bb.ae
  %.phi.trans.insert461 = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %.pre462 = load ptr, ptr %.phi.trans.insert461, align 8, !tbaa !12
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge460, %.thread334
  %i.fk = phi ptr [ %i.et, %.thread334 ], [ %.pre462, %._crit_edge460 ]
  %i.fl = phi ptr [ %i.et, %.thread334 ], [ %.pr, %._crit_edge460 ] ; 2 uses
  %i.fm = load ptr, ptr %i.du, align 8, !tbaa !12 ; 3 uses
  store ptr %i.fm, ptr @zz_tmp, align 8, !tbaa !52
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  store ptr %i.fk, ptr %i.du, align 8, !tbaa !12
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr %i.ds, ptr %i.fp, align 8, !tbaa !12
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fr = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  store i32 %i.fs, ptr @zz_size, align 4, !tbaa !7
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !52 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.fy = call ptr @GetMemory(i32 noundef %i.fs, ptr noundef %i.fx) #11
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.fv, ptr @zz_hold, align 8, !tbaa !52
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !12
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !52
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ga = phi ptr [ %i.fy, %bb.ah ], [ %i.fv, %bb.ai ] ; 12 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i8 0, ptr %i.gb, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ga, ptr %i.ge, align 8, !tbaa !12
  store ptr %i.ga, ptr %i.ga, align 8, !tbaa !12
  store ptr %i.ga, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.ga, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !52
  %i.gf = load ptr, ptr %i.ds, align 8, !tbaa !12
  store ptr %i.gf, ptr @zz_tmp, align 8, !tbaa !52
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !12
  store ptr %i.gg, ptr %i.ds, align 8, !tbaa !12
  %i.gh = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.gi = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !12
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !12
  %i.gl = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !12
  %i.gm = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !12
  %i.go = load ptr, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.go, ptr @zz_res, align 8, !tbaa !52
  %i.gp = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.m) #11 ; 4 uses
  store ptr %i.gp, ptr @zz_hold, align 8, !tbaa !52
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = load ptr, ptr @zz_res, align 8          ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  %or.cond11 = select i1 %i.gq, i1 true, i1 %i.gs
  br i1 %or.cond11, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12 ; 3 uses
  store ptr %i.gu, ptr @zz_tmp, align 8, !tbaa !52
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !12 ; 2 uses
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.gp, ptr %i.gx, align 8, !tbaa !12
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store ptr %i.gr, ptr %i.gy, align 8, !tbaa !12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 0, ptr %i.ax, align 1, !tbaa !12
  call void @FontWordSize(ptr noundef nonnull %.0278) #11
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !12
  br label %.thread

bb.am:                                            ; preds = %bb.p
  %i.ha = trunc nuw nsw i64 %indvars.iv431 to i32
  %i.hb = trunc nuw nsw i64 %indvars.iv to i32
  %i.hc = sub nuw nsw i32 %i.ha, %i.hb
  %i.hd = icmp samesign ult i32 %i.hc, 5
  br i1 %i.hd, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not318 = icmp ne i8 %i.aq, 0
  %i.he = icmp eq i8 %i.at, 0
  %or.cond330 = and i1 %.not318, %i.he
  br i1 %or.cond330, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  store i8 1, ptr %i.a, align 16, !tbaa !12
  store i8 48, ptr %i.b, align 16, !tbaa !12
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 48, i64 %indvar, i1 false), !tbaa !12
  %wide.trip.count = zext i32 %indvars.iv437 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.hf = add i32 %indvars.iv437, -1
  %i.hg = icmp ult i32 %i.hf, 3
  br i1 %i.hg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv434 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next435.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv434
  %i.hh = load i8, ptr %gep, align 1, !tbaa !12
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !12
  %indvars.iv.next435 = or disjoint i64 %indvars.iv434, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !12
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435
  %i.hm = load i8, ptr %gep.1, align 1, !tbaa !12
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !12
  %indvars.iv.next435.1 = or disjoint i64 %indvars.iv434, 2 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.1
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !12
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.1
  %i.hr = load i8, ptr %gep.2, align 1, !tbaa !12
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !12
  %indvars.iv.next435.2 = or disjoint i64 %indvars.iv434, 3 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.2
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !12
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.2
  %i.hw = load i8, ptr %gep.3, align 1, !tbaa !12
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !12
  %indvars.iv.next435.3 = add nuw nsw i64 %indvars.iv434, 4 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.3
  store i8 %i.hz, ptr %i.ia, align 4, !tbaa !12
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !38

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv434.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next435.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod570 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod570)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv434.epil = phi i64 [ %indvars.iv434.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next435.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv434.epil
  %i.ib = load i8, ptr %gep.epil, align 1, !tbaa !12
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !12
  %indvars.iv.next435.epil = add nuw nsw i64 %indvars.iv434.epil, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.epil
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ig = zext nneg i32 %indvars.iv.next438 to i64 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ig
  store i8 1, ptr %i.ih, align 1, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ig
  store i8 48, ptr %i.ii, align 1, !tbaa !12
  %i.ij = add nuw nsw i32 %indvars.iv437, 2
  %i.ik = zext nneg i32 %i.ij to i64              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !12
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ik
  store i8 48, ptr %i.im, align 1, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %wide.trip.count
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 3
  store i8 0, ptr %i.io, align 1, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %.1277, i64 264 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.1277, i64 280 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit338, %._crit_edge
  %.0275 = phi ptr [ %i.a, %._crit_edge ], [ %i.ll, %.loopexit338 ] ; 4 uses
  %i.ir = ptrtoint ptr %.0275 to i64
  %i.is = sub i64 %i.ir, %i.j
  %i.it = getelementptr inbounds i8, ptr %i.b, i64 %i.is ; 2 uses
  %.pre = load ptr, ptr %i.ip, align 8, !tbaa !17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ba, %bb.ao
  %i.iu = phi ptr [ %.pre, %bb.ao ], [ %i.jz, %bb.ba ]
  %.0273 = phi ptr [ %.0275, %bb.ao ], [ %i.lk, %bb.ba ] ; 3 uses
  %.0262 = phi i32 [ 0, %bb.ao ], [ %i.lj, %bb.ba ] ; 2 uses
  %i.iv = zext nneg i32 %.0262 to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.iu, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !26 ; 2 uses
  %i.iy = icmp slt i16 %i.ix, 0
  br i1 %i.iy, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.iz = sext i16 %i.ix to i64
  %i.ja = load ptr, ptr %i.iq, align 8, !tbaa !20
  %i.jb = sub nsw i64 0, %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !12  ; 2 uses
  %.not319361 = icmp eq i8 %i.jd, 0
  br i1 %.not319361, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.aq, %._crit_edge359
  %i.je = phi i8 [ %i.jo, %._crit_edge359 ], [ %i.jd, %bb.aq ] ; 2 uses
  %.0257363 = phi ptr [ %i.jm, %._crit_edge359 ], [ %i.c, %bb.aq ] ; 3 uses
  %.0259362 = phi ptr [ %i.jn, %._crit_edge359 ], [ %i.jc, %bb.aq ]
  %i.jf = lshr i8 %i.je, 4                        ; 2 uses
  %i.jg = and i8 %i.je, 15
  %.not414 = icmp eq i8 %i.jf, 0
  br i1 %.not414, label %._crit_edge359, label %.lr.ph358.preheader

.lr.ph358.preheader:                              ; preds = %.lr.ph365
  %i.jh = zext nneg i8 %i.jf to i64
  %i.ji = add nuw nsw i64 %i.jh, 4294967295
  %i.jj = and i64 %i.ji, 4294967295               ; 2 uses
  %i.jk = add nuw nsw i64 %i.jj, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0257363, i8 48, i64 %i.jk, i1 false), !tbaa !12
  %scevgep439 = getelementptr i8, ptr %.0257363, i64 1
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %i.jj
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %.lr.ph358.preheader, %.lr.ph365
  %.1258.lcssa = phi ptr [ %.0257363, %.lr.ph365 ], [ %scevgep440, %.lr.ph358.preheader ] ; 2 uses
  %i.jl = add nuw nsw i8 %i.jg, 46
  %i.jm = getelementptr inbounds nuw i8, ptr %.1258.lcssa, i64 1 ; 2 uses
  store i8 %i.jl, ptr %.1258.lcssa, align 1, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.0259362, i64 1 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !12  ; 2 uses
  %.not319 = icmp eq i8 %i.jo, 0
  br i1 %.not319, label %._crit_edge366, label %.lr.ph365, !llvm.loop !40

._crit_edge366:                                   ; preds = %._crit_edge359, %bb.aq
  %.0257.lcssa = phi ptr [ %i.c, %bb.aq ], [ %i.jm, %._crit_edge359 ]
  store i8 0, ptr %.0257.lcssa, align 1, !tbaa !12
  %i.jp = load i8, ptr %i.c, align 16, !tbaa !12  ; 2 uses
  %.not320368 = icmp eq i8 %i.jp, 0
  br i1 %.not320368, label %.loopexit, label %.lr.ph372

.lr.ph372:                                        ; preds = %._crit_edge366, %bb.as
  %i.jq = phi i8 [ %i.jv, %bb.as ], [ %i.jp, %._crit_edge366 ] ; 2 uses
  %.0254370 = phi ptr [ %i.ju, %bb.as ], [ %i.it, %._crit_edge366 ] ; 3 uses
  %.0255369 = phi ptr [ %i.jt, %bb.as ], [ %i.c, %._crit_edge366 ]
  %i.jr = load i8, ptr %.0254370, align 1, !tbaa !12
  %i.js = icmp ugt i8 %i.jq, %i.jr
  br i1 %i.js, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph372
  store i8 %i.jq, ptr %.0254370, align 1, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph372
  %i.jt = getelementptr inbounds nuw i8, ptr %.0255369, i64 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.0254370, i64 1
  %i.jv = load i8, ptr %i.jt, align 1, !tbaa !12  ; 2 uses
  %.not320 = icmp eq i8 %i.jv, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph372, !llvm.loop !41

.loopexit:                                        ; preds = %bb.as, %._crit_edge366, %bb.ap
  %i.jw = load i8, ptr %.0273, align 1, !tbaa !12 ; 2 uses
  %i.jx = icmp eq i8 %i.jw, 0
  br i1 %i.jx, label %.loopexit338, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.jy = zext i8 %i.jw to i32
  %i.jz = load ptr, ptr %i.ip, align 8, !tbaa !17 ; 2 uses
  %i.ka = add nuw nsw i32 %.0262, %i.jy
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !26 ; 3 uses
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = icmp eq i16 %i.kd, 0
  br i1 %i.kf, label %.loopexit338, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kg = icmp slt i16 %i.kd, 0
  br i1 %i.kg, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.kh = load ptr, ptr %i.iq, align 8, !tbaa !20
  %i.ki = sub nsw i32 0, %i.ke
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.av
  %.1274 = phi ptr [ %.0273, %bb.av ], [ %i.lf, %bb.az ]
  %.0271 = phi ptr [ %i.kk, %bb.av ], [ %i.lh, %bb.az ] ; 3 uses
  %i.kl = load i8, ptr %.0271, align 1, !tbaa !12 ; 2 uses
  %i.km = icmp eq i8 %i.kl, 0
  br i1 %i.km, label %.preheader339, label %bb.az

.preheader339:                                    ; preds = %bb.aw
  %.0253379 = getelementptr inbounds nuw i8, ptr %.0271, i64 1 ; 2 uses
  %i.kn = load i8, ptr %.0253379, align 1, !tbaa !12 ; 2 uses
  %.not321380 = icmp eq i8 %i.kn, 0
  br i1 %.not321380, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %.preheader339, %._crit_edge377
  %i.ko = phi i8 [ %i.kx, %._crit_edge377 ], [ %i.kn, %.preheader339 ] ; 2 uses
  %.0253382 = phi ptr [ %.0253, %._crit_edge377 ], [ %.0253379, %.preheader339 ]
  %.0252381 = phi ptr [ %i.kw, %._crit_edge377 ], [ %i.c, %.preheader339 ] ; 3 uses
  %i.kp = lshr i8 %i.ko, 4                        ; 2 uses
  %i.kq = and i8 %i.ko, 15
  %.not415 = icmp eq i8 %i.kp, 0
  br i1 %.not415, label %._crit_edge377, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %.lr.ph383
  %i.kr = zext nneg i8 %i.kp to i64
  %i.ks = add nuw nsw i64 %i.kr, 4294967295
  %i.kt = and i64 %i.ks, 4294967295               ; 2 uses
  %i.ku = add nuw nsw i64 %i.kt, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0252381, i8 48, i64 %i.ku, i1 false), !tbaa !12
  %scevgep441 = getelementptr i8, ptr %.0252381, i64 1
  %scevgep442 = getelementptr i8, ptr %scevgep441, i64 %i.kt
  br label %._crit_edge377

._crit_edge377:                                   ; preds = %.lr.ph376.preheader, %.lr.ph383
  %.1.lcssa = phi ptr [ %.0252381, %.lr.ph383 ], [ %scevgep442, %.lr.ph376.preheader ] ; 2 uses
  %i.kv = add nuw nsw i8 %i.kq, 46
  %i.kw = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 2 uses
  store i8 %i.kv, ptr %.1.lcssa, align 1, !tbaa !12
  %.0253 = getelementptr inbounds nuw i8, ptr %.0253382, i64 1 ; 2 uses
  %i.kx = load i8, ptr %.0253, align 1, !tbaa !12 ; 2 uses
  %.not321 = icmp eq i8 %i.kx, 0
  br i1 %.not321, label %._crit_edge384, label %.lr.ph383, !llvm.loop !42

._crit_edge384:                                   ; preds = %._crit_edge377, %.preheader339
  %.0252.lcssa = phi ptr [ %i.c, %.preheader339 ], [ %i.kw, %._crit_edge377 ]
  store i8 0, ptr %.0252.lcssa, align 1, !tbaa !12
  %i.ky = load i8, ptr %i.c, align 16, !tbaa !12  ; 2 uses
  %.not322386 = icmp eq i8 %i.ky, 0
  br i1 %.not322386, label %.loopexit338, label %.lr.ph390

.lr.ph390:                                        ; preds = %._crit_edge384, %bb.ay
  %i.kz = phi i8 [ %i.le, %bb.ay ], [ %i.ky, %._crit_edge384 ] ; 2 uses
  %.0388 = phi ptr [ %i.ld, %bb.ay ], [ %i.it, %._crit_edge384 ] ; 3 uses
  %.0250387 = phi ptr [ %i.lc, %bb.ay ], [ %i.c, %._crit_edge384 ]
  %i.la = load i8, ptr %.0388, align 1, !tbaa !12
  %i.lb = icmp ugt i8 %i.kz, %i.la
  br i1 %i.lb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph390
  store i8 %i.kz, ptr %.0388, align 1, !tbaa !12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph390
  %i.lc = getelementptr inbounds nuw i8, ptr %.0250387, i64 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0388, i64 1
  %i.le = load i8, ptr %i.lc, align 1, !tbaa !12  ; 2 uses
  %.not322 = icmp eq i8 %i.le, 0
  br i1 %.not322, label %.loopexit338, label %.lr.ph390, !llvm.loop !43

bb.az:                                            ; preds = %bb.aw
  %i.lf = getelementptr inbounds nuw i8, ptr %.1274, i64 1 ; 2 uses
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !12
  %i.lh = getelementptr inbounds nuw i8, ptr %.0271, i64 1
  %i.li = icmp eq i8 %i.lg, %i.kl
  br i1 %i.li, label %bb.aw, label %.loopexit338, !llvm.loop !44

bb.ba:                                            ; preds = %bb.au
  %i.lj = shl nuw nsw i32 %i.ke, 2
  %i.lk = getelementptr inbounds nuw i8, ptr %.0273, i64 1
  br label %bb.ap

.loopexit338:                                     ; preds = %.loopexit, %bb.at, %bb.az, %bb.ay, %._crit_edge384
  %i.ll = getelementptr inbounds nuw i8, ptr %.0275, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.0275, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !12
  %.not323 = icmp eq i8 %i.ln, 1
  br i1 %.not323, label %bb.bb, label %bb.ao, !llvm.loop !45

bb.bb:                                            ; preds = %.loopexit338
  %i.lo = load ptr, ptr @finfo, align 8, !tbaa !54
  %i.lp = load i32, ptr %i.q, align 8
  %i.lq = and i32 %i.lp, 4095
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [96 x i8], ptr %i.lo, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !58 ; 2 uses
  %i.lv = load i8, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %.not324394 = icmp eq i8 %i.lv, 0
  br i1 %.not324394, label %.lr.ph406.preheader, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.bb, %.loopexit337
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %.loopexit337 ], [ 2, %bb.bb ] ; 2 uses
  %i.lw = phi i8 [ %i.mt, %.loopexit337 ], [ %i.lv, %bb.bb ] ; 3 uses
  %.0272395 = phi ptr [ %i.ms, %.loopexit337 ], [ %i.n, %bb.bb ] ; 2 uses
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !12  ; 2 uses
  %i.ma = icmp ugt i8 %i.lz, 1
  br i1 %i.ma, label %bb.bc, label %.loopexit337

bb.bc:                                            ; preds = %.lr.ph400
  %i.mb = zext i8 %i.lz to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 256 ; 2 uses
  %i.me = load i8, ptr %i.md, align 1, !tbaa !12
  %i.mf = icmp eq i8 %i.me, %i.lw
  br i1 %i.mf, label %.lr.ph393, label %.loopexit337

.lr.ph393:                                        ; preds = %bb.bc, %.preheader.preheader
  %.0268391 = phi ptr [ %i.mo, %.preheader.preheader ], [ %i.md, %bb.bc ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0268391, i64 1 ; 2 uses
  %.pre453 = load i8, ptr %i.mg, align 1, !tbaa !12
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %.lr.ph393
  %i.mh = phi i8 [ %i.ml, %bb.be ], [ %.pre453, %.lr.ph393 ] ; 2 uses
  %indvar443 = phi i64 [ %indvar.next444, %bb.be ], [ 0, %.lr.ph393 ] ; 2 uses
  %.1269 = phi ptr [ %i.mk, %bb.be ], [ %i.mg, %.lr.ph393 ] ; 2 uses
  %.0272.pn = phi ptr [ %.0267, %bb.be ], [ %.0272395, %.lr.ph393 ]
  %.0267 = getelementptr inbounds nuw i8, ptr %.0272.pn, i64 1 ; 2 uses
  %i.mi = load i8, ptr %.0267, align 1, !tbaa !12
  %i.mj = icmp eq i8 %i.mh, %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %.1269, i64 1 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !12  ; 3 uses
  br i1 %i.mj, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %.not327 = icmp eq i8 %i.ml, 0
  %.not328 = icmp eq i8 %i.mh, 0
  %or.cond331 = or i1 %.not328, %.not327
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %or.cond331, label %.critedge, label %bb.bd, !llvm.loop !46

.critedge:                                        ; preds = %bb.be, %bb.bd
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.bf, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.mn = getelementptr i8, ptr %.0268391, i64 %indvar443
  %scevgep445 = getelementptr i8, ptr %i.mn, i64 2
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep445)
  %scevgep446 = getelementptr i8, ptr %.1269, i64 %strlen
  %i.mo = getelementptr inbounds nuw i8, ptr %scevgep446, i64 2 ; 2 uses
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !12
  %i.mq = icmp eq i8 %i.mp, %i.lw
  br i1 %i.mq, label %.lr.ph393, label %.loopexit337, !llvm.loop !47

bb.bf:                                            ; preds = %.critedge
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv447
  store i8 48, ptr %i.mr, align 1, !tbaa !12
  br label %.loopexit337

.loopexit337:                                     ; preds = %.preheader.preheader, %bb.bc, %.lr.ph400, %bb.bf
  %i.ms = getelementptr inbounds nuw i8, ptr %.0272395, i64 1 ; 2 uses
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !12  ; 2 uses
  %.not324 = icmp eq i8 %i.mt, 0
  br i1 %.not324, label %.lr.ph406.preheader, label %.lr.ph400, !llvm.loop !48

.lr.ph406.preheader:                              ; preds = %.loopexit337, %bb.bb
  %i.mu = getelementptr inbounds nuw i8, ptr %.0279412, i64 8 ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !12
  %1 = sext i32 %indvars.iv437 to i64
  %invariant.gep536 = getelementptr i8, ptr %i.n, i64 %indvars.iv
  br label %.lr.ph406.outer

.lr.ph406.outer:                                  ; preds = %.thread509, %.lr.ph406.preheader
  %indvars.iv450.ph = phi i64 [ %indvars.iv.next451, %.thread509 ], [ %1, %.lr.ph406.preheader ]
  %.not325 = phi i1 [ false, %.thread509 ], [ true, %.lr.ph406.preheader ]
  br label %.lr.ph406

.lr.ph406:                                        ; preds = %.lr.ph406.outer, %bb.ca
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %bb.ca ], [ %indvars.iv450.ph, %.lr.ph406.outer ] ; 3 uses
  %indvars.iv.next451 = add nsw i64 %indvars.iv450, -1 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next451
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !12
  %i.my = and i8 %i.mx, 1
  %.not326 = icmp eq i8 %i.my, 0
  br i1 %.not326, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph406
  %gep537 = getelementptr i8, ptr %invariant.gep536, i64 %indvars.iv.next451
  %i.mz = getelementptr i8, ptr %gep537, i64 -1   ; 2 uses
  %i.na = call ptr @MakeWord(i32 noundef 11, ptr noundef %i.mz, ptr noundef nonnull %i.m) #11 ; 6 uses
  %i.nb = load i32, ptr %i.q, align 8
  %i.nc = and i32 %i.nb, 4095
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 40 ; 7 uses
  %i.ne = load i32, ptr %i.nd, align 8
  %i.nf = and i32 %i.ne, -4096
  %i.ng = or disjoint i32 %i.nf, %i.nc            ; 2 uses
  store i32 %i.ng, ptr %i.nd, align 8
  %i.nh = load i32, ptr %i.q, align 8
  %i.ni = and i32 %i.nh, 4190208
  %i.nj = and i32 %i.ng, -4190209
  %i.nk = or disjoint i32 %i.nj, %i.ni            ; 2 uses
  store i32 %i.nk, ptr %i.nd, align 8
  %i.nl = load i32, ptr %i.q, align 8
  %i.nm = and i32 %i.nl, 4194304
  %i.nn = and i32 %i.nk, -4194305
  %i.no = or disjoint i32 %i.nn, %i.nm            ; 2 uses
  store i32 %i.no, ptr %i.nd, align 8
  %i.np = load i32, ptr %i.q, align 8
  %i.nq = and i32 %i.np, 528482304
  %i.nr = and i32 %i.no, -528482305
  %i.ns = or disjoint i32 %i.nr, %i.nq            ; 2 uses
  store i32 %i.ns, ptr %i.nd, align 8
  %i.nt = load i32, ptr %i.q, align 8
  %i.nu = and i32 %i.nt, -2147483648
  %i.nv = and i32 %i.ns, 2147483647
  %i.nw = or disjoint i32 %i.nv, %i.nu            ; 2 uses
  store i32 %i.nw, ptr %i.nd, align 8
  %i.nx = load i32, ptr %i.q, align 8
  %i.ny = and i32 %i.nx, 1610612736
  %i.nz = and i32 %i.nw, -1610612737
  %i.oa = or disjoint i32 %i.nz, %i.ny
  store i32 %i.oa, ptr %i.nd, align 8
  call void @FontWordSize(ptr noundef %i.na) #11
  %i.ob = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.oc = zext i8 %i.ob to i32                    ; 2 uses
  store i32 %i.oc, ptr @zz_size, align 4, !tbaa !7
  %i.od = zext i8 %i.ob to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.od ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !52 ; 4 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oh = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.oi = call ptr @GetMemory(i32 noundef %i.oc, ptr noundef %i.oh) #11
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  store ptr %i.of, ptr @zz_hold, align 8, !tbaa !52
  %i.oj = load ptr, ptr %i.of, align 8, !tbaa !12
  store ptr %i.oj, ptr %i.oe, align 8, !tbaa !52
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ok = phi ptr [ %i.oi, %bb.bh ], [ %i.of, %bb.bi ] ; 13 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  store i8 0, ptr %i.ol, align 8, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  store ptr %i.ok, ptr %i.om, align 8, !tbaa !12
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store ptr %i.ok, ptr %i.on, align 8, !tbaa !12
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store ptr %i.ok, ptr %i.oo, align 8, !tbaa !12
  store ptr %i.ok, ptr %i.ok, align 8, !tbaa !12
  store ptr %i.ok, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.ok, ptr @zz_res, align 8, !tbaa !52
  %i.op = load ptr, ptr %i.mu, align 8, !tbaa !12 ; 4 uses
  store ptr %i.op, ptr @zz_hold, align 8, !tbaa !52
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %.thread508, label %bb.bk

.thread508:                                       ; preds = %bb.bj
  store ptr %i.na, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.or = load ptr, ptr %i.op, align 8, !tbaa !12
  store ptr %i.or, ptr @zz_tmp, align 8, !tbaa !52
  %i.os = load ptr, ptr %i.ok, align 8, !tbaa !12
  store ptr %i.os, ptr %i.op, align 8, !tbaa !12
  %i.ot = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.ou = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !12
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !12
  %i.ox = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.ox, ptr %i.ou, align 8, !tbaa !12
  %i.oy = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store ptr %i.oy, ptr %i.oz, align 8, !tbaa !12
  %.pre455 = load ptr, ptr @xx_link, align 8, !tbaa !52 ; 3 uses
  store ptr %.pre455, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.na, ptr @zz_hold, align 8, !tbaa !52
  %i.pa = icmp eq ptr %.pre455, null
  br i1 %i.pa, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.thread508, %bb.bk
  %i.pb = phi ptr [ %i.ok, %.thread508 ], [ %.pre455, %bb.bk ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.na, i64 16 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !12 ; 3 uses
  store ptr %i.pd, ptr @zz_tmp, align 8, !tbaa !52
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !12 ; 2 uses
  store ptr %i.pf, ptr %i.pc, align 8, !tbaa !12
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  store ptr %i.na, ptr %i.pg, align 8, !tbaa !12
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  store ptr %i.pb, ptr %i.ph, align 8, !tbaa !12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.pi = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !12 ; 2 uses
  %i.pj = zext i8 %i.pi to i32                    ; 2 uses
  store i32 %i.pj, ptr @zz_size, align 4, !tbaa !7
  %i.pk = zext i8 %i.pi to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.pk ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !52 ; 4 uses
  %i.pn = icmp eq ptr %i.pm, null
  br i1 %i.pn, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.po = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.pp = call ptr @GetMemory(i32 noundef %i.pj, ptr noundef %i.po) #11 ; 2 uses
  store ptr %i.pp, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  store ptr %i.pm, ptr @zz_hold, align 8, !tbaa !52
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !12
  store ptr %i.pq, ptr %i.pl, align 8, !tbaa !52
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.pr = phi ptr [ %i.pp, %bb.bn ], [ %i.pm, %bb.bo ] ; 20 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  store i8 1, ptr %i.ps, align 8, !tbaa !12
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store ptr %i.pr, ptr %i.pu, align 8, !tbaa !12
  store ptr %i.pr, ptr %i.pt, align 8, !tbaa !12
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store ptr %i.pr, ptr %i.pv, align 8, !tbaa !12
  store ptr %i.pr, ptr %i.pr, align 8, !tbaa !12
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pr, i64 40 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 42
  store i8 0, ptr %i.px, align 2, !tbaa !12
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 41
  store i8 0, ptr %i.py, align 1, !tbaa !12
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 44 ; 2 uses
  %i.qa = load i16, ptr %i.pz, align 4
  %i.qb = and i16 %i.qa, 127
  %i.qc = or disjoint i16 %i.qb, 17920
  store i16 %i.qc, ptr %i.pz, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 46
  store i16 0, ptr %i.qd, align 2, !tbaa !12
  %i.qe = load i32, ptr %i.q, align 8
  %i.qf = and i32 %i.qe, 1610612736
  %i.qg = load i32, ptr %i.pw, align 8
  %i.qh = and i32 %i.qg, -1610612737
  %i.qi = or disjoint i32 %i.qh, %i.qf
  store i32 %i.qi, ptr %i.pw, align 8
  %i.qj = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.qk = zext i8 %i.qj to i32                    ; 2 uses
  store i32 %i.qk, ptr @zz_size, align 4, !tbaa !7
  %i.ql = zext i8 %i.qj to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ql ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !52 ; 4 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qp = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.qq = call ptr @GetMemory(i32 noundef %i.qk, ptr noundef %i.qp) #11
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store ptr %i.qn, ptr @zz_hold, align 8, !tbaa !52
  %i.qr = load ptr, ptr %i.qn, align 8, !tbaa !12
  store ptr %i.qr, ptr %i.qm, align 8, !tbaa !52
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.qs = phi ptr [ %i.qq, %bb.bq ], [ %i.qn, %bb.br ] ; 14 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  store i8 0, ptr %i.qt, align 8, !tbaa !12
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  store ptr %i.qs, ptr %i.qu, align 8, !tbaa !12
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store ptr %i.qs, ptr %i.qv, align 8, !tbaa !12
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store ptr %i.qs, ptr %i.qw, align 8, !tbaa !12
  store ptr %i.qs, ptr %i.qs, align 8, !tbaa !12
  store ptr %i.qs, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.qs, ptr @zz_res, align 8, !tbaa !52
  %i.qx = load ptr, ptr %i.mu, align 8, !tbaa !12 ; 4 uses
  store ptr %i.qx, ptr @zz_hold, align 8, !tbaa !52
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %.thread336, label %bb.bt

.thread336:                                       ; preds = %bb.bs
  store ptr %i.pr, ptr @zz_hold, align 8, !tbaa !52
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !12
  store ptr %i.qz, ptr @zz_tmp, align 8, !tbaa !52
  %i.ra = load ptr, ptr %i.qs, align 8, !tbaa !12
  store ptr %i.ra, ptr %i.qx, align 8, !tbaa !12
  %i.rb = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.rc = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !12
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.rb, ptr %i.re, align 8, !tbaa !12
  %i.rf = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.rf, ptr %i.rc, align 8, !tbaa !12
  %i.rg = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !12
  %.pr335 = load ptr, ptr @xx_link, align 8, !tbaa !52 ; 4 uses
  store ptr %.pr335, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.pr, ptr @zz_hold, align 8, !tbaa !52
  %i.ri = icmp eq ptr %.pr335, null
  br i1 %i.ri, label %bb.bv, label %._crit_edge456

._crit_edge456:                                   ; preds = %bb.bt
  %.phi.trans.insert457 = getelementptr inbounds nuw i8, ptr %.pr335, i64 16
  %.pre458 = load ptr, ptr %.phi.trans.insert457, align 8, !tbaa !12
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge456, %.thread336
  %i.rj = phi ptr [ %i.qs, %.thread336 ], [ %.pre458, %._crit_edge456 ]
  %i.rk = phi ptr [ %i.qs, %.thread336 ], [ %.pr335, %._crit_edge456 ] ; 2 uses
  %i.rl = load ptr, ptr %i.pt, align 8, !tbaa !12 ; 3 uses
  store ptr %i.rl, ptr @zz_tmp, align 8, !tbaa !52
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 2 uses
  store ptr %i.rj, ptr %i.pt, align 8, !tbaa !12
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !12
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store ptr %i.pr, ptr %i.ro, align 8, !tbaa !12
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !12
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  store ptr %i.rk, ptr %i.rp, align 8, !tbaa !12
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.rq = load i8, ptr @zz_lengths, align 1, !tbaa !12 ; 2 uses
  %i.rr = zext i8 %i.rq to i32                    ; 2 uses
  store i32 %i.rr, ptr @zz_size, align 4, !tbaa !7
  %i.rs = zext i8 %i.rq to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.rs ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !52 ; 4 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.rw = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.rx = call ptr @GetMemory(i32 noundef %i.rr, ptr noundef %i.rw) #11
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store ptr %i.ru, ptr @zz_hold, align 8, !tbaa !52
  %i.ry = load ptr, ptr %i.ru, align 8, !tbaa !12
  store ptr %i.ry, ptr %i.rt, align 8, !tbaa !52
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.rz = phi ptr [ %i.rx, %bb.bw ], [ %i.ru, %bb.bx ] ; 12 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  store i8 0, ptr %i.sa, align 8, !tbaa !12
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  store ptr %i.rz, ptr %i.sb, align 8, !tbaa !12
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store ptr %i.rz, ptr %i.sc, align 8, !tbaa !12
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store ptr %i.rz, ptr %i.sd, align 8, !tbaa !12
  store ptr %i.rz, ptr %i.rz, align 8, !tbaa !12
  store ptr %i.rz, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.rz, ptr @zz_res, align 8, !tbaa !52
  store ptr %i.pr, ptr @zz_hold, align 8, !tbaa !52
  %i.se = load ptr, ptr %i.pr, align 8, !tbaa !12
  store ptr %i.se, ptr @zz_tmp, align 8, !tbaa !52
  %i.sf = load ptr, ptr %i.rz, align 8, !tbaa !12
  store ptr %i.sf, ptr %i.pr, align 8, !tbaa !12
  %i.sg = load ptr, ptr @zz_hold, align 8, !tbaa !52
  %i.sh = load ptr, ptr @zz_res, align 8, !tbaa !52 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !12
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store ptr %i.sg, ptr %i.sj, align 8, !tbaa !12
  %i.sk = load ptr, ptr @zz_tmp, align 8, !tbaa !52 ; 2 uses
  store ptr %i.sk, ptr %i.sh, align 8, !tbaa !12
  %i.sl = load ptr, ptr @zz_res, align 8, !tbaa !52
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store ptr %i.sl, ptr %i.sm, align 8, !tbaa !12
  %i.sn = load ptr, ptr @xx_link, align 8, !tbaa !52
  store ptr %i.sn, ptr @zz_res, align 8, !tbaa !52
  %i.so = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.m) #11 ; 4 uses
  store ptr %i.so, ptr @zz_hold, align 8, !tbaa !52
  %i.sp = icmp eq ptr %i.so, null
  %i.sq = load ptr, ptr @zz_res, align 8          ; 3 uses
  %i.sr = icmp eq ptr %i.sq, null
  %or.cond23 = select i1 %i.sp, i1 true, i1 %i.sr
  br i1 %or.cond23, label %.thread509, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !12 ; 3 uses
  store ptr %i.st, ptr @zz_tmp, align 8, !tbaa !52
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 16 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !12 ; 2 uses
  store ptr %i.sv, ptr %i.ss, align 8, !tbaa !12
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  store ptr %i.so, ptr %i.sw, align 8, !tbaa !12
  store ptr %i.st, ptr %i.su, align 8, !tbaa !12
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store ptr %i.sq, ptr %i.sx, align 8, !tbaa !12
  br label %.thread509

bb.ca:                                            ; preds = %.lr.ph406
  %i.sy = icmp sgt i64 %indvars.iv450, 4
  br i1 %i.sy, label %.lr.ph406, label %._crit_edge407, !llvm.loop !49

.thread509:                                       ; preds = %bb.by, %bb.bz
  store i8 0, ptr %i.mz, align 1, !tbaa !12
  %i.sz = icmp sgt i64 %indvars.iv450, 4
  br i1 %i.sz, label %.lr.ph406.outer, label %._crit_edge407.thread, !llvm.loop !49

._crit_edge407:                                   ; preds = %bb.ca
  br i1 %.not325, label %.thread, label %._crit_edge407.thread

._crit_edge407.thread:                            ; preds = %.thread509, %._crit_edge407
  call void @FontWordSize(ptr noundef %.0278) #11
  %i.ta = load ptr, ptr %i.mv, align 8, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.l, %bb.e, %bb.f, %bb.an, %._crit_edge407, %._crit_edge407.thread, %bb.am, %bb.q, %bb.m, %bb.g, %bb.h, %bb.al
  %.1280 = phi ptr [ %.0279412, %bb.h ], [ %.0279412, %bb.g ], [ %.0279412, %bb.l ], [ %.0279412, %bb.m ], [ %.0279412, %bb.q ], [ %i.gz, %bb.al ], [ %.0279412, %bb.am ], [ %.0279412, %bb.an ], [ %i.ta, %._crit_edge407.thread ], [ %.0279412, %._crit_edge407 ], [ %.0279412, %bb.e ], [ %.0279412, %bb.f ], [ %.0279412, %bb.d ]
  %.0279.in = getelementptr inbounds nuw i8, ptr %.1280, i64 8
  %.0279 = load ptr, ptr %.0279.in, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %.0279, %0
  br i1 %.not, label %._crit_edge413, label %.preheader343, !llvm.loop !50

._crit_edge413:                                   ; preds = %.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %0
}

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @FontWordSize(ptr noundef) local_unnamed_addr #2

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @LanguageHyph(i32 noundef) local_unnamed_addr #2

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TrieInsert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, ptr noundef nonnull %3, i32 noundef range(i32 -2147483647, -2147483648) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 7 uses
  %i.b = alloca [512 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 276 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %NewTrieNode.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = add nsw i32 %i.g, -1
  %i.i = sdiv i32 %i.h, 4
  %i.j = shl nsw i32 %i.i, 2
  %i.k = add i32 %i.j, 4                          ; 4 uses
  store i32 %i.k, ptr %i.f, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.m = load i32, ptr %i.l, align 8, !tbaa !18
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.p = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 5, ptr noundef nonnull @.str.167, i32 noundef 0, ptr noundef %i.o) #11 ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !16 ; 2 uses
  %.pre15.i = add i32 %.pre14.i, %.pre.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i32 [ %.pre15.i, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.q = phi i32 [ %.pre14.i, %bb.c ], [ %i.k, %bb.b ]
  %i.r = phi i32 [ %.pre.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  store i32 %.pre-phi.i, ptr %i.c, align 4, !tbaa !19
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.i, label %NewTrieNode.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = sext i32 %i.r to i64
  %i.w = shl nsw i64 %i.v, 1
  %scevgep.i = getelementptr i8, ptr %i.u, i64 %i.w
  %i.x = add i32 %i.r, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.pre-phi.i, i32 %i.x)
  %i.y = xor i32 %i.r, -1
  %i.z = add i32 %smax.i, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = add nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ac, i1 false), !tbaa !26
  br label %NewTrieNode.exit

NewTrieNode.exit:                                 ; preds = %.lr.ph.i, %bb.d, %bb.a
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %NewTrieNode.exit
  %.073 = phi ptr [ %i.b, %NewTrieNode.exit ], [ %.174, %bb.h ] ; 4 uses
  %.072 = phi ptr [ %1, %NewTrieNode.exit ], [ %i.ar, %bb.h ] ; 5 uses
  %.071 = phi ptr [ %i.ad, %NewTrieNode.exit ], [ %.1, %bb.h ] ; 3 uses
  %i.ae = load i8, ptr %.072, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.ae, label %._crit_edge128 [
    i8 0, label %bb.i
    i8 48, label %bb.f
  ]

._crit_edge128:                                   ; preds = %bb.e
  %.pre129 = ptrtoint ptr %.072 to i64
  %.pre130 = ptrtoint ptr %.071 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %.072 to i64               ; 2 uses
  %i.ag = ptrtoint ptr %.071 to i64               ; 2 uses
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp slt i64 %i.ah, -15
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge128, %bb.f
  %.pre-phi131 = phi i64 [ %.pre130, %._crit_edge128 ], [ %i.ag, %bb.f ]
  %.pre-phi = phi i64 [ %.pre129, %._crit_edge128 ], [ %i.af, %bb.f ]
  %i.aj = xor i64 %.pre-phi131, -1
  %i.ak = add i64 %.pre-phi, %i.aj
  %i.al = shl i64 %i.ak, 4
  %i.am = zext i8 %i.ae to i64
  %i.an = add nuw nsw i64 %i.am, 210
  %i.ao = or i64 %i.al, %i.an
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.073, i64 1
  store i8 %i.ap, ptr %.073, align 1, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.174 = phi ptr [ %i.aq, %bb.g ], [ %.073, %bb.f ]
  %.1 = phi ptr [ %.072, %bb.g ], [ %.071, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.072, i64 1
  br label %bb.e, !llvm.loop !59

bb.i:                                             ; preds = %bb.e
  store i8 0, ptr %.073, align 1, !tbaa !12
  %i.as = load i8, ptr %0, align 1, !tbaa !12     ; 2 uses
  %.not86105 = icmp eq i8 %i.as, 0
  br i1 %.not86105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.au = phi i8 [ %i.as, %.lr.ph ], [ %i.bd, %bb.m ] ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12  ; 2 uses
  %.not89 = icmp eq i8 %i.ax, 0
  br i1 %.not89, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = zext i8 %i.au to i32
  %i.ba = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.bb = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 36, i32 noundef 2, ptr noundef nonnull @.str.165, i32 noundef 1, ptr noundef %i.ba, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %i.az) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !12  ; 2 uses
  %.not86 = icmp eq i8 %i.bd, 0
  br i1 %.not86, label %._crit_edge, label %bb.j, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %.lcssa = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa
  store i8 0, ptr %i.be, align 1, !tbaa !12
  %i.bf = load i8, ptr %i.a, align 16, !tbaa !12  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 4 uses
  br i1 %i.bg, label %._crit_edge.._crit_edge112_crit_edge, label %.lr.ph111

._crit_edge.._crit_edge112_crit_edge:             ; preds = %._crit_edge
  %.pre123 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
end_hunk_0
