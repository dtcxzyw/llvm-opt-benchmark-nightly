Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avidec?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@read_odml_index:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %.0115150.us, %i.bh
  %i.bp = icmp eq i32 %i.bf, 0
  %or.cond139.us = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond139.us, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.at, align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bq = icmp ne i64 %.0115150.us, %i.bh
  %i.br = icmp ne i32 %i.bk, 0
  %or.cond10.us = and i1 %i.bq, %i.br
  br i1 %or.cond10.us, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.au, align 8, !tbaa !54
  %i.bt = zext i1 %i.bj to i32
  %i.bu = tail call i32 @av_add_index_entry(ptr noundef %i.aa, i64 noundef %i.bh, i64 noundef %i.bs, i32 noundef %i.bk, i32 noundef 0, i32 noundef %i.bt) #12 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bv = load i32, ptr %i.av, align 4, !tbaa !55
  %.not.i.us = icmp eq i32 %i.bv, 0
  br i1 %.not.i.us, label %bb.q, label %.thread.us

bb.q:                                             ; preds = %bb.p
  %i.bw = load i32, ptr %i.aw, align 4, !tbaa !74 ; 2 uses
  %.not7.i.us = icmp eq i32 %i.bw, 0
  br i1 %.not7.i.us, label %.thread.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = zext nneg i32 %i.bk to i64
  %i.by = sext i32 %i.bw to i64                   ; 2 uses
  %i.bz = add nsw i64 %i.bx, -1
  %i.ca = add nsw i64 %i.bz, %i.by
  %i.cb = sdiv i64 %i.ca, %i.by
  %i.cc = trunc i64 %i.cb to i32
  br label %.thread.us

.thread.us:                                       ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.us = phi i32 [ %i.bk, %bb.p ], [ %i.cc, %bb.r ], [ 1, %bb.q ]
  %i.cd = sext i32 %.0.i.us to i64
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !54
  %i.cf = add nsw i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %i.au, align 8, !tbaa !54
  %i.cg = add nuw nsw i32 %.0117149.us, 1         ; 2 uses
  %exitcond154.not = icmp eq i32 %i.cg, %i.h
  br i1 %exitcond154.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !163

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ac
  %.0117149 = phi i32 [ %i.dm, %bb.ac ], [ 0, %.lr.ph ]
  %.0119148 = phi i64 [ %i.dl, %bb.ac ], [ %1, %.lr.ph ] ; 2 uses
  %i.ch = load i64, ptr %i.ap, align 8, !tbaa !164
  %i.ci = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.cj = icmp sgt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !164
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.split
  %i.cl = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cm = phi i64 [ %i.ck, %bb.s ], [ %i.cl, %bb.t ] ; 2 uses
  store i64 %i.cm, ptr %i.ap, align 8, !tbaa !164
  %i.cn = load i64, ptr %i.aq, align 8, !tbaa !165 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, %i.cm
  br i1 %i.co, label %.thread143, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = add nsw i64 %i.cn, 16
  store i64 %i.cp, ptr %i.aq, align 8, !tbaa !165
  %i.cq = tail call i64 @avio_rl64(ptr noundef %i.d) #12 ; 2 uses
  %i.cr = tail call i32 @avio_rl32(ptr noundef %i.d) #12 ; 0 uses
  %i.cs = tail call i32 @avio_rl32(ptr noundef %i.d) #12
  %i.ct = tail call i32 @avio_feof(ptr noundef %i.d) #12
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = icmp sgt i64 %i.cq, 9223372036854775799
  %or.cond12 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond12, label %.thread143, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.cx = load i32, ptr %i.ar, align 8, !tbaa !166
  %i.cy = icmp sgt i32 %i.cx, 1000
  br i1 %i.cy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.52) #12
  br label %.thread143

bb.y:                                             ; preds = %bb.w
  %i.cz = add nsw i64 %i.cq, 8
  %i.da = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.cz, i32 noundef 0) #12
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %.thread143, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load i32, ptr %i.ar, align 8, !tbaa !166
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.ar, align 8, !tbaa !166
  %i.de = tail call fastcc i32 @read_odml_index(ptr noundef %0, i64 noundef %.0119148) ; 2 uses
  %i.df = load i32, ptr %i.ar, align 8, !tbaa !166
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.ar, align 8, !tbaa !166
  %i.dh = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.cw, i32 noundef 0) #12
  %i.di = icmp slt i64 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.53) #12
  br label %.thread143

bb.ab:                                            ; preds = %bb.z
  %i.dj = icmp sgt i32 %i.de, -1
  br i1 %i.dj, label %bb.ac, label %.thread143

bb.ac:                                            ; preds = %bb.ab
  %i.dk = sext i32 %i.cs to i64
  %i.dl = add nsw i64 %.0119148, %i.dk
  %i.dm = add nuw nsw i32 %.0117149, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dm, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.ac, %.thread.us, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 2, ptr %i.dn, align 8, !tbaa !77
  br label %.thread143

.thread143:                                       ; preds = %bb.ab, %bb.u, %bb.y, %bb.v, %bb.k, %bb.j, %bb.aa, %bb.x, %bb.e, %bb.f, %bb.c, %bb.b, %bb.a, %._crit_edge
  %.4 = phi i32 [ -1094995529, %bb.x ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1094995529, %bb.c ], [ -1094995529, %bb.e ], [ -1094995529, %bb.f ], [ -1, %bb.aa ], [ 0, %._crit_edge ], [ -1094995529, %bb.k ], [ -1094995529, %bb.j ], [ -1, %bb.y ], [ -1094995529, %bb.v ], [ -1094995529, %bb.u ], [ %i.de, %bb.ab ]
  ret i32 %.4
}

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @avi_load_index(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 9 uses
  %i.e = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35
  %i.h = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.g, i32 noundef 0) #12
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.loopexit42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8, !tbaa !35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.54, i64 noundef %i.j) #12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.af, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %.1, %bb.af ]    ; 3 uses
  %i.n = tail call i32 @avio_rl32(ptr noundef %i.d) #12
  %i.o = tail call i32 @avio_rl32(ptr noundef %i.d) #12 ; 7 uses
  %i.p = tail call i32 @avio_feof(ptr noundef %i.d) #12
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %.loopexit42

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #12 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %.loopexit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.o to i64                     ; 3 uses
  %i.t = xor i64 %i.s, 9223372036854775807
  %i.u = and i32 %i.o, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = sub nuw nsw i64 %i.t, %i.v
  %i.x = icmp samesign ugt i64 %i.q, %i.w
  br i1 %i.x, label %.loopexit42, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = and i64 %i.s, 1
  %i.z = add nuw nsw i64 %i.y, %i.s
  %i.aa = add nuw nsw i64 %i.z, %i.q
  switch i32 %i.n, label %avi_read_idx1.exit.thread40 [
    i32 829973609, label %bb.g
    i32 1414744396, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !28  ; 9 uses
  %1 = lshr i32 %i.o, 4
  %i.ad = icmp slt i32 %i.o, 16
  br i1 %i.ad, label %avi_read_idx1.exit.thread40, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i64 @avio_seek(ptr noundef %i.ac, i64 noundef 0, i32 noundef 1) #12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = tail call i64 @avio_seek(ptr noundef %i.ac, i64 noundef %i.ah, i32 noundef 0) #12 ; 0 uses
  %i.aj = tail call fastcc i32 @avi_sync(ptr noundef nonnull %0, i32 noundef 1)
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i64 @avio_seek(ptr noundef %i.ac, i64 noundef 0, i32 noundef 1) #12
  %i.am = add nsw i64 %i.al, -8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.083.i = phi i64 [ %i.am, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  store i32 -1, ptr %i.an, align 4, !tbaa !31
  %i.ao = tail call i64 @avio_seek(ptr noundef %i.ac, i64 noundef %i.ae, i32 noundef 0) #12 ; 0 uses
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !46
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !62
  %i.ax = icmp eq i32 %i.aw, 1397050701
  br i1 %i.ax, label %bb.l, label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.af, align 8, !tbaa !34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.k, %bb.j
  %.184.i = phi i64 [ 0, %bb.l ], [ %.083.i, %bb.k ], [ %.083.i, %bb.j ] ; 3 uses
  %.081.i = phi i64 [ %i.ay, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.az = icmp ne i64 %.184.i, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %bb.m

bb.m:                                             ; preds = %bb.y, %.lr.ph.i
  %.0116.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.y ] ; 3 uses
  %.182115.i = phi i64 [ %.081.i, %.lr.ph.i ], [ %.4.i, %bb.y ] ; 4 uses
  %.085114.i = phi i32 [ -1, %.lr.ph.i ], [ %.287.i, %bb.y ] ; 4 uses
  %.088113.i = phi i64 [ -1, %.lr.ph.i ], [ %.189.i, %bb.y ] ; 3 uses
  %.090112.i = phi i32 [ 1, %.lr.ph.i ], [ %.292.i, %bb.y ] ; 4 uses
  %.094111.i = phi i32 [ 0, %.lr.ph.i ], [ %i.db, %bb.y ] ; 2 uses
  %i.bb = tail call i32 @avio_feof(ptr noundef %i.ac) #12
  %.not102.i = icmp eq i32 %i.bb, 0
  br i1 %.not102.i, label %bb.n, label %avi_read_idx1.exit.thread40

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call i32 @avio_rl32(ptr noundef %i.ac) #12 ; 4 uses
  %i.bd = tail call i32 @avio_rl32(ptr noundef %i.ac) #12 ; 3 uses
  %i.be = tail call i32 @avio_rl32(ptr noundef %i.ac) #12
  %i.bf = zext i32 %i.be to i64                   ; 5 uses
  %i.bg = tail call i32 @avio_rl32(ptr noundef %i.ac) #12 ; 6 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.57, i32 noundef %.094111.i, i32 noundef %i.bc, i32 noundef %i.bd, i64 noundef %i.bf, i32 noundef %i.bg) #12
  %i.bh = and i32 %i.bc, 255
  %i.bi = mul nuw nsw i32 %i.bh, 10
  %i.bj = lshr i32 %i.bc, 8
  %i.bk = and i32 %i.bj, 255
  %i.bl = add nuw nsw i32 %i.bk, -528
  %i.bm = add nsw i32 %i.bl, %i.bi                ; 2 uses
  %i.bn = load i32, ptr %i.k, align 4, !tbaa !46
  %.not103.i = icmp ult i32 %i.bm, %i.bn
  br i1 %.not103.i, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !45 ; 3 uses
  %i.bu = and i32 %i.bc, -65536
  %or.cond106.i = icmp eq i32 %i.bu, 1668284416
  br i1 %or.cond106.i, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp ne i32 %.090112.i, 0
  %or.cond.i = select i1 %i.bv, i1 %i.az, i1 false
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = load i64, ptr %i.af, align 8, !tbaa !34
  %i.bx = add nsw i64 %i.bw, 4
  %.not104.i = icmp ne i64 %i.bx, %i.bf
  %i.by = add nuw nsw i64 %i.bf, 500
  %i.bz = icmp sgt i64 %i.by, %.184.i
  %or.cond108.i = select i1 %.not104.i, i1 true, i1 %i.bz
  %i.ca = sub nsw i64 %.184.i, %i.bf
  %.2.i = select i1 %or.cond108.i, i64 %i.ca, i64 %.182115.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.191.i = phi i32 [ 0, %bb.q ], [ %.090112.i, %bb.p ]
  %.3.i = phi i64 [ %.2.i, %bb.q ], [ %.182115.i, %bb.p ] ; 2 uses
  %i.cb = add nsw i64 %.3.i, %i.bf                ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !54
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.58, i32 noundef %i.bg, i64 noundef %i.cd) #12
  %i.ce = icmp eq i64 %.088113.i, %i.cb
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.ba, align 8, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cf = zext i32 %.085114.i to i64
  %i.cg = icmp ne i64 %i.cb, %i.cf
  %i.ch = icmp ne i32 %i.bg, 0
  %or.cond3.i = and i1 %i.ch, %i.cg
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = load i64, ptr %i.cc, align 8, !tbaa !54
  %i.cj = lshr i32 %i.bd, 4
  %.lobit.i = and i32 %i.cj, 1
  %i.ck = tail call i32 @av_add_index_entry(ptr noundef nonnull %i.br, i64 noundef %i.cb, i64 noundef %i.ci, i32 noundef %i.bg, i32 noundef 0, i32 noundef %.lobit.i) #12 ; 0 uses
  %i.cl = trunc i64 %i.cb to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.186.i = phi i32 [ %i.cl, %bb.u ], [ %.085114.i, %bb.t ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !55
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %bb.w, label %get_duration.exit.i

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 1076
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !74 ; 2 uses
  %.not7.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not7.i.i, label %get_duration.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = sext i32 %i.bg to i64
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %i.cs = add nsw i64 %i.cq, -1
  %i.ct = add nsw i64 %i.cs, %i.cr
  %i.cu = sdiv i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i32
  br label %get_duration.exit.i

get_duration.exit.i:                              ; preds = %bb.x, %bb.w, %bb.v
  %.0.i.i = phi i32 [ %i.bg, %bb.v ], [ %i.cv, %bb.x ], [ 1, %bb.w ]
  %i.cw = sext i32 %.0.i.i to i64
  %i.cx = load i64, ptr %i.cc, align 8, !tbaa !54
  %i.cy = add nsw i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %i.cc, align 8, !tbaa !54
  %i.cz = and i32 %i.bd, 16
  %i.da = or i32 %i.cz, %.0116.i
  br label %bb.y

bb.y:                                             ; preds = %get_duration.exit.i, %bb.o, %bb.n
  %.292.i = phi i32 [ %.090112.i, %bb.n ], [ %.090112.i, %bb.o ], [ %.191.i, %get_duration.exit.i ]
  %.189.i = phi i64 [ %.088113.i, %bb.n ], [ %.088113.i, %bb.o ], [ %i.cb, %get_duration.exit.i ]
  %.287.i = phi i32 [ %.085114.i, %bb.n ], [ %.085114.i, %bb.o ], [ %.186.i, %get_duration.exit.i ]
  %.4.i = phi i64 [ %.182115.i, %bb.n ], [ %.182115.i, %bb.o ], [ %.3.i, %get_duration.exit.i ]
  %.1.i = phi i32 [ %.0116.i, %bb.n ], [ %.0116.i, %bb.o ], [ %i.da, %get_duration.exit.i ] ; 2 uses
  %i.db = add nuw nsw i32 %.094111.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.m, !llvm.loop !167

._crit_edge.i:                                    ; preds = %bb.y
  %.not.i = icmp eq i32 %.1.i, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.dc = load i32, ptr %i.k, align 4, !tbaa !46  ; 2 uses
  %.not119.i = icmp eq i32 %i.dc, 0
  br i1 %.not119.i, label %.loopexit, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.preheader.i, %bb.aa
  %i.dd = phi i32 [ %i.do, %bb.aa ], [ %i.dc, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aa ], [ 0, %.preheader.i ] ; 2 uses
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 328
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !78
  %.not101.i = icmp eq i32 %i.di, 0
  br i1 %.not101.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph118.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 320
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !79
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = or i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !46
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph118.i
  %i.do = phi i32 [ %.pre.i, %bb.z ], [ %i.dd, %.lr.ph118.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next.i, %i.dp
  br i1 %i.dq, label %.lr.ph118.i, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.aa, %.preheader.i, %._crit_edge.i
  store i32 2, ptr %i.m, align 8, !tbaa !77
  br label %bb.af

bb.ab:                                            ; preds = %bb.f
  %i.dr = icmp ult i32 %i.o, 4
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.55, i32 noundef %i.o) #12
  br label %.loopexit42

bb.ad:                                            ; preds = %bb.ab
  %i.ds = tail call i32 @avio_rl32(ptr noundef %i.d) #12
  %i.dt = icmp eq i32 %i.ds, 1330007625
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = add i32 %i.o, -4
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call i32 @ff_read_riff_info(ptr noundef nonnull %0, i64 noundef %i.dv) #12 ; 0 uses
  br label %bb.af

avi_read_idx1.exit.thread40:                      ; preds = %bb.m, %bb.g, %bb.f
  %.not38 = icmp eq i32 %.0, 0
  br i1 %.not38, label %.loopexit42, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %avi_read_idx1.exit.thread40, %.loopexit
  %.1 = phi i32 [ 0, %.loopexit ], [ -1, %avi_read_idx1.exit.thread40 ], [ %.0, %bb.ae ], [ %.0, %bb.ad ]
  %i.dx = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.aa, i32 noundef 0) #12
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %.loopexit42, label %bb.c

.loopexit42:                                      ; preds = %bb.c, %bb.e, %bb.d, %avi_read_idx1.exit.thread40, %bb.af, %bb.ac, %bb.a
  %i.dz = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.e, i32 noundef 0) #12 ; 0 uses
  ret void
}

declare ptr @av_dict_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_index(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 2 uses
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %.loopexit
  %i.d = phi i32 [ %i.b, %.lr.ph37 ], [ %i.aj, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %.not = icmp eq i32 %i.i, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55   ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.0 = phi i32 [ %i.p, %.preheader ], [ %i.m, %bb.c ] ; 3 uses
  %i.o = icmp slt i32 %.0, 1024
  %i.p = shl nsw i32 %.0, 1
  br i1 %i.o, label %.preheader, label %bb.d, !llvm.loop !169

bb.d:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = ashr i32 %i.u, 2                         ; 2 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !82
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.aa = zext nneg i32 %.0 to i64                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03135 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.e ] ; 4 uses
  %i.ab = add nsw i64 %.03135, %i.s
  %i.ac = add nsw i64 %.03135, %i.y
  %i.ad = sub nsw i64 %i.w, %.03135
  %i.ae = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 %i.aa)
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = tail call i32 @av_add_index_entry(ptr noundef nonnull %i.g, i64 noundef %i.ab, i64 noundef %i.ac, i32 noundef %i.af, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  %i.ah = add nuw nsw i64 %.03135, %i.aa          ; 2 uses
  %i.ai = icmp slt i64 %i.ah, %i.w
  br i1 %i.ai, label %bb.e, label %.loopexit.loopexit, !llvm.loop !170

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.b, %bb.c
  %i.aj = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.d, %bb.d ], [ %i.d, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

declare void @ff_metadata_conv_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @av_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare i32 @av_exif_parse_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_exif_ifd_to_dict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_exif_free(ptr noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @avio_rl64(ptr noundef) local_unnamed_addr #2

declare i32 @av_add_index_entry(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @avi_sync(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@avi_sync:bb.a
  %or.cond68 = and i1 %i.ew, %i.ev
  %i.ex = icmp sgt i32 %i.eu, 47
  %or.cond205 = or i1 %i.ex, %or.cond68
  br i1 %or.cond205, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %.1, i64 28
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i, label %bb.ap, label %get_duration.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fa = getelementptr inbounds nuw i8, ptr %.1, i64 1076
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !74 ; 2 uses
  %.not7.i = icmp eq i32 %i.fb, 0
  br i1 %.not7.i, label %get_duration.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = sext i32 %i.v to i64
  %i.fd = sext i32 %i.fb to i64                   ; 2 uses
  %i.fe = add nsw i64 %i.fc, -1
  %i.ff = add nsw i64 %i.fe, %i.fd
  %i.fg = sdiv i64 %i.ff, %i.fd
  %i.fh = trunc i64 %i.fg to i32
  br label %get_duration.exit

get_duration.exit:                                ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.i219 = phi i32 [ %i.v, %bb.ao ], [ %i.fh, %bb.aq ], [ 1, %bb.ap ]
  %i.fi = sext i32 %.0.i219 to i64
  %i.fj = load i64, ptr %.1, align 8, !tbaa !56
  %i.fk = add nsw i64 %i.fj, %i.fi
  store i64 %i.fk, ptr %.1, align 8, !tbaa !56
  %i.fl = tail call i64 @avio_skip(ptr noundef %i.e, i64 noundef %i.ae) #12 ; 0 uses
  br label %.thread221

bb.ar:                                            ; preds = %bb.an, %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %.1180, ptr %i.fm, align 4, !tbaa !31
  %i.fn = add i32 %i.v, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.1, i64 12
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !84
  %i.fp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i32 %i.v, ptr %i.fp, align 8, !tbaa !83
  %.not201 = icmp eq i32 %i.v, 0
  br i1 %.not201, label %.thread221.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #12
  %i.fr = add nsw i64 %i.fq, -8                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.1174, i64 320
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !79 ; 2 uses
  %.not202 = icmp eq ptr %i.ft, null
  br i1 %.not202, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw i8, ptr %.1174, i64 328
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !78 ; 2 uses
  %.not203 = icmp eq i32 %i.fv, 0
  br i1 %.not203, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr [24 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !81
  %i.ga = icmp ult i64 %i.fz, %i.fr
  br i1 %i.ga, label %bb.av, label %.thread221.thread

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.gb = load i64, ptr %.1, align 8, !tbaa !56
  %i.gc = tail call i32 @av_add_index_entry(ptr noundef nonnull %.1174, i64 noundef %i.fr, i64 noundef %i.gb, i32 noundef %i.v, i32 noundef 0, i32 noundef 1) #12 ; 0 uses
  br label %.thread221.thread

.thread221:                                       ; preds = %get_duration.exit, %._crit_edge273, %bb.q, %bb.n, %bb.i, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 -1, i64 32, i1 false)
  %i.gd = tail call i64 @avio_seek(ptr noundef %i.e, i64 noundef 0, i32 noundef 1) #12
  %i.ge = tail call i32 @avio_feof(ptr noundef %i.e) #12
  %.not266 = icmp eq i32 %i.ge, 0
  br i1 %.not266, label %.preheader.lr.ph, label %._crit_edge

.thread225:                                       ; preds = %.thread221.thread228, %bb.r, %bb.ah, %.thread, %bb.k, %.preheader
  %i.gf = add nsw i64 %.0178267, 1
  %i.gg = tail call i32 @avio_feof(ptr noundef %i.e) #12
  %.not = icmp eq i32 %i.gg, 0
  br i1 %.not, label %.preheader, label %._crit_edge, !llvm.loop !173

._crit_edge:                                      ; preds = %.thread221, %.thread225, %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !176 ; 2 uses
  %.not195 = icmp eq i32 %i.gi, 0
  %. = select i1 %.not195, i32 -541478725, i32 %i.gi
  br label %.thread221.thread

.thread221.thread:                                ; preds = %bb.ai, %bb.ar, %bb.au, %bb.av, %._crit_edge
  %.5 = phi i32 [ %., %._crit_edge ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.ar ], [ 0, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.5
}

declare i32 @avio_rb32(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_mul_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_int2i(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_add_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_shr_i(i64, i64, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @av_div_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @av_cmp_i(i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_i2int(i64, i64) local_unnamed_addr #5

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #9

declare i32 @avpriv_dv_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_get_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avpriv_dv_produce_packet(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @av_index_search_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avpriv_find_start_code(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_read_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @avio_alloc_context(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_get_str16le(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_probe_input_format2(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare ptr @avformat_alloc_context() local_unnamed_addr #2

declare i32 @ff_copy_whiteblacklists(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avformat_open_input(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_parameters_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @avio_context_free(ptr noundef) local_unnamed_addr #2

declare void @avformat_close_input(ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_dv_ts_reset(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avformat_seek_file(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"AVProbeData", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24}
!12 = !{!5, !5, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!14 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!15 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!16 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!17 = !{!"any p2 pointer", !9, i64 0}
!18 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!19 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!20 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!24 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!26 = !{!"AVFormatContext", !13, i64 0, !14, i64 8, !15, i64 16, !9, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !18, i64 48, !6, i64 56, !19, i64 64, !6, i64 72, !20, i64 80, !10, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !10, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !21, i64 432, !10, i64 440, !9, i64 448, !9, i64 456, !21, i64 464, !10, i64 472}
!27 = !{!26, !9, i64 24}
!28 = !{!26, !16, i64 32}
!29 = !{!"p1 _ZTS14DVDemuxContext", !9, i64 0}
!30 = !{!"AVIContext", !13, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !29, i64 72, !6, i64 80, !21, i64 88, !21, i64 96, !6, i64 104, !21, i64 112}
!31 = !{!30, !6, i64 68}
!32 = !{!30, !21, i64 24}
!33 = !{!30, !21, i64 32}
!34 = !{!30, !21, i64 40}
!35 = !{!30, !21, i64 16}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!6, !6, i64 0}
!38 = !{!30, !6, i64 64}
!39 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!40 = !{!"AVRational", !6, i64 0, !6, i64 4}
!41 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!43 = !{!"AVPacket", !41, i64 0, !21, i64 8, !21, i64 16, !10, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !42, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !9, i64 80, !41, i64 88, !40, i64 96}
!44 = !{!"AVStream", !13, i64 0, !6, i64 8, !6, i64 12, !39, i64 16, !9, i64 24, !40, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !40, i64 72, !23, i64 80, !40, i64 88, !43, i64 96, !6, i64 200, !40, i64 204, !6, i64 212}
!45 = !{!44, !9, i64 24}
!46 = !{!26, !6, i64 44}
!47 = !{!26, !18, i64 48}
!48 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!30, !29, i64 72}
!51 = !{!"p1 _ZTS15AVFormatContext", !9, i64 0}
!52 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!53 = !{!"AVIStream", !21, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !6, i64 40, !6, i64 44, !5, i64 48, !6, i64 1072, !6, i64 1076, !51, i64 1080, !52, i64 1088, !41, i64 1096, !21, i64 1104}
!54 = !{!53, !21, i64 32}
!55 = !{!53, !6, i64 28}
!56 = !{!53, !21, i64 0}
!57 = !{!44, !39, i64 16}
!58 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!59 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !6, i64 24, !42, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !40, i64 80, !40, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !58, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!60 = !{!59, !6, i64 0}
!61 = !{!59, !6, i64 4}
!62 = !{!59, !6, i64 8}
!63 = !{!53, !6, i64 1072}
!64 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!65 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!66 = !{!"", !64, i64 0, !6, i64 8}
!67 = !{!"FFFrac", !21, i64 0, !21, i64 8, !21, i64 16}
!68 = !{!"p1 _ZTS12FFStreamInfo", !9, i64 0}
!69 = !{!"p1 _ZTS12AVIndexEntry", !9, i64 0}
!70 = !{!"p1 _ZTS15PacketListEntry", !9, i64 0}
!71 = !{!"p1 _ZTS20AVCodecParserContext", !9, i64 0}
!72 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!73 = !{!"FFStream", !44, i64 0, !51, i64 216, !6, i64 224, !64, i64 232, !6, i64 240, !65, i64 248, !6, i64 256, !66, i64 264, !6, i64 280, !6, i64 284, !67, i64 288, !68, i64 312, !69, i64 320, !6, i64 328, !6, i64 332, !21, i64 336, !21, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !21, i64 368, !21, i64 376, !21, i64 384, !6, i64 392, !21, i64 400, !21, i64 408, !21, i64 416, !6, i64 424, !6, i64 428, !5, i64 432, !5, i64 568, !5, i64 592, !21, i64 728, !5, i64 736, !5, i64 737, !40, i64 740, !11, i64 752, !70, i64 784, !21, i64 792, !6, i64 800, !6, i64 804, !6, i64 808, !71, i64 816, !52, i64 824, !6, i64 832, !6, i64 836, !21, i64 840, !21, i64 848, !72, i64 856}
!74 = !{!53, !6, i64 1076}
!75 = !{!"AVIOContext", !13, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !21, i64 104, !10, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !6, i64 144, !6, i64 148, !10, i64 152, !10, i64 160, !9, i64 168, !6, i64 176, !10, i64 184, !21, i64 192, !21, i64 200}
!76 = !{!10, !10, i64 0}
!77 = !{!30, !6, i64 56}
!78 = !{!73, !6, i64 328}
!79 = !{!73, !69, i64 320}
!80 = !{!"AVIndexEntry", !21, i64 0, !21, i64 8, !6, i64 16, !6, i64 16, !6, i64 20}
!81 = !{!80, !21, i64 0}
!82 = !{!80, !21, i64 8}
!83 = !{!53, !6, i64 8}
!84 = !{!53, !6, i64 12}
!85 = !{!44, !6, i64 68}
!86 = !{!53, !52, i64 1088}
!87 = !{!53, !51, i64 1080}
!88 = !{!30, !21, i64 48}
!89 = !{!53, !21, i64 1104}
!90 = !{!30, !21, i64 112}
!91 = !{!11, !10, i64 8}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36, !127, !128}
!95 = distinct !{!95, !129}
!96 = distinct !{!96, !36, !127}
!97 = distinct !{!97, !36}
!98 = distinct !{!98, !129}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !129}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36}
!110 = !{!30, !21, i64 8}
!111 = !{!30, !6, i64 104}
!112 = !{!30, !6, i64 60}
!113 = !{!44, !6, i64 12}
!114 = !{!53, !6, i64 20}
!115 = !{!53, !6, i64 24}
!116 = !{!26, !21, i64 104}
!117 = !{!53, !6, i64 16}
!118 = !{!44, !21, i64 56}
!119 = !{!44, !21, i64 40}
!120 = !{!26, !6, i64 212}
!121 = !{!44, !21, i64 48}
!122 = !{!59, !6, i64 72}
!123 = !{!59, !6, i64 76}
!124 = !{!59, !6, i64 24}
!125 = !{!59, !10, i64 16}
!126 = !{!59, !6, i64 56}
!127 = !{!"llvm.loop.isvectorized", i32 1}
!128 = !{!"llvm.loop.unroll.runtime.disable"}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = !{!73, !6, i64 808}
!131 = !{!59, !6, i64 156}
!132 = !{!73, !6, i64 352}
!133 = !{!75, !6, i64 144}
!134 = !{!26, !6, i64 128}
!135 = !{!59, !21, i64 48}
!136 = !{!44, !6, i64 32}
!137 = !{!44, !6, i64 36}
!138 = !{!26, !23, i64 192}
!139 = !{!"AVDictionaryEntry", !10, i64 0, !10, i64 8}
!140 = !{!139, !10, i64 8}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !36}
!143 = distinct !{!143, !36}
!144 = !{!43, !10, i64 24}
!145 = !{!43, !21, i64 16}
!146 = !{!44, !6, i64 8}
!147 = !{!43, !6, i64 36}
!148 = !{!43, !6, i64 32}
!149 = !{!43, !21, i64 72}
!150 = !{!43, !6, i64 40}
!151 = !{!16, !16, i64 0}
!152 = !{!75, !10, i64 32}
!153 = !{!75, !10, i64 24}
!154 = !{!"p2 _ZTS10AVCodecTag", !17, i64 0}
!155 = !{!"AVInputFormat", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !154, i64 32, !13, i64 40, !10, i64 48}
!156 = !{!155, !10, i64 0}
!157 = !{!43, !41, i64 0}
!158 = !{!53, !41, i64 1096}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = !{!30, !21, i64 96}
!165 = !{!30, !21, i64 88}
!166 = !{!30, !6, i64 80}
!167 = distinct !{!167, !36}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36}
!172 = distinct !{!172, !36}
!173 = distinct !{!173, !36}
!174 = !{!53, !6, i64 40}
!175 = !{!53, !6, i64 44}
end_hunk_1
