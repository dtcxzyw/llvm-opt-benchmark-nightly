Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_preupdate_new:bb.a
  %i.cw = and <8 x i16> %i.cu, splat (i16 1)
  %i.cx = xor <8 x i16> %i.cv, splat (i16 1)
  %i.cy = xor <8 x i16> %i.cw, splat (i16 1)
  %i.cz = add <8 x i16> %i.cx, %vec.phi           ; 2 uses
  %i.da = add <8 x i16> %i.cy, %vec.phi144        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !915

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.da, %i.cz
  %i.dc = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ag, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i95.preheader, label %vec.epilog.ph, !prof !888

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.dc, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dd = and i64 %.pre, 3                        ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = select i1 %i.de, i64 4, i64 %i.dd
  %n.vec145 = sub nsw i64 %.pre, %i.df            ; 2 uses
  %i.dg = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index146 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi147 = phi <4 x i16> [ %i.dg, %vec.epilog.ph ], [ %i.ea, %vec.epilog.vector.body ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %index146
  %i.di = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dj = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dk = getelementptr [16 x i8], ptr %i.ad, i64 %index146
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  %i.dm = getelementptr i8, ptr %i.di, i64 30
  %i.dn = getelementptr i8, ptr %i.dj, i64 46
  %i.do = getelementptr i8, ptr %i.dk, i64 62
  %i.dp = load i16, ptr %i.dl, align 2, !tbaa !885
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !885
  %i.dr = load i16, ptr %i.dn, align 2, !tbaa !885
  %i.ds = load i16, ptr %i.do, align 2, !tbaa !885
  %i.dt = insertelement <4 x i16> poison, i16 %i.dp, i64 0
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dq, i64 1
  %i.dv = insertelement <4 x i16> %i.du, i16 %i.dr, i64 2
  %i.dw = insertelement <4 x i16> %i.dv, i16 %i.ds, i64 3
  %i.dx = lshr <4 x i16> %i.dw, splat (i16 5)
  %i.dy = and <4 x i16> %i.dx, splat (i16 1)
  %i.dz = xor <4 x i16> %i.dy, splat (i16 1)
  %i.ea = add <4 x i16> %i.dz, %vec.phi147        ; 2 uses
  %index.next148 = add nuw i64 %index146, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next148, %n.vec145
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !916

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ec = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ea)
  br label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i97.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec145, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98, %.lr.ph.i95 ], [ %indvars.iv.i97.ph, %.lr.ph.i95.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i95 ], [ %.021.i.ph, %.lr.ph.i95.preheader ]
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i97
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !885
  %i.eg = lshr i16 %i.ef, 5
  %i.eh = and i16 %i.eg, 1
  %i.ei = xor i16 %i.eh, 1
  %spec.select.i = add i16 %i.ei, %.021.i         ; 2 uses
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %indvars.iv.next.i98, %.pre
  br i1 %exitcond.not.i99, label %._crit_edge.i, label %.lr.ph.i95, !llvm.loop !917

._crit_edge.i:                                    ; preds = %.lr.ph.i95, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i95 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !885
  %i.em = and i16 %i.el, 32
  %.not.i100 = icmp eq i16 %i.em, 0
  br i1 %.not.i100, label %sqlite3TableColumnToStorage.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.eo = load i16, ptr %i.en, align 8, !tbaa !891
  %i.ep = sub i16 %i.w, %.0.lcssa.i
  %i.eq = add i16 %i.ep, %i.eo
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.j, %._crit_edge.i, %bb.k
  %.018.i = phi i16 [ %i.w, %bb.j ], [ %i.eq, %bb.k ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.er = sext i16 %.018.i to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3TableColumnToStorage.exit
  %.064 = phi i32 [ %i.er, %sqlite3TableColumnToStorage.exit ], [ %i.q, %._crit_edge.loopexit.split.loop.exit13.i ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !892
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = load i16, ptr %i.eu, align 8, !tbaa !332 ; 2 uses
  %i.ew = sext i16 %i.ev to i32
  %i.ex = icmp sge i32 %.064, %i.ew
  %i.ey = icmp slt i32 %.064, 0
  %or.cond = or i1 %i.ey, %i.ex
  br i1 %or.cond, label %sqlite3Error.exit.thread, label %bb.l

bb.l:                                             ; preds = %sqlite3TableColumnToIndex.exit
  %i.ez = icmp eq i32 %i.d, 18
  br i1 %i.ez, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !918 ; 2 uses
  %.not89 = icmp eq ptr %i.fb, null
  br i1 %.not89, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.fc = load ptr, ptr %i.b, align 8, !tbaa !912
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 104
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !546
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !919
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [56 x i8], ptr %i.fe, i64 %i.fh ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !164
  %i.fl = and i16 %i.fk, 1024
  %.not90 = icmp eq i16 %i.fl, 0
  br i1 %.not90, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fm = tail call fastcc i32 @sqlite3VdbeMemExpandBlob(ptr noundef nonnull %i.fi) ; 2 uses
  %.not91 = icmp eq i32 %i.fm, 0
  br i1 %.not91, label %.thread, label %sqlite3Error.exit.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !897
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !560
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !291
  %i.ft = tail call fastcc ptr @vdbeUnpackRecord(ptr noundef %i.fo, i32 noundef %i.fq, ptr noundef %i.fs) ; 3 uses
  %.not92 = icmp eq ptr %i.ft, null
  br i1 %.not92, label %sqlite3Error.exit.thread, label %bb.p

bb.p:                                             ; preds = %.thread
  store ptr %i.ft, ptr %i.fa, align 8, !tbaa !918
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.1 = phi ptr [ %i.fb, %bb.m ], [ %i.ft, %bb.p ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !899
  %i.fw = zext nneg i32 %.064 to i64
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %i.fv, i64 %i.fw ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !882
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 52
  %i.gb = load i16, ptr %i.ga, align 4, !tbaa !893
  %i.gc = sext i16 %i.gb to i32
  %i.gd = icmp eq i32 %1, %i.gc
  br i1 %i.gd, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !920 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 20 ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 4, !tbaa !164
  %i.gi = and i16 %i.gh, -28672
  %.not.i101 = icmp eq i16 %i.gi, 0
  br i1 %.not.i101, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.fx, i64 noundef %i.gf)
  br label %sqlite3VdbeMemSetInt64.exit.thread

bb.t:                                             ; preds = %bb.r
  store i64 %i.gf, ptr %i.fx, align 8, !tbaa !229
  store i16 4, ptr %i.gg, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.thread

bb.u:                                             ; preds = %bb.q
  %i.gj = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.gk = load i16, ptr %i.gj, align 4, !tbaa !901
  %i.gl = zext i16 %i.gk to i32
  %.not93 = icmp samesign ult i32 %.064, %i.gl
  %spec.select = select i1 %.not93, ptr %i.fx, ptr @columnNullValue.nullMem
  br label %sqlite3VdbeMemSetInt64.exit.thread

bb.v:                                             ; preds = %bb.l
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !921 ; 2 uses
  %.not86 = icmp eq ptr %i.gn, null
  br i1 %.not86, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.go = sext i16 %i.ev to i64
  %i.gp = mul nuw nsw i64 %i.go, 56               ; 3 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.gp), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

bb.y:                                             ; preds = %bb.w
  %i.gr = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.gp), !inline_history !610
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.y, %bb.x
  %.0.i.i = phi ptr [ %i.gq, %bb.x ], [ %i.gr, %bb.y ] ; 4 uses
  %.not.i102 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i102, label %sqlite3DbMallocZero.exit.thread, label %sqlite3DbMallocZero.exit

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3DbMallocRaw.exit.i
  store ptr null, ptr %i.gm, align 8, !tbaa !921
  br label %sqlite3Error.exit.thread

sqlite3DbMallocZero.exit:                         ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %i.gp, i1 false)
  store ptr %.0.i.i, ptr %i.gm, align 8, !tbaa !921
  br label %bb.z

bb.z:                                             ; preds = %sqlite3DbMallocZero.exit, %bb.v
  %i.gs = phi ptr [ %.0.i.i, %sqlite3DbMallocZero.exit ], [ %i.gn, %bb.v ]
  %i.gt = zext nneg i32 %.064 to i64
  %i.gu = getelementptr inbounds nuw [56 x i8], ptr %i.gs, i64 %i.gt ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20 ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !164
  %i.gx = icmp eq i16 %i.gw, 0
  br i1 %i.gx, label %bb.aa, label %sqlite3VdbeMemSetInt64.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !882
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 52
  %i.hb = load i16, ptr %i.ha, align 4, !tbaa !893
  %i.hc = sext i16 %i.hb to i32
  %i.hd = icmp eq i32 %1, %i.hc
  br i1 %i.hd, label %sqlite3VdbeMemSetInt64.exit104, label %bb.ab

sqlite3VdbeMemSetInt64.exit104:                   ; preds = %bb.aa
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !920
  store i64 %i.hf, ptr %i.gu, align 8, !tbaa !229
  store i16 4, ptr %i.gv, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetInt64.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !912
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !546
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !919
  %i.hl = add nuw nsw i32 %.064, 1
  %i.hm = add i32 %i.hl, %i.hk
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [56 x i8], ptr %i.hi, i64 %i.hn
  %i.hp = tail call fastcc i32 @sqlite3VdbeMemCopy(ptr noundef nonnull %i.gu, ptr noundef %i.ho) ; 2 uses
  %.not88 = icmp eq i32 %i.hp, 0
  br i1 %.not88, label %sqlite3VdbeMemSetInt64.exit.thread, label %sqlite3Error.exit.thread

sqlite3Error.exit.thread:                         ; preds = %bb.g, %bb.o, %.thread, %sqlite3DbMallocZero.exit.thread, %bb.ab, %sqlite3TableColumnToIndex.exit, %bb.c, %bb.e
  %.4.ph = phi i32 [ %i.fm, %bb.o ], [ 7, %.thread ], [ 7, %sqlite3DbMallocZero.exit.thread ], [ %i.hp, %bb.ab ], [ 21, %bb.c ], [ 25, %sqlite3TableColumnToIndex.exit ], [ 25, %bb.e ], [ 25, %bb.g ] ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.4.ph, ptr %i.hq, align 8, !tbaa !591
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef %.4.ph)
  br label %bb.ad

sqlite3VdbeMemSetInt64.exit.thread:               ; preds = %bb.u, %bb.t, %bb.s, %bb.z, %bb.ab, %sqlite3VdbeMemSetInt64.exit104
  %.2 = phi ptr [ %i.gu, %bb.z ], [ %i.gu, %sqlite3VdbeMemSetInt64.exit104 ], [ %i.gu, %bb.ab ], [ %i.fx, %bb.t ], [ %i.fx, %bb.s ], [ %spec.select, %bb.u ]
  store ptr %.2, ptr %2, align 8, !tbaa !290
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.hr, align 8, !tbaa !591
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !607
  %.not7.i = icmp eq ptr %i.ht, null
  br i1 %.not7.i, label %bb.ac, label %.split6.i

.split6.i:                                        ; preds = %sqlite3VdbeMemSetInt64.exit.thread
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3Error.exit

bb.ac:                                            ; preds = %sqlite3VdbeMemSetInt64.exit.thread
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.hu, align 4, !tbaa !375
  br label %sqlite3Error.exit

sqlite3Error.exit:                                ; preds = %.split6.i, %bb.ac
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !552
  %.not127 = icmp eq i8 %i.hw, 0
  br i1 %.not127, label %sqlite3ApiExit.exit, label %bb.ad

bb.ad:                                            ; preds = %sqlite3Error.exit.thread, %sqlite3Error.exit
  %.4123126 = phi i32 [ %.4.ph, %sqlite3Error.exit.thread ], [ 0, %sqlite3Error.exit ]
  %i.hx = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %.4123126)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %bb.ad, %sqlite3Error.exit, %bb.i
  %.070 = phi i32 [ 21, %bb.i ], [ %i.hx, %bb.ad ], [ 0, %sqlite3Error.exit ]
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 256) i32 @sqlite3_value_numeric_type(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !164
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64                ; 2 uses
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, 1125899907104772
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.l(ptr noundef nonnull %i.k) #59, !inline_history !18
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.m = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 6 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %applyNumericAffinity.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.p = icmp eq i32 %i.n, 1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = fcmp olt double %i.m, f0xC3DFFFFFFFFFFFFF
  br i1 %i.q, label %sqlite3RealToI64.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp ogt double %i.m, f0x43DFFFFFFFFFFFFF
  br i1 %i.r, label %sqlite3RealToI64.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fptosi double %i.m to i64
  br label %sqlite3RealToI64.exit.i.i

sqlite3RealToI64.exit.i.i:                        ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.s, %bb.g ], [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %bb.f ] ; 3 uses
  %i.t = fcmp oeq double %i.m, 0.000000e+00
  br i1 %i.t, label %alsoAnInt.exit.thread.i, label %sqlite3RealSameAsInt.exit.i.i

sqlite3RealSameAsInt.exit.i.i:                    ; preds = %sqlite3RealToI64.exit.i.i
  %i.u = sitofp i64 %.0.i.i.i to double
  %i.v = bitcast double %i.m to i64
  %i.w = bitcast double %i.u to i64
  %.not.i.i.i = icmp ne i64 %i.v, %i.w
  %i.x = add i64 %.0.i.i.i, -2251799813685248
  %i.y = icmp ult i64 %i.x, -4503599627370496
  %.not11.i.i = or i1 %i.y, %.not.i.i.i
  br i1 %.not11.i.i, label %alsoAnInt.exit.i, label %alsoAnInt.exit.thread.i

alsoAnInt.exit.thread.i:                          ; preds = %sqlite3RealSameAsInt.exit.i.i, %sqlite3RealToI64.exit.i.i
  store i64 %.0.i.i.i, ptr %0, align 8, !tbaa !19
  br label %sqlite3VdbeIntegerAffinity.exit.i

alsoAnInt.exit.i:                                 ; preds = %sqlite3RealSameAsInt.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !291
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !560
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !351
  %i.af = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.aa, ptr noundef nonnull %0, i32 noundef %i.ac, i8 noundef zeroext %i.ae)
  %.not.i8 = icmp eq i32 %i.af, 0
  br i1 %.not.i8, label %sqlite3VdbeIntegerAffinity.exit.i, label %bb.h

bb.h:                                             ; preds = %alsoAnInt.exit.i, %bb.d
  store double %i.m, ptr %0, align 8, !tbaa !229
  br label %sqlite3VdbeIntegerAffinity.exit.i

sqlite3VdbeIntegerAffinity.exit.i:                ; preds = %alsoAnInt.exit.thread.i, %alsoAnInt.exit.i, %bb.h
  %.sink14 = phi i16 [ 8, %bb.h ], [ 4, %alsoAnInt.exit.i ], [ 4, %alsoAnInt.exit.thread.i ]
  %i.ag = load i16, ptr %i.b, align 4, !tbaa !164
  %.masked = and i16 %i.ag, -3
  %i.ah = or i16 %.masked, %.sink14
  store i16 %i.ah, ptr %i.b, align 4, !tbaa !164
  br label %applyNumericAffinity.exit

applyNumericAffinity.exit:                        ; preds = %sqlite3_mutex_enter.exit, %sqlite3VdbeIntegerAffinity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !159
end_hunk_0
begin_hunk_1_@pager_write_pagelist:bb.a
  %i.by = lshr i32 %i.bs, 16
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !229
  %i.cb = lshr i32 %i.bs, 8
  %i.cc = trunc i32 %i.cb to i8                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !229
  %i.ce = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !229
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !518 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 %i.bx, ptr %i.ch, align 1, !tbaa !229
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 93
  store i8 %i.bz, ptr %i.ci, align 1, !tbaa !229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 94
  store i8 %i.cc, ptr %i.cj, align 1, !tbaa !229
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 95
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !229
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !518
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store <4 x i8> <i8 0, i8 46, i8 -111, i8 -32>, ptr %i.cm, align 1, !tbaa !229
  %.pre53 = load i64, ptr %i.ah, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %pager_write_changecounter.exit, %bb.j
  %i.cn = phi i64 [ %.pre53, %pager_write_changecounter.exit ], [ %i.av, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04251, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !518 ; 2 uses
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !526 ; 2 uses
  %i.cr = trunc i64 %i.cn to i32
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !475
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !683
  %i.cv = call i32 %i.cu(ptr noundef nonnull %i.cq, ptr noundef %i.cp, i32 noundef %i.cr, i64 noundef %i.aw) #59, !inline_history !684 ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = load i32, ptr %i.aj, align 8, !tbaa !729
  %i.cy = icmp ugt i32 %i.an, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.aj, align 8, !tbaa !729
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cz = load i32, ptr %i.ak, align 8, !tbaa !24
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.ak, align 8, !tbaa !24
  %i.db = load ptr, ptr %i.al, align 8, !tbaa !727 ; 2 uses
  %.not.i47 = icmp eq ptr %i.db, null
  br i1 %.not.i47, label %sqlite3BackupUpdate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !518
  call fastcc void @backupUpdate(ptr noundef %i.db, i32 noundef %i.an, ptr noundef readonly %i.dc), !inline_history !2100
  br label %sqlite3BackupUpdate.exit

sqlite3BackupUpdate.exit:                         ; preds = %bb.p, %bb.o, %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.04251, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !525 ; 2 uses
  %i.df = icmp eq i32 %.2, 0
  %i.dg = icmp ne ptr %i.de, null
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !2342

._crit_edge:                                      ; preds = %sqlite3BackupUpdate.exit, %bb.b, %bb.g
  %.1.lcssa = phi i32 [ 0, %bb.g ], [ %i.k, %bb.b ], [ %.2, %sqlite3BackupUpdate.exit ]
  ret i32 %.1.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @walWriteOneFrame(ptr nofree noundef nonnull readonly captures(none) %0, ptr %.8.val, i32 %.48.val, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = load ptr, ptr %0, align 8, !tbaa !2313   ; 6 uses
  %i.c = lshr i32 %.48.val, 24
  %i.d = trunc nuw i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 16, !tbaa !229
  %i.e = lshr i32 %.48.val, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !229
  %i.h = lshr i32 %.48.val, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !229
  %i.k = trunc i32 %.48.val to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.k, ptr %i.l, align 1, !tbaa !229
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.n = lshr i32 %1, 24
  %i.o = trunc nuw i32 %i.n to i8
  store i8 %i.o, ptr %i.m, align 4, !tbaa !229
  %i.p = lshr i32 %1, 16
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.q, ptr %i.r, align 1, !tbaa !229
  %i.s = lshr i32 %1, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !229
  %i.v = trunc i32 %1 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !229
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2037
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 85
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !2242
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !24 ; 3 uses
  %i.al = load i32, ptr %i.a, align 16, !tbaa !24 ; 2 uses
  br i1 %i.ag, label %.preheader96.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = add i32 %i.ak, %i.ai
  %i.ao = add i32 %i.an, %i.am
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !24
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  br label %walChecksumBytes.exit.i

.preheader96.i.i:                                 ; preds = %bb.b
  %i.ar = add i32 %i.ak, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = load i32, ptr %i.m, align 4, !tbaa !24
  br label %walChecksumBytes.exit.i

walChecksumBytes.exit.i:                          ; preds = %.preheader96.i.i, %.preheader.i.i
  %.sink27.i = phi i32 [ %i.aq, %.preheader.i.i ], [ %i.at, %.preheader96.i.i ]
  %.sink26.i = phi i32 [ %i.ao, %.preheader.i.i ], [ %i.as, %.preheader96.i.i ] ; 2 uses
  %i.au = add i32 %.sink27.i, %i.ak
  %i.av = add i32 %i.au, %.sink26.i
  store i32 %.sink26.i, ptr %i.aa, align 8, !tbaa !24
  store i32 %i.av, ptr %i.aj, align 4, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2223
  tail call fastcc void @walChecksumBytes(i32 noundef %i.ah, ptr noundef readonly %.8.val, i32 noundef %i.ax, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aa)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = load i32, ptr %i.aa, align 8, !tbaa !24 ; 4 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = trunc nuw i32 %i.ba to i8
  store i8 %i.bb, ptr %i.ay, align 16, !tbaa !229
  %i.bc = lshr i32 %i.az, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !229
  %i.bf = lshr i32 %i.az, 8
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.bg, ptr %i.bh, align 2, !tbaa !229
  %i.bi = trunc i32 %i.az to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !229
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !24 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = trunc nuw i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bk, align 4, !tbaa !229
  %i.bo = lshr i32 %i.bl, 16
  %i.bp = trunc i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !229
  %i.br = lshr i32 %i.bl, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.bs, ptr %i.bt, align 2, !tbaa !229
  %i.bu = trunc i32 %i.bl to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !229
  br label %walEncodeFrame.exit

bb.c:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  br label %walEncodeFrame.exit

walEncodeFrame.exit:                              ; preds = %walChecksumBytes.exit.i, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !2316 ; 4 uses
  %i.bz = icmp sge i64 %2, %i.by
  %i.ca = add i64 %2, 24                          ; 7 uses
  %.not.i = icmp slt i64 %i.ca, %i.by
  %or.cond = or i1 %i.bz, %.not.i
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %walEncodeFrame.exit
  %i.cb = sub nsw i64 %i.by, %2                   ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2315 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !475
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !683
  %i.ci = call i32 %i.ch(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.a, i32 noundef %i.cc, i64 noundef %2) #59, !inline_history !2343 ; 2 uses
  %.not43.i = icmp eq i32 %i.ci, 0
  br i1 %.not43.i, label %bb.e, label %walWriteToLog.exit24

bb.e:                                             ; preds = %bb.d
  %i.cj = sub nsw i32 24, %i.cc
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %i.cb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2317
  %i.cn = and i32 %i.cm, 3                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !2315 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !475
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !735
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.co, i32 noundef range(i32 0, 256) %i.cn) #59, !inline_history !2344
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ct = phi i32 [ %i.cs, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.cu = icmp ne i32 %i.cc, 24
  %i.cv = icmp eq i32 %i.ct, 0
  %or.cond.not.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond.not.i, label %bb.h, label %walWriteToLog.exit

bb.h:                                             ; preds = %bb.g, %walEncodeFrame.exit
  %.135.i = phi ptr [ %i.ck, %bb.g ], [ %i.a, %walEncodeFrame.exit ]
  %.133.i = phi i32 [ %i.cj, %bb.g ], [ 24, %walEncodeFrame.exit ]
  %.1.i = phi i64 [ %i.by, %bb.g ], [ %2, %walEncodeFrame.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !2315 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !475
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !683
  %i.db = call i32 %i.da(ptr noundef nonnull %i.cx, ptr noundef nonnull %.135.i, i32 noundef %.133.i, i64 noundef %.1.i) #59, !inline_history !2343
  br label %walWriteToLog.exit

walWriteToLog.exit:                               ; preds = %bb.g, %bb.h
  %.137.i = phi i32 [ %i.db, %bb.h ], [ %i.ct, %bb.g ] ; 2 uses
  %.not = icmp eq i32 %.137.i, 0
  br i1 %.not, label %bb.i, label %walWriteToLog.exit24

bb.i:                                             ; preds = %walWriteToLog.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !2318 ; 3 uses
  %i.de = load i64, ptr %i.bx, align 8, !tbaa !2316 ; 3 uses
  %i.df = icmp sge i64 %i.ca, %i.de
  %i.dg = sext i32 %i.dd to i64
  %i.dh = add nsw i64 %i.ca, %i.dg
  %.not.i19 = icmp slt i64 %i.dh, %i.de
  %or.cond4 = select i1 %i.df, i1 true, i1 %.not.i19
  br i1 %or.cond4, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = sub nsw i64 %i.de, %i.ca                ; 2 uses
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2315 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !475
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !683
  %i.dp = call i32 %i.do(ptr noundef nonnull %i.dl, ptr noundef %.8.val, i32 noundef %i.dj, i64 noundef %i.ca) #59, !inline_history !2343 ; 2 uses
  %.not43.i20 = icmp eq i32 %i.dp, 0
  br i1 %.not43.i20, label %bb.k, label %walWriteToLog.exit24

bb.k:                                             ; preds = %bb.j
  %sext.i21 = shl i64 %i.di, 32
  %i.dq = ashr exact i64 %sext.i21, 32            ; 2 uses
  %i.dr = add nsw i64 %i.dq, %i.ca
  %i.ds = sub nsw i32 %i.dd, %i.dj                ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.8.val, i64 %i.dq
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !2317
  %i.dw = and i32 %i.dv, 3                        ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i22, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !2315 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !475
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !735
  %i.eb = call i32 %i.ea(ptr noundef nonnull %i.dx, i32 noundef range(i32 0, 256) %i.dw) #59, !inline_history !2344
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ec = phi i32 [ %i.eb, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ed = icmp ne i32 %i.ds, 0
  %i.ee = icmp eq i32 %i.ec, 0
  %or.cond.not.i23 = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.not.i23, label %bb.n, label %walWriteToLog.exit24

bb.n:                                             ; preds = %bb.m, %bb.i
  %.135.i15 = phi ptr [ %i.dt, %bb.m ], [ %.8.val, %bb.i ]
  %.133.i16 = phi i32 [ %i.ds, %bb.m ], [ %i.dd, %bb.i ]
  %.1.i17 = phi i64 [ %i.dr, %bb.m ], [ %i.ca, %bb.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !2315 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !475
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !683
  %i.ek = call i32 %i.ej(ptr noundef nonnull %i.eg, ptr noundef %.135.i15, i32 noundef %.133.i16, i64 noundef %.1.i17) #59, !inline_history !2343
  br label %walWriteToLog.exit24

walWriteToLog.exit24:                             ; preds = %bb.d, %bb.n, %bb.m, %bb.j, %walWriteToLog.exit
  %.0 = phi i32 [ %i.dp, %bb.j ], [ %.137.i, %walWriteToLog.exit ], [ %i.ek, %bb.n ], [ %i.ec, %bb.m ], [ %i.ci, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walLimitSize(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1227 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b() #59, !inline_history !1229
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2194 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !475
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !686
  %i.h = call i32 %i.g(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #59, !inline_history !2048 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19
  %i.k = icmp sgt i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !2194 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !475
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !688
  %i.p = call i32 %i.o(ptr noundef nonnull %i.l, i64 noundef %1) #59, !inline_history !2096
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %sqlite3BeginBenignMalloc.exit
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.h, %sqlite3BeginBenignMalloc.exit ] ; 2 uses
  %i.q = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1230 ; 2 uses
  %.not.i9 = icmp eq ptr %i.q, null
  br i1 %.not.i9, label %sqlite3EndBenignMalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.q() #59, !inline_history !1231
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.e, %bb.f
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2254
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %.0, ptr noundef nonnull @.str.123, ptr noundef %i.s)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3EndBenignMalloc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @walRestartHdr(ptr nofree noundef captures(none) initializes((72, 76), (84, 85), (88, 92), (108, 120)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1978 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !350 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !2209
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !2209
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !2182
  %i.g = load i8, ptr %i.b, align 8, !tbaa !229
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !229
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 106 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2, !tbaa !229
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 107 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !229
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %i.x = add i32 %i.w, 1                          ; 4 uses
  %i.y = lshr i32 %i.x, 24
  %i.z = trunc nuw i32 %i.y to i8
  store i8 %i.z, ptr %i.b, align 8, !tbaa !229
  %i.aa = lshr i32 %i.x, 16
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.j, align 1, !tbaa !229
  %i.ac = lshr i32 %i.x, 8
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.o, align 2, !tbaa !229
  %i.ae = trunc i32 %i.x to i8
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.af, align 4
  %.val.val.i = load ptr, ptr %.val, align 8, !tbaa !350 ; 2 uses
  %.ptr10.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i8 1, ptr %i.ag, align 4, !tbaa !2247
  store i32 3007000, ptr %.ptr10.i, align 8, !tbaa !2248
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24 ; 2 uses
  %i.aj = add i32 %i.ai, 3007000
  %.2.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load i32, ptr %.2.i.ptr.1.i, align 8, !tbaa !24
  %i.al = add i32 %i.ai, 6014000
  %i.am = add i32 %i.al, %i.ak                    ; 2 uses
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !24
  %i.ao = add i32 %i.aj, %i.an
end_hunk_1
begin_hunk_2_@wherePathSolver:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fp = add nsw i32 %i.fm, 31
  %i.fq = icmp slt i32 %i.fp, %i.fl
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = add i16 %i.fk, 1
  br label %sqlite3LogEstAdd.exit

bb.ap:                                            ; preds = %bb.an
  %i.fs = sub nsw i32 %i.fl, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !229
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add i16 %i.fk, %i.fw
  br label %sqlite3LogEstAdd.exit

bb.aq:                                            ; preds = %bb.al
  %i.fy = add nsw i32 %i.fl, 49
  %i.fz = icmp slt i32 %i.fy, %i.fm
  br i1 %i.fz, label %sqlite3LogEstAdd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add nsw i32 %i.fl, 31
  %i.gb = icmp slt i32 %i.ga, %i.fm
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = add i16 %i.fi, 1
  br label %sqlite3LogEstAdd.exit

bb.at:                                            ; preds = %bb.ar
  %i.gd = sub nsw i32 %i.fm, %i.fl
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !229
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add i16 %i.fi, %i.gh
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0271 = phi i16 [ %i.fi, %bb.ak ], [ %i.gi, %bb.at ], [ %i.fr, %bb.ao ], [ %i.fx, %bb.ap ], [ %i.fk, %bb.am ], [ %i.gc, %bb.as ], [ %i.fi, %bb.aq ] ; 5 uses
  %i.gj = load i16, ptr %i.er, align 4, !tbaa !4472 ; 5 uses
  %i.gk = sext i16 %.0271 to i32                  ; 6 uses
  %i.gl = sext i16 %i.gj to i32                   ; 6 uses
  %.not.i359 = icmp slt i16 %.0271, %i.gj
  br i1 %.not.i359, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gm = add nsw i32 %i.gl, 49
  %i.gn = icmp slt i32 %i.gm, %i.gk
  br i1 %i.gn, label %sqlite3LogEstAdd.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gl, 31
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = add i16 %.0271, 1
  br label %sqlite3LogEstAdd.exit361

bb.ax:                                            ; preds = %bb.av
  %i.gr = sub nsw i32 %i.gk, %i.gl
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !229
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add i16 %.0271, %i.gv
  br label %sqlite3LogEstAdd.exit361

bb.ay:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gx = add nsw i32 %i.gk, 49
  %i.gy = icmp slt i32 %i.gx, %i.gl
  br i1 %i.gy, label %sqlite3LogEstAdd.exit361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gk, 31
  %i.ha = icmp slt i32 %i.gz, %i.gl
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = add i16 %i.gj, 1
  br label %sqlite3LogEstAdd.exit361

bb.bb:                                            ; preds = %bb.az
  %i.hc = sub nsw i32 %i.gl, %i.gk
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !229
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add i16 %i.gj, %i.hg
  br label %sqlite3LogEstAdd.exit361

sqlite3LogEstAdd.exit361:                         ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb
  %.0.i360 = phi i16 [ %i.hh, %bb.bb ], [ %i.gq, %bb.aw ], [ %i.gw, %bb.ax ], [ %.0271, %bb.au ], [ %i.hb, %bb.ba ], [ %i.gj, %bb.ay ] ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0275421, i64 22
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !4304
  %i.hk = add i16 %i.hj, %.pre                    ; 3 uses
  %i.hl = or i64 %i.fa, %i.ew
  %i.hm = load i8, ptr %i.es, align 2, !tbaa !4468 ; 2 uses
  %i.hn = icmp slt i8 %i.hm, 0
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %sqlite3LogEstAdd.exit361
  store i64 0, ptr %i.a, align 8, !tbaa !19
  %i.ho = load ptr, ptr %i.cp, align 8, !tbaa !3625
  %i.hp = load i16, ptr %i.dy, align 4, !tbaa !332
  %i.hq = call fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef nonnull %0, ptr noundef %i.ho, ptr noundef %.1279434, i16 noundef zeroext %i.hp, i16 noundef zeroext %i.ei, ptr noundef nonnull %.0275421, ptr noundef %i.a)
  br label %bb.be

bb.bd:                                            ; preds = %sqlite3LogEstAdd.exit361
  %i.hr = load i64, ptr %i.et, align 8, !tbaa !4473
  store i64 %i.hr, ptr %i.a, align 8, !tbaa !19
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0270 = phi i8 [ %i.hq, %bb.bc ], [ %i.hm, %bb.bd ] ; 6 uses
  %i.hs = sext i8 %.0270 to i32                   ; 2 uses
  %i.ht = icmp sgt i8 %.0270, -1
  %i.hu = icmp sgt i32 %.0298, %i.hs
  %or.cond350 = and i1 %i.ht, %i.hu
  br i1 %or.cond350, label %bb.bf, label %bb.bx

bb.bf:                                            ; preds = %bb.be
  %i.hv = zext nneg i8 %.0270 to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0273371, i64 %i.hv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !332 ; 2 uses
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.hz = load ptr, ptr %i.dz, align 8, !tbaa !3957
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !3035
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !24
  %i.id = add nsw i32 %i.ic, 59
  %i.ie = sdiv i32 %i.id, 30                      ; 4 uses
  %i.if = sext i32 %i.ie to i64                   ; 3 uses
  %i.ig = icmp ult i32 %i.ie, 8
  br i1 %i.ig, label %bb.bh, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.bg
  %i.ih = icmp ugt i32 %i.ie, 255
  br i1 %i.ih, label %.lr.ph.i.i, label %.preheader21.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ii = icmp samesign ult i32 %i.ie, 2
  br i1 %i.ii, label %sqlite3LogEst.exit.i, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.bh, %.lr.ph34.i.i
  %.033.i.i = phi i16 [ %i.ij, %.lr.ph34.i.i ], [ 40, %bb.bh ]
  %.01432.i.i = phi i64 [ %i.ik, %.lr.ph34.i.i ], [ %i.if, %bb.bh ] ; 2 uses
  %i.ij = add i16 %.033.i.i, -10                  ; 2 uses
  %i.ik = shl nuw nsw i64 %.01432.i.i, 1          ; 2 uses
  %i.il = icmp ult i64 %.01432.i.i, 4
  br i1 %i.il, label %.lr.ph34.i.i, label %.loopexit.i.i, !llvm.loop !1342

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.if, %.preheader23.i.i ], [ %i.io, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.in, %.lr.ph.i.i ] ; 2 uses
  %i.im = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.im, label %.lr.ph29.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.in, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.io, %.lr.ph.i.i ], [ %i.if, %.preheader23.i.i ] ; 2 uses
  %i.in = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.io = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ip = icmp ugt i64 %.11524.i.i, 4095
  br i1 %i.ip, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1343

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.iq, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ir, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.iq = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ir = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.is = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.is, label %.lr.ph29.i.i, label %.loopexit.i.i, !llvm.loop !1344

.loopexit.i.i:                                    ; preds = %.lr.ph29.i.i, %.lr.ph34.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ik, %.lr.ph34.i.i ], [ %i.ir, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.ij, %.lr.ph34.i.i ], [ %i.iq, %.lr.ph29.i.i ]
  %i.it = and i64 %.317.i.i, 7
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !332
  %i.iw = add i16 %.3.i.i, -10
  %i.ix = add i16 %i.iw, %i.iv
  br label %sqlite3LogEst.exit.i

sqlite3LogEst.exit.i:                             ; preds = %.loopexit.i.i, %bb.bh
  %.018.i.i = phi i16 [ %i.ix, %.loopexit.i.i ], [ 0, %bb.bh ]
  %i.iy = add i16 %.018.i.i, %1                   ; 2 uses
  %.not.i362 = icmp eq i8 %.0270, 0               ; 2 uses
  br i1 %.not.i362, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %sqlite3LogEst.exit.i
  %i.iz = sub nuw nsw i32 %.0298, %i.hs
  %i.ja = mul nuw nsw i32 %i.iz, 100
  %i.jb = sdiv i32 %i.ja, %.0298                  ; 4 uses
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = icmp ult i32 %i.jb, 8
  br i1 %i.jd, label %bb.bj, label %.preheader23.i29.i

.preheader23.i29.i:                               ; preds = %bb.bi
  %i.je = icmp ugt i32 %i.jb, 255
  br i1 %i.je, label %.lr.ph.i40.i, label %.preheader21.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.jf = icmp samesign ult i32 %i.jb, 2
  br i1 %i.jf, label %sqlite3LogEst.exit46.i, label %.lr.ph34.i43.i

.lr.ph34.i43.i:                                   ; preds = %bb.bj, %.lr.ph34.i43.i
  %.033.i44.i = phi i16 [ %i.jg, %.lr.ph34.i43.i ], [ 40, %bb.bj ]
  %.01432.i45.i = phi i64 [ %i.jh, %.lr.ph34.i43.i ], [ %i.jc, %bb.bj ] ; 2 uses
  %i.jg = add i16 %.033.i44.i, -10                ; 2 uses
  %i.jh = shl nuw nsw i64 %.01432.i45.i, 1        ; 2 uses
  %i.ji = icmp ult i64 %.01432.i45.i, 4
  br i1 %i.ji, label %.lr.ph34.i43.i, label %.loopexit.i33.i, !llvm.loop !1342

.preheader21.i30.i:                               ; preds = %.lr.ph.i40.i, %.preheader23.i29.i
  %.115.lcssa.i31.i = phi i64 [ %i.jc, %.preheader23.i29.i ], [ %i.jl, %.lr.ph.i40.i ] ; 3 uses
  %.1.lcssa.i32.i = phi i16 [ 40, %.preheader23.i29.i ], [ %i.jk, %.lr.ph.i40.i ] ; 2 uses
  %i.jj = icmp samesign ugt i64 %.115.lcssa.i31.i, 15
  br i1 %i.jj, label %.lr.ph29.i37.i, label %.loopexit.i33.i

.lr.ph.i40.i:                                     ; preds = %.preheader23.i29.i, %.lr.ph.i40.i
  %.125.i41.i = phi i16 [ %i.jk, %.lr.ph.i40.i ], [ 40, %.preheader23.i29.i ]
  %.11524.i42.i = phi i64 [ %i.jl, %.lr.ph.i40.i ], [ %i.jc, %.preheader23.i29.i ] ; 2 uses
  %i.jk = add nuw nsw i16 %.125.i41.i, 40         ; 2 uses
  %i.jl = lshr i64 %.11524.i42.i, 4               ; 2 uses
  %i.jm = icmp ugt i64 %.11524.i42.i, 4095
  br i1 %i.jm, label %.lr.ph.i40.i, label %.preheader21.i30.i, !llvm.loop !1343

.lr.ph29.i37.i:                                   ; preds = %.preheader21.i30.i, %.lr.ph29.i37.i
  %.228.i38.i = phi i16 [ %i.jn, %.lr.ph29.i37.i ], [ %.1.lcssa.i32.i, %.preheader21.i30.i ]
  %.21627.i39.i = phi i64 [ %i.jo, %.lr.ph29.i37.i ], [ %.115.lcssa.i31.i, %.preheader21.i30.i ] ; 2 uses
  %i.jn = add nuw nsw i16 %.228.i38.i, 10         ; 2 uses
  %i.jo = lshr i64 %.21627.i39.i, 1               ; 2 uses
  %i.jp = icmp samesign ugt i64 %.21627.i39.i, 31
  br i1 %i.jp, label %.lr.ph29.i37.i, label %.loopexit.i33.i, !llvm.loop !1344

.loopexit.i33.i:                                  ; preds = %.lr.ph29.i37.i, %.lr.ph34.i43.i, %.preheader21.i30.i
  %.317.i34.i = phi i64 [ %.115.lcssa.i31.i, %.preheader21.i30.i ], [ %i.jh, %.lr.ph34.i43.i ], [ %i.jo, %.lr.ph29.i37.i ]
  %.3.i35.i = phi i16 [ %.1.lcssa.i32.i, %.preheader21.i30.i ], [ %i.jg, %.lr.ph34.i43.i ], [ %i.jn, %.lr.ph29.i37.i ]
  %i.jq = and i64 %.317.i34.i, 7
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !332
  %i.jt = add i16 %.3.i35.i, -76
  %i.ju = add i16 %i.jt, %i.js
  br label %sqlite3LogEst.exit46.i

sqlite3LogEst.exit46.i:                           ; preds = %.loopexit.i33.i, %bb.bj
  %.018.i36.i = phi i16 [ %i.ju, %.loopexit.i33.i ], [ -66, %bb.bj ]
  %i.jv = add i16 %.018.i36.i, %i.iy
  br label %bb.bk

bb.bk:                                            ; preds = %sqlite3LogEst.exit46.i, %sqlite3LogEst.exit.i
  %.0.i363 = phi i16 [ %i.jv, %sqlite3LogEst.exit46.i ], [ %i.iy, %sqlite3LogEst.exit.i ] ; 2 uses
  %i.jw = load i16, ptr %i.dy, align 4, !tbaa !332
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = and i32 %i.jx, 16384
  %.not25.i = icmp eq i32 %i.jy, 0
  br i1 %.not25.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %spec.select.v.i = select i1 %.not.i362, i16 10, i16 16
  %spec.select.i364 = add i16 %.0.i363, %spec.select.v.i
  %i.jz = load i16, ptr %i.ea, align 2, !tbaa !332
  %spec.select28.i = tail call i16 @llvm.smin.i16(i16 %i.jz, i16 range(i16 0, -32767) %1)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ka = and i32 %i.jx, 256
  %i.kb = icmp ne i32 %i.ka, 0
  %or.cond.i365 = and i1 %i.eb, %i.kb
  %spec.select27.i = select i1 %or.cond.i365, i16 %i.ec, i16 %1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.022.i = phi i16 [ %spec.select27.i, %bb.bm ], [ %spec.select28.i, %bb.bl ] ; 4 uses
  %.2.i = phi i16 [ %.0.i363, %bb.bm ], [ %spec.select.i364, %bb.bl ]
  %i.kc = icmp slt i16 %.022.i, 11
  br i1 %i.kc, label %whereSortingCost.exit, label %.preheader23.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.bn
  %i.kd = zext nneg i16 %.022.i to i64            ; 3 uses
  %i.ke = icmp samesign ugt i16 %.022.i, 255
  br i1 %i.ke, label %.lr.ph.i.i.i, label %.preheader21.i.i.i

.preheader21.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader23.i.i.i
  %.115.lcssa.i.i.i = phi i64 [ %i.kd, %.preheader23.i.i.i ], [ %.lcssa35, %.lr.ph.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i16 [ 40, %.preheader23.i.i.i ], [ %.lcssa36, %.lr.ph.i.i.i ] ; 2 uses
  %i.kf = icmp samesign ugt i64 %.115.lcssa.i.i.i, 15
  br i1 %i.kf, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader23.i.i.i
  %i.kg = lshr i64 %i.kd, 4
  %i.kh = icmp ugt i16 %.022.i, 4095              ; 2 uses
  %i.ki = lshr i64 %i.kd, 8
  %.lcssa36 = select i1 %i.kh, i16 120, i16 80
  %.lcssa35 = select i1 %i.kh, i64 %i.ki, i64 %i.kg
  br label %.preheader21.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %.preheader21.i.i.i, %.lr.ph29.i.i.i
  %.228.i.i.i = phi i16 [ %i.kj, %.lr.ph29.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ]
  %.21627.i.i.i = phi i64 [ %i.kk, %.lr.ph29.i.i.i ], [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ] ; 2 uses
  %i.kj = add nuw nsw i16 %.228.i.i.i, 10         ; 2 uses
  %i.kk = lshr i64 %.21627.i.i.i, 1               ; 2 uses
  %i.kl = icmp samesign ugt i64 %.21627.i.i.i, 31
  br i1 %i.kl, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i, !llvm.loop !1344

sqlite3LogEst.exit.i.i:                           ; preds = %.lr.ph29.i.i.i, %.preheader21.i.i.i
  %.317.i.i.i = phi i64 [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kk, %.lr.ph29.i.i.i ]
  %.3.i.i.i = phi i16 [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kj, %.lr.ph29.i.i.i ]
  %i.km = and i64 %.317.i.i.i, 7
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !332
  %i.kp = add i16 %.3.i.i.i, -43
  %i.kq = add i16 %i.kp, %i.ko
  br label %whereSortingCost.exit

whereSortingCost.exit:                            ; preds = %bb.bn, %sqlite3LogEst.exit.i.i
  %i.kr = phi i16 [ %i.kq, %sqlite3LogEst.exit.i.i ], [ 0, %bb.bn ]
  %i.ks = add i16 %i.kr, %.2.i                    ; 2 uses
  store i16 %i.ks, ptr %i.hw, align 2, !tbaa !332
  br label %bb.bo

bb.bo:                                            ; preds = %whereSortingCost.exit, %bb.bf
  %i.kt = phi i16 [ %i.ks, %whereSortingCost.exit ], [ %i.hx, %bb.bf ] ; 5 uses
  %i.ku = sext i16 %.0.i360 to i32                ; 6 uses
  %i.kv = sext i16 %i.kt to i32                   ; 6 uses
  %.not.i366 = icmp slt i16 %.0.i360, %i.kt
  br i1 %.not.i366, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kw = add nsw i32 %i.kv, 49
  %i.kx = icmp slt i32 %i.kw, %i.ku
  br i1 %i.kx, label %sqlite3LogEstAdd.exit368, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ky = add nsw i32 %i.kv, 31
  %i.kz = icmp slt i32 %i.ky, %i.ku
  br i1 %i.kz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.la = add i16 %.0.i360, 1
  br label %sqlite3LogEstAdd.exit368

bb.bs:                                            ; preds = %bb.bq
  %i.lb = sub nsw i32 %i.ku, %i.kv
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !229
  %i.lf = zext i8 %i.le to i16
  %i.lg = add i16 %.0.i360, %i.lf
  br label %sqlite3LogEstAdd.exit368

bb.bt:                                            ; preds = %bb.bo
  %i.lh = add nsw i32 %i.ku, 49
  %i.li = icmp slt i32 %i.lh, %i.kv
  br i1 %i.li, label %sqlite3LogEstAdd.exit368, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lj = add nsw i32 %i.ku, 31
  %i.lk = icmp slt i32 %i.lj, %i.kv
  br i1 %i.lk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ll = add i16 %i.kt, 1
  br label %sqlite3LogEstAdd.exit368

bb.bw:                                            ; preds = %bb.bu
  %i.lm = sub nsw i32 %i.kv, %i.ku
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !229
  %i.lq = zext i8 %i.lp to i16
  %i.lr = add i16 %i.kt, %i.lq
  br label %sqlite3LogEstAdd.exit368

sqlite3LogEstAdd.exit368:                         ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.0.i367 = phi i16 [ %i.lr, %bb.bw ], [ %i.la, %bb.br ], [ %i.lg, %bb.bs ], [ %.0.i360, %bb.bp ], [ %i.ll, %bb.bv ], [ %i.kt, %bb.bt ]
  %i.ls = add i16 %.0.i367, 3
  br label %bb.by

bb.bx:                                            ; preds = %bb.be
  %i.lt = add i16 %.0.i360, -2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %sqlite3LogEstAdd.exit368
  %.0272 = phi i16 [ %i.ls, %sqlite3LogEstAdd.exit368 ], [ %.0.i360, %bb.bx ] ; 5 uses
  %.1 = phi i16 [ %.0.i360, %sqlite3LogEstAdd.exit368 ], [ %i.lt, %bb.bx ] ; 4 uses
  %i.lu = icmp sgt i32 %.1284420, 0
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.by, %bb.ca
  %.0276403 = phi ptr [ %i.mc, %bb.ca ], [ %.0280450, %bb.by ] ; 12 uses
  %.0306402 = phi i32 [ %i.mb, %bb.ca ], [ 0, %bb.by ]
end_hunk_2
begin_hunk_3_@fts5MultiIterNew:bb.a
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %.lr.ph104.split
  %.2.lcssa = phi i32 [ %.176102, %.lr.ph104.split ], [ %i.ki, %._crit_edge.split.loopexit ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.073103, i64 16 ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.by
  br i1 %i.kk, label %.lr.ph104.split, label %fts5IterSetOutputCb.exit.thread, !llvm.loop !7165

bb.bo:                                            ; preds = %bb.z
  %i.kl = icmp sgt i32 %.0, 0
  br i1 %i.kl, label %.lr.ph, label %fts5IterSetOutputCb.exit.thread

.lr.ph:                                           ; preds = %bb.bo
  %i.km = zext nneg i32 %6 to i64
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kp = zext nneg i32 %.0 to i64                ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv110 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next111, %bb.bp ] ; 2 uses
  %indvars.iv = phi i64 [ %i.kp, %.lr.ph ], [ %indvars.iv.next, %bb.bp ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !6696
  %i.kr = getelementptr inbounds nuw [56 x i8], ptr %i.kq, i64 %indvars.iv.next
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [128 x i8], ptr %i.af, i64 %indvars.iv110
  tail call fastcc void @fts5SegIterInit(ptr noundef nonnull %0, ptr noundef %i.kr, ptr noundef %i.ks)
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %i.kp
  br i1 %exitcond.not, label %fts5IterSetOutputCb.exit.thread, label %bb.bp, !llvm.loop !7167

fts5IterSetOutputCb.exit.thread:                  ; preds = %bb.bp, %._crit_edge.split, %._crit_edge.split.us.us, %bb.bo, %fts5SegIterHashInit.exit
  %.pr92.pr = load i32, ptr %i.a, align 4, !tbaa !6358
  %i.kt = icmp eq i32 %.pr92.pr, 0
  br i1 %i.kt, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFinishSetup(ptr noundef nonnull %0, ptr noundef nonnull %i.aa)
  br label %bb.br

.thread:                                          ; preds = %sqlite3_realloc64.exit.thread.i.i, %bb.k, %fts5IterSetOutputCb.exit, %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFree(ptr noundef nonnull %i.aa)
  store ptr null, ptr %8, align 8, !tbaa !6759
  br label %bb.br

bb.br:                                            ; preds = %fts5MultiIterAlloc.exit.thread, %bb.bq, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexFlush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [63 x i32], align 16              ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.Fts5SegWriter, align 8      ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !6685 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.j, ptr %i.k, align 4, !tbaa !6358
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !6683
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !6686
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.db, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6659 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #59
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.r = tail call fastcc ptr @fts5StructureRead(ptr noundef nonnull %0), !inline_history !7168 ; 11 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !6514
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !6357 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %fts5StructureInvalidate.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fts5StructureRelease(ptr noundef nonnull %i.t), !inline_history !7168
  store ptr null, ptr %i.s, align 8, !tbaa !6357
  br label %fts5StructureInvalidate.exit.i

fts5StructureInvalidate.exit.i:                   ; preds = %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !6674
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %fts5AllocateSegid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %fts5StructureInvalidate.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 17 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %fts5AllocateSegid.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24
  %i.aa = icmp sgt i32 %i.z, 1999
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 13, ptr %i.v, align 4, !tbaa !6358
  br label %fts5AllocateSegid.exit.thread.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %i.e, i8 0, i64 252, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader32.lr.ph.i.i, label %.preheader31.i.i.preheader

.preheader32.lr.ph.i.i:                           ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %wide.trip.count39.i.i = zext nneg i32 %i.ac to i64
  br label %.preheader32.i.i

.preheader32.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader32.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ 0, %.preheader32.lr.ph.i.i ], [ %indvars.iv.next37.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv36.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6515 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader32.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !6696
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 8, !tbaa !6697
  %i.an = add i32 %i.am, -1                       ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.an, 2000
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.an, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.an, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.k, !llvm.loop !7169

._crit_edge.i.i:                                  ; preds = %bb.m, %.preheader32.i.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %.preheader31.i.i.preheader, label %.preheader32.i.i, !llvm.loop !7170

.preheader31.i.i.preheader:                       ; preds = %._crit_edge.i.i, %bb.j
  br label %.preheader31.i.i

.preheader31.i.i:                                 ; preds = %.preheader31.i.i.preheader, %.preheader31.i.i
  %indvars.iv41.i.i = phi i64 [ %indvars.iv.next42.i.i, %.preheader31.i.i ], [ 0, %.preheader31.i.i.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv41.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1
  br i1 %i.ax, label %.preheader31.i.i, label %.preheader.i.i, !llvm.loop !7171

.preheader.i.i:                                   ; preds = %.preheader31.i.i, %.preheader.i.i
  %.028.i.i = phi i32 [ %i.ba, %.preheader.i.i ], [ 0, %.preheader31.i.i ] ; 3 uses
  %i.ay = shl nuw i32 1, %.028.i.i
  %i.az = and i32 %i.ay, %i.aw
  %.not.i191.i = icmp eq i32 %i.az, 0
  %i.ba = add nuw nsw i32 %.028.i.i, 1
  br i1 %.not.i191.i, label %fts5AllocateSegid.exit.i, label %.preheader.i.i, !llvm.loop !7172

fts5AllocateSegid.exit.i:                         ; preds = %.preheader.i.i
  %i.bb = trunc nuw nsw i64 %indvars.iv41.i.i to i32
  %i.bc = shl nuw nsw i32 %i.bb, 5
  %i.bd = or disjoint i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %.028.i.i        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #59
  %i.bf = load ptr, ptr %0, align 8, !tbaa !6427  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 196
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !6479 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 116
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !6391
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 232
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !6730
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.be), !inline_history !7168
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.bn = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %fts5AllocateSegid.exit.i
  %i.bp = tail call fastcc i32 @sqlite3Fts5HashScanInit(ptr noundef %i.q, ptr noundef null, i32 noundef 0), !inline_history !7168 ; 2 uses
  store i32 %i.bp, ptr %i.v, align 4, !tbaa !6358
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = getelementptr i8, ptr %i.q, i64 24      ; 3 uses
  br i1 %i.bq, label %.lr.ph270.i, label %.critedge.i

.lr.ph270.i:                                      ; preds = %bb.n
  %i.bs = icmp ne i32 %i.bl, 0                    ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bv = xor i1 %i.bs, true
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bj, 1                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.val190.pr.i = load ptr, ptr %i.br, align 8, !tbaa !7149 ; 2 uses
  %.not259.i29 = icmp eq ptr %.val190.pr.i, null
  br i1 %.not259.i29, label %.critedge.i, label %sqlite3Fts5HashScanEntry.exit.i

sqlite3Fts5HashScanEntry.exit.i:                  ; preds = %.lr.ph270.i, %bb.ce
  %.val190.i30 = phi ptr [ %i.kq, %bb.ce ], [ %.val190.pr.i, %.lr.ph270.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 48 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7150 ; 6 uses
  tail call fastcc void @fts5HashAddPoslistSize(ptr noundef nonnull readonly %i.q, ptr noundef nonnull %.val190.i30, ptr noundef null)
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !7151
  %reass.sub.i.i = sub i32 %i.cg, %i.cc
  %i.ch = add i32 %reass.sub.i.i, -48             ; 4 uses
  br i1 %i.bs, label %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i, label %bb.o

sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i: ; preds = %sqlite3Fts5HashScanEntry.exit.i
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !6358
  br label %.thread.i

bb.o:                                             ; preds = %sqlite3Fts5HashScanEntry.exit.i
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cc, ptr noundef nonnull %i.ca), !inline_history !7168
  %i.ci = load i32, ptr %i.v, align 4, !tbaa !6358
  %.not176.i = icmp eq i32 %i.ci, 0
  br i1 %.not176.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.bt, align 8, !tbaa !6439 ; 2 uses
  %i.ck = load i32, ptr %i.bu, align 8, !tbaa !6439
  %i.cl = add i32 %i.cj, %i.ch                    ; 2 uses
  %i.cm = add i32 %i.cl, %i.ck
  %.not177.not.i = icmp sgt i32 %i.bh, %i.cm
  br i1 %.not177.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !6445
  %i.co = sext i32 %i.cj to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  %i.cq = sext i32 %i.ch to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 1 %i.ce, i64 %i.cq, i1 false)
  store i32 %i.cl, ptr %i.bt, align 8, !tbaa !6439
  %.pr.i = load i32, ptr %i.v, align 4, !tbaa !6358
  br label %.loopexit262.i

.thread.i:                                        ; preds = %bb.p, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i
  %i.cr = phi i32 [ %.pre.i, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i ], [ 0, %bb.p ] ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = icmp sgt i32 %i.ch, 0
  %i.cu = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph.i, label %.loopexit262.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.cd
  %.0156269.i = phi i32 [ %.5.i, %bb.cd ], [ 0, %.thread.i ] ; 2 uses
  %.0157268.i = phi i64 [ %.1158.i, %bb.cd ], [ 0, %.thread.i ] ; 4 uses
  %.0159267.i = phi i64 [ %i.db, %bb.cd ], [ 0, %.thread.i ]
  %.0160266.i = phi i32 [ %.2162.i, %bb.cd ], [ %i.bw, %.thread.i ] ; 5 uses
  %.0241265.i = phi i32 [ %.2243.i, %bb.cd ], [ %i.ch, %.thread.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #59
  %i.cv = sext i32 %.0156269.i to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ce, i64 %i.cv
  %i.cx = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.h), !inline_history !7168
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = add nsw i32 %.0156269.i, %i.cy          ; 13 uses
  %i.da = load i64, ptr %i.h, align 8, !tbaa !19
  %i.db = add i64 %i.da, %.0159267.i              ; 14 uses
  br i1 %i.bs, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i
  br i1 %i.bx, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp slt i32 %i.cz, %.0241265.i
  br i1 %i.dc, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.dd = sext i32 %i.cz to i64
  %i.de = getelementptr inbounds i8, ptr %i.ce, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !229
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.dh = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i64 noundef %i.db), !inline_history !7168
  %.not181.i = icmp eq i32 %i.dh, 0
  br i1 %.not181.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.di = add nsw i32 %i.cz, 1                    ; 4 uses
  %i.dj = icmp slt i32 %i.di, %.0241265.i
  br i1 %i.dj, label %bb.w, label %bb.cd, !llvm.loop !7173

bb.w:                                             ; preds = %bb.v
  %i.dk = sext i32 %i.di to i64
  %i.dl = getelementptr inbounds i8, ptr %i.ce, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !229
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.x, label %bb.cd, !llvm.loop !7173

bb.x:                                             ; preds = %bb.w
  %i.do = add nsw i32 %i.cz, 2
  br label %bb.ad

bb.y:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.cz to i64
  %i.dq = getelementptr inbounds i8, ptr %i.ce, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !229
  %i.ds = and i8 %i.dr, 1
  %.not178.i = icmp eq i8 %i.ds, 0
  br i1 %.not178.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.ca, i32 noundef %i.cc, i64 noundef %i.db), !inline_history !7168
  %.not179.i = icmp eq i32 %i.dt, 0
  br i1 %.not179.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.du = load i32, ptr %i.v, align 4, !tbaa !6358
  %.not180.i = icmp eq i32 %i.du, 0
  br i1 %.not180.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i8, ptr %i.dq, align 1, !tbaa !229
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dx = add nsw i32 %i.cz, 1
  br label %bb.cd, !llvm.loop !7173

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.s, %.lr.ph.i
  %.1242.i = phi i32 [ 0, %bb.x ], [ %.0241265.i, %bb.u ], [ %.0241265.i, %bb.t ], [ %.0241265.i, %bb.s ], [ %.0241265.i, %bb.y ], [ %.0241265.i, %bb.ab ], [ %.0241265.i, %bb.z ], [ %.0241265.i, %.lr.ph.i ] ; 5 uses
  %.1.i = phi i32 [ %i.do, %bb.x ], [ %i.cz, %bb.u ], [ %i.cz, %bb.t ], [ %i.cz, %bb.s ], [ %i.cz, %bb.y ], [ %i.cz, %bb.ab ], [ %i.cz, %bb.z ], [ %i.cz, %.lr.ph.i ] ; 9 uses
  %i.dy = load i32, ptr %i.v, align 4, !tbaa !6358
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = icmp eq i32 %.0160266.i, 0
  %or.cond.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cc, ptr noundef nonnull %i.ca), !inline_history !7168
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1161.i = phi i32 [ 1, %bb.ae ], [ %.0160266.i, %bb.ad ] ; 3 uses
  %i.eb = load i8, ptr %i.by, align 1, !tbaa !7174
  %.not182.i = icmp eq i8 %i.eb, 0
  br i1 %.not182.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr %i.bm, align 8, !tbaa !6445 ; 3 uses
  %i.ed = load i32, ptr %i.bt, align 8, !tbaa !6439 ; 4 uses
  %i.ee = lshr i32 %i.ed, 8
  %i.ef = trunc i32 %i.ee to i8
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !229
  %i.eg = trunc i32 %i.ed to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !229
  %i.ei = sext i32 %i.ed to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ec, i64 %i.ei ; 4 uses
  %i.ek = icmp ult i64 %i.db, 128
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.el = trunc nuw nsw i64 %i.db to i8
  store i8 %i.el, ptr %i.ej, align 1, !tbaa !229
end_hunk_3
begin_hunk_4_@fts5IndexMerge:bb.a
  %i.bj = extractelement <2 x i64> %.lcssa132, i64 0
  %i.bk = mul nsw i64 %i.bj, 100
  %i.bl = sdiv i64 %i.bk, %i.bh
  %i.bm = trunc i64 %i.bl to i32                  ; 3 uses
  %.not37.i = icmp sle i32 %i.ab, %i.bm
  %i.bn = icmp slt i32 %.0317.i, %i.bm
  %or.cond.i = select i1 %.not37.i, i1 %i.bn, i1 false ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv14.i to i32
  %.134.i = select i1 %or.cond.i, i32 %i.bo, i32 %.0335.i
  %.1.i = select i1 %or.cond.i, i32 %i.bm, i32 %.0317.i
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.g
  %.235.i = phi i32 [ %.134.i, %bb.j ], [ %.0335.i, %._crit_edge.i ], [ %.0335.i, %bb.g ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.j ], [ %.0317.i, %._crit_edge.i ], [ %.0317.i, %bb.g ]
  %i.bp = load i32, ptr %i.ae, align 8, !tbaa !6693
  %.not38.i = icmp ne i32 %i.bp, 0
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count17.i
  %or.cond24.i = select i1 %.not38.i, i1 true, i1 %exitcond18.not.i
  br i1 %or.cond24.i, label %fts5IndexFindDeleteMerge.exit, label %bb.g, !llvm.loop !7312

fts5IndexFindDeleteMerge.exit:                    ; preds = %._crit_edge.thread.i
  %i.bq = icmp slt i32 %.235.i, 0
  br i1 %i.bq, label %.critedge, label %fts5IndexFindDeleteMerge.exit.thread53

fts5IndexFindDeleteMerge.exit.thread53:           ; preds = %.loopexit, %fts5IndexFindDeleteMerge.exit
  %.555 = phi i32 [ %.235.i, %fts5IndexFindDeleteMerge.exit ], [ %.435, %.loopexit ] ; 3 uses
  call fastcc void @fts5IndexMergeLevel(ptr noundef %0, ptr noundef %i.b, i32 noundef %.555, ptr noundef nonnull %i.a)
  %i.br = load i32, ptr %i.d, align 4, !tbaa !6358
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %fts5IndexFindDeleteMerge.exit.thread53
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !6514 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = zext nneg i32 %.555 to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !6693
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i32 %.555, 1
  call fastcc void @fts5StructurePromote(ptr noundef nonnull %0, i32 noundef %i.bz, ptr noundef nonnull %i.bt)
  br label %thread-pre-split

.critedge:                                        ; preds = %bb.f, %bb.e, %fts5IndexFindDeleteMerge.exit, %.lr.ph78, %.lr.ph78.preheader, %thread-pre-split..critedge.loopexit_crit_edge, %bb.a
  %i.ca = phi ptr [ %i.c, %bb.a ], [ %.pre.pre, %thread-pre-split..critedge.loopexit_crit_edge ], [ %.pre.pre94116, %.lr.ph78.preheader ], [ %.pre.pre94, %.lr.ph78 ], [ %.pre.pre94119, %fts5IndexFindDeleteMerge.exit ], [ %.pre.pre94119, %bb.e ], [ %.pre.pre94119, %bb.f ]
  %.037.lcssa = phi i32 [ 0, %bb.a ], [ 1, %thread-pre-split..critedge.loopexit_crit_edge ], [ 0, %.lr.ph78.preheader ], [ 1, %.lr.ph78 ], [ %.03777117, %fts5IndexFindDeleteMerge.exit ], [ %.03777117, %bb.e ], [ %.03777117, %bb.f ]
  store ptr %i.ca, ptr %1, align 8, !tbaa !6514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.037.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexMergeLevel(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [63 x i32], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %struct.Fts5SegWriter, align 8      ; 21 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !6514   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = getelementptr [16 x i8], ptr %i.d, i64 %i.e ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store ptr null, ptr %i.b, align 8, !tbaa !6759
  %.not = icmp ne ptr %3, null                    ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.i = load ptr, ptr %0, align 8, !tbaa !6427
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %i.l = load i32, ptr %i.f, align 8, !tbaa !6693 ; 2 uses
  %.not133 = icmp eq i32 %i.l, 0
  br i1 %.not133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6696
  %i.p = getelementptr i8, ptr %i.f, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6515
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [56 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -56      ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !6697
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %i.u)
  %i.v = getelementptr i8, ptr %i.s, i64 -48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !6700
  %i.x = add nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !7218
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %i.z, align 8, !tbaa !7220
  %.phi.trans.insert = getelementptr i8, ptr %i.f, i64 20
  %.pre263 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !6515
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6358 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %fts5AllocateSegid.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !24
  %i.af = icmp sgt i32 %i.ae, 1999
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 13, ptr %i.aa, align 4, !tbaa !6358
  br label %fts5AllocateSegid.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %i.a, i8 0, i64 252, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader32.lr.ph.i, label %.preheader31.i.preheader

.preheader32.lr.ph.i:                             ; preds = %bb.h
  %wide.trip.count39.i = zext nneg i32 %i.ah to i64
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge.i, %.preheader32.lr.ph.i
  %indvars.iv36.i = phi i64 [ 0, %.preheader32.lr.ph.i ], [ %indvars.iv.next37.i, %._crit_edge.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv36.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !6515 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader32.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !6696
  %wide.trip.count.i = zext nneg i32 %i.al to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !6697
  %i.ar = add i32 %i.aq, -1                       ; 3 uses
  %or.cond.i = icmp ult i32 %i.ar, 2000
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = and i32 %i.ar, 31
  %i.at = shl nuw i32 1, %i.as
  %i.au = lshr i32 %i.ar, 5
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24
  %i.ay = or i32 %i.ax, %i.at
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !7169

._crit_edge.i:                                    ; preds = %bb.k, %.preheader32.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %.preheader31.i.preheader, label %.preheader32.i, !llvm.loop !7170

.preheader31.i.preheader:                         ; preds = %._crit_edge.i, %bb.h
  br label %.preheader31.i

.preheader31.i:                                   ; preds = %.preheader31.i.preheader, %.preheader31.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %.preheader31.i ], [ 0, %.preheader31.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv41.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !24 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  br i1 %i.bb, label %.preheader31.i, label %.preheader.i, !llvm.loop !7171

.preheader.i:                                     ; preds = %.preheader31.i, %.preheader.i
  %.028.i = phi i32 [ %i.be, %.preheader.i ], [ 0, %.preheader31.i ] ; 3 uses
  %i.bc = shl nuw i32 1, %.028.i
  %i.bd = and i32 %i.bc, %i.ba
  %.not.i = icmp eq i32 %i.bd, 0
  %i.be = add nuw nsw i32 %.028.i, 1
  br i1 %.not.i, label %bb.l, label %.preheader.i, !llvm.loop !7172

bb.l:                                             ; preds = %.preheader.i
  %i.bf = trunc nuw nsw i64 %indvars.iv41.i to i32
  %i.bg = shl nuw nsw i32 %i.bf, 5
  %i.bh = or disjoint i32 %i.bg, 1
  %i.bi = add nuw nsw i32 %i.bh, %.028.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %fts5AllocateSegid.exit

fts5AllocateSegid.exit:                           ; preds = %bb.e, %bb.g, %bb.l
  %i.bj = phi i32 [ 13, %bb.g ], [ 0, %bb.l ], [ %i.ab, %bb.e ]
  %.1.i = phi i32 [ 0, %bb.g ], [ %i.bi, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = icmp eq i32 %2, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %fts5AllocateSegid.exit
  tail call fastcc void @fts5StructureAddLevel(ptr noundef nonnull %i.aa, ptr noundef %1)
  %i.bo = load ptr, ptr %1, align 8, !tbaa !6514
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %fts5AllocateSegid.exit
  %i.bp = phi i32 [ %.pre, %bb.m ], [ %i.bj, %fts5AllocateSegid.exit ]
  %.0 = phi ptr [ %i.bo, %bb.m ], [ %i.c, %fts5AllocateSegid.exit ] ; 5 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.bs = sext i32 %2 to i64
  %i.bt = getelementptr [16 x i8], ptr %i.br, i64 %i.bs ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 20     ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !6515
  %i.bx = getelementptr i8, ptr %i.bt, i64 24     ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !6696
  %i.bz = tail call i32 @sqlite3_initialize(), !inline_history !7313
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %sqlite3_realloc64.exit.i, label %sqlite3_realloc64.exit.thread.i

sqlite3_realloc64.exit.i:                         ; preds = %bb.o
  %i.ca = add nsw i32 %i.bw, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, 56
  %i.cd = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.by, i64 noundef %i.cc), !inline_history !7313 ; 3 uses
  %.not.i145 = icmp eq ptr %i.cd, null
  br i1 %.not.i145, label %sqlite3_realloc64.exit.thread.i, label %fts5StructureExtendLevel.exit

sqlite3_realloc64.exit.thread.i:                  ; preds = %sqlite3_realloc64.exit.i, %bb.o
  store i32 7, ptr %i.aa, align 4, !tbaa !24
  br label %.critedge

fts5StructureExtendLevel.exit:                    ; preds = %sqlite3_realloc64.exit.i
  %i.ce = load i32, ptr %i.bv, align 4, !tbaa !6515
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [56 x i8], ptr %i.cd, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i8 0, i64 56, i1 false)
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !6696
  %.pr = load i32, ptr %i.aa, align 4, !tbaa !6358
  %.not134 = icmp eq i32 %.pr, 0
  br i1 %.not134, label %bb.p, label %.critedge

bb.p:                                             ; preds = %fts5StructureExtendLevel.exit
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.e ; 4 uses
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %.1.i)
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !6696
  %i.cj = load i32, ptr %i.bv, align 4, !tbaa !6515 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [56 x i8], ptr %i.ci, i64 %i.ck ; 6 uses
  %i.cm = add nsw i32 %i.cj, 1                    ; 3 uses
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !6515
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !6699
  store i32 %.1.i, ptr %i.cl, align 8, !tbaa !6697
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !24
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !6515 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19
  %.not135 = icmp eq i64 %i.cu, 0
  br i1 %.not135, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !6696 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !6701
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !6701
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [56 x i8], ptr %i.cw, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !6702
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !6702
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.d
  %i.df = phi i32 [ %.pre263, %bb.d ], [ %i.cm, %bb.p ], [ %i.cm, %bb.q ]
  %.1127 = phi ptr [ %i.m, %bb.d ], [ %i.bu, %bb.p ], [ %i.bu, %bb.q ]
  %.1125 = phi i32 [ %i.l, %bb.d ], [ %i.cs, %bb.p ], [ %i.cs, %bb.q ] ; 9 uses
  %.1123 = phi ptr [ %i.t, %bb.d ], [ %i.cl, %bb.p ], [ %i.cl, %bb.q ] ; 2 uses
  %.1116 = phi ptr [ %i.f, %bb.d ], [ %i.ch, %bb.p ], [ %i.ch, %bb.q ] ; 5 uses
  %.1 = phi ptr [ %i.c, %bb.d ], [ %.0, %bb.p ], [ %.0, %bb.q ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1127, i64 4 ; 2 uses
  %i.dh = icmp eq i32 %i.df, 1
  br i1 %i.dh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = add nsw i32 %2, 2
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dm = phi i1 [ false, %bb.r ], [ %i.dl, %bb.s ]
  call fastcc void @fts5MultiIterNew(ptr noundef nonnull %0, ptr noundef nonnull %.1, i32 noundef 32, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %2, i32 noundef %.1125, ptr noundef %i.b)
  %i.dn = getelementptr i8, ptr %0, i64 60        ; 26 uses
  %.val144249 = load i32, ptr %i.dn, align 4, !tbaa !6358
  %.not.i146250 = icmp eq i32 %.val144249, 0
  %.pre266 = load ptr, ptr %i.b, align 8, !tbaa !6759 ; 2 uses
  br i1 %.not.i146250, label %fts5MultiIterEof.exit.lr.ph, label %sqlite3Fts5BufferAppendVarint.exit179

fts5MultiIterEof.exit.lr.ph:                      ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 22 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 10 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dw = icmp eq i32 %i.k, 1
  br label %fts5MultiIterEof.exit

fts5MultiIterEof.exit:                            ; preds = %fts5MultiIterEof.exit.lr.ph, %bb.cb
  %i.dx = phi ptr [ %.pre266, %fts5MultiIterEof.exit.lr.ph ], [ %i.ld, %bb.cb ] ; 6 uses
  %.0120254 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.3.ph, %bb.cb ] ; 2 uses
  %.sroa.14.0253 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.14.1, %bb.cb ] ; 8 uses
  %.sroa.9.0252 = phi i32 [ 0, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.9.1, %bb.cb ] ; 5 uses
  %.sroa.0.0251 = phi ptr [ null, %fts5MultiIterEof.exit.lr.ph ], [ %.sroa.0.1, %bb.cb ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.dz = load i8, ptr %i.dy, align 4, !tbaa !6891
  %.not245 = icmp eq i8 %i.dz, 0
  br i1 %.not245, label %bb.u, label %sqlite3Fts5BufferAppendVarint.exit179

bb.u:                                             ; preds = %fts5MultiIterEof.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 104
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !6892
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !6894
  %i.ef = zext i16 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [128 x i8], ptr %i.ea, i64 %i.ef ; 5 uses
  %i.eh = getelementptr inbounds nuw [128 x i8], ptr %i.dx, i64 %i.ef ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 200
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 208
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !7268 ; 7 uses
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !7269 ; 3 uses
  %.not136 = icmp eq i32 %i.ek, %.sroa.9.0252
  br i1 %.not136, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.em = icmp slt i32 %.sroa.9.0252, 1
  br i1 %i.em, label %sqlite3Fts5BufferSet.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = zext nneg i32 %.sroa.9.0252 to i64
  %bcmp = call i32 @bcmp(ptr %i.el, ptr %.sroa.0.0251, i64 %i.en)
  %.not137 = icmp eq i32 %bcmp, 0
  br i1 %.not137, label %sqlite3Fts5BufferSet.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.eo = load i32, ptr %i.do, align 4
  %i.ep = icmp sgt i32 %i.eo, %i.h
  %or.cond143 = select i1 %.not, i1 %i.ep, i1 false
  br i1 %or.cond143, label %sqlite3Fts5BufferAppendVarint.exit179, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i.i147 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i147, label %sqlite3Fts5BufferSet.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not14.i.i = icmp ugt i32 %i.ek, %.sroa.14.0253
  br i1 %.not14.i.i, label %bb.aa, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z
  %.pre.i = zext i32 %i.ek to i64
  br label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i = icmp eq i32 %.sroa.14.0253, 0
  %narrow.i.i.i = select i1 %.not.i.i.i, i32 64, i32 %.sroa.14.0253
  %spec.select.i.i.i = sext i32 %narrow.i.i.i to i64
  %i.eq = zext i32 %i.ek to i64                   ; 2 uses
  br label %bb.ab

end_hunk_4
begin_hunk_5_@geopolyRegularFunc:bb.a
  %i.ba = fcmp ole double %.0.i.i79, 0.000000e+00
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %sqlite3_result_error_nomem.exit, label %bb.x

bb.x:                                             ; preds = %sqlite3_value_int.exit
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 1000) ; 6 uses
  %i.bc = tail call i32 @sqlite3_initialize(), !inline_history !398
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.x
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %i.be = add nsw i32 %i.bd, -2
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 40
  %i.bi = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bh), !inline_history !398 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %sqlite3_malloc64.exit.thread, label %.lr.ph

sqlite3_malloc64.exit.thread:                     ; preds = %bb.x, %sqlite3_malloc64.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !290   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !164
  %i.bn = and i16 %i.bm, -28672
  %.not.i.i86 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i86, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_malloc64.exit.thread
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.bk)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !290
  br label %sqlite3VdbeMemSetNull.exit.i

bb.z:                                             ; preds = %sqlite3_malloc64.exit.thread
  store i16 1, ptr %i.bl, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.z, %bb.y
  %i.bo = phi ptr [ %.pre.i, %bb.y ], [ %i.bk, %bb.z ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.bp, align 4, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !159 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 103 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !552
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %sqlite3_result_error_nomem.exit

bb.aa:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !553
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.ab, label %sqlite3_result_error_nomem.exit

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.bs, align 1, !tbaa !552
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 220
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !554
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 424
  store atomic volatile i32 1, ptr %i.cb monotonic, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 432 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !555
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !555
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 436
  store i16 0, ptr %i.cf, align 4, !tbaa !556
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 344 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !303 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ch, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.133), !inline_history !557
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !303 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i32 7, ptr %i.cj, align 8, !tbaa !304
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !558 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i87, %.lr.ph.i.i ], [ %.018.i.i, %bb.ae ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !315
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !315
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.cn, align 8, !tbaa !304
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i87 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !558 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i87, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !559

.lr.ph:                                           ; preds = %sqlite3_malloc64.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  store i8 1, ptr %i.co, align 4, !tbaa !229
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  store i8 0, ptr %i.cp, align 1, !tbaa !229
  %i.cq = lshr i32 %i.bb, 8
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !229
  %i.ct = trunc i32 %i.bb to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 7
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !229
  %i.cv = uitofp nneg i32 %i.bb to double
  %i.cw = fneg double %.0.i.i79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %i.cy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %.0.i.i79, i64 1
  %i.da = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.db = insertelement <2 x double> %i.da, double %.0.i.i74, i64 1
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fmul nnan double %i.dd, f0x401921FB54442D18
  %i.df = fdiv double %i.de, %i.cv                ; 2 uses
  %i.dg = fadd double %i.df, f0xBFF921FB54442D18
  %i.dh = tail call fastcc double @geopolySine(double noundef %i.dg)
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  %i.dj = tail call fastcc double @geopolySine(double noundef %i.df)
  %i.dk = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 1
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.dl, <2 x double> %i.db)
  %i.dn = fptrunc <2 x double> %i.dm to <2 x float>
  store <2 x float> %i.dn, ptr %i.di, align 4, !tbaa !8101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.af, !llvm.loop !8109

._crit_edge:                                      ; preds = %bb.af
  %i.do = shl nuw nsw i32 %i.bb, 3
  %i.dp = or disjoint i32 %i.do, 4
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.co, i32 noundef %i.dp, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.dq = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i88 = icmp eq i32 %i.dq, 0
  br i1 %.not.i88, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.dr = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i89, label %sqlite3_mutex_enter.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.ds(ptr noundef nonnull %i.dr) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ah, %bb.ag
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.du = tail call i32 %i.dt(ptr noundef nonnull %i.bi) #59, !inline_history !271
  %i.dv = sext i32 %i.du to i64
  %i.dw = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.dx = sub nsw i64 %i.dw, %i.dv
  store i64 %i.dx, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.dz = add nsw i64 %i.dy, -1
  store i64 %i.dz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ea(ptr noundef nonnull %i.bi) #59, !inline_history !272
  %i.eb = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.eb, null
  br i1 %.not.i4.i, label %sqlite3_result_error_nomem.exit, label %bb.ai

bb.ai:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ec(ptr noundef nonnull %i.eb) #59, !inline_history !273
  br label %sqlite3_result_error_nomem.exit

bb.aj:                                            ; preds = %._crit_edge
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ed(ptr noundef nonnull %i.bi) #59, !inline_history !272
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.s, %bb.v, %bb.u, %bb.aj, %bb.ai, %sqlite3_mutex_enter.exit.i, %bb.ae, %bb.ad, %bb.aa, %sqlite3VdbeMemSetNull.exit.i, %sqlite3_value_int.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyCcwFunc(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !290
  %i.b = tail call fastcc ptr @geopolyFuncParam(ptr noundef %0, ptr noundef %i.a, ptr noundef null) ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8099 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 1
  %3 = add i32 %i.c, -1                           ; 4 uses
  br i1 %i.d, label %.lr.ph.i, label %geopolyArea.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.01920.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ac, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !8101
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !8101 ; 2 uses
  %i.l = fsub float %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !8101
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !8101 ; 2 uses
  %i.q = fadd float %i.n, %i.p
  %i.r = fmul float %i.l, %i.q
  %i.s = fpext float %i.r to double
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double 5.000000e-01, double %.01920.i)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %.idx25.i.1 = shl nuw nsw i64 %indvars.iv.next.i.1, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx25.i.1 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !8101
  %i.w = fsub float %i.k, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !8101
  %i.z = fadd float %i.p, %i.y
  %i.aa = fmul float %i.w, %i.z
  %i.ab = fpext float %i.aa to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double 5.000000e-01, double %i.t) ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.c, !llvm.loop !8102

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.01920.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.epil ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !8101
  %indvars.iv.next.i.epil = shl i64 %indvars.iv.i.epil.init, 3
  %i.af = getelementptr i8, ptr %i.e, i64 %indvars.iv.next.i.epil ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !8101
  %i.ai = fsub float %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !8101
  %i.al = getelementptr i8, ptr %i.af, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !8101
  %i.an = fadd float %i.ak, %i.am
  %i.ao = fmul float %i.ai, %i.an
  %i.ap = fpext float %i.ao to double
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double 5.000000e-01, double %.01920.i.epil.init)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.ac, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.aq, %.epil.preheader ]
  %i.ar = shl nuw i32 %i.c, 1
  %i.as = add i32 %i.ar, -2
  %i.at = zext nneg i32 %i.as to i64
  br label %geopolyArea.exit

geopolyArea.exit:                                 ; preds = %bb.b, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi double [ %.lcssa, %._crit_edge.loopexit.i ], [ 0.000000e+00, %bb.b ]
  %.0.lcssa.i = phi i64 [ %i.at, %._crit_edge.loopexit.i ], [ 0, %bb.b ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.0.lcssa.i ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !8101
  %i.ax = load float, ptr %i.au, align 4, !tbaa !8101
  %i.ay = fsub float %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !8101
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !8101
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = fmul float %i.ay, %i.bd
  %i.bf = fpext float %i.be to double
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double 5.000000e-01, double %.019.lcssa.i)
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = icmp sgt i32 %i.c, 2
  %or.cond = and i1 %i.bh, %i.bi
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %geopolyArea.exit
  %i.bj = zext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv35 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next36, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv35, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx ; 2 uses
  %.idx43 = shl nuw nsw i64 %indvars.iv, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx43 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.bk, align 4, !tbaa !8101
  %i.bn = load <2 x float>, ptr %i.bl, align 4, !tbaa !8101
  store <2 x float> %i.bn, ptr %i.bk, align 4, !tbaa !8101
  store <2 x float> %i.bm, ptr %i.bl, align 4, !tbaa !8101
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next36, %indvars.iv.next
  br i1 %i.bo, label %.lr.ph, label %.loopexit, !llvm.loop !8110

.loopexit:                                        ; preds = %.lr.ph, %geopolyArea.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bq = shl nsw i32 %i.c, 3
  %i.br = or disjoint i32 %i.bq, 4
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.bp, i32 noundef %i.br, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.bs = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bt = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.bu(ptr noundef nonnull %i.bt) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.bw = tail call i32 %i.bv(ptr noundef nonnull %i.b) #59, !inline_history !271
  %i.bx = sext i32 %i.bw to i64
  %i.by = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.bz = sub nsw i64 %i.by, %i.bx
  store i64 %i.bz, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.cb = add nsw i64 %i.ca, -1
  store i64 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.cc(ptr noundef nonnull %i.b) #59, !inline_history !272
  %i.cd = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.cd, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.ce(ptr noundef nonnull %i.cd) #59, !inline_history !273
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %.loopexit
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.cf(ptr noundef nonnull %i.b) #59, !inline_history !272
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.g, %bb.f, %sqlite3_mutex_enter.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyBBoxStep(ptr nofree noundef captures(address_is_null) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca [4 x %union.RtreeCoord], align 16   ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.b = load ptr, ptr %2, align 8, !tbaa !290
  %i.c = call fastcc ptr @geopolyBBox(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !24
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.i = load i16, ptr %i.h, align 4, !tbaa !164
  %i.j = icmp sgt i16 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call fastcc ptr @createAggContext(ptr noundef nonnull readonly %0, i32 noundef 20)
  br label %sqlite3_aggregate_context.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !291
  br label %sqlite3_aggregate_context.exit

sqlite3_aggregate_context.exit:                   ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 7 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %sqlite3_aggregate_context.exit
  %i.n = load i32, ptr %.0.i, align 4, !tbaa !8111
  %i.o = icmp eq i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %.0.i, align 4, !tbaa !8111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.q = load float, ptr %3, align 16             ; 2 uses
  %i.r = load float, ptr %i.p, align 4, !tbaa !229
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.q, ptr %i.p, align 4, !tbaa !229
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !229
  %i.x = fcmp ogt float %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.u, ptr %i.v, align 4, !tbaa !229
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load float, ptr %i.y, align 8            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !229
  %i.ac = fcmp olt float %i.z, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.z, ptr %i.aa, align 4, !tbaa !229
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ae = load float, ptr %i.ad, align 4          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !229
  %i.ah = fcmp ogt float %i.ae, %i.ag
  br i1 %i.ah, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  store float %i.ae, ptr %i.af, align 4, !tbaa !229
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.n, %bb.f, %sqlite3_aggregate_context.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @geopolyBBoxFinal(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !164
  %i.e = icmp sgt i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @createAggContext(ptr noundef nonnull readonly %0, i32 noundef 0)
  br label %sqlite3_aggregate_context.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !291
  br label %sqlite3_aggregate_context.exit

sqlite3_aggregate_context.exit:                   ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = icmp eq ptr %.0.i, null
  br i1 %i.i, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_aggregate_context.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.k = tail call fastcc ptr @geopolyBBox(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef null) ; 6 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.k, align 4, !tbaa !8099
  %i.n = shl nsw i32 %i.m, 3
  %i.o = or disjoint i32 %i.n, 4
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.o, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  %i.p = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
end_hunk_5
begin_hunk_6_@geopolyBBoxFinal:bb.a
bb.i:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ac(ptr noundef nonnull %i.k) #59, !inline_history !272
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.i, %bb.h, %sqlite3_mutex_enter.exit.i, %bb.d, %sqlite3_aggregate_context.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @geopolyFuncParam(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !164  ; 5 uses
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw i64 1, %i.e                      ; 3 uses
  %i.g = and i64 %i.f, 281474976776193
  %.not75 = icmp eq i64 %i.g, 0
  br i1 %.not75, label %sqlite3_value_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i16 %i.c, 2
  %.not.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.j = load i8, ptr %i.i, align 2, !tbaa !351
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !560
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.n = zext i16 %i.c to i32                     ; 3 uses
  %i.o = and i32 %i.n, 16
  %.not20.i.i = icmp eq i32 %i.o, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.thread.i.i
  %i.p = and i32 %i.n, 1024
  %.not22.i.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !560  ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %1, align 8, !tbaa !229
  %i.t = add nsw i32 %i.s, %i.r
  br label %sqlite3_value_bytes.exit

bb.g:                                             ; preds = %.thread.i.i
  %i.u = and i32 %i.n, 1
  %.not21.i.i = icmp eq i32 %i.u, 0
  br i1 %.not21.i.i, label %bb.h, label %sqlite3_value_bytes.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = tail call fastcc i32 @valueBytes(ptr noundef nonnull %1, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  %.0.i.i = phi i32 [ %i.m, %bb.d ], [ %i.r, %bb.e ], [ %i.t, %bb.f ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = icmp sgt i32 %.0.i.i, 27
  br i1 %i.w, label %bb.i, label %sqlite3_value_bytes.exit.sqlite3_value_bytes.exit.thread_crit_edge

sqlite3_value_bytes.exit.sqlite3_value_bytes.exit.thread_crit_edge: ; preds = %sqlite3_value_bytes.exit
  %.pre = load i16, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %.pre130 = and i16 %.pre, 63
  %.pre131 = zext nneg i16 %.pre130 to i64
  %.pre133 = shl nuw i64 1, %.pre131
  br label %sqlite3_value_bytes.exit.thread

bb.i:                                             ; preds = %sqlite3_value_bytes.exit
  %i.x = tail call ptr @sqlite3_value_blob(ptr noundef nonnull %1) ; 7 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %.not63 = icmp eq ptr %0, null
  br i1 %.not63, label %sqlite3_result_error_nomem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %0, align 8, !tbaa !290    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !164
  %i.ac = and i16 %i.ab, -28672
  %.not.i.i64 = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i64, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.z)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !290
  br label %sqlite3VdbeMemSetNull.exit.i

bb.m:                                             ; preds = %bb.k
  store i16 1, ptr %i.aa, align 4, !tbaa !164
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.m, %bb.l
  %i.ad = phi ptr [ %.pre.i, %bb.l ], [ %i.z, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.ae, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !159 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 103 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !552
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.n, label %sqlite3_result_error_nomem.exit

bb.n:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !553
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.o, label %sqlite3_result_error_nomem.exit

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.ah, align 1, !tbaa !552
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 220
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !554
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 424
  store atomic volatile i32 1, ptr %i.aq monotonic, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 432 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !555
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !555
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 436
  store i16 0, ptr %i.au, align 4, !tbaa !556
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 344 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !303 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.aw, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.133), !inline_history !557
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !303 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 7, ptr %i.ay, align 8, !tbaa !304
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !558 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i65, %.lr.ph.i.i ], [ %.018.i.i, %bb.r ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !315
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !315
  %i.bc = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.bc, align 8, !tbaa !304
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i65 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !558 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i65, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !559

bb.s:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !229
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !229
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8                ; 2 uses
  %i.bl = or disjoint i32 %i.bk, %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !229 ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = or disjoint i32 %i.bl, %i.bo            ; 4 uses
  %i.bq = load i8, ptr %i.x, align 1, !tbaa !229
  %switch = icmp ult i8 %i.bq, 2
  br i1 %switch, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.br = shl nuw nsw i32 %i.bp, 3
  %i.bs = or disjoint i32 %i.br, 4
  %i.bt = icmp eq i32 %i.bs, %.0.i.i
  br i1 %i.bt, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call i32 @sqlite3_initialize(), !inline_history !398
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit:                            ; preds = %bb.u
  %i.bv = shl nuw nsw i32 %i.bp, 1
  %i.bw = add nsw i32 %i.bv, -2
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 40
  %i.ca = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bz), !inline_history !398 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %sqlite3_malloc64.exit.thread, label %bb.y

sqlite3_malloc64.exit.thread:                     ; preds = %bb.u, %sqlite3_malloc64.exit
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3_malloc64.exit.thread
  store i32 7, ptr %2, align 4, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %sqlite3_malloc64.exit.thread
  %.not61 = icmp eq ptr %0, null
  br i1 %.not61, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @sqlite3_result_error_nomem(ptr noundef nonnull %0)
  br label %bb.aa

bb.y:                                             ; preds = %sqlite3_malloc64.exit
  store i32 %i.bp, ptr %i.ca, align 4, !tbaa !8099
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 3 uses
  %i.cd = zext nneg i32 %.0.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cc, ptr nonnull align 1 %i.x, i64 %i.cd, i1 false)
  %i.ce = load i8, ptr %i.x, align 1, !tbaa !229
  %.not59 = icmp eq i8 %i.ce, 1
  br i1 %.not59, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.y
  %.not103 = icmp eq i32 %i.bp, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cg = or disjoint i32 %i.bg, %i.bk
  %i.ch = or disjoint i32 %i.cg, %i.bo            ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ch to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 16777214
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.z ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.z ]
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx ; 2 uses
  %i.ck = load <8 x i8>, ptr %i.cj, align 1, !tbaa !229
  %i.cl = shufflevector <8 x i8> %i.ck, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.cl, ptr %i.cj, align 1, !tbaa !229
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.next
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load <8 x i8>, ptr %i.cn, align 1, !tbaa !229
  %i.cp = shufflevector <8 x i8> %i.co, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.cp, ptr %i.cn, align 1, !tbaa !229
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.z, !llvm.loop !8113

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod224 = trunc i8 %i.bn to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %.idx.epil = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.epil ; 2 uses
  %i.cr = load <8 x i8>, ptr %i.cq, align 1, !tbaa !229
  %i.cs = shufflevector <8 x i8> %i.cr, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %i.cs, ptr %i.cq, align 1, !tbaa !229
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.ct = load i8, ptr %i.cc, align 4, !tbaa !229
  %i.cu = xor i8 %i.ct, 1
  store i8 %i.cu, ptr %i.cc, align 4, !tbaa !229
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.y, %._crit_edge, %bb.x, %bb.w, %bb.t
  %.045 = phi ptr [ null, %bb.x ], [ null, %bb.w ], [ null, %bb.s ], [ null, %bb.t ], [ %i.ca, %._crit_edge ], [ %i.ca, %bb.y ] ; 2 uses
  %.not62 = icmp eq ptr %2, null
  br i1 %.not62, label %sqlite3_result_error_nomem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %2, align 4, !tbaa !24
  br label %sqlite3_result_error_nomem.exit

sqlite3_value_bytes.exit.thread:                  ; preds = %sqlite3_value_bytes.exit.sqlite3_value_bytes.exit.thread_crit_edge, %bb.g, %bb.a
  %.pre-phi134 = phi i64 [ %.pre133, %sqlite3_value_bytes.exit.sqlite3_value_bytes.exit.thread_crit_edge ], [ %i.f, %bb.g ], [ %i.f, %bb.a ]
  %i.cv = phi i16 [ %.pre, %sqlite3_value_bytes.exit.sqlite3_value_bytes.exit.thread_crit_edge ], [ %i.c, %bb.g ], [ %i.c, %bb.a ] ; 2 uses
  %i.cw = and i64 %.pre-phi134, 1125899907104772
  %.not76 = icmp eq i64 %i.cw, 0
  br i1 %.not76, label %bb.br, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_value_bytes.exit.thread
  %i.cx = and i16 %i.cv, 514
  %i.cy = icmp eq i16 %i.cx, 514
  br i1 %i.cy, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !351
  %i.db = icmp eq i8 %i.da, 1
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !291
  br label %sqlite3_value_text.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.de = and i16 %i.cv, 1
  %.not9.i.i = icmp eq i16 %i.de, 0
  br i1 %.not9.i.i, label %bb.ag, label %sqlite3_value_text.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.df = tail call fastcc ptr @valueToText(ptr noundef nonnull %1, i8 noundef zeroext 1), !inline_history !608
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.ae, %bb.ag
  %.0.i.i67 = phi ptr [ %i.dd, %bb.ae ], [ %i.df, %bb.ag ] ; 4 uses
  %i.dg = icmp eq ptr %.0.i.i67, null
  br i1 %i.dg, label %sqlite3_value_text.exit.thread, label %bb.ai

sqlite3_value_text.exit.thread:                   ; preds = %bb.af, %sqlite3_value_text.exit
  %.not58 = icmp eq ptr %2, null
  br i1 %.not58, label %sqlite3_result_error_nomem.exit, label %bb.ah

bb.ah:                                            ; preds = %sqlite3_value_text.exit.thread
  store i32 7, ptr %2, align 4, !tbaa !24
  br label %sqlite3_result_error_nomem.exit

bb.ai:                                            ; preds = %sqlite3_value_text.exit
  %i.dh = load i8, ptr %.0.i.i67, align 1, !tbaa !229 ; 2 uses
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !229
  %.not3.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not3.i.i, label %geopolySkipSpace.exit.i, label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %bb.ai, %.lr.ph.i.i68
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i.i68 ], [ %.0.i.i67, %bb.ai ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !229 ; 2 uses
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !229
  %.not.i.i69 = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i69, label %geopolySkipSpace.exit.i, label %.lr.ph.i.i68, !llvm.loop !8114

geopolySkipSpace.exit.i:                          ; preds = %.lr.ph.i.i68, %bb.ai
  %.sroa.0.5.i = phi ptr [ %.0.i.i67, %bb.ai ], [ %i.dm, %.lr.ph.i.i68 ]
  %.lcssa.i.i = phi i8 [ %i.dh, %bb.ai ], [ %i.dn, %.lr.ph.i.i68 ]
  %i.dr = icmp eq i8 %.lcssa.i.i, 91
  br i1 %i.dr, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %geopolySkipSpace.exit.i, %geopolySkipSpace.exit68.i
  %.sroa.0.5.pn.i = phi ptr [ %.sroa.0.10.i, %geopolySkipSpace.exit68.i ], [ %.sroa.0.5.i, %geopolySkipSpace.exit.i ]
  %.sroa.29.0.i = phi i32 [ %.sroa.29.3.i, %geopolySkipSpace.exit68.i ], [ 0, %geopolySkipSpace.exit.i ] ; 5 uses
  %.sroa.40.0.i = phi i32 [ %.sroa.40.1.i, %geopolySkipSpace.exit68.i ], [ 0, %geopolySkipSpace.exit.i ] ; 3 uses
  %.sroa.4899.0.i = phi ptr [ %.sroa.4899.2.i, %geopolySkipSpace.exit68.i ], [ null, %geopolySkipSpace.exit.i ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.5.pn.i, i64 1 ; 3 uses
  %i.ds = load i8, ptr %.sroa.0.0.i, align 1, !tbaa !229 ; 2 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !229
  %.not3.i49.i = icmp eq i8 %i.dv, 0
  br i1 %.not3.i49.i, label %geopolySkipSpace.exit53.i, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.preheader.i, %.lr.ph.i50.i
  %i.dw = phi ptr [ %i.dx, %.lr.ph.i50.i ], [ %.sroa.0.0.i, %.preheader.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !229 ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @geopolyIsSpace, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !229
  %.not.i51.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i51.i, label %geopolySkipSpace.exit53.i, label %.lr.ph.i50.i, !llvm.loop !8114

geopolySkipSpace.exit53.i:                        ; preds = %.lr.ph.i50.i, %.preheader.i
  %.sroa.0.6.i = phi ptr [ %.sroa.0.0.i, %.preheader.i ], [ %i.dx, %.lr.ph.i50.i ] ; 2 uses
  %.lcssa.i52.i = phi i8 [ %i.ds, %.preheader.i ], [ %i.dy, %.lr.ph.i50.i ]
  %i.ec = icmp eq i8 %.lcssa.i52.i, 91
  br i1 %i.ec, label %bb.aj, label %.thread127.i

bb.aj:                                            ; preds = %geopolySkipSpace.exit53.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.6.i, i64 1 ; 3 uses
  %.not.i70 = icmp slt i32 %.sroa.29.0.i, %.sroa.40.0.i
  br i1 %.not.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ee = tail call i32 @sqlite3_initialize(), !inline_history !8115
end_hunk_6
