Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@LogL16Encode:bb.a
  %i.bh = and i16 %i.bg, -256
  %i.bi = add nsw i64 %.0129189.us, 1
  %i.bj = sext i16 %i.bh to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0127.us = phi i64 [ %i.bi, %bb.n ], [ %i.bp, %bb.p ] ; 2 uses
  %i.bk = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0127.us
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !98
  %i.bm = and i16 %i.bl, -256
  %i.bn = zext i16 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, %i.bj
  br i1 %i.bo, label %bb.p, label %.loopexit145.us

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i64 %.0127.us, 1                ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %.0150.us
  br i1 %i.bq, label %.loopexit145.us.thread, label %bb.o

.loopexit145.us.thread:                           ; preds = %bb.p
  %i.br = xor i64 %.0129189.us, -1
  %reass.sub = add i64 %.0150.us, %i.br
  %i.bs = trunc i64 %reass.sub to i8
  %i.bt = add i8 %i.bs, 127
  %i.bu = getelementptr inbounds nuw i8, ptr %.2121.us, i64 1
  store i8 %i.bt, ptr %.2121.us, align 1, !tbaa !44
  %i.bv = lshr i16 %i.bg, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.2121.us, i64 2
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !44
  %i.by = add nsw i64 %.2114.us, -2
  br label %._crit_edge.us

.loopexit145.us:                                  ; preds = %bb.o, %.critedge.thread.us
  %i.bz = icmp slt i64 %.0129189.us, %.0150.us
  br i1 %i.bz, label %.lr.ph185.us, label %._crit_edge.us

.lr.ph185.us:                                     ; preds = %.loopexit145.us, %.loopexit.us
  %.4116184.us = phi i64 [ %i.eu, %.loopexit.us ], [ %.2114.us, %.loopexit145.us ] ; 3 uses
  %.4123183.us = phi ptr [ %.6125.us.lcssa, %.loopexit.us ], [ %.2121.us, %.loopexit145.us ] ; 2 uses
  %.2131182.us = phi i64 [ %.lcssa296, %.loopexit.us ], [ %.0129189.us, %.loopexit145.us ] ; 10 uses
  %i.ca = sub nsw i64 %.0150.us, %.2131182.us
  %spec.store.select.us = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 127) ; 16 uses
  %i.cb = add nuw nsw i64 %spec.store.select.us, 3
  %i.cc = icmp slt i64 %.4116184.us, %i.cb
  br i1 %i.cc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph185.us
  store ptr %.4123183.us, ptr %i.q, align 8, !tbaa !93
  %i.cd = load i64, ptr %i.s, align 8, !tbaa !100
  %i.ce = sub nsw i64 %i.cd, %.4116184.us
  store i64 %i.ce, ptr %i.u, align 8, !tbaa !94
  %i.cf = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not142.us = icmp eq i32 %i.cf, 0
  br i1 %.not142.us, label %.loopexit144, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !100
  %i.ci = load i64, ptr %i.u, align 8, !tbaa !94
  %i.cj = sub nsw i64 %i.ch, %i.ci
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph185.us
  %.5124.us = phi ptr [ %i.cg, %bb.r ], [ %.4123183.us, %.lr.ph185.us ] ; 3 uses
  %.5117.us = phi i64 [ %i.cj, %bb.r ], [ %.4116184.us, %.lr.ph185.us ]
  %i.ck = trunc i64 %spec.store.select.us to i8
  store i8 %i.ck, ptr %.5124.us, align 1, !tbaa !44
  %.6125171.us = getelementptr i8, ptr %.5124.us, i64 1 ; 8 uses
  %.6172.us = add i64 %.5117.us, -1               ; 2 uses
  %.not143173.us = icmp eq i64 %.0150.us, %.2131182.us
  br i1 %.not143173.us, label %._crit_edge.us, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %spec.store.select.us, 4
  br i1 %min.iters.check, label %.lr.ph178.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cl = getelementptr i8, ptr %.5124.us, i64 %spec.store.select.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 1
  %i.cn = shl i64 %.2131182.us, 1
  %i.co = getelementptr i8, ptr %.0118, i64 %i.cn
  %i.cp = add i64 %.2131182.us, %spec.store.select.us
  %i.cq = shl i64 %i.cp, 1
  %i.cr = getelementptr i8, ptr %.0118, i64 %i.cq
  %bound0 = icmp ult ptr %.6125171.us, %i.cr
  %bound1 = icmp ult ptr %i.co, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph178.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check300 = icmp ult i64 %spec.store.select.us, 16
  br i1 %min.iters.check300, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cs = and i64 %spec.store.select.us, 12
  %n.vec = and i64 %spec.store.select.us, -16     ; 5 uses
  %i.ct = getelementptr i8, ptr %.6125171.us, i64 %n.vec ; 2 uses
  %i.cu = and i64 %spec.store.select.us, 15
  %i.cv = add i64 %.2131182.us, %n.vec            ; 2 uses
  %i.cw = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.6125171.us, i64 %index ; 2 uses
  %i.cx = getelementptr [2 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <8 x i16>, ptr %i.cx, align 2, !tbaa !98, !alias.scope !251
  %wide.load301 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !98, !alias.scope !251
  %i.cz = lshr <8 x i16> %wide.load, splat (i16 8)
  %i.da = lshr <8 x i16> %wide.load301, splat (i16 8)
  %i.db = trunc nuw <8 x i16> %i.cz to <8 x i8>
  %i.dc = trunc nuw <8 x i16> %i.da to <8 x i8>
  %i.dd = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.db, ptr %next.gep, align 1, !tbaa !44, !alias.scope !252, !noalias !251
  store <8 x i8> %i.dc, ptr %i.dd, align 1, !tbaa !44, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.store.select.us, %n.vec
  br i1 %cmp.n, label %.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph178.us.preheader, label %vec.epilog.ph, !prof !99

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec302 = and i64 %spec.store.select.us, -4   ; 4 uses
  %i.df = getelementptr i8, ptr %.6125171.us, i64 %n.vec302 ; 2 uses
  %i.dg = and i64 %spec.store.select.us, 3
  %i.dh = add i64 %.2131182.us, %n.vec302         ; 2 uses
  %i.di = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index303 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next306, %vec.epilog.vector.body ] ; 3 uses
  %next.gep304 = getelementptr i8, ptr %.6125171.us, i64 %index303
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %index303
  %wide.load305 = load <4 x i16>, ptr %i.dj, align 2, !tbaa !98, !alias.scope !251
  %i.dk = lshr <4 x i16> %wide.load305, splat (i16 8)
  %i.dl = trunc nuw <4 x i16> %i.dk to <4 x i8>
  store <4 x i8> %i.dl, ptr %next.gep304, align 1, !tbaa !44, !alias.scope !252, !noalias !251
  %index.next306 = add nuw i64 %index303, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next306, %n.vec302
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !240

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n307 = icmp eq i64 %spec.store.select.us, %n.vec302
  br i1 %cmp.n307, label %.loopexit.us, label %.lr.ph178.us.preheader

.lr.ph178.us.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.6125176.us.ph = phi ptr [ %.6125171.us, %iter.check ], [ %.6125171.us, %vector.memcheck ], [ %i.ct, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ] ; 2 uses
  %.1128175.us.ph = phi i64 [ %spec.store.select.us, %iter.check ], [ %spec.store.select.us, %vector.memcheck ], [ %i.cu, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ] ; 4 uses
  %.3132174.us.ph = phi i64 [ %.2131182.us, %iter.check ], [ %.2131182.us, %vector.memcheck ], [ %i.cv, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ] ; 2 uses
  %i.dn = add nsw i64 %.1128175.us.ph, -1
  %xtraiter = and i64 %.1128175.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol

.lr.ph178.us.prol:                                ; preds = %.lr.ph178.us.preheader, %.lr.ph178.us.prol
  %.6125176.us.prol = phi ptr [ %.6125.us.prol, %.lr.ph178.us.prol ], [ %.6125176.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %.1128175.us.prol = phi i64 [ %i.do, %.lr.ph178.us.prol ], [ %.1128175.us.ph, %.lr.ph178.us.preheader ]
  %.3132174.us.prol = phi i64 [ %i.dp, %.lr.ph178.us.prol ], [ %.3132174.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph178.us.prol ], [ 0, %.lr.ph178.us.preheader ]
  %i.do = add nsw i64 %.1128175.us.prol, -1       ; 2 uses
  %i.dp = add nsw i64 %.3132174.us.prol, 1        ; 3 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.prol
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !98
  %i.ds = lshr i16 %i.dr, 8
  %i.dt = trunc nuw i16 %i.ds to i8
  store i8 %i.dt, ptr %.6125176.us.prol, align 1, !tbaa !44
  %.6125.us.prol = getelementptr inbounds nuw i8, ptr %.6125176.us.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol, !llvm.loop !241

.lr.ph178.us.prol.loopexit:                       ; preds = %.lr.ph178.us.prol, %.lr.ph178.us.preheader
  %.lcssa370.unr = phi i64 [ poison, %.lr.ph178.us.preheader ], [ %i.dp, %.lr.ph178.us.prol ]
  %.6125.us.lcssa369.unr = phi ptr [ poison, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.6125176.us.unr = phi ptr [ %.6125176.us.ph, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.1128175.us.unr = phi i64 [ %.1128175.us.ph, %.lr.ph178.us.preheader ], [ %i.do, %.lr.ph178.us.prol ]
  %.3132174.us.unr = phi i64 [ %.3132174.us.ph, %.lr.ph178.us.preheader ], [ %i.dp, %.lr.ph178.us.prol ]
  %i.du = icmp ult i64 %i.dn, 3
  br i1 %i.du, label %.loopexit.us, label %.lr.ph178.us

.lr.ph178.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us
  %.6125176.us = phi ptr [ %.6125.us.3, %.lr.ph178.us ], [ %.6125176.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %.1128175.us = phi i64 [ %i.ed, %.lr.ph178.us ], [ %.1128175.us.unr, %.lr.ph178.us.prol.loopexit ]
  %.3132174.us = phi i64 [ %i.ee, %.lr.ph178.us ], [ %.3132174.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !98
  %i.dx = lshr i16 %i.dw, 8
  %i.dy = trunc nuw i16 %i.dx to i8
  store i8 %i.dy, ptr %.6125176.us, align 1, !tbaa !44
  %.6125.us = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 1
  %i.dz = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ea = getelementptr i8, ptr %i.dz, i64 2
  %4 = load i16, ptr %i.ea, align 2, !tbaa !98
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  store i8 %6, ptr %.6125.us, align 1, !tbaa !44
  %.6125.us.1376 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 2
  %i.eb = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %7 = load i16, ptr %i.ec, align 2, !tbaa !98
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  store i8 %9, ptr %.6125.us.1376, align 1, !tbaa !44
  %.6125.us.2 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 3
  %i.ed = add nsw i64 %.1128175.us, -4            ; 2 uses
  %i.ee = add nsw i64 %.3132174.us, 4             ; 2 uses
  %i.ef = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.eg = getelementptr i8, ptr %i.ef, i64 6
  %10 = load i16, ptr %i.eg, align 2, !tbaa !98
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  store i8 %12, ptr %.6125.us.2, align 1, !tbaa !44
  %.6125.us.3 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 4 ; 2 uses
  %.not143.us.3 = icmp eq i64 %i.ed, 0
  br i1 %.not143.us.3, label %.loopexit.us, label %.lr.ph178.us, !llvm.loop !242

._crit_edge.us:                                   ; preds = %bb.s, %.loopexit.us, %.loopexit145.us.thread, %.loopexit145.us
  %.2131.lcssa.us = phi i64 [ %.0129189.us, %.loopexit145.us ], [ %.0150.us, %.loopexit145.us.thread ], [ %.0150.us, %bb.s ], [ %.lcssa296, %.loopexit.us ]
  %.4123.lcssa.us = phi ptr [ %.2121.us, %.loopexit145.us ], [ %i.bx, %.loopexit145.us.thread ], [ %.6125171.us, %bb.s ], [ %.6125.us.lcssa, %.loopexit.us ] ; 4 uses
  %.4116.lcssa.us = phi i64 [ %.2114.us, %.loopexit145.us ], [ %i.by, %.loopexit145.us.thread ], [ %.6172.us, %bb.s ], [ %i.eu, %.loopexit.us ] ; 2 uses
  %i.eh = icmp sgt i32 %.4.us, 3
  br i1 %i.eh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.us
  %i.ei = trunc i32 %.4.us to i8
  %i.ej = add i8 %i.ei, 126
  %i.ek = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 1
  store i8 %i.ej, ptr %.4123.lcssa.us, align 1, !tbaa !44
  %i.el = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0150.us
  %i.em = load i16, ptr %i.el, align 2, !tbaa !98
  %i.en = lshr i16 %i.em, 8
  %i.eo = trunc nuw i16 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 2
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !44
  %i.eq = add nsw i64 %.4116.lcssa.us, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.us
  %.7126.us = phi ptr [ %i.ep, %bb.t ], [ %.4123.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.7.us = phi i64 [ %i.eq, %bb.t ], [ %.4116.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.5.us = phi i32 [ %.4.us, %bb.t ], [ 0, %._crit_edge.us ] ; 3 uses
  %i.er = zext nneg i32 %.5.us to i64
  %i.es = add nsw i64 %.2131.lcssa.us, %i.er      ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.f
  br i1 %i.et, label %.preheader.us.preheader, label %._crit_edge195.us

.loopexit.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us, %vec.epilog.middle.block, %middle.block
  %.lcssa296 = phi i64 [ %i.dh, %vec.epilog.middle.block ], [ %i.cv, %middle.block ], [ %.lcssa370.unr, %.lr.ph178.us.prol.loopexit ], [ %i.ee, %.lr.ph178.us ] ; 3 uses
  %.6125.us.lcssa = phi ptr [ %i.df, %vec.epilog.middle.block ], [ %i.ct, %middle.block ], [ %.6125.us.lcssa369.unr, %.lr.ph178.us.prol.loopexit ], [ %.6125.us.3, %.lr.ph178.us ] ; 2 uses
  %i.eu = sub i64 %.6172.us, %spec.store.select.us ; 2 uses
  %i.ev = icmp slt i64 %.lcssa296, %.0150.us
  br i1 %i.ev, label %.lr.ph185.us, label %._crit_edge.us

._crit_edge195.us:                                ; preds = %bb.u, %bb.ak
  %.1193.us.1 = phi i32 [ %.5.us.1, %bb.ak ], [ %.5.us, %bb.u ]
  %.1113192.us.1 = phi i64 [ %.7.us.1, %bb.ak ], [ %.7.us, %bb.u ] ; 3 uses
  %.1120191.us.1 = phi ptr [ %.7126.us.1, %bb.ak ], [ %.7126.us, %bb.u ] ; 2 uses
  %.0129189.us.1 = phi i64 [ %i.jn, %bb.ak ], [ 0, %bb.u ] ; 10 uses
  %i.ew = icmp slt i64 %.1113192.us.1, 4
  br i1 %i.ew, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge195.us
  store ptr %.1120191.us.1, ptr %i.q, align 8, !tbaa !93
  %i.ex = load i64, ptr %i.s, align 8, !tbaa !100
  %i.ey = sub nsw i64 %i.ex, %.1113192.us.1
  store i64 %i.ey, ptr %i.u, align 8, !tbaa !94
  %i.ez = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us.1 = icmp eq i32 %i.ez, 0
  br i1 %.not.us.1, label %.loopexit144, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.fb = load i64, ptr %i.s, align 8, !tbaa !100
  %i.fc = load i64, ptr %i.u, align 8, !tbaa !94
  %i.fd = sub nsw i64 %i.fb, %i.fc
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge195.us
  %.2121.us.1 = phi ptr [ %i.fa, %bb.w ], [ %.1120191.us.1, %._crit_edge195.us ] ; 5 uses
  %.2114.us.1 = phi i64 [ %i.fd, %bb.w ], [ %.1113192.us.1, %._crit_edge195.us ] ; 3 uses
  %i.fe = icmp slt i64 %.0129189.us.1, %i.f
  br i1 %i.fe, label %.lr.ph.us.1, label %.critedge.thread.us.1

.lr.ph.us.1:                                      ; preds = %bb.x, %.critedge.us.1
  %.0167.us.1 = phi i64 [ %.lcssa352, %.critedge.us.1 ], [ %.0129189.us.1, %bb.x ] ; 6 uses
  %i.ff = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0167.us.1
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !98 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ 1, %.lr.ph.us.1 ], [ %indvars.iv.next.1.1, %bb.ac ] ; 5 uses
  %i.fh = add nsw i64 %.0167.us.1, %indvars.iv.1  ; 4 uses
  %i.fi = icmp slt i64 %i.fh, %i.f
  br i1 %i.fi, label %bb.z, label %.critedge.us.1.thread

bb.z:                                             ; preds = %bb.y
  %i.fj = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fh
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !98
  %i.fl = xor i16 %i.fk, %i.fg
  %i.fm = and i16 %i.fl, 255
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %bb.aa, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %bb.ab, %bb.z
  %indvars.iv.1.lcssa354 = phi i64 [ %indvars.iv.1, %bb.z ], [ %indvars.iv.next.1, %bb.ab ] ; 2 uses
  %.lcssa352 = phi i64 [ %i.fh, %bb.z ], [ %i.fr, %bb.ab ]
  %i.fo = icmp samesign ugt i64 %indvars.iv.1.lcssa354, 3
  br i1 %i.fo, label %.critedge.thread.us.1.loopexit248, label %.lr.ph.us.1

.critedge.us.1.thread:                            ; preds = %bb.aa, %bb.y
  %indvars.iv.1.lcssa = phi i64 [ %indvars.iv.1, %bb.y ], [ %indvars.iv.next.1, %bb.aa ] ; 2 uses
  %.lcssa = phi i64 [ %i.fh, %bb.y ], [ %i.fr, %bb.aa ]
  %i.fp = trunc nuw nsw i64 %indvars.iv.1.lcssa to i32
  %i.fq = icmp samesign ugt i64 %indvars.iv.1.lcssa, 3
  %spec.select278 = select i1 %i.fq, i64 %.0167.us.1, i64 %.lcssa
  br label %.critedge.thread.us.1

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fr = add nsw i64 %.0167.us.1, %indvars.iv.next.1 ; 4 uses
  %i.fs = icmp slt i64 %i.fr, %i.f
  br i1 %i.fs, label %bb.ab, label %.critedge.us.1.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fr
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !98
  %i.fv = xor i16 %i.fu, %i.fg
  %i.fw = and i16 %i.fv, 255
  %i.fx = icmp eq i16 %i.fw, 0
  br i1 %i.fx, label %bb.ac, label %.critedge.us.1

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 129
  br i1 %exitcond.1.not.1, label %.critedge.thread.us.1, label %bb.y

.critedge.thread.us.1.loopexit248:                ; preds = %.critedge.us.1
  %i.fy = trunc nuw nsw i64 %indvars.iv.1.lcssa354 to i32
  br label %.critedge.thread.us.1

.critedge.thread.us.1:                            ; preds = %bb.ac, %.critedge.us.1.thread, %.critedge.thread.us.1.loopexit248, %bb.x
  %.0150.us.1 = phi i64 [ %spec.select278, %.critedge.us.1.thread ], [ %.0129189.us.1, %bb.x ], [ %.0167.us.1, %.critedge.thread.us.1.loopexit248 ], [ %.0167.us.1, %bb.ac ] ; 10 uses
  %.4.us.1 = phi i32 [ %i.fp, %.critedge.us.1.thread ], [ %.1193.us.1, %bb.x ], [ %i.fy, %.critedge.thread.us.1.loopexit248 ], [ 129, %bb.ac ] ; 3 uses
  %i.fz = sub nsw i64 %.0150.us.1, %.0129189.us.1
  %i.ga = and i64 %i.fz, -2
  %or.cond.us.1 = icmp eq i64 %i.ga, 2
  br i1 %or.cond.us.1, label %bb.ad, label %.loopexit145.us.1

bb.ad:                                            ; preds = %.critedge.thread.us.1
  %i.gb = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0129189.us.1
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !98 ; 2 uses
  %i.gd = add nsw i64 %.0129189.us.1, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.0127.us.1 = phi i64 [ %i.gd, %bb.ad ], [ %i.gj, %bb.af ] ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0127.us.1
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !98
  %i.gg = xor i16 %i.gf, %i.gc
  %i.gh = and i16 %i.gg, 255
  %i.gi = icmp eq i16 %i.gh, 0
  br i1 %i.gi, label %bb.af, label %.loopexit145.us.1

bb.af:                                            ; preds = %bb.ae
  %i.gj = add nsw i64 %.0127.us.1, 1              ; 2 uses
  %i.gk = icmp eq i64 %i.gj, %.0150.us.1
  br i1 %i.gk, label %.loopexit145.us.1.thread, label %bb.ae

.loopexit145.us.1.thread:                         ; preds = %bb.af
  %i.gl = xor i64 %.0129189.us.1, -1
  %reass.sub.1 = add i64 %.0150.us.1, %i.gl
  %i.gm = trunc i64 %reass.sub.1 to i8
  %i.gn = add i8 %i.gm, 127
  %i.go = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 1
  store i8 %i.gn, ptr %.2121.us.1, align 1, !tbaa !44
  %i.gp = trunc i16 %i.gc to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 2
  store i8 %i.gp, ptr %i.go, align 1, !tbaa !44
  %i.gr = add nsw i64 %.2114.us.1, -2
  br label %._crit_edge.us.1

.loopexit145.us.1:                                ; preds = %bb.ae, %.critedge.thread.us.1
  %i.gs = icmp slt i64 %.0129189.us.1, %.0150.us.1
  br i1 %i.gs, label %.lr.ph185.us.1, label %._crit_edge.us.1

.lr.ph185.us.1:                                   ; preds = %.loopexit145.us.1, %.loopexit.us.1
  %.4116184.us.1 = phi i64 [ %i.jb, %.loopexit.us.1 ], [ %.2114.us.1, %.loopexit145.us.1 ] ; 3 uses
  %.4123183.us.1 = phi ptr [ %.6125.us.1.lcssa, %.loopexit.us.1 ], [ %.2121.us.1, %.loopexit145.us.1 ] ; 2 uses
  %.2131182.us.1 = phi i64 [ %.lcssa288, %.loopexit.us.1 ], [ %.0129189.us.1, %.loopexit145.us.1 ] ; 10 uses
  %i.gt = sub nsw i64 %.0150.us.1, %.2131182.us.1
  %spec.store.select.us.1 = tail call i64 @llvm.smin.i64(i64 %i.gt, i64 127) ; 16 uses
  %i.gu = add nuw nsw i64 %spec.store.select.us.1, 3
  %i.gv = icmp slt i64 %.4116184.us.1, %i.gu
  br i1 %i.gv, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph185.us.1
  store ptr %.4123183.us.1, ptr %i.q, align 8, !tbaa !93
  %i.gw = load i64, ptr %i.s, align 8, !tbaa !100
  %i.gx = sub nsw i64 %i.gw, %.4116184.us.1
  store i64 %i.gx, ptr %i.u, align 8, !tbaa !94
  %i.gy = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not142.us.1 = icmp eq i32 %i.gy, 0
  br i1 %.not142.us.1, label %.loopexit144, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.ha = load i64, ptr %i.s, align 8, !tbaa !100
  %i.hb = load i64, ptr %i.u, align 8, !tbaa !94
  %i.hc = sub nsw i64 %i.ha, %i.hb
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph185.us.1
end_hunk_0
