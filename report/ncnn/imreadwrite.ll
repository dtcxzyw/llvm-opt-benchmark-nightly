Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !35
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !305

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !47
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !48
  br label %.critedge.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ad
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 5 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.ak = icmp ugt i32 %i.af, %4
  %i.al = sub i32 %i.c, %i.af
  %i.am = zext i32 %i.al to i64
  %i.an = zext i32 %i.e to i64                    ; 7 uses
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = icmp eq i32 %6, 8
  %.not606 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.aq = sext i32 %i.h to i64                    ; 58 uses
  %i.ar = sext i32 %i.g to i64                    ; 2 uses
  %i.as = sext i32 %3 to i64
  %or.cond = select i1 %i.aj, i1 true, i1 %.not606
  %.6567743 = add i32 %4, -1                      ; 8 uses
  %.not608744 = icmp eq i32 %.6567743, 0          ; 7 uses
  %wide.trip.count966 = zext i32 %5 to i64
  %i.at = add i32 %4, -2                          ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul nsw i64 %i.aq, %i.au
  %i.aw = zext i32 %i.at to i64                   ; 3 uses
  %i.ax = mul nsw i64 %i.aq, %i.aw
  %i.ay = sub nsw i64 0, %i.aq
  %i.az = add nsw i64 %i.aw, -1
  %i.ba = mul i64 %i.az, %i.aq
  %i.bb = add i32 %4, -2                          ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = mul nsw i64 %i.aq, %i.bc                ; 2 uses
  %i.be = sub i64 %i.bd, %i.an
  %i.bf = zext i32 %i.bb to i64                   ; 3 uses
  %i.bg = mul nsw i64 %i.aq, %i.bf                ; 2 uses
  %i.bh = sub i64 %i.bg, %i.an
  %i.bi = sub nsw i64 0, %i.aq                    ; 3 uses
  %i.bj = add nsw i64 %i.bf, -1
  %i.bk = mul i64 %i.bj, %i.aq
  %i.bl = add i32 %4, -2
  %i.bm = zext i32 %i.bl to i64                   ; 3 uses
  %i.bn = mul nsw i64 %i.aq, %i.bm                ; 2 uses
  %i.bo = add nsw i64 %i.bm, -1
  %i.bp = mul i64 %i.bo, %i.aq                    ; 2 uses
  %i.bq = sub i64 %i.bn, %i.an
  %i.br = sub nsw i64 %i.bi, %i.an
  %i.bs = sub i64 %i.bp, %i.an
  %i.bt = add i32 %4, -2                          ; 2 uses
  %i.bu = zext i32 %i.bt to i64                   ; 3 uses
  %i.bv = mul nsw i64 %i.aq, %i.bu
  %i.bw = sub nsw i64 0, %i.aq                    ; 2 uses
  %i.bx = add nsw i64 %i.bu, -1
  %i.by = mul i64 %i.bx, %i.aq
  %i.bz = zext i32 %i.bt to i64                   ; 3 uses
  %i.ca = mul nsw i64 %i.aq, %i.bz
  %i.cb = add nsw i64 %i.bz, -1
  %i.cc = mul i64 %i.cb, %i.aq
  %stride.check1571 = icmp slt i32 %i.h, 0
  %stride.check1523 = icmp slt i32 %i.h, 0
  %stride.check1461 = icmp slt i32 %i.h, 0
  %stride.check1398 = icmp slt i32 %i.h, 0
  %stride.check1348 = icmp slt i32 %i.h, 0
  %stride.check1302 = icmp slt i32 %i.h, 0
  %stride.check = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1661 = and i32 %4, 7                   ; 3 uses
  %i.cd = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1662.not = icmp eq i32 %xtraiter1661, 0
  %lcmp.mod1663 = icmp ne i32 %xtraiter1661, 0
  %i.ce = add i32 %i.e, -1
  %diff.check1155 = icmp ult i32 %i.ce, 15
  %invariant.op = add i64 %i.an, -1
  %i.cf = add i32 %i.e, -1
  %diff.check1115 = icmp ult i32 %i.cf, 31
  %i.cg = add i32 %i.e, -1
  %diff.check1082 = icmp ult i32 %i.cg, 31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph825, %.loopexit723
  %indvars.iv963 = phi i64 [ 0, %.lr.ph825 ], [ %indvars.iv.next964, %.loopexit723 ] ; 3 uses
  %.0542824 = phi i32 [ %4, %.lr.ph825 ], [ %.1543, %.loopexit723 ]
  %.0545823 = phi i32 [ %i.i, %.lr.ph825 ], [ %.1546, %.loopexit723 ]
  %.0573821 = phi ptr [ %1, %.lr.ph825 ], [ %.11584, %.loopexit723 ] ; 3 uses
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.ci = trunc nuw i64 %indvars.iv963 to i32
  %i.cj = mul i32 %i.e, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0573821, i64 1 ; 9 uses
  %i.cn = load i8, ptr %.0573821, align 1, !tbaa !35 ; 3 uses
  %i.co = icmp ugt i8 %i.cn, 4
  br i1 %i.co, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.ak, label %.critedge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.am
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1546 = phi i32 [ 1, %bb.j ], [ %.0545823, %bb.h ] ; 39 uses
  %.1543 = phi i32 [ %i.af, %bb.j ], [ %.0542824, %bb.h ] ; 2 uses
  %.0531 = phi ptr [ %i.cp, %bb.j ], [ %i.cl, %bb.h ] ; 28 uses
  %.05311067 = ptrtoaddr ptr %.0531 to i64        ; 6 uses
  %i.cq = getelementptr i8, ptr %.0531, i64 %i.ao ; 4 uses
  %i.cr = icmp eq i64 %indvars.iv963, 0
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = zext nneg i8 %i.cn to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0522.in = phi i8 [ %i.cu, %bb.l ], [ %i.cn, %bb.k ] ; 3 uses
  %i.cv = icmp sgt i32 %.1546, 0                  ; 8 uses
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext nneg i32 %.1546 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 12 uses
  switch i8 %.0522.in, label %bb.u [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !35
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !35
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !35
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !35
  %.narrow642 = add i8 %i.dd, %i.db
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !35
  %i.di = lshr i8 %i.dh, 1
  %.narrow640 = add i8 %i.di, %i.df
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !35
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !35
  %.narrow638 = add i8 %i.dm, %i.dk
  br label %.sink.split

bb.s:                                             ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !35
  br label %.sink.split

bb.t:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !35
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sink = phi i8 [ %i.cx, %bb.n ], [ %i.cz, %bb.o ], [ %.narrow642, %bb.p ], [ %.narrow640, %bb.q ], [ %.narrow638, %bb.r ], [ %i.do, %bb.s ], [ %i.dq, %bb.t ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0531, i64 %indvars.iv
  store i8 %.sink, ptr %i.dr, align 1, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

._crit_edge:                                      ; preds = %bb.u, %bb.m
  br i1 %i.ap, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge
  br i1 %.not606, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds i8, ptr %.0531, i64 %i.ar
  store i8 -1, ptr %i.ds, align 1, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dt = getelementptr inbounds i8, ptr %i.cm, i64 %i.ar
  br label %bb.ac

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.pre981 = sext i32 %.1546 to i64               ; 2 uses
  br i1 %.not606, label %._crit_edge980, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds i8, ptr %.0531, i64 %.pre981 ; 2 uses
  store i8 -1, ptr %i.du, align 1, !tbaa !35
  %i.dv = getelementptr i8, ptr %i.du, i64 1
  store i8 -1, ptr %i.dv, align 1, !tbaa !35
  br label %._crit_edge980

._crit_edge980:                                   ; preds = %bb.z, %bb.aa
  %i.dw = getelementptr inbounds i8, ptr %i.cm, i64 %.pre981
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %.0573821, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge980, %bb.ab, %bb.x
  %.sink1032 = phi i64 [ %i.aq, %._crit_edge980 ], [ 1, %bb.ab ], [ %i.as, %bb.x ] ; 21 uses
  %.1574 = phi ptr [ %i.dw, %._crit_edge980 ], [ %i.dx, %bb.ab ], [ %i.dt, %bb.x ] ; 62 uses
  %.15741068 = ptrtoaddr ptr %.1574 to i64        ; 6 uses
  %i.dy = getelementptr i8, ptr %.0531, i64 %.sink1032 ; 77 uses
  %i.dz = getelementptr i8, ptr %i.cq, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ea = add i32 %.1543, -1
  %i.eb = mul i32 %i.ea, %.1546                   ; 26 uses
  switch i8 %.0522.in, label %.loopexit712 [
    i8 0, label %bb.ae
    i8 1, label %.preheader711
    i8 2, label %.preheader713
    i8 3, label %.preheader715
    i8 4, label %.preheader717
    i8 5, label %.preheader719
    i8 6, label %.preheader721
  ]

.preheader721:                                    ; preds = %bb.ad
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %iter.check1242, label %.loopexit712

iter.check1242:                                   ; preds = %.preheader721
  %i.ed = sext i32 %.1546 to i64                  ; 6 uses
  %wide.trip.count936 = zext nneg i32 %i.eb to i64 ; 8 uses
  %min.iters.check1227 = icmp ult i32 %i.eb, 4
  br i1 %min.iters.check1227, label %.lr.ph810.preheader, label %vector.memcheck1223

vector.memcheck1223:                              ; preds = %iter.check1242
  %i.ee = add i64 %.sink1032, %.05311067
  %i.ef = sub i64 %.15741068, %i.ee
  %diff.check1224 = icmp ugt i64 %i.ef, -32
  %i.eg = add nsw i64 %i.ed, -1
  %diff.check1225 = icmp ult i64 %i.eg, 31
  %conflict.rdx1226 = or i1 %diff.check1224, %diff.check1225
  br i1 %conflict.rdx1226, label %.lr.ph810.preheader, label %vector.main.loop.iter.check1228

vector.main.loop.iter.check1228:                  ; preds = %vector.memcheck1223
  %min.iters.check1229 = icmp ult i32 %i.eb, 32
  br i1 %min.iters.check1229, label %vec.epilog.ph1246, label %vector.ph1230

vector.ph1230:                                    ; preds = %vector.main.loop.iter.check1228
  %i.eh = and i64 %wide.trip.count936, 28
  %n.vec1231 = and i64 %wide.trip.count936, 2147483616 ; 4 uses
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1230
  %index1233 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1238, %vector.body1232 ] ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.1574, i64 %index1233 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
end_hunk_0
begin_hunk_1_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  %i.aex = icmp eq i64 %index.next1585, %n.vec1578
  br i1 %i.aex, label %middle.block1586, label %vector.body1579, !llvm.loop !382

middle.block1586:                                 ; preds = %vector.body1579
  br i1 %cmp.n1587, label %._crit_edge742, label %vec.epilog.iter.check1591

vec.epilog.iter.check1591:                        ; preds = %middle.block1586
  br i1 %min.epilog.iters.check1592, label %.lr.ph741.preheader, label %vec.epilog.ph1593, !prof !68

vec.epilog.ph1593:                                ; preds = %vector.main.loop.iter.check1575, %vec.epilog.iter.check1591
  %vec.epilog.resume.val1588 = phi i64 [ %n.vec1578, %vec.epilog.iter.check1591 ], [ 0, %vector.main.loop.iter.check1575 ]
  br label %vec.epilog.vector.body1595

vec.epilog.vector.body1595:                       ; preds = %vec.epilog.vector.body1595, %vec.epilog.ph1593
  %index1596 = phi i64 [ %vec.epilog.resume.val1588, %vec.epilog.ph1593 ], [ %index.next1599, %vec.epilog.vector.body1595 ] ; 4 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %.8581745, i64 %index1596
  %wide.load1597 = load <4 x i8>, ptr %i.aey, align 1, !tbaa !35, !alias.scope !423
  %i.aez = sub nsw i64 %index1596, %i.aq
  %i.afa = getelementptr inbounds i8, ptr %.8539746, i64 %i.aez
  %wide.load1598 = load <4 x i8>, ptr %i.afa, align 1, !tbaa !35, !alias.scope !424
  %i.afb = add <4 x i8> %wide.load1598, %wide.load1597
  %i.afc = getelementptr inbounds nuw i8, ptr %.8539746, i64 %index1596
  store <4 x i8> %i.afb, ptr %i.afc, align 1, !tbaa !35, !alias.scope !425, !noalias !426
  %index.next1599 = add nuw i64 %index1596, 4     ; 2 uses
  %i.afd = icmp eq i64 %index.next1599, %n.vec1594
  br i1 %i.afd, label %vec.epilog.middle.block1600, label %vec.epilog.vector.body1595, !llvm.loop !383

vec.epilog.middle.block1600:                      ; preds = %vec.epilog.vector.body1595
  br i1 %cmp.n1601, label %._crit_edge742, label %.lr.ph741.preheader

.lr.ph741.preheader:                              ; preds = %iter.check1589, %vec.epilog.iter.check1591, %vec.epilog.middle.block1600
  %indvars.iv897.ph = phi i64 [ 0, %iter.check1589 ], [ %n.vec1594, %vec.epilog.middle.block1600 ], [ %n.vec1578, %vec.epilog.iter.check1591 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph741.prol.loopexit, label %.lr.ph741.prol

.lr.ph741.prol:                                   ; preds = %.lr.ph741.preheader
  %i.afe = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897.ph
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !35
  %i.afg = sub nsw i64 %indvars.iv897.ph, %i.aq
  %i.afh = getelementptr inbounds i8, ptr %.8539746, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !35
  %.narrow.prol = add i8 %i.afi, %i.aff
  %i.afj = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897.ph
  store i8 %.narrow.prol, ptr %i.afj, align 1, !tbaa !35
  %indvars.iv.next898.prol = or disjoint i64 %indvars.iv897.ph, 1
  br label %.lr.ph741.prol.loopexit

.lr.ph741.prol.loopexit:                          ; preds = %.lr.ph741.prol, %.lr.ph741.preheader
  %indvars.iv897.unr = phi i64 [ %indvars.iv897.ph, %.lr.ph741.preheader ], [ %indvars.iv.next898.prol, %.lr.ph741.prol ]
  %i.afk = icmp eq i64 %indvars.iv897.ph, %i.rg
  br i1 %i.afk, label %._crit_edge742, label %.lr.ph741

.lr.ph741:                                        ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741
  %indvars.iv897 = phi i64 [ %indvars.iv.next898.1, %.lr.ph741 ], [ %indvars.iv897.unr, %.lr.ph741.prol.loopexit ] ; 5 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv897
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !35
  %i.afn = sub nsw i64 %indvars.iv897, %i.aq
  %i.afo = getelementptr inbounds i8, ptr %.8539746, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !35
  %.narrow = add i8 %i.afp, %i.afm
  %i.afq = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv897
  store i8 %.narrow, ptr %i.afq, align 1, !tbaa !35
  %indvars.iv.next898 = add nuw nsw i64 %indvars.iv897, 1 ; 3 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.8581745, i64 %indvars.iv.next898
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !35
  %i.aft = sub nsw i64 %indvars.iv.next898, %i.aq
  %i.afu = getelementptr inbounds i8, ptr %.8539746, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !35
  %.narrow.1 = add i8 %i.afv, %i.afs
  %i.afw = getelementptr inbounds nuw i8, ptr %.8539746, i64 %indvars.iv.next898
  store i8 %.narrow.1, ptr %i.afw, align 1, !tbaa !35
  %indvars.iv.next898.1 = add nuw nsw i64 %indvars.iv897, 2 ; 2 uses
  %exitcond901.not.1 = icmp eq i64 %indvars.iv.next898.1, %wide.trip.count900
  br i1 %exitcond901.not.1, label %._crit_edge742, label %.lr.ph741, !llvm.loop !384

._crit_edge742:                                   ; preds = %.lr.ph741.prol.loopexit, %.lr.ph741, %middle.block1586, %vec.epilog.middle.block1600, %.preheader710
  %i.afx = getelementptr inbounds i8, ptr %.8539746, i64 %i.ra
  store i8 -1, ptr %i.afx, align 1, !tbaa !35
  %i.afy = getelementptr inbounds i8, ptr %.8581745, i64 %i.ra ; 2 uses
  %i.afz = getelementptr inbounds i8, ptr %.8539746, i64 %i.aq
  %.6567 = add i32 %.6567747, -1                  ; 2 uses
  %.not608 = icmp eq i32 %.6567, 0
  br i1 %.not608, label %.loopexit725, label %.preheader710, !llvm.loop !385

.loopexit725:                                     ; preds = %._crit_edge742, %._crit_edge750, %._crit_edge759, %._crit_edge769, %._crit_edge779, %._crit_edge789, %._crit_edge798, %.preheader736, %.preheader734, %.preheader732, %.preheader730, %.preheader728, %.preheader726, %.preheader724, %bb.af
  %.9582 = phi ptr [ %.1574, %bb.af ], [ %i.wy, %._crit_edge779 ], [ %i.zv, %._crit_edge769 ], [ %i.act, %._crit_edge759 ], [ %i.aem, %._crit_edge750 ], [ %i.tu, %._crit_edge798 ], [ %i.vg, %._crit_edge789 ], [ %.1574, %.preheader724 ], [ %.1574, %.preheader726 ], [ %.1574, %.preheader728 ], [ %.1574, %.preheader730 ], [ %.1574, %.preheader732 ], [ %.1574, %.preheader734 ], [ %.1574, %.preheader736 ], [ %i.afy, %._crit_edge742 ] ; 3 uses
  br i1 %brmerge.not, label %.lr.ph808, label %.loopexit723

.lr.ph808:                                        ; preds = %.loopexit725
  %i.aga = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.ck ; 2 uses
  %i.agc = sext i32 %.1546 to i64                 ; 9 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph808.new

.lr.ph808.new:                                    ; preds = %.lr.ph808, %.lr.ph808.new
  %.9540806 = phi ptr [ %i.aha, %.lr.ph808.new ], [ %i.agb, %.lr.ph808 ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph808.new ], [ 0, %.lr.ph808 ]
  %i.agd = getelementptr i8, ptr %.9540806, i64 %i.agc
  %i.age = getelementptr i8, ptr %i.agd, i64 1
  store i8 -1, ptr %i.age, align 1, !tbaa !35
  %i.agf = getelementptr inbounds i8, ptr %.9540806, i64 %i.aq ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 %i.agc
  %i.agh = getelementptr i8, ptr %i.agg, i64 1
  store i8 -1, ptr %i.agh, align 1, !tbaa !35
  %i.agi = getelementptr inbounds i8, ptr %i.agf, i64 %i.aq ; 2 uses
  %i.agj = getelementptr i8, ptr %i.agi, i64 %i.agc
  %i.agk = getelementptr i8, ptr %i.agj, i64 1
  store i8 -1, ptr %i.agk, align 1, !tbaa !35
  %i.agl = getelementptr inbounds i8, ptr %i.agi, i64 %i.aq ; 2 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 %i.agc
  %i.agn = getelementptr i8, ptr %i.agm, i64 1
  store i8 -1, ptr %i.agn, align 1, !tbaa !35
  %i.ago = getelementptr inbounds i8, ptr %i.agl, i64 %i.aq ; 2 uses
  %i.agp = getelementptr i8, ptr %i.ago, i64 %i.agc
  %i.agq = getelementptr i8, ptr %i.agp, i64 1
  store i8 -1, ptr %i.agq, align 1, !tbaa !35
  %i.agr = getelementptr inbounds i8, ptr %i.ago, i64 %i.aq ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agr, i64 %i.agc
  %i.agt = getelementptr i8, ptr %i.ags, i64 1
  store i8 -1, ptr %i.agt, align 1, !tbaa !35
  %i.agu = getelementptr inbounds i8, ptr %i.agr, i64 %i.aq ; 2 uses
  %i.agv = getelementptr i8, ptr %i.agu, i64 %i.agc
  %i.agw = getelementptr i8, ptr %i.agv, i64 1
  store i8 -1, ptr %i.agw, align 1, !tbaa !35
  %i.agx = getelementptr inbounds i8, ptr %i.agu, i64 %i.aq ; 2 uses
  %i.agy = getelementptr i8, ptr %i.agx, i64 %i.agc
  %i.agz = getelementptr i8, ptr %i.agy, i64 1
  store i8 -1, ptr %i.agz, align 1, !tbaa !35
  %i.aha = getelementptr inbounds i8, ptr %i.agx, i64 %i.aq ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit723.loopexit.unr-lcssa, label %.lr.ph808.new, !llvm.loop !386

.loopexit723.loopexit.unr-lcssa:                  ; preds = %.lr.ph808.new
  br i1 %lcmp.mod1662.not, label %.loopexit723, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit723.loopexit.unr-lcssa, %.lr.ph808
  %.9540806.epil.init = phi ptr [ %i.agb, %.lr.ph808 ], [ %i.aha, %.loopexit723.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1663)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %.9540806.epil = phi ptr [ %.9540806.epil.init, %.epil.preheader ], [ %i.ahd, %bb.ag ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %i.ahb = getelementptr i8, ptr %.9540806.epil, i64 %i.agc
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 1
  store i8 -1, ptr %i.ahc, align 1, !tbaa !35
  %i.ahd = getelementptr inbounds i8, ptr %.9540806.epil, i64 %i.aq
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1661
  br i1 %epil.iter.cmp.not, label %.loopexit723, label %bb.ag, !llvm.loop !387

.loopexit723:                                     ; preds = %.loopexit723.loopexit.unr-lcssa, %bb.ag, %.loopexit725, %.loopexit712
  %.11584 = phi ptr [ %i.qz, %.loopexit712 ], [ %.9582, %.loopexit725 ], [ %.9582, %bb.ag ], [ %.9582, %.loopexit723.loopexit.unr-lcssa ]
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %exitcond967.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count966
  br i1 %exitcond967.not, label %._crit_edge826, label %bb.g, !llvm.loop !388

._crit_edge826:                                   ; preds = %.loopexit723
  %i.ahe = icmp slt i32 %6, 8
  br i1 %i.ahe, label %.lr.ph863, label %bb.aw

._crit_edge826.thread:                            ; preds = %.preheader738
  br i1 %i.a, label %bb.ax, label %.critedge

.lr.ph863:                                        ; preds = %._crit_edge826
  %i.ahf = zext i32 %i.c to i64
  %i.ahg = zext nneg i32 %i.af to i64
  %i.ahh = sub nsw i64 0, %i.ahg
  %i.ahi = icmp eq i32 %7, 0
  %i.ahj = sext i32 %6 to i64
  %i.ahk = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.ahj
  %i.ahl = icmp sgt i32 %i.y, 7
  %i.ahm = icmp sgt i32 %i.y, 3
  %i.ahn = icmp sgt i32 %i.y, 1
  %.not605 = icmp eq i32 %i.g, %3
  %i.aho = icmp eq i32 %i.g, 1
  %.1856 = add i32 %4, -1                         ; 4 uses
  %i.ahp = icmp sgt i32 %.1856, -1                ; 2 uses
  %i.ahq = zext i32 %.1856 to i64                 ; 8 uses
  %wide.trip.count978 = zext i32 %5 to i64
  %i.ahr = add i32 %i.y, -2                       ; 2 uses
  %i.ahs = add nuw nsw i64 %i.ahq, 1
  %i.aht = and i32 %i.ahr, 2
  %lcmp.mod1680.not.not = icmp eq i32 %i.aht, 0
  %i.ahu = add nsw i32 %i.y, -2                   ; 2 uses
  %i.ahv = icmp ult i32 %i.ahr, 2
  %i.ahw = and i64 %i.ahq, 1
  %lcmp.mod1683.not.not = icmp eq i64 %i.ahw, 0
  %i.ahx = shl nuw nsw i64 %i.ahq, 2
  %i.ahy = mul nuw nsw i64 %i.ahq, 3
  %indvars.iv.next970.prol = add nsw i64 %i.ahq, -1
  %i.ahz = icmp eq i32 %.1856, 0
  %xtraiter1685 = and i64 %i.ahs, 3               ; 2 uses
  %lcmp.mod1686.not = icmp eq i64 %xtraiter1685, 0
  %i.aia = icmp ult i32 %.1856, 3
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph863, %.loopexit
  %indvars.iv975 = phi i64 [ 0, %.lr.ph863 ], [ %indvars.iv.next976, %.loopexit ] ; 2 uses
  %i.aib = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.aic = trunc nuw i64 %indvars.iv975 to i32
  %i.aid = mul i32 %i.e, %i.aic
  %i.aie = zext i32 %i.aid to i64                 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.aie ; 10 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 %i.ahf
  %i.aih = getelementptr inbounds i8, ptr %i.aig, i64 %i.ahh ; 9 uses
  br i1 %i.ahi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.aii = load i8, ptr %i.ahk, align 1, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.aij = phi i8 [ %i.aii, %bb.ai ], [ 1, %bb.ah ] ; 29 uses
  switch i32 %6, label %.thread671 [
    i32 4, label %.preheader699
    i32 2, label %.preheader700
    i32 1, label %.preheader701
  ]

.preheader701:                                    ; preds = %bb.aj
  br i1 %i.ahl, label %.lr.ph835, label %._crit_edge836

.preheader700:                                    ; preds = %bb.aj
  br i1 %i.ahm, label %.lr.ph843, label %._crit_edge844

.preheader699:                                    ; preds = %bb.aj
  br i1 %i.ahn, label %.lr.ph851.preheader, label %._crit_edge852

.lr.ph851.preheader:                              ; preds = %.preheader699
  br i1 %lcmp.mod1680.not.not, label %.lr.ph851.prol, label %.lr.ph851.prol.loopexit

.lr.ph851.prol:                                   ; preds = %.lr.ph851.preheader
  %i.aik = load i8, ptr %i.aih, align 1, !tbaa !35
  %i.ail = lshr i8 %i.aik, 4
  %i.aim = mul i8 %i.ail, %i.aij
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aif, i64 1
  store i8 %i.aim, ptr %i.aif, align 1, !tbaa !35
  %i.aio = load i8, ptr %i.aih, align 1, !tbaa !35
  %i.aip = and i8 %i.aio, 15
  %i.aiq = mul i8 %i.aip, %i.aij
  %i.air = getelementptr inbounds nuw i8, ptr %i.aif, i64 2 ; 2 uses
  store i8 %i.aiq, ptr %i.ain, align 1, !tbaa !35
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aih, i64 1 ; 2 uses
  br label %.lr.ph851.prol.loopexit

.lr.ph851.prol.loopexit:                          ; preds = %.lr.ph851.prol, %.lr.ph851.preheader
  %.0517850.unr = phi ptr [ %i.aih, %.lr.ph851.preheader ], [ %i.ais, %.lr.ph851.prol ]
  %.0519849.unr = phi ptr [ %i.aif, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  %.14848.unr = phi i32 [ %i.y, %.lr.ph851.preheader ], [ %i.ahu, %.lr.ph851.prol ]
  %.lcssa1630.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.air, %.lr.ph851.prol ]
  %.lcssa1628.unr = phi ptr [ poison, %.lr.ph851.preheader ], [ %i.ais, %.lr.ph851.prol ]
  br i1 %i.ahv, label %._crit_edge852, label %.lr.ph851

.lr.ph851:                                        ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851
  %.0517850 = phi ptr [ %i.ajl, %.lr.ph851 ], [ %.0517850.unr, %.lr.ph851.prol.loopexit ] ; 4 uses
  %.0519849 = phi ptr [ %i.ajj, %.lr.ph851 ], [ %.0519849.unr, %.lr.ph851.prol.loopexit ] ; 5 uses
  %.14848 = phi i32 [ %i.ajk, %.lr.ph851 ], [ %.14848.unr, %.lr.ph851.prol.loopexit ] ; 2 uses
  %i.ait = load i8, ptr %.0517850, align 1, !tbaa !35
  %i.aiu = lshr i8 %i.ait, 4
  %i.aiv = mul i8 %i.aiu, %i.aij
  %i.aiw = getelementptr inbounds nuw i8, ptr %.0519849, i64 1
  store i8 %i.aiv, ptr %.0519849, align 1, !tbaa !35
  %i.aix = load i8, ptr %.0517850, align 1, !tbaa !35
  %i.aiy = and i8 %i.aix, 15
  %i.aiz = mul i8 %i.aiy, %i.aij
  %i.aja = getelementptr inbounds nuw i8, ptr %.0519849, i64 2
  store i8 %i.aiz, ptr %i.aiw, align 1, !tbaa !35
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0517850, i64 1 ; 2 uses
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !35
  %i.ajd = lshr i8 %i.ajc, 4
  %i.aje = mul i8 %i.ajd, %i.aij
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0519849, i64 3
  store i8 %i.aje, ptr %i.aja, align 1, !tbaa !35
  %i.ajg = load i8, ptr %i.ajb, align 1, !tbaa !35
  %i.ajh = and i8 %i.ajg, 15
  %i.aji = mul i8 %i.ajh, %i.aij
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0519849, i64 4 ; 2 uses
  store i8 %i.aji, ptr %i.ajf, align 1, !tbaa !35
  %i.ajk = add nsw i32 %.14848, -4                ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0517850, i64 2 ; 2 uses
  %i.ajm = icmp sgt i32 %.14848, 5
  br i1 %i.ajm, label %.lr.ph851, label %._crit_edge852, !llvm.loop !389

._crit_edge852:                                   ; preds = %.lr.ph851.prol.loopexit, %.lr.ph851, %.preheader699
  %.14.lcssa = phi i32 [ %i.y, %.preheader699 ], [ %i.ahu, %.lr.ph851.prol.loopexit ], [ %i.ajk, %.lr.ph851 ]
  %.0519.lcssa = phi ptr [ %i.aif, %.preheader699 ], [ %.lcssa1630.unr, %.lr.ph851.prol.loopexit ], [ %i.ajj, %.lr.ph851 ]
  %.0517.lcssa = phi ptr [ %i.aih, %.preheader699 ], [ %.lcssa1628.unr, %.lr.ph851.prol.loopexit ], [ %i.ajl, %.lr.ph851 ]
  %i.ajn = icmp eq i32 %.14.lcssa, 1
  br i1 %i.ajn, label %bb.ak, label %.thread671

bb.ak:                                            ; preds = %._crit_edge852
  %i.ajo = load i8, ptr %.0517.lcssa, align 1, !tbaa !35
  %i.ajp = lshr i8 %i.ajo, 4
  %i.ajq = mul i8 %i.ajp, %i.aij
  store i8 %i.ajq, ptr %.0519.lcssa, align 1, !tbaa !35
  br label %.thread671

.lr.ph843:                                        ; preds = %.preheader700, %.lr.ph843
  %.1518842 = phi ptr [ %i.akk, %.lr.ph843 ], [ %i.aih, %.preheader700 ] ; 5 uses
  %.1520841 = phi ptr [ %i.aki, %.lr.ph843 ], [ %i.aif, %.preheader700 ] ; 5 uses
  %.15840 = phi i32 [ %i.akj, %.lr.ph843 ], [ %i.y, %.preheader700 ] ; 2 uses
  %i.ajr = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.ajs = lshr i8 %i.ajr, 6
  %i.ajt = mul i8 %i.ajs, %i.aij
  %i.aju = getelementptr inbounds nuw i8, ptr %.1520841, i64 1
  store i8 %i.ajt, ptr %.1520841, align 1, !tbaa !35
  %i.ajv = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.ajw = lshr i8 %i.ajv, 4
  %i.ajx = and i8 %i.ajw, 3
  %i.ajy = mul i8 %i.ajx, %i.aij
  %i.ajz = getelementptr inbounds nuw i8, ptr %.1520841, i64 2
  store i8 %i.ajy, ptr %i.aju, align 1, !tbaa !35
  %i.aka = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.akb = lshr i8 %i.aka, 2
  %i.akc = and i8 %i.akb, 3
  %i.akd = mul i8 %i.akc, %i.aij
  %i.ake = getelementptr inbounds nuw i8, ptr %.1520841, i64 3
  store i8 %i.akd, ptr %i.ajz, align 1, !tbaa !35
  %i.akf = load i8, ptr %.1518842, align 1, !tbaa !35
  %i.akg = and i8 %i.akf, 3
  %i.akh = mul i8 %i.akg, %i.aij
  %i.aki = getelementptr inbounds nuw i8, ptr %.1520841, i64 4 ; 2 uses
  store i8 %i.akh, ptr %i.ake, align 1, !tbaa !35
  %i.akj = add nsw i32 %.15840, -4                ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.1518842, i64 1 ; 2 uses
  %i.akl = icmp samesign ugt i32 %.15840, 7
  br i1 %i.akl, label %.lr.ph843, label %._crit_edge844, !llvm.loop !390

._crit_edge844:                                   ; preds = %.lr.ph843, %.preheader700
  %.15.lcssa = phi i32 [ %i.y, %.preheader700 ], [ %i.akj, %.lr.ph843 ] ; 3 uses
  %.1520.lcssa = phi ptr [ %i.aif, %.preheader700 ], [ %i.aki, %.lr.ph843 ] ; 3 uses
  %.1518.lcssa = phi ptr [ %i.aih, %.preheader700 ], [ %i.akk, %.lr.ph843 ] ; 3 uses
  %i.akm = icmp sgt i32 %.15.lcssa, 0
  br i1 %i.akm, label %bb.al, label %.thread671

bb.al:                                            ; preds = %._crit_edge844
  %i.akn = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.ako = lshr i8 %i.akn, 6
  %i.akp = mul i8 %i.ako, %i.aij
  store i8 %i.akp, ptr %.1520.lcssa, align 1, !tbaa !35
  %.not693 = icmp eq i32 %.15.lcssa, 1
  br i1 %.not693, label %.thread671, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.akq = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 1
  %i.akr = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.aks = lshr i8 %i.akr, 4
  %i.akt = and i8 %i.aks, 3
  %i.aku = mul i8 %i.akt, %i.aij
  store i8 %i.aku, ptr %i.akq, align 1, !tbaa !35
  %i.akv = icmp eq i32 %.15.lcssa, 3
  br i1 %i.akv, label %bb.an, label %.thread671

bb.an:                                            ; preds = %bb.am
  %i.akw = getelementptr inbounds nuw i8, ptr %.1520.lcssa, i64 2
  %i.akx = load i8, ptr %.1518.lcssa, align 1, !tbaa !35
  %i.aky = lshr i8 %i.akx, 2
  %i.akz = and i8 %i.aky, 3
  %i.ala = mul i8 %i.akz, %i.aij
  store i8 %i.ala, ptr %i.akw, align 1, !tbaa !35
  br label %.thread671

.lr.ph835:                                        ; preds = %.preheader701, %.lr.ph835
  %.2834 = phi ptr [ %i.amh, %.lr.ph835 ], [ %i.aih, %.preheader701 ] ; 9 uses
  %.4833 = phi ptr [ %i.amf, %.lr.ph835 ], [ %i.aif, %.preheader701 ] ; 9 uses
  %.16832 = phi i32 [ %i.amg, %.lr.ph835 ], [ %i.y, %.preheader701 ] ; 2 uses
  %i.alb = load i8, ptr %.2834, align 1, !tbaa !35
  %isneg598 = icmp slt i8 %i.alb, 0
  %i.alc = select i1 %isneg598, i8 %i.aij, i8 0
  %i.ald = getelementptr inbounds nuw i8, ptr %.4833, i64 1
  store i8 %i.alc, ptr %.4833, align 1, !tbaa !35
  %i.ale = load i8, ptr %.2834, align 1, !tbaa !35
  %i.alf = and i8 %i.ale, 64
  %.not599 = icmp eq i8 %i.alf, 0
  %i.alg = select i1 %.not599, i8 0, i8 %i.aij
  %i.alh = getelementptr inbounds nuw i8, ptr %.4833, i64 2
  store i8 %i.alg, ptr %i.ald, align 1, !tbaa !35
  %i.ali = load i8, ptr %.2834, align 1, !tbaa !35
  %i.alj = and i8 %i.ali, 32
  %.not600 = icmp eq i8 %i.alj, 0
  %i.alk = select i1 %.not600, i8 0, i8 %i.aij
  %i.all = getelementptr inbounds nuw i8, ptr %.4833, i64 3
  store i8 %i.alk, ptr %i.alh, align 1, !tbaa !35
  %i.alm = load i8, ptr %.2834, align 1, !tbaa !35
  %i.aln = and i8 %i.alm, 16
  %.not601 = icmp eq i8 %i.aln, 0
  %i.alo = select i1 %.not601, i8 0, i8 %i.aij
  %i.alp = getelementptr inbounds nuw i8, ptr %.4833, i64 4
  store i8 %i.alo, ptr %i.all, align 1, !tbaa !35
  %i.alq = load i8, ptr %.2834, align 1, !tbaa !35
  %i.alr = and i8 %i.alq, 8
  %.not602 = icmp eq i8 %i.alr, 0
  %i.als = select i1 %.not602, i8 0, i8 %i.aij
  %i.alt = getelementptr inbounds nuw i8, ptr %.4833, i64 5
  store i8 %i.als, ptr %i.alp, align 1, !tbaa !35
  %i.alu = load i8, ptr %.2834, align 1, !tbaa !35
  %i.alv = and i8 %i.alu, 4
  %.not603 = icmp eq i8 %i.alv, 0
  %i.alw = select i1 %.not603, i8 0, i8 %i.aij
  %i.alx = getelementptr inbounds nuw i8, ptr %.4833, i64 6
end_hunk_1
