Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z36?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@TrieRead:bb.a
  %.294.lcssa = phi i8 [ 48, %.preheader ], [ %i.hq, %._crit_edge158.loopexit ]
  %.289.lcssa = phi i32 [ 0, %.preheader ], [ %.3, %._crit_edge158.loopexit ] ; 2 uses
  %i.hr = sext i32 %.289.lcssa to i64             ; 2 uses
  %i.hs = getelementptr inbounds i8, ptr %i.c, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !175
  %i.ht = getelementptr inbounds i8, ptr %i.d, i64 %i.hr ; 2 uses
  store i8 %.294.lcssa, ptr %i.ht, align 1, !tbaa !175
  %i.hu = getelementptr i8, ptr %i.ht, i64 1
  store i8 0, ptr %i.hu, align 1, !tbaa !175
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
  br i1 %i.if, label %.lr.ph164, label %.loopexit, !llvm.loop !197

._crit_edge170:                                   ; preds = %.loopexit
  %i.ig = icmp eq i32 %.1.lcssa, 4
  br i1 %i.ig, label %bb.as, label %._crit_edge170.thread

._crit_edge170.thread:                            ; preds = %NewTrie.exit, %._crit_edge170
  %i.ih = load ptr, ptr @no_fpos, align 8, !tbaa !172
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
define dso_local noundef ptr @Hyphenate(ptr nofree noundef readonly returned captures(address, ret: address, provenance) %0) local_unnamed_addr #0 !guid !216 {
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
  %i.f = load i8, ptr %i.e, align 8, !tbaa !175
  %i.g = icmp eq i8 %i.f, 17
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @no_fpos, align 8, !tbaa !172
  %i.i = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.h, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0279.in409 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0279410 = load ptr, ptr %.0279.in409, align 8, !tbaa !175 ; 2 uses
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
  %.0278 = load ptr, ptr %.0278.in, align 8, !tbaa !175 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0278, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !175
  switch i8 %i.l, label %.thread [
    i8 0, label %bb.d
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0278, i64 32 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0278, i64 64 ; 9 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !175
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !174 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @TriedFile, i64 %i.aa ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %.not317 = icmp eq i32 %i.af, 0
  br i1 %.not317, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = call fastcc ptr @TrieRead(i32 noundef %i.x, ptr noundef %i.d) ; 3 uses
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !174
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
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !175
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !175
  %i.ao = icmp eq i8 %i.an, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ao, label %bb.o, label %.preheader342.a, !llvm.loop !201

.preheader342.a:                                  ; preds = %bb.o, %.preheader342.a
  %indvars.iv437 = phi i32 [ %indvars.iv.next438, %.preheader342.a ], [ 0, %bb.o ] ; 5 uses
  %indvar = phi i64 [ %indvar.next, %.preheader342.a ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %.preheader342.a ], [ %indvars.iv, %bb.o ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv431
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !175 ; 3 uses
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !175 ; 2 uses
  %i.au = icmp ugt i8 %i.at, 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1
  %indvar.next = add i64 %indvar, 1
  %indvars.iv.next438 = add i32 %indvars.iv437, 1 ; 2 uses
  br i1 %i.au, label %.preheader342.a, label %bb.p, !llvm.loop !202

bb.p:                                             ; preds = %.preheader342.a
  %i.av = icmp eq i8 %i.aq, 45
  br i1 %i.av, label %bb.q, label %bb.am

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv431
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !175
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
  %i.cc = load i8, ptr @zz_lengths, align 1, !tbaa !175 ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr @zz_size, align 4, !tbaa !7
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !218 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr @no_fpos, align 8, !tbaa !172
  %i.cj = call ptr @GetMemory(i32 noundef %i.cd, ptr noundef %i.ci) #11
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  store ptr %i.cg, ptr @zz_hold, align 8, !tbaa !218
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !175
  store ptr %i.ck, ptr %i.cf, align 8, !tbaa !218
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cl = phi ptr [ %i.cj, %bb.s ], [ %i.cg, %bb.t ] ; 13 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i8 0, ptr %i.cm, align 8, !tbaa !175
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !175
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cl, ptr %i.co, align 8, !tbaa !175
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cl, ptr %i.cp, align 8, !tbaa !175
  store ptr %i.cl, ptr %i.cl, align 8, !tbaa !175
  store ptr %i.cl, ptr @xx_link, align 8, !tbaa !218
  store ptr %i.cl, ptr @zz_res, align 8, !tbaa !218
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !175 ; 4 uses
  store ptr %i.cq, ptr @zz_hold, align 8, !tbaa !218
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread507, label %bb.v

.thread507:                                       ; preds = %bb.u
  store ptr %i.bb, ptr @zz_hold, align 8, !tbaa !218
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !175
  store ptr %i.cs, ptr @zz_tmp, align 8, !tbaa !218
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !175
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !175
  %i.cu = load ptr, ptr @zz_hold, align 8, !tbaa !218
  %i.cv = load ptr, ptr @zz_res, align 8, !tbaa !218 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !175
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !175
  %i.cy = load ptr, ptr @zz_tmp, align 8, !tbaa !218 ; 2 uses
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !175
  %i.cz = load ptr, ptr @zz_res, align 8, !tbaa !218
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !175
  %.pre459 = load ptr, ptr @xx_link, align 8, !tbaa !218 ; 3 uses
  store ptr %.pre459, ptr @zz_res, align 8, !tbaa !218
  store ptr %i.bb, ptr @zz_hold, align 8, !tbaa !218
  %i.db = icmp eq ptr %.pre459, null
  br i1 %i.db, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread507, %bb.v
  %i.dc = phi ptr [ %i.cl, %.thread507 ], [ %.pre459, %bb.v ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !175 ; 3 uses
  store ptr %i.de, ptr @zz_tmp, align 8, !tbaa !218
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !175 ; 2 uses
  store ptr %i.dg, ptr %i.dd, align 8, !tbaa !175
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.bb, ptr %i.dh, align 8, !tbaa !175
  store ptr %i.de, ptr %i.df, align 8, !tbaa !175
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.dc, ptr %i.di, align 8, !tbaa !175
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !175 ; 2 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  store i32 %i.dk, ptr @zz_size, align 4, !tbaa !7
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !218 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr @no_fpos, align 8, !tbaa !172
  %i.dq = call ptr @GetMemory(i32 noundef %i.dk, ptr noundef %i.dp) #11 ; 2 uses
  store ptr %i.dq, ptr @zz_hold, align 8, !tbaa !218
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store ptr %i.dn, ptr @zz_hold, align 8, !tbaa !218
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !175
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !218
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ds = phi ptr [ %i.dq, %bb.y ], [ %i.dn, %bb.z ] ; 20 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store i8 1, ptr %i.dt, align 8, !tbaa !175
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !175
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !175
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !175
  store ptr %i.ds, ptr %i.ds, align 8, !tbaa !175
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 42
  store i8 0, ptr %i.dy, align 2, !tbaa !175
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 41
  store i8 0, ptr %i.dz, align 1, !tbaa !175
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 44 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 4
  %i.ec = and i16 %i.eb, 127
  %i.ed = or disjoint i16 %i.ec, 17920
  store i16 %i.ed, ptr %i.ea, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 46
  store i16 0, ptr %i.ee, align 2, !tbaa !175
  %i.ef = load i32, ptr %i.q, align 8
  %i.eg = and i32 %i.ef, 1610612736
  %i.eh = load i32, ptr %i.dx, align 8
  %i.ei = and i32 %i.eh, -1610612737
  %i.ej = or disjoint i32 %i.ei, %i.eg
  store i32 %i.ej, ptr %i.dx, align 8
  %i.ek = load i8, ptr @zz_lengths, align 1, !tbaa !175 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  store i32 %i.el, ptr @zz_size, align 4, !tbaa !7
  %i.em = zext i8 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.em ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !218 ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr @no_fpos, align 8, !tbaa !172
  %i.er = call ptr @GetMemory(i32 noundef %i.el, ptr noundef %i.eq) #11
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.eo, ptr @zz_hold, align 8, !tbaa !218
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !175
  store ptr %i.es, ptr %i.en, align 8, !tbaa !218
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.et = phi ptr [ %i.er, %bb.ab ], [ %i.eo, %bb.ac ] ; 14 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i8 0, ptr %i.eu, align 8, !tbaa !175
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !175
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.et, ptr %i.ew, align 8, !tbaa !175
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !175
  store ptr %i.et, ptr %i.et, align 8, !tbaa !175
  store ptr %i.et, ptr @xx_link, align 8, !tbaa !218
  store ptr %i.et, ptr @zz_res, align 8, !tbaa !218
  %i.ey = load ptr, ptr %i.ba, align 8, !tbaa !175 ; 4 uses
  store ptr %i.ey, ptr @zz_hold, align 8, !tbaa !218
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.thread334, label %bb.ae

.thread334:                                       ; preds = %bb.ad
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !218
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !175
  store ptr %i.fa, ptr @zz_tmp, align 8, !tbaa !218
  %i.fb = load ptr, ptr %i.et, align 8, !tbaa !175
  store ptr %i.fb, ptr %i.ey, align 8, !tbaa !175
  %i.fc = load ptr, ptr @zz_hold, align 8, !tbaa !218
  %i.fd = load ptr, ptr @zz_res, align 8, !tbaa !218 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !175
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !175
  %i.fg = load ptr, ptr @zz_tmp, align 8, !tbaa !218 ; 2 uses
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !175
  %i.fh = load ptr, ptr @zz_res, align 8, !tbaa !218
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !175
  %.pr = load ptr, ptr @xx_link, align 8, !tbaa !218 ; 4 uses
  store ptr %.pr, ptr @zz_res, align 8, !tbaa !218
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !218
  %i.fj = icmp eq ptr %.pr, null
  br i1 %i.fj, label %bb.ag, label %._crit_edge460

._crit_edge460:                                   ; preds = %bb.ae
  %.phi.trans.insert461 = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %.pre462 = load ptr, ptr %.phi.trans.insert461, align 8, !tbaa !175
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge460, %.thread334
  %i.fk = phi ptr [ %i.et, %.thread334 ], [ %.pre462, %._crit_edge460 ]
  %i.fl = phi ptr [ %i.et, %.thread334 ], [ %.pr, %._crit_edge460 ] ; 2 uses
  %i.fm = load ptr, ptr %i.du, align 8, !tbaa !175 ; 3 uses
  store ptr %i.fm, ptr @zz_tmp, align 8, !tbaa !218
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  store ptr %i.fk, ptr %i.du, align 8, !tbaa !175
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !175
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr %i.ds, ptr %i.fp, align 8, !tbaa !175
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !175
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !175
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fr = load i8, ptr @zz_lengths, align 1, !tbaa !175 ; 2 uses
  %i.fs = zext i8 %i.fr to i32                    ; 2 uses
  store i32 %i.fs, ptr @zz_size, align 4, !tbaa !7
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !218 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fx = load ptr, ptr @no_fpos, align 8, !tbaa !172
  %i.fy = call ptr @GetMemory(i32 noundef %i.fs, ptr noundef %i.fx) #11
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.fv, ptr @zz_hold, align 8, !tbaa !218
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !175
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !218
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ga = phi ptr [ %i.fy, %bb.ah ], [ %i.fv, %bb.ai ] ; 12 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i8 0, ptr %i.gb, align 8, !tbaa !175
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !175
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !175
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ga, ptr %i.ge, align 8, !tbaa !175
  store ptr %i.ga, ptr %i.ga, align 8, !tbaa !175
  store ptr %i.ga, ptr @xx_link, align 8, !tbaa !218
  store ptr %i.ga, ptr @zz_res, align 8, !tbaa !218
  store ptr %i.ds, ptr @zz_hold, align 8, !tbaa !218
  %i.gf = load ptr, ptr %i.ds, align 8, !tbaa !175
  store ptr %i.gf, ptr @zz_tmp, align 8, !tbaa !218
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !175
  store ptr %i.gg, ptr %i.ds, align 8, !tbaa !175
  %i.gh = load ptr, ptr @zz_hold, align 8, !tbaa !218
  %i.gi = load ptr, ptr @zz_res, align 8, !tbaa !218 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !175
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gh, ptr %i.gk, align 8, !tbaa !175
  %i.gl = load ptr, ptr @zz_tmp, align 8, !tbaa !218 ; 2 uses
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !175
  %i.gm = load ptr, ptr @zz_res, align 8, !tbaa !218
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !175
  %i.go = load ptr, ptr @xx_link, align 8, !tbaa !218
  store ptr %i.go, ptr @zz_res, align 8, !tbaa !218
  %i.gp = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.m) #11 ; 4 uses
  store ptr %i.gp, ptr @zz_hold, align 8, !tbaa !218
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = load ptr, ptr @zz_res, align 8          ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  %or.cond11 = select i1 %i.gq, i1 true, i1 %i.gs
  br i1 %or.cond11, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !175 ; 3 uses
  store ptr %i.gu, ptr @zz_tmp, align 8, !tbaa !218
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !175 ; 2 uses
  store ptr %i.gw, ptr %i.gt, align 8, !tbaa !175
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.gp, ptr %i.gx, align 8, !tbaa !175
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !175
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store ptr %i.gr, ptr %i.gy, align 8, !tbaa !175
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store i8 0, ptr %i.ax, align 1, !tbaa !175
  call void @FontWordSize(ptr noundef nonnull %.0278) #11
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !175
  br label %.thread

bb.am:                                            ; preds = %bb.p
  %i.ha = trunc nuw nsw i64 %indvars.iv431 to i32
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %i.hb = sub nuw nsw i32 %i.ha, %1
  %i.hc = icmp samesign ult i32 %i.hb, 5
  br i1 %i.hc, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not318 = icmp ne i8 %i.aq, 0
  %i.hd = icmp eq i8 %i.at, 0
  %or.cond330 = and i1 %.not318, %i.hd
  br i1 %or.cond330, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.an
  store i8 1, ptr %i.a, align 16, !tbaa !175
  store i8 48, ptr %i.b, align 16, !tbaa !175
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 48, i64 %indvar, i1 false), !tbaa !175
  %wide.trip.count = zext i32 %indvars.iv437 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.he = add i32 %indvars.iv437, -1
  %i.hf = icmp ult i32 %i.he, 3
  br i1 %i.hf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv434 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next435.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv434
  %i.hg = load i8, ptr %gep, align 1, !tbaa !175
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !175
  %indvars.iv.next435 = or disjoint i64 %indvars.iv434, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !175
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435
  %i.hl = load i8, ptr %gep.1, align 1, !tbaa !175
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !175
  %indvars.iv.next435.1 = or disjoint i64 %indvars.iv434, 2 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.1
  store i8 %i.ho, ptr %i.hp, align 2, !tbaa !175
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.1
  %i.hq = load i8, ptr %gep.2, align 1, !tbaa !175
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !175
  %indvars.iv.next435.2 = or disjoint i64 %indvars.iv434, 3 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.2
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !175
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next435.2
  %i.hv = load i8, ptr %gep.3, align 1, !tbaa !175
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !175
  %indvars.iv.next435.3 = add nuw nsw i64 %indvars.iv434, 4 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.3
  store i8 %i.hy, ptr %i.hz, align 4, !tbaa !175
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !203

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
  %i.ia = load i8, ptr %gep.epil, align 1, !tbaa !175
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !175
  %indvars.iv.next435.epil = add nuw nsw i64 %indvars.iv434.epil, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next435.epil
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !175
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.if = zext nneg i32 %indvars.iv.next438 to i64 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.if
  store i8 1, ptr %i.ig, align 1, !tbaa !175
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.if
  store i8 48, ptr %i.ih, align 1, !tbaa !175
  %i.ii = add nuw nsw i32 %indvars.iv437, 2
  %i.ij = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ij
  store i8 0, ptr %i.ik, align 1, !tbaa !175
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ij
  store i8 48, ptr %i.il, align 1, !tbaa !175
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 %wide.trip.count
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  store i8 0, ptr %i.in, align 1, !tbaa !175
  %i.io = getelementptr inbounds nuw i8, ptr %.1277, i64 264 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1277, i64 280 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit338, %._crit_edge
  %.0275 = phi ptr [ %i.a, %._crit_edge ], [ %i.lk, %.loopexit338 ] ; 4 uses
  %i.iq = ptrtoint ptr %.0275 to i64
  %i.ir = sub i64 %i.iq, %i.j
  %i.is = getelementptr inbounds i8, ptr %i.b, i64 %i.ir ; 2 uses
  %.pre = load ptr, ptr %i.io, align 8, !tbaa !180
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ba, %bb.ao
  %i.it = phi ptr [ %.pre, %bb.ao ], [ %i.jy, %bb.ba ]
  %.0273 = phi ptr [ %.0275, %bb.ao ], [ %i.lj, %bb.ba ] ; 3 uses
  %.0262 = phi i32 [ 0, %bb.ao ], [ %i.li, %bb.ba ] ; 2 uses
  %i.iu = zext nneg i32 %.0262 to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !189 ; 2 uses
  %i.ix = icmp slt i16 %i.iw, 0
  br i1 %i.ix, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.iy = sext i16 %i.iw to i64
  %i.iz = load ptr, ptr %i.ip, align 8, !tbaa !183
  %i.ja = sub nsw i64 0, %i.iy
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !175 ; 2 uses
  %.not319361 = icmp eq i8 %i.jc, 0
  br i1 %.not319361, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.aq, %._crit_edge359
  %i.jd = phi i8 [ %i.jn, %._crit_edge359 ], [ %i.jc, %bb.aq ] ; 2 uses
  %.0257363 = phi ptr [ %i.jl, %._crit_edge359 ], [ %i.c, %bb.aq ] ; 3 uses
  %.0259362 = phi ptr [ %i.jm, %._crit_edge359 ], [ %i.jb, %bb.aq ]
  %i.je = lshr i8 %i.jd, 4                        ; 2 uses
  %i.jf = and i8 %i.jd, 15
  %.not414 = icmp eq i8 %i.je, 0
  br i1 %.not414, label %._crit_edge359, label %.lr.ph358.preheader

.lr.ph358.preheader:                              ; preds = %.lr.ph365
  %i.jg = zext nneg i8 %i.je to i64
  %i.jh = add nuw nsw i64 %i.jg, 4294967295
  %i.ji = and i64 %i.jh, 4294967295               ; 2 uses
  %i.jj = add nuw nsw i64 %i.ji, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0257363, i8 48, i64 range(i64 0, 16) %i.jj, i1 false), !tbaa !175
  %scevgep439 = getelementptr i8, ptr %.0257363, i64 1
  %scevgep440 = getelementptr i8, ptr %scevgep439, i64 %i.ji
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %.lr.ph358.preheader, %.lr.ph365
  %.1258.lcssa = phi ptr [ %.0257363, %.lr.ph365 ], [ %scevgep440, %.lr.ph358.preheader ] ; 2 uses
  %i.jk = add nuw nsw i8 %i.jf, 46
  %i.jl = getelementptr inbounds nuw i8, ptr %.1258.lcssa, i64 1 ; 2 uses
  store i8 %i.jk, ptr %.1258.lcssa, align 1, !tbaa !175
  %i.jm = getelementptr inbounds nuw i8, ptr %.0259362, i64 1 ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !175 ; 2 uses
  %.not319 = icmp eq i8 %i.jn, 0
  br i1 %.not319, label %._crit_edge366, label %.lr.ph365, !llvm.loop !205

._crit_edge366:                                   ; preds = %._crit_edge359, %bb.aq
  %.0257.lcssa = phi ptr [ %i.c, %bb.aq ], [ %i.jl, %._crit_edge359 ]
  store i8 0, ptr %.0257.lcssa, align 1, !tbaa !175
  %i.jo = load i8, ptr %i.c, align 16, !tbaa !175 ; 2 uses
  %.not320368 = icmp eq i8 %i.jo, 0
  br i1 %.not320368, label %.loopexit, label %.lr.ph372

.lr.ph372:                                        ; preds = %._crit_edge366, %bb.as
  %i.jp = phi i8 [ %i.ju, %bb.as ], [ %i.jo, %._crit_edge366 ] ; 2 uses
  %.0254370 = phi ptr [ %i.jt, %bb.as ], [ %i.is, %._crit_edge366 ] ; 3 uses
  %.0255369 = phi ptr [ %i.js, %bb.as ], [ %i.c, %._crit_edge366 ]
  %i.jq = load i8, ptr %.0254370, align 1, !tbaa !175
  %i.jr = icmp ugt i8 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph372
  store i8 %i.jp, ptr %.0254370, align 1, !tbaa !175
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph372
  %i.js = getelementptr inbounds nuw i8, ptr %.0255369, i64 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0254370, i64 1
  %i.ju = load i8, ptr %i.js, align 1, !tbaa !175 ; 2 uses
  %.not320 = icmp eq i8 %i.ju, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph372, !llvm.loop !206

.loopexit:                                        ; preds = %bb.as, %._crit_edge366, %bb.ap
  %i.jv = load i8, ptr %.0273, align 1, !tbaa !175 ; 2 uses
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %.loopexit338, label %bb.at

bb.at:                                            ; preds = %.loopexit
  %i.jx = zext i8 %i.jv to i32
  %i.jy = load ptr, ptr %i.io, align 8, !tbaa !180 ; 2 uses
  %i.jz = add nuw nsw i32 %.0262, %i.jx
  %i.ka = zext nneg i32 %i.jz to i64
end_hunk_0
