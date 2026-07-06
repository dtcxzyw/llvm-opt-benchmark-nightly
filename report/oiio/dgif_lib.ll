inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@DGifDecompressLine:bb.a
  %.1105 = phi i32 [ 0, %bb.b ], [ %i.e, %.preheader140 ], [ %i.be, %.loopexit141.loopexit ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %.preheader140 ], [ %i.t, %.loopexit141.loopexit ] ; 2 uses
  %i.bf = icmp slt i32 %.1, %2
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.loopexit141
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bk = zext i32 %2 to i64                      ; 3 uses
  %scevgep256 = getelementptr i8, ptr %1, i64 1
  %scevgep260 = getelementptr i8, ptr %i.c, i64 343
  %scevgep262 = getelementptr i8, ptr %i.c, i64 344
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph170, %bb.y
  %.2169 = phi i32 [ %.1, %.lr.ph170 ], [ %.5, %bb.y ] ; 6 uses
  %.2106168 = phi i32 [ %.1105, %.lr.ph170 ], [ %.7, %bb.y ] ; 5 uses
  %.0110165 = phi i32 [ %i.n, %.lr.ph170 ], [ %.1111, %bb.y ] ; 9 uses
  %i.bl = call fastcc i32 @DGifDecompressInput(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit138, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !3   ; 19 uses
  %i.bo = icmp eq i32 %i.bn, %i.j
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 113, ptr %i.bp, align 8, !tbaa !23
  br label %.loopexit138

bb.f:                                             ; preds = %bb.d
  %i.bq = icmp eq i32 %i.bn, %i.l
  br i1 %i.bq, label %vector.body250, label %bb.g

vector.body250:                                   ; preds = %bb.f, %vector.body250
  %index251 = phi i64 [ %index.next252.3, %vector.body250 ], [ 0, %bb.f ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index251 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> splat (i32 4098), ptr %i.br, align 4, !tbaa !3
  store <4 x i32> splat (i32 4098), ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index251 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  store <4 x i32> splat (i32 4098), ptr %i.bu, align 4, !tbaa !3
  store <4 x i32> splat (i32 4098), ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index251 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  store <4 x i32> splat (i32 4098), ptr %i.bx, align 4, !tbaa !3
  store <4 x i32> splat (i32 4098), ptr %i.by, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index251 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  store <4 x i32> splat (i32 4098), ptr %i.ca, align 4, !tbaa !3
  store <4 x i32> splat (i32 4098), ptr %i.cb, align 4, !tbaa !3
  %index.next252.3 = add nuw nsw i64 %index251, 32 ; 2 uses
  %i.cc = icmp eq i64 %index.next252.3, 4096
  br i1 %i.cc, label %middle.block253, label %vector.body250, !llvm.loop !87

middle.block253:                                  ; preds = %vector.body250
  %i.cd = load i32, ptr %i.i, align 8, !tbaa !55
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bg, align 4, !tbaa !56
  %i.cf = load i32, ptr %i.bh, align 8, !tbaa !53
  %i.cg = add nsw i32 %i.cf, 1                    ; 2 uses
  store i32 %i.cg, ptr %i.bi, align 8, !tbaa !57
  %i.ch = shl nuw i32 1, %i.cg
  store i32 %i.ch, ptr %i.bj, align 4, !tbaa !58
  store i32 4098, ptr %i.m, align 8, !tbaa !60
  br label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.ci = icmp slt i32 %i.bn, %i.l
  br i1 %i.ci, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = trunc i32 %i.bn to i8
  %i.ck = add nsw i32 %.2169, 1
  %i.cl = sext i32 %.2169 to i64
  %i.cm = getelementptr inbounds i8, ptr %1, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !24
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.cn = sext i32 %i.bn to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = icmp eq i32 %i.cp, 4098
  br i1 %i.cq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.cr = load i32, ptr %i.bg, align 4, !tbaa !56
  %i.cs = add nsw i32 %i.cr, -2
  %i.ct = icmp eq i32 %i.bn, %i.cs
  br i1 %i.ct, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cu = icmp sgt i32 %.0110165, %i.l
  br i1 %i.cu, label %.lr.ph.i.preheader, label %.sink.split

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.l
  %i.cv = phi i32 [ %i.db, %bb.l ], [ 1, %bb.k ]  ; 2 uses
  %.089.i234 = phi i32 [ %i.cz, %bb.l ], [ %.0110165, %bb.k ] ; 2 uses
  %i.cw = icmp sgt i32 %.089.i234, 4095
  br i1 %i.cw, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.cx = sext i32 %.089.i234 to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 3 uses
  %i.da = icmp sle i32 %i.cz, %i.l
  %i.db = add nuw nsw i32 %i.cv, 1
  %exitcond.not.i = icmp eq i32 %i.cv, 4096
  %or.cond = select i1 %i.da, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %.sink.split, label %.lr.ph.i.preheader, !llvm.loop !88

bb.m:                                             ; preds = %bb.j
  %i.dc = icmp sgt i32 %i.bn, %i.l
  br i1 %i.dc, label %.lr.ph.i120.preheader, label %.sink.split

.lr.ph.i120.preheader:                            ; preds = %bb.m, %bb.n
  %i.dd = phi i32 [ %i.dj, %bb.n ], [ 1, %bb.m ]  ; 2 uses
  %.089.i122233 = phi i32 [ %i.dh, %bb.n ], [ %i.bn, %bb.m ] ; 2 uses
  %i.de = icmp sgt i32 %.089.i122233, 4095
  br i1 %i.de, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i120.preheader
  %i.df = sext i32 %.089.i122233 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3  ; 3 uses
  %i.di = icmp sle i32 %i.dh, %i.l
  %i.dj = add nuw nsw i32 %i.dd, 1
  %exitcond.not.i123 = icmp eq i32 %i.dd, 4096
  %or.cond299 = select i1 %i.di, i1 true, i1 %exitcond.not.i123
  br i1 %or.cond299, label %.sink.split, label %.lr.ph.i120.preheader, !llvm.loop !88

.sink.split:                                      ; preds = %bb.n, %.lr.ph.i120.preheader, %bb.l, %.lr.ph.i.preheader, %bb.m, %bb.k
  %.07.i.sink = phi i32 [ 4098, %.lr.ph.i.preheader ], [ %.0110165, %bb.k ], [ %i.bn, %bb.m ], [ %i.cz, %bb.l ], [ 4098, %.lr.ph.i120.preheader ], [ %i.dh, %bb.n ]
  %i.dk = trunc i32 %.07.i.sink to i8             ; 2 uses
  %i.dl = add nsw i32 %.2106168, 1
  %i.dm = sext i32 %.2106168 to i64
  %i.dn = getelementptr inbounds i8, ptr %i.h, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !24
  %i.do = load i32, ptr %i.bg, align 4, !tbaa !56
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %i.g, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -2
  store i8 %i.dk, ptr %i.dr, align 1, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.i
  %.3107 = phi i32 [ %.2106168, %bb.i ], [ %i.dl, %.sink.split ] ; 3 uses
  %.0102 = phi i32 [ %i.bn, %bb.i ], [ %.0110165, %.sink.split ]
  %i.ds = icmp slt i32 %.3107, 4095
  br i1 %i.ds, label %.lr.ph157.preheader, label %.critedge.thread

.lr.ph157.preheader:                              ; preds = %bb.o
  %i.dt = sext i32 %.3107 to i64
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %bb.p
  %indvars.iv190.in = phi i32 [ %.3107, %.lr.ph157.preheader ], [ %indvars.iv190, %bb.p ]
  %indvars.iv184 = phi i64 [ %i.dt, %.lr.ph157.preheader ], [ %indvars.iv.next185, %bb.p ] ; 4 uses
  %.1103156 = phi i32 [ %.0102, %.lr.ph157.preheader ], [ %i.eb, %bb.p ] ; 5 uses
  %indvars.iv190 = add i32 %indvars.iv190.in, 1   ; 2 uses
  %i.du = icmp sgt i32 %.1103156, %i.l
  %i.dv = icmp slt i32 %.1103156, 4096
  %or.cond3 = and i1 %i.du, %i.dv
  br i1 %or.cond3, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph157
  %i.dw = sext i32 %.1103156 to i64               ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.g, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !24
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !24
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dw
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = and i64 %indvars.iv.next185, 4294967295
  %exitcond187.not = icmp eq i64 %i.ec, 4095
  br i1 %exitcond187.not, label %.critedge.thread, label %.lr.ph157, !llvm.loop !89

.critedge:                                        ; preds = %.lr.ph157
  %i.ed = icmp sgt i32 %.1103156, 4095
  br i1 %i.ed, label %.critedge.thread, label %bb.q

.critedge.thread:                                 ; preds = %.critedge, %bb.o, %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 112, ptr %i.ee, align 8, !tbaa !23
  br label %.loopexit138

bb.q:                                             ; preds = %.critedge
  %i.ef = trunc nsw i64 %indvars.iv184 to i32
  %i.eg = trunc i32 %.1103156 to i8
  %i.eh = add nsw i32 %i.ef, 1                    ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv184
  store i8 %i.eg, ptr %i.ei, align 1, !tbaa !24
  %i.ej = icmp ne i32 %i.eh, 0
  %i.ek = icmp slt i32 %.2169, %2
  %i.el = and i1 %i.ej, %i.ek
  br i1 %i.el, label %iter.check283, label %.loopexit

iter.check283:                                    ; preds = %bb.q
  %i.em = sext i32 %.2169 to i64                  ; 10 uses
  %i.en = sext i32 %indvars.iv190 to i64          ; 10 uses
  %i.eo = xor i64 %i.em, -1
  %i.ep = add nsw i64 %i.eo, %i.bk
  %i.eq = add nsw i64 %i.en, -1
  %umin267 = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.eq)
  %i.er = add nsw i64 %umin267, 1                 ; 7 uses
  %min.iters.check268 = icmp ult i64 %i.er, 4
  br i1 %min.iters.check268, label %.lr.ph161.preheader, label %vector.memcheck254

vector.memcheck254:                               ; preds = %iter.check283
  %scevgep255 = getelementptr i8, ptr %1, i64 %i.em
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.em
  %i.es = xor i64 %i.em, -1
  %i.et = add nsw i64 %i.es, %i.bk
  %i.eu = add nsw i64 %i.en, -1
  %umin258 = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %scevgep259 = getelementptr i8, ptr %scevgep257, i64 %umin258
  %i.ev = sub i64 %i.en, %umin258
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.ev
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.en
  %bound0264 = icmp ult ptr %scevgep255, %scevgep263
  %bound1265 = icmp ult ptr %scevgep261, %scevgep259
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph161.preheader, label %vector.main.loop.iter.check269

vector.main.loop.iter.check269:                   ; preds = %vector.memcheck254
  %min.iters.check270 = icmp ult i64 %i.er, 16
  br i1 %min.iters.check270, label %vec.epilog.ph287, label %vector.ph271

vector.ph271:                                     ; preds = %vector.main.loop.iter.check269
  %n.mod.vf272 = and i64 %i.er, 12
  %n.vec273 = and i64 %i.er, -16                  ; 5 uses
  %i.ew = sub i64 %i.en, %n.vec273                ; 2 uses
  %i.ex = add i64 %n.vec273, %i.em                ; 2 uses
  %invariant.gep318 = getelementptr i8, ptr %i.h, i64 %i.en
  %invariant.gep320 = getelementptr i8, ptr %1, i64 %i.em
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph271
  %index275 = phi i64 [ 0, %vector.ph271 ], [ %index.next278, %vector.body274 ] ; 3 uses
  %i.ey = xor i64 %index275, -1
  %gep319 = getelementptr i8, ptr %invariant.gep318, i64 %i.ey
  %i.ez = getelementptr inbounds i8, ptr %gep319, i64 -15
  %wide.load276 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !24, !alias.scope !90
  %reverse277 = shufflevector <16 x i8> %wide.load276, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep321 = getelementptr i8, ptr %invariant.gep320, i64 %index275
  store <16 x i8> %reverse277, ptr %gep321, align 1, !tbaa !24, !alias.scope !93, !noalias !90
  %index.next278 = add nuw i64 %index275, 16      ; 2 uses
  %i.fa = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.fa, label %middle.block279, label %vector.body274, !llvm.loop !95

middle.block279:                                  ; preds = %vector.body274
  %cmp.n280 = icmp eq i64 %i.er, %n.vec273
  br i1 %cmp.n280, label %.loopexit.loopexit, label %vec.epilog.iter.check285

vec.epilog.iter.check285:                         ; preds = %middle.block279
  %min.epilog.iters.check286 = icmp eq i64 %n.mod.vf272, 0
  br i1 %min.epilog.iters.check286, label %.lr.ph161.preheader, label %vec.epilog.ph287, !prof !82

vec.epilog.ph287:                                 ; preds = %vector.main.loop.iter.check269, %vec.epilog.iter.check285
  %vec.epilog.resume.val281 = phi i64 [ %n.vec273, %vec.epilog.iter.check285 ], [ 0, %vector.main.loop.iter.check269 ]
  %n.vec289 = and i64 %i.er, -4                   ; 4 uses
  %i.fb = sub i64 %i.en, %n.vec289                ; 2 uses
  %i.fc = add i64 %n.vec289, %i.em                ; 2 uses
  %invariant.gep322 = getelementptr i8, ptr %i.h, i64 %i.en
  %invariant.gep324 = getelementptr i8, ptr %1, i64 %i.em
  br label %vec.epilog.vector.body290

vec.epilog.vector.body290:                        ; preds = %vec.epilog.vector.body290, %vec.epilog.ph287
  %index291 = phi i64 [ %vec.epilog.resume.val281, %vec.epilog.ph287 ], [ %index.next294, %vec.epilog.vector.body290 ] ; 3 uses
  %i.fd = xor i64 %index291, -1
  %gep323 = getelementptr i8, ptr %invariant.gep322, i64 %i.fd
  %i.fe = getelementptr inbounds i8, ptr %gep323, i64 -3
  %wide.load292 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !24, !alias.scope !90
  %reverse293 = shufflevector <4 x i8> %wide.load292, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %gep325 = getelementptr i8, ptr %invariant.gep324, i64 %index291
  store <4 x i8> %reverse293, ptr %gep325, align 1, !tbaa !24, !alias.scope !93, !noalias !90
  %index.next294 = add nuw i64 %index291, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.ff, label %vec.epilog.middle.block295, label %vec.epilog.vector.body290, !llvm.loop !96

vec.epilog.middle.block295:                       ; preds = %vec.epilog.vector.body290
  %cmp.n296 = icmp eq i64 %i.er, %n.vec289
  br i1 %cmp.n296, label %.loopexit.loopexit, label %.lr.ph161.preheader

.lr.ph161.preheader:                              ; preds = %vector.memcheck254, %iter.check283, %vec.epilog.iter.check285, %vec.epilog.middle.block295
  %indvars.iv193.ph = phi i64 [ %i.en, %iter.check283 ], [ %i.en, %vector.memcheck254 ], [ %i.ew, %vec.epilog.iter.check285 ], [ %i.fb, %vec.epilog.middle.block295 ]
  %indvars.iv188.ph = phi i64 [ %i.em, %iter.check283 ], [ %i.em, %vector.memcheck254 ], [ %i.ex, %vec.epilog.iter.check285 ], [ %i.fc, %vec.epilog.middle.block295 ]
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.lr.ph161 ], [ %indvars.iv193.ph, %.lr.ph161.preheader ]
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %.lr.ph161 ], [ %indvars.iv188.ph, %.lr.ph161.preheader ] ; 2 uses
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, -1 ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %i.h, i64 %indvars.iv.next194
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !24
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %1, i64 %indvars.iv188
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !24
  %i.fj = icmp ne i64 %indvars.iv.next194, 0
  %i.fk = icmp slt i64 %indvars.iv.next189, %i.bk
  %i.fl = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %i.fl, label %.lr.ph161, label %.loopexit.loopexit, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %.lr.ph161, %vec.epilog.middle.block295, %middle.block279
  %indvars.iv.next194.lcssa = phi i64 [ %i.fb, %vec.epilog.middle.block295 ], [ %i.ew, %middle.block279 ], [ %indvars.iv.next194, %.lr.ph161 ]
  %indvars.iv.next189.lcssa = phi i64 [ %i.fc, %vec.epilog.middle.block295 ], [ %i.ex, %middle.block279 ], [ %indvars.iv.next189, %.lr.ph161 ]
  %i.fm = trunc nsw i64 %indvars.iv.next194.lcssa to i32
  %i.fn = trunc nsw i64 %indvars.iv.next189.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.q, %bb.h
  %.6 = phi i32 [ %.2106168, %bb.h ], [ %i.eh, %bb.q ], [ %i.fm, %.loopexit.loopexit ] ; 5 uses
  %.4 = phi i32 [ %i.ck, %bb.h ], [ %.2169, %bb.q ], [ %i.fn, %.loopexit.loopexit ] ; 5 uses
  %.not118 = icmp eq i32 %.0110165, 4098
  br i1 %.not118, label %bb.y, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.fo = load i32, ptr %i.bg, align 4, !tbaa !56 ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 4098
  br i1 %i.fp, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr [4 x i8], ptr %i.f, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8     ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3
  %i.fu = icmp eq i32 %i.ft, 4098
  br i1 %i.fu, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  store i32 %.0110165, ptr %i.fs, align 4, !tbaa !3
  %i.fv = load i32, ptr %i.bg, align 4, !tbaa !56 ; 3 uses
  %i.fw = add nsw i32 %i.fv, -2
  %i.fx = icmp eq i32 %i.bn, %i.fw
  br i1 %i.fx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fy = icmp sgt i32 %.0110165, %i.l
  br i1 %i.fy, label %.lr.ph.i126.preheader, label %DGifGetPrefixChar.exit130

.lr.ph.i126.preheader:                            ; preds = %bb.u, %bb.v
  %i.fz = phi i32 [ %i.gf, %bb.v ], [ 1, %bb.u ]  ; 2 uses
  %.089.i128236 = phi i32 [ %i.gd, %bb.v ], [ %.0110165, %bb.u ] ; 2 uses
  %i.ga = icmp sgt i32 %.089.i128236, 4095
  br i1 %i.ga, label %DGifGetPrefixChar.exit130, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i126.preheader
  %i.gb = sext i32 %.089.i128236 to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3  ; 3 uses
  %i.ge = icmp sle i32 %i.gd, %i.l
  %i.gf = add nuw nsw i32 %i.fz, 1
  %exitcond.not.i129 = icmp eq i32 %i.fz, 4096
  %or.cond300 = select i1 %i.ge, i1 true, i1 %exitcond.not.i129
  br i1 %or.cond300, label %DGifGetPrefixChar.exit130, label %.lr.ph.i126.preheader, !llvm.loop !88

DGifGetPrefixChar.exit130:                        ; preds = %.lr.ph.i126.preheader, %bb.v, %bb.u
  %.07.i125 = phi i32 [ %.0110165, %bb.u ], [ 4098, %.lr.ph.i126.preheader ], [ %i.gd, %bb.v ]
  %i.gg = trunc i32 %.07.i125 to i8
  %i.gh = sext i32 %i.fv to i64
  %i.gi = getelementptr i8, ptr %i.g, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -2
  store i8 %i.gg, ptr %i.gj, align 1, !tbaa !24
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.gk = icmp sgt i32 %i.bn, %i.l
  br i1 %i.gk, label %.lr.ph.i132.preheader, label %DGifGetPrefixChar.exit136

.lr.ph.i132.preheader:                            ; preds = %bb.w, %bb.x
  %i.gl = phi i32 [ %i.gr, %bb.x ], [ 1, %bb.w ]  ; 2 uses
  %.089.i134235 = phi i32 [ %i.gp, %bb.x ], [ %i.bn, %bb.w ] ; 2 uses
  %i.gm = icmp sgt i32 %.089.i134235, 4095
  br i1 %i.gm, label %DGifGetPrefixChar.exit136, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i132.preheader
  %i.gn = sext i32 %.089.i134235 to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3  ; 3 uses
  %i.gq = icmp sle i32 %i.gp, %i.l
  %i.gr = add nuw nsw i32 %i.gl, 1
  %exitcond.not.i135 = icmp eq i32 %i.gl, 4096
  %or.cond301 = select i1 %i.gq, i1 true, i1 %exitcond.not.i135
  br i1 %or.cond301, label %DGifGetPrefixChar.exit136, label %.lr.ph.i132.preheader, !llvm.loop !88

DGifGetPrefixChar.exit136:                        ; preds = %.lr.ph.i132.preheader, %bb.x, %bb.w
  %.07.i131 = phi i32 [ %i.bn, %bb.w ], [ 4098, %.lr.ph.i132.preheader ], [ %i.gp, %bb.x ]
  %i.gs = trunc i32 %.07.i131 to i8
  %i.gt = sext i32 %i.fv to i64
  %i.gu = getelementptr i8, ptr %i.g, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gu, i64 -2
end_hunk_0
