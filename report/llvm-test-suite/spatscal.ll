inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Make_Spatial_Prediction_Frame:bb.a
  %i.or = load i16, ptr %i.op, align 2, !tbaa !27
  %i.os = sext i16 %i.or to i32
  %i.ot = mul nsw i32 %i.ob, %i.os
  %i.ou = load i16, ptr %i.oq, align 2, !tbaa !27
  %i.ov = sext i16 %i.ou to i32
  %i.ow = mul nsw i32 %i.oa, %i.ov
  %i.ox = add nsw i32 %i.ow, %i.ot                ; 2 uses
  %i.oy = icmp sgt i32 %i.ox, -1
  %i.oz = select i1 %i.oy, i32 128, i32 127
  %i.pa = add nsw i32 %i.oz, %i.ox
  %i.pb = lshr i32 %i.pa, 8
  %i.pc = trunc i32 %i.pb to i8
  store i8 %i.pc, ptr %i.oo, align 1, !tbaa !15
  %i.pd = getelementptr inbounds i8, ptr %i.oo, i64 %i.nl ; 2 uses
  %i.pe = getelementptr inbounds [2 x i8], ptr %i.op, i64 %i.nm ; 2 uses
  %i.pf = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.nm ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i175.unr-lcssa, label %.lr.ph.i171.new, !llvm.loop !77

._crit_edge.i175.unr-lcssa:                       ; preds = %.lr.ph.i171.new
  br i1 %lcmp.mod346.not, label %._crit_edge.i175, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i175.unr-lcssa, %.lr.ph.i171
  %.044.i.epil.init = phi ptr [ %i.no, %.lr.ph.i171 ], [ %i.pd, %._crit_edge.i175.unr-lcssa ]
  %.03743.i.epil.init = phi ptr [ %i.nw, %.lr.ph.i171 ], [ %i.pf, %._crit_edge.i175.unr-lcssa ]
  %.03842.i.epil.init = phi ptr [ %i.nu, %.lr.ph.i171 ], [ %i.pe, %._crit_edge.i175.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod347)
  %i.pg = load i16, ptr %.03842.i.epil.init, align 2, !tbaa !27
  %i.ph = sext i16 %i.pg to i32
  %i.pi = mul nsw i32 %i.ob, %i.ph
  %i.pj = load i16, ptr %.03743.i.epil.init, align 2, !tbaa !27
  %i.pk = sext i16 %i.pj to i32
  %i.pl = mul nsw i32 %i.oa, %i.pk
  %i.pm = add nsw i32 %i.pl, %i.pi                ; 2 uses
  %i.pn = icmp sgt i32 %i.pm, -1
  %i.po = select i1 %i.pn, i32 128, i32 127
  %i.pp = add nsw i32 %i.po, %i.pm
  %i.pq = lshr i32 %i.pp, 8
  %i.pr = trunc i32 %i.pq to i8
  store i8 %i.pr, ptr %.044.i.epil.init, align 1, !tbaa !15
  br label %._crit_edge.i175

._crit_edge.i175:                                 ; preds = %._crit_edge.i175.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count.i
  br i1 %exitcond50.not.i, label %Subsample_Horizontal.exit, label %.lr.ph.i171, !llvm.loop !78

Subsample_Horizontal.exit:                        ; preds = %._crit_edge.i175, %bb.m, %.lr.ph47.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Deinterlace(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %2, %4
  br i1 %i.a, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.a
  %i.b = sext i32 %3 to i64                       ; 5 uses
  %i.c = sub nsw i64 0, %i.b                      ; 4 uses
  %i.d = add nsw i32 %4, -1                       ; 2 uses
  %.not = icmp eq i32 %5, 0
  %i.e = shl nsw i32 %3, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = add nsw i32 %4, -2
  %i.i = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %.not, label %.lr.ph68.split.us, label %.lr.ph68.split

.lr.ph68.split.us:                                ; preds = %.lr.ph68
  br i1 %i.i, label %.lr.ph66.us.preheader, label %._crit_edge

.lr.ph66.us.preheader:                            ; preds = %.lr.ph68.split.us
  %i.j = zext nneg i32 %2 to i64
  %i.k = zext nneg i32 %3 to i64                  ; 2 uses
  %i.l = zext nneg i32 %i.d to i64
  %i.m = sext i32 %i.h to i64
  %i.n = zext nneg i32 %4 to i64
  br label %.lr.ph66.us

.lr.ph66.us:                                      ; preds = %.lr.ph66.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv79 = phi i64 [ %i.j, %.lr.ph66.us.preheader ], [ %indvars.iv.next80, %..loopexit_crit_edge.us ] ; 6 uses
  %i.o = mul nuw nsw i64 %indvars.iv79, %i.k      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 3 uses
  %i.q = icmp eq i64 %indvars.iv79, 0
  %.pn.us = select i1 %i.q, i64 %i.b, i64 %i.c
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %.pn.us
  %i.s = icmp eq i64 %indvars.iv79, %i.l
  %.pn58.us = select i1 %i.s, i64 %i.c, i64 %i.b
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.pn58.us
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 3 uses
  %i.v = icmp samesign ult i64 %indvars.iv79, 2
  %.idx.us = select i1 %i.v, i64 0, i64 %i.g
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %.idx.us
  %.not59.us = icmp slt i64 %indvars.iv79, %i.m
  %.idx60.us = select i1 %.not59.us, i64 %i.f, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx60.us
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66.us, %bb.b
  %indvars.iv74 = phi i64 [ 0, %.lr.ph66.us ], [ %indvars.iv.next75, %bb.b ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv74
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv74
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, %i.aa
  %i.af = shl nuw nsw i32 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv74
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv74
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv74
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = zext i8 %i.ao to i32
  %.neg62.us = add nuw nsw i32 %i.af, %i.aj
  %i.aq = add nuw nsw i32 %i.am, %i.ap
  %i.ar = sub nsw i32 %.neg62.us, %i.aq           ; 2 uses
  %i.as = load ptr, ptr @Clip, align 8, !tbaa !8
  %i.at = icmp sgt i32 %i.ar, -1
  %i.au = select i1 %i.at, i32 8, i32 7
  %i.av = add nsw i32 %i.au, %i.ar
  %i.aw = ashr i32 %i.av, 4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv74
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !15
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %i.k
  br i1 %exitcond78.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !79

..loopexit_crit_edge.us:                          ; preds = %bb.b
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next80, %i.n
  br i1 %i.bb, label %.lr.ph66.us, label %._crit_edge, !llvm.loop !80

.lr.ph68.split:                                   ; preds = %.lr.ph68
  br i1 %i.i, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.lr.ph68.split
  %i.bc = zext nneg i32 %2 to i64
  %i.bd = zext nneg i32 %3 to i64                 ; 9 uses
  %i.be = zext nneg i32 %i.d to i64
  %i.bf = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check87 = icmp ult i32 %3, 32
  %n.mod.vf = and i64 %i.bd, 24
  %n.vec = and i64 %i.bd, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec92 = and i64 %i.bd, 2147483640            ; 3 uses
  %cmp.n97 = icmp eq i64 %n.vec92, %i.bd
  %xtraiter = and i64 %i.bd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bg = add nsw i64 %i.bd, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %..loopexit63_crit_edge
  %indvars.iv71 = phi i64 [ %i.bc, %.preheader.preheader ], [ %indvars.iv.next72, %..loopexit63_crit_edge ] ; 4 uses
  %i.bh = mul nuw nsw i64 %indvars.iv71, %i.bd
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh ; 7 uses
  %i.bj = icmp eq i64 %indvars.iv71, 0
  %.pn = select i1 %i.bj, i64 %i.b, i64 %i.c      ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %.pn ; 5 uses
  %i.bl = icmp eq i64 %indvars.iv71, %i.be
  %.pn58 = select i1 %i.bl, i64 %i.c, i64 %i.b    ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %.pn58 ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %6 = add nsw i64 %.pn, 31
  %diff.check = icmp ult i64 %6, 32
  %7 = add nsw i64 %.pn58, 31
  %diff.check86 = icmp ult i64 %7, 32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <16 x i8>, ptr %i.bn, align 1, !tbaa !15
  %wide.load88 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !15
  %i.bp = zext <16 x i8> %wide.load to <16 x i16>
  %i.bq = zext <16 x i8> %wide.load88 to <16 x i16>
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load89 = load <16 x i8>, ptr %i.br, align 1, !tbaa !15
  %wide.load90 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !15
  %i.bt = zext <16 x i8> %wide.load89 to <16 x i16>
  %i.bu = zext <16 x i8> %wide.load90 to <16 x i16>
  %i.bv = add nuw nsw <16 x i16> %i.bp, splat (i16 1)
  %i.bw = add nuw nsw <16 x i16> %i.bq, splat (i16 1)
  %i.bx = add nuw nsw <16 x i16> %i.bv, %i.bt
  %i.by = add nuw nsw <16 x i16> %i.bw, %i.bu
  %i.bz = lshr <16 x i16> %i.bx, splat (i16 1)
  %i.ca = lshr <16 x i16> %i.by, splat (i16 1)
  %i.cb = trunc nuw <16 x i16> %i.bz to <16 x i8>
  %i.cc = trunc nuw <16 x i16> %i.ca to <16 x i8>
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %i.cb, ptr %i.cd, align 1, !tbaa !15
  store <16 x i8> %i.cc, ptr %i.ce, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit63_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index93
  %wide.load94 = load <8 x i8>, ptr %i.cg, align 1, !tbaa !15
  %i.ch = zext <8 x i8> %wide.load94 to <8 x i16>
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 %index93
  %wide.load95 = load <8 x i8>, ptr %i.ci, align 1, !tbaa !15
  %i.cj = zext <8 x i8> %wide.load95 to <8 x i16>
  %i.ck = add nuw nsw <8 x i16> %i.ch, splat (i16 1)
  %i.cl = add nuw nsw <8 x i16> %i.ck, %i.cj
  %i.cm = lshr <8 x i16> %i.cl, splat (i16 1)
  %i.cn = trunc nuw <8 x i16> %i.cm to <8 x i8>
  %i.co = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index93
  store <8 x i8> %i.cn, ptr %i.co, align 1, !tbaa !15
  %index.next96 = add nuw i64 %index93, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next96, %n.vec92
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n97, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.ph
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.ph
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15
  %i.cv = zext i8 %i.cu to i16
  %i.cw = add nuw nsw i16 %i.cs, 1
  %i.cx = add nuw nsw i16 %i.cw, %i.cv
  %i.cy = lshr i16 %i.cx, 1
  %i.cz = trunc nuw i16 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.ph
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !15
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.db = icmp eq i64 %indvars.iv.ph, %i.bg
  br i1 %i.db, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.de = zext i8 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dh = zext i8 %i.dg to i16
  %i.di = add nuw nsw i16 %i.de, 1
  %i.dj = add nuw nsw i16 %i.di, %i.dh
  %i.dk = lshr i16 %i.dj, 1
  %i.dl = trunc nuw i16 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = zext i8 %i.do to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = zext i8 %i.dr to i16
  %i.dt = add nuw nsw i16 %i.dp, 1
  %i.du = add nuw nsw i16 %i.dt, %i.ds
  %i.dv = lshr i16 %i.du, 1
  %i.dw = trunc nuw i16 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.bd
  br i1 %exitcond.not.1, label %..loopexit63_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !84

..loopexit63_crit_edge:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next72, %i.bf
  br i1 %i.dy, label %iter.check, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %..loopexit63_crit_edge, %..loopexit_crit_edge.us, %.lr.ph68.split.us, %.lr.ph68.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 short", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !24}
!31 = !{!26, !23}
!32 = distinct !{!32, !14, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !14, !33}
!36 = distinct !{!36, !14}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
end_hunk_0
