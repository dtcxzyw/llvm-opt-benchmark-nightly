Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zdict?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_trainFromBuffer_legacy:bb.a
  %.093132.i.i = phi i64 [ %i.bp, %.lr.ph.i192.i ], [ %.lcssa127, %.lr.ph.i192.i.preheader ]
  %.094131.i.i = phi i32 [ %i.bl, %.lr.ph.i192.i ], [ %4, %.lr.ph.i192.i.preheader ]
  %i.bl = add i32 %.094131.i.i, -1                ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !17
  %i.bp = sub i64 %.093132.i.i, %i.bo             ; 3 uses
  %i.bq = icmp ugt i64 %i.bp, 2097152000
  br i1 %i.bq, label %.lr.ph.i192.i, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %.lr.ph.i192.i, %bb.i
  %.094.lcssa.i.i = phi i32 [ %4, %bb.i ], [ %i.bl, %.lr.ph.i192.i ]
  %.093.lcssa.i.i = phi i64 [ %.lcssa127, %bb.i ], [ %i.bp, %.lr.ph.i192.i ] ; 9 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bs = lshr i64 %.093.lcssa.i.i, 20
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.30, i32 noundef %.094.lcssa.i.i, i32 noundef %i.bt) #19 ; 0 uses
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bw = tail call i32 @fflush(ptr noundef %i.bv) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %i.bx = trunc nuw nsw i64 %.093.lcssa.i.i to i32 ; 3 uses
  %i.by = tail call i32 @divsufsort(ptr noundef nonnull %i.o, ptr noundef nonnull %i.at, i32 noundef %i.bx, i32 noundef 0) #16
  %.not.i189.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i189.not.i, label %bb.l, label %ZDICT_trainBuffer_legacy.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.093.lcssa.i.i
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !8
  store i32 %i.bx, ptr %i.as, align 4, !tbaa !8
  %.not153.i.i = icmp eq i64 %.093.lcssa.i.i, 0   ; 2 uses
  br i1 %.not153.i.i, label %._crit_edge141.i.i, label %.lr.ph136.i.i.preheader

.lr.ph136.i.i.preheader:                          ; preds = %bb.l
  %xtraiter = and i64 %.093.lcssa.i.i, 3          ; 3 uses
  %i.ca = icmp ult i64 %.093.lcssa.i.i, 4
  br i1 %i.ca, label %.lr.ph136.i.i.epil.preheader, label %.lr.ph136.i.i.preheader.new

.lr.ph136.i.i.preheader.new:                      ; preds = %.lr.ph136.i.i.preheader
  %unroll_iter = and i64 %.093.lcssa.i.i, 2147483644
  br label %.lr.ph136.i.i

.lr.ph136.i.i:                                    ; preds = %.lr.ph136.i.i, %.lr.ph136.i.i.preheader.new
  %.096134.i.i = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %i.cy, %.lr.ph136.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph136.i.i.preheader.new ], [ %niter.next.3, %.lr.ph136.i.i ]
  %i.cb = trunc nuw nsw i64 %.096134.i.i to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.096134.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ce
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !8
  %i.cg = or disjoint i64 %.096134.i.i, 1         ; 2 uses
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ck
  store i32 %i.ch, ptr %i.cl, align 4, !tbaa !8
  %i.cm = or disjoint i64 %.096134.i.i, 2         ; 2 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cq
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !8
  %i.cs = or disjoint i64 %.096134.i.i, 3         ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cw
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !8
  %i.cy = add nuw nsw i64 %.096134.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge141.i.i.loopexit.unr-lcssa, label %.lr.ph136.i.i, !llvm.loop !61

._crit_edge141.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph136.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil.preheader

.lr.ph136.i.i.epil.preheader:                     ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.preheader
  %.096134.i.i.epil.init = phi i64 [ 0, %.lr.ph136.i.i.preheader ], [ %i.cy, %._crit_edge141.i.i.loopexit.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph136.i.i.epil

.lr.ph136.i.i.epil:                               ; preds = %.lr.ph136.i.i.epil, %.lr.ph136.i.i.epil.preheader
  %.096134.i.i.epil = phi i64 [ %i.de, %.lr.ph136.i.i.epil ], [ %.096134.i.i.epil.init, %.lr.ph136.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph136.i.i.epil ], [ 0, %.lr.ph136.i.i.epil.preheader ]
  %i.cz = trunc nuw nsw i64 %.096134.i.i.epil to i32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.096134.i.i.epil
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dc
  store i32 %i.cz, ptr %i.dd, align 4, !tbaa !8
  %i.de = add nuw nsw i64 %.096134.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i.i, label %.lr.ph136.i.i.epil, !llvm.loop !62

._crit_edge141.i.i:                               ; preds = %._crit_edge141.i.i.loopexit.unr-lcssa, %.lr.ph136.i.i.epil, %bb.l
  br i1 %i.ax, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %._crit_edge141.i.i
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dg = tail call i64 @fwrite(ptr nonnull @.str.31, i64 22, i64 1, ptr %i.df) #20 ; 0 uses
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.di = tail call i32 @fflush(ptr noundef %i.dh) ; 0 uses
  br i1 %i.bg, label %bb.n, label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.32, i32 noundef %spec.store.select.i.i) #19 ; 0 uses
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = tail call i32 @fflush(ptr noundef %i.dl) ; 0 uses
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m, %._crit_edge141.i.i
  br i1 %.not153.i.i, label %ZDICT_trainBuffer_legacy.exit.i, label %.lr.ph152.i.i

.lr.ph152.i.i:                                    ; preds = %.thread.i.i
  %i.dn = icmp ugt i32 %.sroa.5.0.copyload, 3     ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 252 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.fv = add i32 %..i, -1
  %i.fw = uitofp nneg i64 %.093.lcssa.i.i to double
  br label %bb.o

bb.o:                                             ; preds = %bb.aw, %.lr.ph152.i.i
  %i.fx = phi i64 [ 0, %.lr.ph152.i.i ], [ %i.uc, %bb.aw ] ; 2 uses
  %.095150.i.i = phi i32 [ 0, %.lr.ph152.i.i ], [ %.1.i.i, %bb.aw ] ; 3 uses
  %.099148.i.i = phi i64 [ 0, %.lr.ph152.i.i ], [ %.3.i.i, %bb.aw ] ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !21
  %.not109.i.i = icmp eq i8 %i.fz, 0
  br i1 %.not109.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ga = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

bb.q:                                             ; preds = %bb.o
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.fx
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !8  ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.gg ; 2 uses
  store i8 1, ptr %i.gh, align 1, !tbaa !21
  %i.gi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gg ; 14 uses
  %.val258.i.i.i = load i16, ptr %i.gi, align 1, !tbaa !86
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %.val257.i.i.i = load i16, ptr %i.gj, align 1, !tbaa !86 ; 2 uses
  %i.gk = icmp eq i16 %.val258.i.i.i, %.val257.i.i.i
  br i1 %i.gk, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %.val256.i.i.i = load i16, ptr %i.gl, align 1, !tbaa !86
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  %.val255.i.i.i = load i16, ptr %i.gm, align 1, !tbaa !86
  %i.gn = icmp eq i16 %.val256.i.i.i, %.val255.i.i.i
  br i1 %i.gn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.val253.i.i.i = load i16, ptr %i.go, align 1, !tbaa !86
  %i.gp = icmp eq i16 %.val257.i.i.i, %.val253.i.i.i
  br i1 %i.gp, label %bb.t, label %.preheader315.i.i.i

.preheader315.i.i.i:                              ; preds = %bb.s
  %.012.val22.i.i.i.i = load i64, ptr %i.gi, align 1, !tbaa !17 ; 4 uses
  %i.gq = ptrtoint ptr %i.gi to i64               ; 2 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.val252.i.i.i = load i16, ptr %i.gr, align 1, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0226.i.i.i = phi i32 [ 6, %bb.t ], [ %i.gv, %bb.u ] ; 4 uses
  %i.gs = zext i32 %.0226.i.i.i to i64            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %.val.i.i.i = load i16, ptr %i.gt, align 1      ; 2 uses
  %i.gu = icmp eq i16 %.val.i.i.i, %.val252.i.i.i
  %i.gv = add i32 %.0226.i.i.i, 2
  br i1 %i.gu, label %bb.u, label %bb.v, !llvm.loop !64

bb.v:                                             ; preds = %bb.u
  %.not359.i.i.i = icmp eq i32 %.0226.i.i.i, 0
  br i1 %.not359.i.i.i, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph357.preheader.i.i.i

.lr.ph357.preheader.i.i.i:                        ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gs
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !21
  %i.gz = trunc i16 %.val.i.i.i to i8
  %i.ha = icmp eq i8 %i.gy, %i.gz
  %i.hb = zext i1 %i.ha to i32
  %scevgep394.i.i.i = getelementptr i8, ptr %i.gh, i64 1
  %i.hc = or disjoint i32 %.0226.i.i.i, %i.hb
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.hc, i32 2)
  %i.hd = add i32 %umax.i.i.i, -1
  %i.he = zext i32 %i.hd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep394.i.i.i, i8 1, i64 %i.he, i1 false), !tbaa !21
  br label %ZDICT_analyzePos.exit.thread.i.i

bb.w:                                             ; preds = %ZDICT_count.exit.i.i.i, %.preheader315.i.i.i
  %indvars.iv391.in.i.i.i = phi i32 [ %i.gc, %.preheader315.i.i.i ], [ %indvars.iv391.i.i.i.a, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %indvars.iv391.i.i.i.a = add i32 %indvars.iv391.in.i.i.i, 1 ; 6 uses
  %i.hf = zext i32 %indvars.iv391.i.i.i.a to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !8
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hi ; 2 uses
  %.011.val21.i.i.i.i = load i64, ptr %i.hj, align 1, !tbaa !17 ; 2 uses
  %.not23.i.i.i.i = icmp eq i64 %.011.val21.i.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.01125.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i ], [ %i.hj, %bb.w ]
  %.01224.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i ], [ %i.gi, %bb.w ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.01224.i.i.i.i, i64 8 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01125.i.i.i.i, i64 8 ; 2 uses
  %.011.val.i.i.i.i = load i64, ptr %i.hl, align 1, !tbaa !17 ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %i.hk, align 1, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.011.val.i.i.i.i, %.012.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %ZDICT_count.exit.i.i.i

ZDICT_count.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %bb.w
  %.012.lcssa.i.i.i.i = phi ptr [ %i.gi, %bb.w ], [ %i.hk, %.lr.ph.i.i.i.i ]
  %.011.val.lcssa.i.i.i.i = phi i64 [ %.011.val21.i.i.i.i, %bb.w ], [ %.011.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.012.val.lcssa.i.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %bb.w ], [ %.012.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.hm = xor i64 %.012.val.lcssa.i.i.i.i, %.011.val.lcssa.i.i.i.i
  %i.hn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hm, i1 true)
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.lcssa.i.i.i.i, i64 %i.ho
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.gq
  %i.hs = icmp ugt i64 %i.hr, 6
  br i1 %i.hs, label %bb.w, label %.preheader314.i.i.i, !llvm.loop !65

.preheader314.i.i.i:                              ; preds = %ZDICT_count.exit.i.i.i, %ZDICT_count.exit271.i.i.i
  %indvar = phi i32 [ %indvar.next, %ZDICT_count.exit271.i.i.i ], [ 0, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ii, %ZDICT_count.exit271.i.i.i ], [ %i.gc, %ZDICT_count.exit.i.i.i ] ; 5 uses
  %i.ht = zext i32 %.0231.i.i.i to i64            ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hx ; 2 uses
  %.011.val21.i259.i.i.i = load i64, ptr %i.hy, align 1, !tbaa !17 ; 2 uses
  %.not23.i261.i.i.i = icmp eq i64 %.011.val21.i259.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i261.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

.lr.ph.i265.i.i.i:                                ; preds = %.preheader314.i.i.i, %.lr.ph.i265.i.i.i
  %.01125.i266.i.i.i = phi ptr [ %i.ia, %.lr.ph.i265.i.i.i ], [ %i.hy, %.preheader314.i.i.i ]
  %.01224.i267.i.i.i = phi ptr [ %i.hz, %.lr.ph.i265.i.i.i ], [ %i.gi, %.preheader314.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.01224.i267.i.i.i, i64 8 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01125.i266.i.i.i, i64 8 ; 2 uses
  %.011.val.i268.i.i.i = load i64, ptr %i.ia, align 1, !tbaa !17 ; 2 uses
  %.012.val.i269.i.i.i = load i64, ptr %i.hz, align 1, !tbaa !17 ; 2 uses
  %.not.i270.i.i.i = icmp eq i64 %.011.val.i268.i.i.i, %.012.val.i269.i.i.i
  br i1 %.not.i270.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

ZDICT_count.exit271.i.i.i:                        ; preds = %.lr.ph.i265.i.i.i, %.preheader314.i.i.i
  %.012.lcssa.i262.i.i.i = phi ptr [ %i.gi, %.preheader314.i.i.i ], [ %i.hz, %.lr.ph.i265.i.i.i ]
  %.011.val.lcssa.i263.i.i.i = phi i64 [ %.011.val21.i259.i.i.i, %.preheader314.i.i.i ], [ %.011.val.i268.i.i.i, %.lr.ph.i265.i.i.i ]
  %.012.val.lcssa.i264.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %.preheader314.i.i.i ], [ %.012.val.i269.i.i.i, %.lr.ph.i265.i.i.i ]
  %i.ib = xor i64 %.012.val.lcssa.i264.i.i.i, %.011.val.lcssa.i263.i.i.i
  %i.ic = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ib, i1 true)
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.lcssa.i262.i.i.i, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gq
  %i.ih = icmp ugt i64 %i.ig, 6
  %i.ii = add i32 %.0231.i.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ih, label %.preheader314.i.i.i, label %bb.x, !llvm.loop !66

bb.x:                                             ; preds = %ZDICT_count.exit271.i.i.i
  %i.ij = sub i32 %indvars.iv391.i.i.i.a, %.0231.i.i.i ; 3 uses
  %i.ik = icmp ult i32 %i.ij, %spec.store.select.i.i
  br i1 %i.ik, label %.preheader.i.i.i, label %bb.y

.preheader.i.i.i:                                 ; preds = %bb.x
  %i.il = icmp ult i32 %.0231.i.i.i, %indvars.iv391.i.i.i.a
  br i1 %i.il, label %.lr.ph354.i.i.i.preheader, label %ZDICT_analyzePos.exit.thread.i.i

.lr.ph354.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  %i.im = sub i32 %indvars.iv391.in.i.i.i, %i.gc
  %i.in = add i32 %indvar, %i.im
  %xtraiter187 = and i32 %i.ij, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol

.lr.ph354.i.i.i.prol:                             ; preds = %.lr.ph354.i.i.i.preheader, %.lr.ph354.i.i.i.prol
  %indvars.iv388.i.i.i.prol = phi i64 [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ], [ %i.ht, %.lr.ph354.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph354.i.i.i.prol ], [ 0, %.lr.ph354.i.i.i.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  store i8 1, ptr %i.ir, align 1, !tbaa !21
  %indvars.iv.next389.i.i.i.prol = add nuw nsw i64 %indvars.iv388.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol, !llvm.loop !67

.lr.ph354.i.i.i.prol.loopexit:                    ; preds = %.lr.ph354.i.i.i.prol, %.lr.ph354.i.i.i.preheader
  %indvars.iv388.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph354.i.i.i.preheader ], [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ]
  %i.is = icmp ult i32 %i.in, 3
  br i1 %i.is, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i
  %indvars.iv388.i.i.i = phi i64 [ %indvars.iv.next389.i.i.i.3, %.lr.ph354.i.i.i ], [ %indvars.iv388.i.i.i.unr, %.lr.ph354.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iv
  store i8 1, ptr %i.iw, align 1, !tbaa !21
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ja
  store i8 1, ptr %i.jb, align 1, !tbaa !21
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jf
  store i8 1, ptr %i.jg, align 1, !tbaa !21
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a
  %.not.17.i.i.i = icmp ult i32 %i.ob, %spec.store.select.i.i
  br i1 %.not.17.i.i.i, label %.preheader312.18.i.i.i, label %bb.ah

.preheader312.18.i.i.i:                           ; preds = %.preheader312.17.i.i.i
  %i.oc = load i32, ptr %i.eh, align 4, !tbaa !8
  %.not.18.i.i.i = icmp ult i32 %i.oc, %spec.store.select.i.i
  br i1 %.not.18.i.i.i, label %.preheader312.19.i.i.i, label %bb.ah

.preheader312.19.i.i.i:                           ; preds = %.preheader312.18.i.i.i
  %i.od = load i32, ptr %i.ei, align 16, !tbaa !8
  %.not.19.i.i.i = icmp ult i32 %i.od, %spec.store.select.i.i
  br i1 %.not.19.i.i.i, label %.preheader312.20.i.i.i, label %bb.ah

.preheader312.20.i.i.i:                           ; preds = %.preheader312.19.i.i.i
  %i.oe = load i32, ptr %i.ej, align 4, !tbaa !8
  %.not.20.i.i.i = icmp ult i32 %i.oe, %spec.store.select.i.i
  br i1 %.not.20.i.i.i, label %.preheader312.21.i.i.i, label %bb.ah

.preheader312.21.i.i.i:                           ; preds = %.preheader312.20.i.i.i
  %i.of = load i32, ptr %i.ek, align 8, !tbaa !8
  %.not.21.i.i.i = icmp ult i32 %i.of, %spec.store.select.i.i
  br i1 %.not.21.i.i.i, label %.preheader312.22.i.i.i, label %bb.ah

.preheader312.22.i.i.i:                           ; preds = %.preheader312.21.i.i.i
  %i.og = load i32, ptr %i.el, align 4, !tbaa !8
  %.not.22.i.i.i = icmp ult i32 %i.og, %spec.store.select.i.i
  br i1 %.not.22.i.i.i, label %.preheader312.23.i.i.i, label %bb.ah

.preheader312.23.i.i.i:                           ; preds = %.preheader312.22.i.i.i
  %i.oh = load i32, ptr %i.em, align 16, !tbaa !8
  %.not.23.i.i.i = icmp ult i32 %i.oh, %spec.store.select.i.i
  br i1 %.not.23.i.i.i, label %.preheader312.24.i.i.i, label %bb.ah

.preheader312.24.i.i.i:                           ; preds = %.preheader312.23.i.i.i
  %i.oi = load i32, ptr %i.en, align 4, !tbaa !8
  %.not.24.i.i.i = icmp ult i32 %i.oi, %spec.store.select.i.i
  br i1 %.not.24.i.i.i, label %.preheader312.25.i.i.i, label %bb.ah

.preheader312.25.i.i.i:                           ; preds = %.preheader312.24.i.i.i
  %i.oj = load i32, ptr %i.eo, align 8, !tbaa !8
  %.not.25.i.i.i = icmp ult i32 %i.oj, %spec.store.select.i.i
  br i1 %.not.25.i.i.i, label %.preheader312.26.i.i.i, label %bb.ah

.preheader312.26.i.i.i:                           ; preds = %.preheader312.25.i.i.i
  %i.ok = load i32, ptr %i.ep, align 4, !tbaa !8
  %.not.26.i.i.i = icmp ult i32 %i.ok, %spec.store.select.i.i
  br i1 %.not.26.i.i.i, label %.preheader312.27.i.i.i, label %bb.ah

.preheader312.27.i.i.i:                           ; preds = %.preheader312.26.i.i.i
  %i.ol = load i32, ptr %i.eq, align 16, !tbaa !8
  %.not.27.i.i.i = icmp ult i32 %i.ol, %spec.store.select.i.i
  br i1 %.not.27.i.i.i, label %.preheader312.28.i.i.i, label %bb.ah

.preheader312.28.i.i.i:                           ; preds = %.preheader312.27.i.i.i
  %i.om = load i32, ptr %i.er, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.on = load i32, ptr %i.es, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.op = load i32, ptr %i.eu, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.oq = load i32, ptr %i.ev, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.or = load i32, ptr %i.ew, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.os = load i32, ptr %i.ex, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.ot = load i32, ptr %i.ey, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ou = load i32, ptr %i.ez, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ov = load i32, ptr %i.fa, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ow = load i32, ptr %i.fb, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ox = load i32, ptr %i.fc, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.oy = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oz = load i32, ptr %i.fe, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.pa = load i32, ptr %i.ff, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pb = load i32, ptr %i.fg, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pc = load i32, ptr %i.fh, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pd = load i32, ptr %i.fi, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pe = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pf = load i32, ptr %i.fk, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pg = load i32, ptr %i.fl, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.ph = load i32, ptr %i.fm, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.pi = load i32, ptr %i.fn, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pj = load i32, ptr %i.fo, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pk = load i32, ptr %i.fp, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pl = load i32, ptr %i.fq, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 3 uses
  %i.pp = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !21
  %7 = add nuw nsw i32 %.0203.lcssa.i.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv376.i.i.i = phi i32 [ %i.py, %bb.ai ], [ %7, %bb.ah ] ; 3 uses
  %.0202.i.i.i = phi i32 [ %8, %bb.ai ], [ %.0203.lcssa.i.i.i, %bb.ah ] ; 8 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 4 uses
  %i.pu = getelementptr i8, ptr %i.lk, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = icmp eq i8 %i.pw, %i.ps
  %8 = add i32 %.0202.i.i.i, -1
  %i.py = add i32 %indvars.iv376.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !8
  %9 = add i32 %indvars.iv376.i.i.i, -7           ; 3 uses
  %xtraiter180 = and i32 %9, 1
  %i.qa = icmp eq i32 %indvars.iv376.i.i.i, 8
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %unroll_iter184 = and i32 %9, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qb = phi i32 [ 0, %.new ], [ %i.qo, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter185 = phi i32 [ 0, %.new ], [ %niter185.next.1, %bb.al ]
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !8
  %i.qe = trunc i64 %indvars.iv373.i.i.i to i32
  %i.qf = add i32 %i.qe, -3
  %i.qg = mul i32 %i.qf, %i.qd
  %i.qh = add i32 %i.qg, %i.qb                    ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qh, ptr %i.qi, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !8
  %i.ql = trunc i64 %indvars.iv.next374.i.i.i to i32
  %i.qm = add i32 %i.ql, -3
  %i.qn = mul i32 %i.qm, %i.qk
  %i.qo = add i32 %i.qn, %i.qh                    ; 3 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter185.next.1 = add i32 %niter185, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i32 %niter185.next.1, %unroll_iter184
  br i1 %niter186.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod183.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod183.not, label %bb.am, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qo, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %9 to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !8
  %i.qs = trunc i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qt = add i32 %i.qs, -3
  %i.qu = mul i32 %i.qt, %i.qr
  %i.qv = add i32 %i.qu, %.epil.init
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dn, label %bb.an, label %._crit_edge398.i.i.i

._crit_edge398.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert399.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre400.i.i.i = load i32, ptr %.phi.trans.insert399.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !8  ; 3 uses
  %i.ra = uitofp i32 %i.qz to double
  %i.rb = uitofp i32 %.0202.i.i.i to double
  %i.rc = fdiv double %i.ra, %i.rb
  %i.rd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qx, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.qz, double noundef %i.rc) #19 ; 0 uses
  %i.re = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.rf = tail call i32 @fflush(ptr noundef %i.re) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge398.i.i.i
  %i.rg = phi i32 [ %.pre400.i.i.i, %._crit_edge398.i.i.i ], [ %i.qz, %bb.an ] ; 4 uses
  %i.rh = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv383.i.i.i
  br i1 %i.rh, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.ri = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv379.i.i.i = phi i64 [ %i.ri, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next380.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv379.i.i.i
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !8  ; 5 uses
  %i.rl = icmp eq i32 %i.rk, %i.li
  br i1 %i.rl, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.rm = zext i32 %i.rk to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.rm ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rn, align 1, !tbaa !17 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !17 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rp, %.lr.ph.i304.i.i.i ], [ %i.rn, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.ro, %.lr.ph.i304.i.i.i ], [ %i.lk, %bb.ap ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !17 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.ro, align 1, !tbaa !17 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lk, %bb.ap ], [ %i.ro, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rq = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rq, i1 true)
  %i.rs = lshr i64 %i.rr, 3
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.rs
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.ru, %i.ll
  %i.rw = trunc i64 %i.rv to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.rw)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rx = add i32 %.0.i.i.i, %i.rk
  %i.ry = icmp ult i32 %i.rk, %i.rx
  br i1 %i.ry, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.rz = zext i32 %i.rk to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.rz
  %i.sa = add i32 %.0.i.i.i, -1
  %i.sb = zext i32 %i.sa to i64
  %i.sc = add nuw nsw i64 %i.sb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.sc, i1 false), !tbaa !21
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next380.i.i.i = add nuw nsw i64 %indvars.iv379.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next380.i.i.i, %i.lm
  br i1 %exitcond386.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sd = add nuw i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !63

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.se = shl nuw nsw i64 %i.pt, 32
  %i.sf = or disjoint i64 %i.se, %i.lj            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sg = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sf, i32 %i.rg, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sh ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.si, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sj = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.sg, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sk = phi i32 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sl = phi i64 [ %i.su, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sh, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sk, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sg, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.sm = load i32, ptr %i.x, align 4, !tbaa !10  ; 2 uses
  %i.sn = add i32 %i.sm, -1                       ; 2 uses
  %i.so = icmp ult i32 %.03544.i146.i.i, %i.sn
  br i1 %i.so, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sp = mul nuw nsw i64 %i.sl, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sp ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.sm, %.03544.i146.i.i
  %i.sq = add i32 %reass.sub, -2
  %i.sr = zext i32 %i.sq to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12
  %i.st = add nuw nsw i64 %i.ss, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.st, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !10
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sn, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !10
  %i.su = zext i32 %i.sk to i64                   ; 2 uses
  %i.sv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.su ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sv, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sw = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sk, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sx = load i32, ptr %i.x, align 4, !tbaa !10
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sx, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.sy = zext i32 %.03445.i.i.i to i64
  %i.sz = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !12
  %i.tc = icmp ult i32 %i.tb, %i.rg
  br i1 %i.tc, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.td = phi ptr [ %i.th, %.lr.ph.i115.i.i ], [ %i.sz, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.te = zext i32 %.034.in46.i.i.i to i64
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.te
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.tf, ptr noundef nonnull align 4 dereferenceable(12) %i.td, i64 12, i1 false), !tbaa.struct !24
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.tg = zext i32 %.034.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !12
  %i.tk = icmp ult i32 %i.tj, %i.rg
  br i1 %i.tk, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !77

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
  %i.tl = zext i32 %.034.in.lcssa.i.i.i to i64
  %i.tm = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tl ; 2 uses
  store i64 %i.sf, ptr %i.tm, align 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 %i.rg, ptr %.sroa.3.0..sroa_idx.i.i.i, align 4, !tbaa !8
  %i.tn = add nuw i32 %spec.select.i113.i.i, 1
  store i32 %i.tn, ptr %i.x, align 4, !tbaa !10
  br label %ZDICT_insertDictItem.exit.i.i

ZDICT_insertDictItem.exit.i.i:                    ; preds = %ZDICT_removeDictItem.exit.i.i.i, %._crit_edge.i114.i.i, %.preheader.i112.preheader.i.i
  %i.to = add i32 %.0202.i.i.i, %.095150.i.i      ; 4 uses
  br i1 %i.ax, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %ZDICT_insertDictItem.exit.i.i
  %i.tp = tail call i64 @clock() #16
  %i.tq = sub nsw i64 %i.tp, %.099148.i.i
  %i.tr = icmp sgt i64 %i.tq, 300000
  br i1 %i.tr, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ts = tail call i64 @clock() #16
  %i.tt = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.tu = uitofp i32 %i.to to double
  %i.tv = fdiv double %i.tu, %i.fw
  %i.tw = fmul double %i.tv, 1.000000e+02
  %i.tx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tt, ptr noundef nonnull @.str.33, double noundef %i.tw) #19 ; 0 uses
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.tz = tail call i32 @fflush(ptr noundef %i.ty) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1100.i.i = phi i64 [ %i.ts, %bb.at ], [ %.099148.i.i, %bb.as ] ; 2 uses
  br i1 %i.dn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ub = tail call i32 @fflush(ptr noundef %i.ua) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %ZDICT_insertDictItem.exit.i.i, %ZDICT_analyzePos.exit.thread.i.i, %bb.p
  %.3.i.i = phi i64 [ %.099148.i.i, %bb.p ], [ %.099148.i.i, %ZDICT_analyzePos.exit.thread.i.i ], [ %.1100.i.i, %bb.av ], [ %.1100.i.i, %bb.au ], [ %.099148.i.i, %ZDICT_insertDictItem.exit.i.i ]
  %.1.i.i = phi i32 [ %i.ga, %bb.p ], [ %i.sd, %ZDICT_analyzePos.exit.thread.i.i ], [ %i.to, %bb.av ], [ %i.to, %bb.au ], [ %i.to, %ZDICT_insertDictItem.exit.i.i ] ; 2 uses
  %i.uc = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.ud = icmp samesign ugt i64 %.093.lcssa.i.i, %i.uc
  br i1 %i.ud, label %bb.o, label %ZDICT_trainBuffer_legacy.exit.loopexit.i

ZDICT_trainBuffer_legacy.exit.loopexit.i:         ; preds = %bb.aw
  %.pre.pre.i = load i32, ptr %i.x, align 4, !tbaa !10
  br label %ZDICT_trainBuffer_legacy.exit.i

ZDICT_trainBuffer_legacy.exit.i:                  ; preds = %ZDICT_trainBuffer_legacy.exit.loopexit.i, %.thread.i.i, %bb.k, %bb.g
  %.pre.i = phi i32 [ %.pre.pre.i, %ZDICT_trainBuffer_legacy.exit.loopexit.i ], [ 1, %bb.g ], [ 1, %bb.k ], [ 1, %.thread.i.i ] ; 9 uses
  tail call void @free(ptr noundef %i.as) #16
  tail call void @free(ptr noundef %i.au) #16
  tail call void @free(ptr noundef %i.aw) #16
  %i.ue = icmp ugt i32 %.sroa.5.0.copyload, 2
  br i1 %i.ue, label %bb.ax, label %.critedge179.i

bb.ax:                                            ; preds = %ZDICT_trainBuffer_legacy.exit.i
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.pre.i, i32 25) ; 3 uses
  %i.uf = icmp ugt i32 %.pre.i, 1
  br i1 %i.uf, label %.lr.ph.preheader.i194.i, label %ZDICT_dictSize.exit224.thread.critedge.i

.lr.ph.preheader.i194.i:                          ; preds = %bb.ax
  %wide.trip.count.i195.i = zext i32 %.pre.i to i64
  %i.ug = add nsw i64 %wide.trip.count.i195.i, -1 ; 2 uses
  %xtraiter189 = and i64 %i.ug, 3                 ; 3 uses
  %i.uh = add i32 %.pre.i, -2
  %i.ui = icmp ult i32 %i.uh, 3
  br i1 %i.ui, label %.lr.ph.i196.i.epil.preheader, label %.lr.ph.preheader.i194.i.new

.lr.ph.preheader.i194.i.new:                      ; preds = %.lr.ph.preheader.i194.i
  %unroll_iter194 = and i64 %i.ug, -4
  br label %.lr.ph.i196.i

.lr.ph.i196.i:                                    ; preds = %.lr.ph.i196.i, %.lr.ph.preheader.i194.i.new
  %indvars.iv.i197.i = phi i64 [ 1, %.lr.ph.preheader.i194.i.new ], [ %indvars.iv.next.i198.i.3, %.lr.ph.i196.i ] ; 5 uses
  %.08.i.i = phi i32 [ 0, %.lr.ph.preheader.i194.i.new ], [ %i.uy, %.lr.ph.i196.i ]
  %niter195 = phi i64 [ 0, %.lr.ph.preheader.i194.i.new ], [ %niter195.next.3, %.lr.ph.i196.i ]
  %i.uj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !11
  %i.um = add i32 %i.ul, %.08.i.i
  %i.un = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !11
  %i.uq = add i32 %i.up, %i.um
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 28
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !11
  %i.uu = add i32 %i.ut, %i.uq
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %indvars.iv.i197.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !11
  %i.uy = add i32 %i.ux, %i.uu                    ; 3 uses
  %indvars.iv.next.i198.i.3 = add nuw nsw i64 %indvars.iv.i197.i, 4 ; 2 uses
  %niter195.next.3 = add nuw i64 %niter195, 4     ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.critedge.i.unr-lcssa, label %.lr.ph.i196.i, !llvm.loop !78

.critedge.i.unr-lcssa:                            ; preds = %.lr.ph.i196.i
  %lcmp.mod191.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %.critedge.i, label %.lr.ph.i196.i.epil.preheader

.lr.ph.i196.i.epil.preheader:                     ; preds = %.critedge.i.unr-lcssa, %.lr.ph.preheader.i194.i
  %indvars.iv.i197.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i194.i ], [ %indvars.iv.next.i198.i.3, %.critedge.i.unr-lcssa ]
  %.08.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i194.i ], [ %i.uy, %.critedge.i.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter189, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i196.i.epil

.lr.ph.i196.i.epil:                               ; preds = %.lr.ph.i196.i.epil, %.lr.ph.i196.i.epil.preheader
  %indvars.iv.i197.i.epil = phi i64 [ %indvars.iv.i197.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %indvars.iv.next.i198.i.epil, %.lr.ph.i196.i.epil ] ; 2 uses
  %.08.i.i.epil = phi i32 [ %.08.i.i.epil.init, %.lr.ph.i196.i.epil.preheader ], [ %i.vc, %.lr.ph.i196.i.epil ]
  %epil.iter190 = phi i64 [ 0, %.lr.ph.i196.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i196.i.epil ]
end_hunk_1
