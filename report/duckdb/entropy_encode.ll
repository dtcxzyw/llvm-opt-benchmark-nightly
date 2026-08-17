inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13duckdb_brotli33BrotliOptimizeHuffmanCountsForRleEmPjPh:bb.a

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %.4207 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %.not157 = icmp eq i8 %i.cn, 0
  br i1 %.not157, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %.not158 = icmp eq i64 %.4207, 0
  br i1 %.not158, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr i8, ptr %i.cm, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !13
  %.not159 = icmp eq i8 %i.cp, 0
  br i1 %.not159, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 2 uses
  %i.cs = shl i32 %i.cr, 8
  %i.ct = zext i32 %i.cs to i64
  %reass.sub = sub i64 %i.ct, %.0144205
  %i.cu = add i64 %reass.sub, -1240
  %i.cv = icmp ult i64 %i.cu, -2480
  br i1 %i.cv, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x
  %i.cw = icmp ugt i64 %.0148204, 3
  br i1 %i.cw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = icmp eq i64 %.0148204, 3
  %i.cy = icmp eq i64 %.0141206, 0
  %or.cond5 = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond5, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cz = lshr i64 %.0148204, 1
  %i.da = add i64 %.0141206, %i.cz                ; 2 uses
  %i.db = udiv i64 %i.da, %.0148204
  %i.dc = icmp ugt i64 %.0148204, %i.da
  %i.dd = icmp eq i64 %.0141206, 0
  %i.de = trunc i64 %i.db to i32
  %i.df = select i1 %i.dc, i32 1, i32 %i.de
  %i.dg = select i1 %i.dd, i32 0, i32 %i.df       ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %1, i64 %.4207 ; 2 uses
  %min.iters.check243 = icmp ult i64 %.0148204, 8
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %bb.ae
  %n.vec245 = and i64 %.0148204, -8               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next248, %vector.body246 ] ; 2 uses
  %i.di = xor i64 %index247, -1
  %i.dj = getelementptr [4 x i8], ptr %i.dh, i64 %i.di ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -12
  %i.dl = getelementptr i8, ptr %i.dj, i64 -28
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4, !tbaa !3
  %index.next248 = add nuw i64 %index247, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next248, %n.vec245
  br i1 %i.dm, label %middle.block249, label %vector.body246, !llvm.loop !34

middle.block249:                                  ; preds = %vector.body246
  %cmp.n250 = icmp eq i64 %.0148204, %n.vec245
  br i1 %cmp.n250, label %.loopexit, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %bb.ae, %middle.block249
  %.0203.ph = phi i64 [ 0, %bb.ae ], [ %n.vec245, %middle.block249 ]
  br label %scalar.ph242

scalar.ph242:                                     ; preds = %scalar.ph242.preheader, %scalar.ph242
  %.0203 = phi i64 [ %i.dp, %scalar.ph242 ], [ %.0203.ph, %scalar.ph242.preheader ] ; 2 uses
  %i.dn = xor i64 %.0203, -1
  %i.do = getelementptr [4 x i8], ptr %i.dh, i64 %i.dn
  store i32 %i.dg, ptr %i.do, align 4, !tbaa !3
  %i.dp = add nuw i64 %.0203, 1                   ; 2 uses
  %exitcond220.not = icmp eq i64 %i.dp, %.0148204
  br i1 %exitcond220.not, label %.loopexit, label %scalar.ph242, !llvm.loop !35

.loopexit:                                        ; preds = %scalar.ph242, %middle.block249, %bb.ad
  %i.dq = icmp ult i64 %.4207, %i.ck
  br i1 %i.dq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = add i32 %i.du, %i.ds
  %i.dw = getelementptr i8, ptr %i.dr, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = add i32 %i.dv, %i.dx
  %i.dz = shl i32 %i.dy, 8
  %i.ea = udiv i32 %i.dz, 3
  %i.eb = add nuw nsw i32 %i.ea, 420
  br label %bb.ai

bb.ag:                                            ; preds = %.loopexit
  %i.ec = icmp ult i64 %.4207, %.0131187
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = shl i32 %i.ee, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ah
  %.1145.shrunk = phi i32 [ %i.eb, %bb.af ], [ %i.ef, %bb.ah ], [ 0, %bb.ag ]
  %.1145 = zext i32 %.1145.shrunk to i64          ; 2 uses
  br i1 %i.cl, label %.thread, label %.thread176

.thread176:                                       ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.4207
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64
  br label %.thread

bb.aj:                                            ; preds = %bb.ab
  %i.ej = add i64 %.0148204, 1                    ; 6 uses
  %i.ek = zext i32 %i.cr to i64
  %i.el = add i64 %.0141206, %i.ek                ; 3 uses
  %i.em = icmp ugt i64 %i.ej, 3
  br i1 %i.em, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.en = shl i64 %i.el, 8
  %i.eo = lshr i64 %i.ej, 1
  %i.ep = add i64 %i.en, %i.eo
  %i.eq = udiv i64 %i.ep, %i.ej                   ; 2 uses
  %i.er = icmp eq i64 %i.ej, 4
  %i.es = add nuw nsw i64 %i.eq, 120
  %spec.select236 = select i1 %i.er, i64 %i.es, i64 %i.eq
  br label %.thread

.thread:                                          ; preds = %bb.ak, %.thread176, %bb.aj, %bb.ai
  %i.et = phi i64 [ 1, %bb.ai ], [ %i.ej, %bb.aj ], [ %i.ej, %bb.ak ], [ 1, %.thread176 ]
  %.3147 = phi i64 [ %.1145, %bb.ai ], [ %.0144205, %bb.aj ], [ %spec.select236, %bb.ak ], [ %.1145, %.thread176 ]
  %.2143 = phi i64 [ 0, %bb.ai ], [ %i.el, %bb.aj ], [ %i.el, %bb.ak ], [ %i.ei, %.thread176 ]
  %i.eu = add nuw i64 %.4207, 1
  %.not156.not = icmp ult i64 %.4207, %.0131187
  br i1 %.not156.not, label %bb.x, label %.critedge167, !llvm.loop !36

.critedge167:                                     ; preds = %bb.b, %.thread, %bb.a, %bb.c, %._crit_edge, %.loopexit180
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN13duckdb_brotli22BrotliWriteHuffmanTreeEPKhmPmPhS3_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.04494 = phi i64 [ %1, %.lr.ph ], [ %i.f, %bb.c ] ; 10 uses
  %.04593 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %i.b = xor i64 %.04593, -1
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.04494, -1
  %i.g = add nuw i64 %.04593, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %._crit_edge108, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b
  %i.h = icmp ult i64 %1, 51
  %.not.i = icmp eq i64 %.04494, 0                ; 3 uses
  %or.cond87 = select i1 %i.h, i1 true, i1 %.not.i
  br i1 %or.cond87, label %_ZL16DecideOverRleUsePKhmPiS1_.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %._crit_edge, %.critedge.i
  %.03553.i = phi i64 [ %.1.i, %.critedge.i ], [ 0, %._crit_edge ]
  %.03652.i = phi i64 [ %.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge ] ; 4 uses
  %.03751.i = phi i64 [ %.138.i, %.critedge.i ], [ 1, %._crit_edge ]
  %.03950.i = phi i64 [ %.140.i, %.critedge.i ], [ 1, %._crit_edge ]
  %.04149.i = phi i64 [ %.142.i, %.critedge.i ], [ 0, %._crit_edge ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.03652.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13    ; 3 uses
  %.044.i = add nuw i64 %.03652.i, 1              ; 3 uses
  %i.k = icmp ult i64 %.044.i, %.04494
  br i1 %i.k, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph54.i
  %i.l = sub nuw i64 %.04494, %.03652.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.046.i = phi i64 [ %.0.i, %bb.d ], [ %.044.i, %.lr.ph.preheader.i ] ; 2 uses
  %.03445.i = phi i64 [ %i.p, %bb.d ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.046.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13
  %i.o = icmp eq i8 %i.n, %i.j
  br i1 %i.o, label %bb.d, label %.critedge.loopexit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add i64 %.03445.i, 1
  %.0.i = add i64 %.046.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %.04494
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !38

.critedge.loopexit.i:                             ; preds = %bb.d, %.lr.ph.i
  %.034.lcssa.ph.i = phi i64 [ %.03445.i, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %.pre.i = add i64 %.034.lcssa.ph.i, %.03652.i
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.lr.ph54.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.critedge.loopexit.i ], [ %.044.i, %.lr.ph54.i ] ; 2 uses
  %.034.lcssa.i = phi i64 [ %.034.lcssa.ph.i, %.critedge.loopexit.i ], [ 1, %.lr.ph54.i ] ; 4 uses
  %i.q = icmp ugt i64 %.034.lcssa.i, 2
  %i.r = icmp eq i8 %i.j, 0
  %or.cond.i = select i1 %i.q, i1 %i.r, i1 false  ; 2 uses
  %i.s = zext i1 %or.cond.i to i64
  %.140.i = add i64 %.03950.i, %i.s               ; 2 uses
  %i.t = select i1 %or.cond.i, i64 %.034.lcssa.i, i64 0
  %.1.i = add i64 %i.t, %.03553.i                 ; 2 uses
  %i.u = icmp ugt i64 %.034.lcssa.i, 3
  %i.v = icmp ne i8 %i.j, 0
  %or.cond5.i = select i1 %i.u, i1 %i.v, i1 false ; 2 uses
  %i.w = select i1 %or.cond5.i, i64 %.034.lcssa.i, i64 0
  %.142.i = add i64 %i.w, %.04149.i               ; 2 uses
  %i.x = zext i1 %or.cond5.i to i64
  %.138.i = add i64 %.03751.i, %i.x               ; 2 uses
  %i.y = icmp ult i64 %.pre-phi.i, %.04494
  br i1 %i.y, label %.lr.ph54.i, label %._crit_edge.loopexit.i, !llvm.loop !39

._crit_edge.loopexit.i:                           ; preds = %.critedge.i
  %i.z = shl i64 %.138.i, 1
  %i.aa = icmp ugt i64 %.142.i, %i.z
  %i.ab = shl i64 %.140.i, 1
  %i.ac = icmp ugt i64 %.1.i, %i.ab
  br i1 %.not.i, label %._crit_edge108, label %.lr.ph107.preheader

_ZL16DecideOverRleUsePKhmPiS1_.exit:              ; preds = %._crit_edge
  br i1 %.not.i, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %._crit_edge.loopexit.i, %_ZL16DecideOverRleUsePKhmPiS1_.exit
  %.071137 = phi i1 [ %i.ac, %._crit_edge.loopexit.i ], [ false, %_ZL16DecideOverRleUsePKhmPiS1_.exit ]
  %.072136 = phi i1 [ %i.aa, %._crit_edge.loopexit.i ], [ false, %_ZL16DecideOverRleUsePKhmPiS1_.exit ]
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %_ZL38BrotliWriteHuffmanTreeRepetitionsZerosmPmPhS0_.exit
  %.042106 = phi i8 [ %.143, %_ZL38BrotliWriteHuffmanTreeRepetitionsZerosmPmPhS0_.exit ], [ 8, %.lr.ph107.preheader ] ; 6 uses
  %.146104 = phi i64 [ %i.ep, %_ZL38BrotliWriteHuffmanTreeRepetitionsZerosmPmPhS0_.exit ], [ 0, %.lr.ph107.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.146104
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13  ; 13 uses
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond = select i1 %i.af, i1 %.072136, i1 false
  %i.ag = icmp eq i8 %i.ae, 0                     ; 4 uses
  %or.cond3 = select i1 %i.ag, i1 %.071137, i1 false
  %or.cond88 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond88, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %.lr.ph107
  %.097 = add nuw i64 %.146104, 1                 ; 2 uses
  %i.ah = icmp ult i64 %.097, %.04494
  br i1 %i.ah, label %.lr.ph100.preheader, label %.critedge.thread138

.lr.ph100.preheader:                              ; preds = %.preheader
  %i.ai = sub i64 %.04494, %.146104
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.e
  %.099 = phi i64 [ %.0, %bb.e ], [ %.097, %.lr.ph100.preheader ] ; 2 uses
  %.04198 = phi i64 [ %i.am, %bb.e ], [ 1, %.lr.ph100.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.099
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = icmp eq i8 %i.ak, %i.ae
  br i1 %i.al, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph100
  %i.am = add i64 %.04198, 1
  %.0 = add nuw i64 %.099, 1                      ; 2 uses
  %exitcond114.not = icmp eq i64 %.0, %.04494
  br i1 %exitcond114.not, label %.critedge, label %.lr.ph100, !llvm.loop !40

.critedge:                                        ; preds = %bb.e, %.lr.ph100
  %.041.lcssa = phi i64 [ %.04198, %.lr.ph100 ], [ %i.ai, %bb.e ] ; 7 uses
  br i1 %i.ag, label %bb.f, label %bb.k

.critedge.thread138:                              ; preds = %.preheader
  br i1 %i.ag, label %.lr.ph.preheader.i50, label %bb.k

.critedge.thread:                                 ; preds = %.lr.ph107
  br i1 %i.ag, label %.lr.ph.preheader.i50, label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.an = icmp eq i64 %.041.lcssa, 11
  br i1 %i.an, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.ao = load i64, ptr %2, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !13
  %i.aq = load i64, ptr %2, align 8, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !13
  %i.as = load i64, ptr %2, align 8, !tbaa !19
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ult i64 %.041.lcssa, 3
  br i1 %i.au, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre46.i = load i64, ptr %2, align 8, !tbaa !19
  %i.av = add i64 %.041.lcssa, -3
  br label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %.not.i49 = icmp eq i64 %.041.lcssa, 0
  br i1 %.not.i49, label %_ZL38BrotliWriteHuffmanTreeRepetitionsZerosmPmPhS0_.exit, label %.lr.ph.preheader.i50

.lr.ph.preheader.i50:                             ; preds = %.critedge.thread138, %.critedge.thread, %.preheader.i
  %.176808386 = phi i64 [ %.041.lcssa, %.preheader.i ], [ 1, %.critedge.thread ], [ 1, %.critedge.thread138 ] ; 6 uses
  %.pre.i51 = load i64, ptr %2, align 8, !tbaa !19 ; 2 uses
  %xtraiter = and i64 %.176808386, 1
  %i.aw = icmp eq i64 %.176808386, 1
  br i1 %i.aw, label %.lr.ph.i52.epil.preheader, label %.lr.ph.preheader.i50.new

.lr.ph.preheader.i50.new:                         ; preds = %.lr.ph.preheader.i50
  %unroll_iter = and i64 %.176808386, 2
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52, %.lr.ph.preheader.i50.new
  %i.ax = phi i64 [ %.pre.i51, %.lr.ph.preheader.i50.new ], [ %i.bh, %.lr.ph.i52 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i50.new ], [ %niter.next.1, %.lr.ph.i52 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  store i8 0, ptr %i.ay, align 1, !tbaa !13
  %i.az = load i64, ptr %2, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %i.az
  store i8 0, ptr %i.ba, align 1, !tbaa !13
  %i.bb = load i64, ptr %2, align 8, !tbaa !19
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bc, ptr %2, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !13
  %i.be = load i64, ptr %2, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !13
  %i.bg = load i64, ptr %2, align 8, !tbaa !19
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  store i64 %i.bh, ptr %2, align 8, !tbaa !19
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL38BrotliWriteHuffmanTreeRepetitionsZerosmPmPhS0_.exit.loopexit160.unr-lcssa, label %.lr.ph.i52, !llvm.loop !41

bb.h:                                             ; preds = %._crit_edge.i, %.thread.i
  %.17679 = phi i64 [ 11, %.thread.i ], [ %.041.lcssa, %._crit_edge.i ] ; 2 uses
  %i.bi = phi i64 [ %i.at, %.thread.i ], [ %.pre46.i, %._crit_edge.i ] ; 5 uses
  %.042.i = phi i64 [ 7, %.thread.i ], [ %i.av, %._crit_edge.i ]
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.bj = phi i64 [ %i.bi, %bb.h ], [ %i.bq, %bb.i ]
  %.1.i48 = phi i64 [ %.042.i, %bb.h ], [ %i.bt, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj
  store i8 17, ptr %i.bk, align 1, !tbaa !13
  %i.bl = trunc i64 %.1.i48 to i8
  %i.bm = and i8 %i.bl, 7
  %i.bn = load i64, ptr %2, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !13
  %i.bp = load i64, ptr %2, align 8, !tbaa !19    ; 4 uses
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %2, align 8, !tbaa !19
  %i.br = lshr i64 %.1.i48, 3                     ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = add nsw i64 %i.br, -1
  br i1 %i.bs, label %bb.j, label %bb.i, !llvm.loop !42

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp ult i64 %i.bi, %i.bp
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZL7ReversePhmm.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.01316.i.i = phi i64 [ %.013.i.i, %.lr.ph.i.i ], [ %i.bp, %bb.j ] ; 2 uses
  %.015.i.i = phi i64 [ %i.bz, %.lr.ph.i.i ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %.015.i.i ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %.01316.i.i ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !13
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli31BrotliConvertBitDepthsToSymbolsEPKhmPt:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.c = icmp ult i64 %1, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02124 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !46
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !46
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !46
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.02124
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !46
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !46
  %i.ae = add nuw i64 %.02124, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !47

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02124.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02124.epil = phi i64 [ %i.al, %.lr.ph.epil ], [ %.02124.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.02124.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !46
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !46
  %i.al = add nuw i64 %.02124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.pre = load i16, ptr %.phi.trans.insert34, align 2, !tbaa !46
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre37 = load i16, ptr %.phi.trans.insert36, align 4, !tbaa !46
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.pre40 = load i16, ptr %.phi.trans.insert39, align 2, !tbaa !46
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre43 = load i16, ptr %.phi.trans.insert42, align 8, !tbaa !46
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.pre46 = load i16, ptr %.phi.trans.insert45, align 2, !tbaa !46
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre49 = load i16, ptr %.phi.trans.insert48, align 4, !tbaa !46
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.pre52 = load i16, ptr %.phi.trans.insert51, align 2, !tbaa !46
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre55 = load i16, ptr %.phi.trans.insert54, align 16, !tbaa !46
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.pre58 = load i16, ptr %.phi.trans.insert57, align 2, !tbaa !46
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre61 = load i16, ptr %.phi.trans.insert60, align 4, !tbaa !46
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.pre64 = load i16, ptr %.phi.trans.insert63, align 2, !tbaa !46
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre67 = load i16, ptr %.phi.trans.insert66, align 8, !tbaa !46
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.pre70 = load i16, ptr %.phi.trans.insert69, align 2, !tbaa !46
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre73 = load i16, ptr %.phi.trans.insert72, align 4, !tbaa !46
  %i.am = shl i16 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.an = phi i16 [ %.pre73, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ao = phi i16 [ %.pre70, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ap = phi i16 [ %.pre67, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aq = phi i16 [ %.pre64, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ar = phi i16 [ %.pre61, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.as = phi i16 [ %.pre58, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.at = phi i16 [ %.pre55, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.au = phi i16 [ %.pre52, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.av = phi i16 [ %.pre49, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aw = phi i16 [ %.pre46, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ax = phi i16 [ %.pre43, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ay = phi i16 [ %.pre40, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.az = phi i16 [ %.pre37, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ba = phi i16 [ %i.am, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.bb, align 2, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !46
  %i.bd = add i16 %i.az, %i.ba
  %i.be = shl i16 %i.bd, 1                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !46
  %i.bg = add i16 %i.ay, %i.be
  %i.bh = shl i16 %i.bg, 1                        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.bh, ptr %i.bi, align 8, !tbaa !46
  %i.bj = add i16 %i.ax, %i.bh
  %i.bk = shl i16 %i.bj, 1                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !46
  %i.bm = add i16 %i.aw, %i.bk
  %i.bn = shl i16 %i.bm, 1                        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.bn, ptr %i.bo, align 4, !tbaa !46
  %i.bp = add i16 %i.av, %i.bn
  %i.bq = shl i16 %i.bp, 1                        ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !46
  %i.bs = add i16 %i.au, %i.bq
  %i.bt = shl i16 %i.bs, 1                        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.bt, ptr %i.bu, align 16, !tbaa !46
  %i.bv = add i16 %i.at, %i.bt
  %i.bw = shl i16 %i.bv, 1                        ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !46
  %i.by = add i16 %i.as, %i.bw
  %i.bz = shl i16 %i.by, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.bz, ptr %i.ca, align 4, !tbaa !46
  %i.cb = add i16 %i.ar, %i.bz
  %i.cc = shl i16 %i.cb, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !46
  %i.ce = add i16 %i.aq, %i.cc
  %i.cf = shl i16 %i.ce, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.cf, ptr %i.cg, align 8, !tbaa !46
  %i.ch = add i16 %i.ap, %i.cf
  %i.ci = shl i16 %i.ch, 1                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !46
  %i.ck = add i16 %i.ao, %i.ci
  %i.cl = shl i16 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.cl, ptr %i.cm, align 4, !tbaa !46
  %i.cn = add i16 %i.an, %i.cl
  %i.co = shl i16 %i.cn, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !46
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %._crit_edge, %bb.c
  %.227 = phi i64 [ %i.ee, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.227
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13  ; 3 uses
  %.not = icmp eq i8 %i.cr, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph28
  %i.cs = zext i8 %i.cr to i64                    ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cs ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !46 ; 4 uses
  %i.cv = add i16 %i.cu, 1
  store i16 %i.cv, ptr %i.ct, align 2, !tbaa !46
  %i.cw = and i16 %i.cu, 15
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17BrotliReverseBitsmtE4kLut, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !19 ; 3 uses
  %i.da = icmp ugt i8 %i.cr, 4
  br i1 %i.da, label %.lr.ph.i.preheader, label %_ZL17BrotliReverseBitsmt.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.db = add nsw i64 %i.cs, -5                   ; 2 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %xtraiter77 = and i64 %i.dd, 3                  ; 3 uses
  %3 = icmp ult i64 %i.db, 12
  br i1 %3, label %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter82 = and i64 %i.dd, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01115.i = phi i64 [ %i.cz, %.lr.ph.i.preheader.new ], [ %i.dr, %.lr.ph.i ]
  %.01214.i = phi i16 [ %i.cu, %.lr.ph.i.preheader.new ], [ 0, %.lr.ph.i ] ; 3 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter83.next.1, %.lr.ph.i ]
  %i.de = lshr i16 %.01214.i, 4
  %i.df = and i16 %i.de, 15
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17BrotliReverseBitsmtE4kLut, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dj = shl i64 %.01115.i, 8
  %i.dk = shl i64 %i.di, 4
  %i.dl = or i64 %i.dj, %i.dk
  %i.dm = lshr i16 %.01214.i, 8
  %i.dn = and i16 %i.dm, 15
  %4 = zext nneg i16 %i.dn to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17BrotliReverseBitsmtE4kLut, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !19
  %7 = or i64 %6, %i.dl
  %8 = lshr i16 %.01214.i, 12
  %i.do = zext nneg i16 %8 to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17BrotliReverseBitsmtE4kLut, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !19
  %9 = shl i64 %7, 8
  %10 = shl i64 %i.dq, 4
  %i.dr = or i64 %9, %10                          ; 3 uses
  %niter83.next.1 = add nuw i64 %niter83, 4       ; 2 uses
  %niter83.ncmp.1.not = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1.not, label %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !50

_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %_ZL17BrotliReverseBitsmt.exit, label %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a

_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a: ; preds = %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01115.i.epil.init = phi i64 [ %i.cz, %.lr.ph.i.preheader ], [ %i.dr, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa ]
  %.01214.i.epil.init = phi i16 [ %i.cu, %.lr.ph.i.preheader ], [ 0, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter77, 0
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i.epil.preheader, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a
  %.01115.i.epil.init.a = phi i64 [ %i.dy, %.lr.ph.i.epil.preheader ], [ %.01115.i.epil.init, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a ]
  %.01214.i.epil.init.a = phi i16 [ %i.dt, %.lr.ph.i.epil.preheader ], [ %.01214.i.epil.init, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a ]
  %epil.iter78 = phi i64 [ %epil.iter78.next, %.lr.ph.i.epil.preheader ], [ 0, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa.a ]
  %i.ds = shl i64 %.01115.i.epil.init.a, 4
  %i.dt = lshr i16 %.01214.i.epil.init.a, 4       ; 2 uses
  %i.du = and i16 %i.dt, 15
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @_ZZL17BrotliReverseBitsmtE4kLut, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dy = or i64 %i.dx, %i.ds                     ; 2 uses
  %epil.iter78.next = add i64 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i64 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %_ZL17BrotliReverseBitsmt.exit, label %.lr.ph.i.epil.preheader, !llvm.loop !51

_ZL17BrotliReverseBitsmt.exit:                    ; preds = %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader, %bb.b
  %.011.lcssa.i = phi i64 [ %i.cz, %bb.b ], [ %i.dr, %_ZL17BrotliReverseBitsmt.exit.loopexit.unr-lcssa ], [ %i.dy, %.lr.ph.i.epil.preheader ]
  %i.dz = sub nsw i64 0, %i.cs
  %i.ea = and i64 %i.dz, 3
  %i.eb = lshr i64 %.011.lcssa.i, %i.ea
  %i.ec = trunc i64 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.227
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph28, %_ZL17BrotliReverseBitsmt.exit
  %i.ee = add nuw i64 %.227, 1                    ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ee, %1
  br i1 %exitcond33.not, label %._crit_edge29, label %.lr.ph28, !llvm.loop !52

._crit_edge29:                                    ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 4}
!8 = !{!"_ZTSN13duckdb_brotli11HuffmanTreeE", !4, i64 0, !9, i64 4, !9, i64 6}
!9 = !{!"short", !5, i64 0}
!10 = !{!8, !9, i64 6}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !12}
!15 = !{!8, !4, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !12, !28, !27}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12, !27, !28}
!35 = distinct !{!35, !12, !28, !27}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = !{!9, !9, i64 0}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !12}
end_hunk_1
