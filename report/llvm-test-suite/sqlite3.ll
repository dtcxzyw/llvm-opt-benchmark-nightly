Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 108
begin_hunk_0_@sqlite3GetCollSeq:bb.a
  %i.fd = icmp eq i8 %i.fc, 3
  %strHash.binHash.i.i.i.i.i.us.1.i = select i1 %i.fd, ptr @strHash, ptr @binHash
  %i.fe = tail call i32 %strHash.binHash.i.i.i.i.i.us.1.i(ptr noundef nonnull %i.ei, i32 noundef %i.fb) #43, !callees !468, !inline_history !1734
  %i.ff = load ptr, ptr %i.en, align 8, !tbaa !448, !nonnull !490, !noundef !490
  %i.fg = load i32, ptr %i.eo, align 8, !tbaa !449
  %i.fh = srem i32 %i.fe, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i8, ptr %i.em, align 8, !tbaa !467
  %i.fm = icmp eq i8 %i.fl, 3
  %strCompare.binCompare.i.i.i.i.i.i.us.1.i = select i1 %i.fm, ptr @strCompare, ptr @binCompare
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.split.us.1.i
  %.017.in.i.i.i.i.i.us.1.i = phi ptr [ %i.fk, %.split.us.1.i ], [ %.017.i.i.i.i.i.us.1.i, %bb.y ]
  %.017.i.i.i.i.i.us.1.i = load ptr, ptr %.017.in.i.i.i.i.i.us.1.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !452
  %i.fp = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !471
  %i.fr = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.1.i(ptr noundef %i.fo, i32 noundef %i.fq, ptr noundef nonnull %i.ei, i32 noundef %i.fb) #43, !callees !472, !inline_history !1735
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %sqlite3HashFindElem.exit.i.i.i.us.1.i, label %bb.y, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.1.i:            ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.1.i, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !426 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 80
  %i.fw = getelementptr i8, ptr %i.fu, i64 64
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !488
  %.not.us.1.i = icmp eq ptr %i.fx, null
  br i1 %.not.us.1.i, label %.split.us.2.i, label %bb.ac

.split.us.2.i:                                    ; preds = %sqlite3HashFindElem.exit.i.i.i.us.1.i
  %i.fy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ei) #42
  %i.fz = trunc i64 %i.fy to i32                  ; 2 uses
  %i.ga = load i8, ptr %i.em, align 8, !tbaa !467
  %i.gb = icmp eq i8 %i.ga, 3
  %strHash.binHash.i.i.i.i.i.us.2.i = select i1 %i.gb, ptr @strHash, ptr @binHash
  %i.gc = tail call i32 %strHash.binHash.i.i.i.i.i.us.2.i(ptr noundef nonnull %i.ei, i32 noundef %i.fz) #43, !callees !468, !inline_history !1734
  %i.gd = load ptr, ptr %i.en, align 8, !tbaa !448, !nonnull !490, !noundef !490
  %i.ge = load i32, ptr %i.eo, align 8, !tbaa !449
  %i.gf = srem i32 %i.gc, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [16 x i8], ptr %i.gd, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i8, ptr %i.em, align 8, !tbaa !467
  %i.gk = icmp eq i8 %i.gj, 3
  %strCompare.binCompare.i.i.i.i.i.i.us.2.i = select i1 %i.gk, ptr @strCompare, ptr @binCompare
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.split.us.2.i
  %.017.in.i.i.i.i.i.us.2.i = phi ptr [ %i.gi, %.split.us.2.i ], [ %.017.i.i.i.i.i.us.2.i, %bb.z ]
  %.017.i.i.i.i.i.us.2.i = load ptr, ptr %.017.in.i.i.i.i.i.us.2.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !452
  %i.gn = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 32
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !471
  %i.gp = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.2.i(ptr noundef %i.gm, i32 noundef %i.go, ptr noundef nonnull %i.ei, i32 noundef %i.fz) #43, !callees !472, !inline_history !1735
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %sqlite3HashFindElem.exit.i.i.i.us.2.i, label %bb.z, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.2.i:            ; preds = %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.2.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !426 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 40
  %i.gu = getelementptr i8, ptr %i.gs, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !488
  %.not.us.2.i = icmp eq ptr %i.gv, null
  br i1 %.not.us.2.i, label %.thread50, label %bb.ac

.split.us.preheader.i:                            ; preds = %bb.x, %.split.us.preheader.i
  %.017.in.i.i.i.i.i.us.i = phi ptr [ %.017.i.i.i.i.i.us.i, %.split.us.preheader.i ], [ %i.ex, %bb.x ]
  %.017.i.i.i.i.i.us.i = load ptr, ptr %.017.in.i.i.i.i.i.us.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !452
  %i.gy = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !471
  %i.ha = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.gx, i32 noundef %i.gz, ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !472, !inline_history !1735
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %sqlite3HashFindElem.exit.i.i.i.us.i, label %.split.us.preheader.i, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.us.i:              ; preds = %.split.us.preheader.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !426 ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 120
  %i.hf = getelementptr i8, ptr %i.hd, i64 104
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !488
  %.not.us.i = icmp eq ptr %i.hg, null
  br i1 %.not.us.i, label %.split.us.1.i, label %bb.ac

.split.1.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.i
  %i.hh = load i8, ptr %i.em, align 8, !tbaa !467
  %i.hi = icmp eq i8 %i.hh, 3
  %strHash.binHash.i.i.i.i.i.1.i = select i1 %i.hi, ptr @strHash, ptr @binHash
  %i.hj = tail call i32 %strHash.binHash.i.i.i.i.i.1.i(ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !468, !inline_history !1734
  %i.hk = load ptr, ptr %i.en, align 8, !tbaa !448, !nonnull !490, !noundef !490
  %i.hl = load i32, ptr %i.eo, align 8, !tbaa !449
  %i.hm = srem i32 %i.hj, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.hk, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i8, ptr %i.em, align 8, !tbaa !467
  %i.hr = icmp eq i8 %i.hq, 3
  %strCompare.binCompare.i.i.i.i.i.i.1.i = select i1 %i.hr, ptr @strCompare, ptr @binCompare
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.split.1.i
  %.017.in.i.i.i.i.i.1.i = phi ptr [ %i.hp, %.split.1.i ], [ %.017.i.i.i.i.i.1.i, %bb.aa ]
  %.017.i.i.i.i.i.1.i = load ptr, ptr %.017.in.i.i.i.i.i.1.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !452
  %i.hu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 32
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !471
  %i.hw = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.1.i(ptr noundef %i.ht, i32 noundef %i.hv, ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !472, !inline_history !1735
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %sqlite3HashFindElem.exit.i.i.i.1.i, label %bb.aa, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.1.i:               ; preds = %bb.aa
  %i.hy = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !426 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 80
  %i.ib = getelementptr i8, ptr %i.hz, i64 64
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !488
  %.not.1.i = icmp eq ptr %i.ic, null
  br i1 %.not.1.i, label %.split.2.i, label %bb.ac

.split.2.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.1.i
  %i.id = load i8, ptr %i.em, align 8, !tbaa !467
  %i.ie = icmp eq i8 %i.id, 3
  %strHash.binHash.i.i.i.i.i.2.i = select i1 %i.ie, ptr @strHash, ptr @binHash
  %i.if = tail call i32 %strHash.binHash.i.i.i.i.i.2.i(ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !468, !inline_history !1734
  %i.ig = load ptr, ptr %i.en, align 8, !tbaa !448, !nonnull !490, !noundef !490
  %i.ih = load i32, ptr %i.eo, align 8, !tbaa !449
  %i.ii = srem i32 %i.if, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [16 x i8], ptr %i.ig, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i8, ptr %i.em, align 8, !tbaa !467
  %i.in = icmp eq i8 %i.im, 3
  %strCompare.binCompare.i.i.i.i.i.i.2.i = select i1 %i.in, ptr @strCompare, ptr @binCompare
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.split.2.i
  %.017.in.i.i.i.i.i.2.i = phi ptr [ %i.il, %.split.2.i ], [ %.017.i.i.i.i.i.2.i, %bb.ab ]
  %.017.i.i.i.i.i.2.i = load ptr, ptr %.017.in.i.i.i.i.i.2.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !452
  %i.iq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 32
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !471
  %i.is = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.2.i(ptr noundef %i.ip, i32 noundef %i.ir, ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !472, !inline_history !1735
  %i.it = icmp eq i32 %i.is, 0
  br i1 %i.it, label %sqlite3HashFindElem.exit.i.i.i.2.i, label %bb.ab, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.2.i:               ; preds = %bb.ab
  %i.iu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !426 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 40
  %i.ix = getelementptr i8, ptr %i.iv, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !488
  %.not.2.i = icmp eq ptr %i.iy, null
  br i1 %.not.2.i, label %.thread50, label %bb.ac

.split.preheader.i:                               ; preds = %bb.x, %.split.preheader.i
  %.017.in.i.i.i.i.i.i = phi ptr [ %.017.i.i.i.i.i.i, %.split.preheader.i ], [ %i.ex, %bb.x ]
  %.017.i.i.i.i.i.i = load ptr, ptr %.017.in.i.i.i.i.i.i, align 8, !tbaa !424, !nonnull !490, !noundef !490 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !452
  %i.jb = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 32
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !471
  %i.jd = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.ja, i32 noundef %i.jc, ptr noundef nonnull %i.ei, i32 noundef %i.ek) #43, !callees !472, !inline_history !1735
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %sqlite3HashFindElem.exit.i.i.i.i, label %.split.preheader.i, !llvm.loop !28

sqlite3HashFindElem.exit.i.i.i.i:                 ; preds = %.split.preheader.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !426 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 120
  %i.ji = getelementptr i8, ptr %i.jg, i64 104
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !488
  %.not.i42 = icmp eq ptr %i.jj, null
  br i1 %.not.i42, label %.split.1.i, label %bb.ac

bb.ac:                                            ; preds = %sqlite3HashFindElem.exit.i.i.i.i, %sqlite3HashFindElem.exit.i.i.i.2.i, %sqlite3HashFindElem.exit.i.i.i.1.i, %sqlite3HashFindElem.exit.i.i.i.us.i, %sqlite3HashFindElem.exit.i.i.i.us.2.i, %sqlite3HashFindElem.exit.i.i.i.us.1.i
  %.us-phi.i = phi ptr [ %i.gt, %sqlite3HashFindElem.exit.i.i.i.us.2.i ], [ %i.he, %sqlite3HashFindElem.exit.i.i.i.us.i ], [ %i.fv, %sqlite3HashFindElem.exit.i.i.i.us.1.i ], [ %i.jh, %sqlite3HashFindElem.exit.i.i.i.i ], [ %i.ia, %sqlite3HashFindElem.exit.i.i.i.1.i ], [ %i.iw, %sqlite3HashFindElem.exit.i.i.i.2.i ]
  %i.jk = getelementptr i8, ptr %.us-phi.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eg, ptr noundef nonnull align 8 dereferenceable(40) %i.jk, i64 32, i1 false)
  %i.jl = getelementptr i8, ptr %i.ef, i64 -8
  store ptr null, ptr %i.jl, align 8, !tbaa !428
  br label %.thread50

.thread50:                                        ; preds = %bb.v, %.thread45, %bb.s, %bb.t, %sqlite3HashFindElem.exit.i.i.i.2.i, %sqlite3HashFindElem.exit.i.i.i.us.2.i, %sqlite3FindCollSeq.exit41, %bb.ac, %.thread53
  %.2 = phi ptr [ %i.eg, %.thread53 ], [ null, %bb.s ], [ null, %sqlite3HashFindElem.exit.i.i.i.2.i ], [ %i.eg, %bb.ac ], [ null, %sqlite3FindCollSeq.exit41 ], [ null, %sqlite3HashFindElem.exit.i.i.i.us.2.i ], [ null, %bb.t ], [ %.048, %.thread45 ], [ null, %bb.v ]
  ret ptr %.2
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @identPut(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #31 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !112    ; 7 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !139     ; 4 uses
  %.not59 = icmp eq i8 %i.b, 0
  %.pre = tail call ptr @__ctype_b_loc() #46      ; 2 uses
  %i.c = load ptr, ptr %.pre, align 8, !tbaa !233 ; 2 uses
  br i1 %.not59, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i8 [ %i.j, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !234
  %i.h = and i16 %i.g, 8
  %.not38 = icmp ne i16 %i.h, 0
  %.not39 = icmp eq i8 %i.d, 95
  %or.cond = or i1 %.not39, %.not38
  br i1 %or.cond, label %bb.b, label %.thread43

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1, !tbaa !139   ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1736

._crit_edge:                                      ; preds = %bb.b
  %i.k = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.l = load ptr, ptr %.pre, align 8, !tbaa !233
  %i.m = zext i8 %i.b to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !234
  %i.p = and i16 %i.o, 2048
  %.not41 = icmp eq i16 %i.p, 0
  br i1 %.not41, label %bb.c, label %.thread43

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = zext nneg i8 %i.b to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !234
  %i.t = and i16 %i.s, 2048
  %.not4188 = icmp eq i16 %i.t, 0
  br i1 %.not4188, label %.thread45, label %.thread43

bb.c:                                             ; preds = %._crit_edge
  %i.u = icmp eq i64 %indvars.iv, 0
  br i1 %i.u, label %.thread45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !139
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 2
  %i.z = getelementptr i8, ptr %2, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !139
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !139
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.ae, 3
  %i.ag = xor i32 %i.y, %i.af
  %i.ah = xor i32 %i.ag, %i.k
  %i.ai = urem i32 %i.ah, 127
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.aj
  %.0.in.in23.i.i = load i8, ptr %i.ak, align 1, !tbaa !139 ; 2 uses
  %.not24.i.i = icmp eq i8 %.0.in.in23.i.i, 0
  br i1 %.not24.i.i, label %.thread45, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %3
  %.0.in.in25.i.i = phi i8 [ %.0.in.in.i.i, %3 ], [ %.0.in.in23.i.i, %bb.d ]
  %.0.in.i.i = zext i8 %.0.in.in25.i.i to i64
  %.0.i.i = add nsw i64 %.0.in.i.i, -1            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %.0.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !139
  %i.an = zext i8 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.e, label %3

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %.0.i.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !234
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.ar
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.e
  %.in.i.i.i = phi i32 [ %i.at, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %.015.i.i.i = phi ptr [ %i.be, %bb.g ], [ %2, %bb.e ] ; 3 uses
  %.01014.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.as, %bb.e ] ; 2 uses
  %i.at = add nsw i32 %.in.i.i.i, -1
  %i.au = load i8, ptr %.01014.i.i.i, align 1, !tbaa !139 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %sqlite3StrNICmp.exit.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !139 ; 2 uses
  %i.ay = load i8, ptr %.015.i.i.i, align 1, !tbaa !139
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !139 ; 2 uses
  %i.bc = icmp eq i8 %i.ax, %i.bb
  br i1 %i.bc, label %bb.g, label %split.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.01014.i.i.i, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  %i.bf = icmp samesign ugt i32 %.in.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i, label %bb.h, !llvm.loop !31

split.i.i.i:                                      ; preds = %bb.f
  %i.bg = zext i8 %i.ax to i32
  br label %sqlite3StrNICmp.exit.i.i

sqlite3StrNICmp.exit.loopexit.i.i:                ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i8, ptr %.015.i.i.i, align 1, !tbaa !139
  %.phi.trans.insert.i.i = zext i8 %.pre.i.i to i64
  %.phi.trans.insert34.i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i.i
  %.pre35.i.i = load i8, ptr %.phi.trans.insert34.i.i, align 1, !tbaa !139
  br label %sqlite3StrNICmp.exit.i.i

sqlite3StrNICmp.exit.i.i:                         ; preds = %sqlite3StrNICmp.exit.loopexit.i.i, %split.i.i.i
  %i.bh = phi i8 [ %i.bb, %split.i.i.i ], [ %.pre35.i.i, %sqlite3StrNICmp.exit.loopexit.i.i ]
  %i.bi = phi i32 [ %i.bg, %split.i.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i.i ]
  %i.bj = zext i8 %i.bh to i32
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %3

3:                                                ; preds = %sqlite3StrNICmp.exit.i.i, %.lr.ph.i.i
  %4 = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %.0.i.i
  %.0.in.in.i.i = load i8, ptr %4, align 1, !tbaa !139 ; 2 uses
  %.not.i.i = icmp eq i8 %.0.in.in.i.i, 0
  br i1 %.not.i.i, label %.thread45, label %.lr.ph.i.i, !llvm.loop !74

bb.h:                                             ; preds = %sqlite3StrNICmp.exit.i.i, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr @keywordCode.aCode, i64 %.0.i.i
  %.0.in.in.i.i.a = load i8, ptr %i.bl, align 1, !tbaa !139
  %.not.i.i.a = icmp eq i8 %.0.in.in.i.i.a, 23
  br i1 %.not.i.i.a, label %.thread45, label %.thread43

.thread43:                                        ; preds = %.lr.ph, %._crit_edge.thread, %._crit_edge, %bb.h
  %i.bm = add nsw i32 %i.a, 1
  %i.bn = sext i32 %i.a to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  store i8 34, ptr %i.bo, align 1, !tbaa !139
  br label %.thread45

.thread45:                                        ; preds = %3, %._crit_edge.thread, %bb.d, %bb.c, %.thread43, %bb.h
  %5 = phi i1 [ true, %.thread43 ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.d ], [ false, %._crit_edge.thread ], [ false, %3 ]
  %.034 = phi i32 [ %i.bm, %.thread43 ], [ %i.a, %bb.h ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %i.a, %._crit_edge.thread ], [ %i.a, %3 ] ; 2 uses
  %i.bp = load i8, ptr %2, align 1, !tbaa !139    ; 2 uses
  %.not4262 = icmp eq i8 %i.bp, 0
  br i1 %.not4262, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %.thread45, %bb.j
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.j ], [ 0, %.thread45 ] ; 2 uses
  %i.bq = phi i8 [ %i.cb, %bb.j ], [ %i.bp, %.thread45 ]
  %.13563 = phi i32 [ %.2, %bb.j ], [ %.034, %.thread45 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv77
  %i.bs = add nsw i32 %.13563, 1                  ; 2 uses
  %i.bt = sext i32 %.13563 to i64
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !139
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !139
  %i.bw = icmp eq i8 %i.bv, 34
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph65
  %i.bx = add nsw i32 %.13563, 2
  %i.by = sext i32 %i.bs to i64
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.by
  store i8 34, ptr %i.bz, align 1, !tbaa !139
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph65, %bb.i
  %.2 = phi i32 [ %i.bx, %bb.i ], [ %i.bs, %.lr.ph65 ] ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next78
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !139 ; 2 uses
  %.not42 = icmp eq i8 %i.cb, 0
  br i1 %.not42, label %._crit_edge66, label %.lr.ph65, !llvm.loop !1737

._crit_edge66:                                    ; preds = %bb.j, %.thread45
  %.135.lcssa = phi i32 [ %.034, %.thread45 ], [ %.2, %bb.j ] ; 3 uses
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge66
  %i.cc = add nsw i32 %.135.lcssa, 1
  %i.cd = sext i32 %.135.lcssa to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  store i8 34, ptr %i.ce, align 1, !tbaa !139
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge66
  %.3 = phi i32 [ %i.cc, %bb.k ], [ %.135.lcssa, %._crit_edge66 ] ; 2 uses
  %i.cf = sext i32 %.3 to i64
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !139
  store i32 %.3, ptr %1, align 4, !tbaa !112
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 3) i32 @exprNodeIsConstant(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !112    ; 2 uses
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !865
  %i.e = and i16 %i.d, 1
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i8, ptr %1, align 8, !tbaa !848
  switch i8 %i.f, label %bb.f [
    i8 -108, label %bb.d
    i8 23, label %.sink.split
    i8 -107, label %.sink.split
    i8 112, label %.sink.split
    i8 -106, label %.sink.split
    i8 -105, label %.sink.split
    i8 110, label %.sink.split
    i8 17, label %.sink.split
    i8 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %i.a, 2
  br i1 %i.g, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !812
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %bb.b
  store i32 0, ptr %0, align 4, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 2, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SrcListLookup(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !824
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.023 = phi ptr [ %i.c, %.lr.ph ], [ %i.z, %bb.i ] ; 4 uses
  %.01322 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 3 uses
  %i.j = load ptr, ptr %.023, align 8, !tbaa !161 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !292    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !242
  %.not.i16 = icmp eq i8 %i.m, 0
  br i1 %.not.i16, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc i32 @sqlite3Init(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d), !inline_history !900 ; 2 uses
  %.not8.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i, label %..thread_crit_edge, label %sqlite3ReadSchema.exit

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !292
  br label %.thread

sqlite3ReadSchema.exit:                           ; preds = %bb.c
  store i32 %i.n, ptr %i.e, align 8, !tbaa !293
  %i.o = load i32, ptr %i.f, align 8, !tbaa !294
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.f, align 8, !tbaa !294
  br label %sqlite3LocateTable.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.q = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.k, %bb.b ]
  %i.r = tail call fastcc ptr @sqlite3FindTable(ptr noundef %i.q, ptr noundef %i.i, ptr noundef %i.j), !inline_history !295 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %sqlite3LocateTable.exit

bb.d:                                             ; preds = %.thread
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.254, ptr noundef nonnull %i.j, ptr noundef %i.i), !inline_history !295
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.254, ptr noundef %i.i), !inline_history !295
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.g, align 2, !tbaa !304
  br label %sqlite3LocateTable.exit

sqlite3LocateTable.exit:                          ; preds = %sqlite3ReadSchema.exit, %.thread, %bb.g
  %.0.i = phi ptr [ null, %sqlite3ReadSchema.exit ], [ null, %bb.g ], [ %i.r, %.thread ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !826
  tail call fastcc void @sqlite3DeleteTable(ptr noundef %i.u)
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !826
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sqlite3LocateTable.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !394
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !394
  br label %bb.i

bb.i:                                             ; preds = %sqlite3LocateTable.exit, %bb.h
  %i.y = add nuw nsw i32 %.01322, 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.023, i64 72
  %i.aa = load i16, ptr %1, align 8, !tbaa !824
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.014.lcssa = phi ptr [ null, %bb.a ], [ %.0.i, %bb.i ]
  ret ptr %.014.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3FixSrcList(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %sqlite3FixSelect.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !857  ; 5 uses
  %i.d = load i16, ptr %1, align 8, !tbaa !824
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph46, label %sqlite3FixSelect.exit.thread

.lr.ph46:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = icmp eq ptr %i.c, null
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph46, %bb.p
  %.045 = phi ptr [ %i.f, %.lr.ph46 ], [ %i.br, %bb.p ] ; 5 uses
  %.02144 = phi i32 [ 0, %.lr.ph46 ], [ %i.bq, %bb.p ]
  %i.h = load ptr, ptr %.045, align 8, !tbaa !161 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !856
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292
  br i1 %i.g, label %sqlite3DbStrDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #42
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = tail call ptr @sqlite3_malloc(i32 noundef %i.n) ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %sqlite3StrDup.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.c, i64 %i.p, i1 false)
  br label %sqlite3DbStrDup.exit
end_hunk_0
