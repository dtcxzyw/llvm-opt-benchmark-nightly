Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/finder_pattern_finder?download=true
inline.NumInlined: 2769
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing6qrcode19FinderPatternFinder18crossCheckVerticalEmmiiRf:bb.a
  br i1 %i.cd, label %.lr.ph181, label %.critedge8

.lr.ph181:                                        ; preds = %.preheader143, %bb.l
  %.4180 = phi i32 [ %i.cj, %bb.l ], [ %.3.lcssa, %.preheader143 ] ; 2 uses
  %.4112179 = phi ptr [ %i.ck, %bb.l ], [ %.3111.lcssa, %.preheader143 ] ; 3 uses
  %i.ce = phi i32 [ %i.ci, %bb.l ], [ 0, %.preheader143 ] ; 3 uses
  %i.cf = load i8, ptr %.4112179, align 1, !tbaa !145, !range !60, !noundef !61
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp sge i32 %i.ce, %3
  %or.cond208.not = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond208.not, label %.critedge8, label %bb.l

bb.l:                                             ; preds = %.lr.ph181
  %i.ci = add nuw nsw i32 %i.ce, 1                ; 2 uses
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !40
  %i.cj = add i32 %.4180, 1                       ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.4112179, i64 %i.ar
  %exitcond234.not = icmp eq i32 %i.cj, %i.d
  br i1 %exitcond234.not, label %.critedge2.thread, label %.lr.ph181, !llvm.loop !205

.critedge8:                                       ; preds = %.lr.ph181, %.preheader143
  %i.cl = phi i32 [ 0, %.preheader143 ], [ %i.ce, %.lr.ph181 ] ; 2 uses
  %.4112.lcssa = phi ptr [ %.3111.lcssa, %.preheader143 ], [ %.4112179, %.lr.ph181 ] ; 2 uses
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader143 ], [ %.4180, %.lr.ph181 ] ; 7 uses
  %i.cm = icmp ne i32 %.4.lcssa, %i.d
  %.not131 = icmp slt i32 %i.cl, %3
  %or.cond139 = select i1 %i.cm, i1 %.not131, i1 false
  br i1 %or.cond139, label %bb.m, label %.critedge2.thread

bb.m:                                             ; preds = %.critedge8
  br i1 %.not130.not, label %.preheader, label %.preheader142

.preheader142:                                    ; preds = %bb.m
  %i.cn = icmp slt i32 %.4.lcssa, %i.d
  br i1 %i.cn, label %.lr.ph192, label %.critedge12

.lr.ph192:                                        ; preds = %.preheader142
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.o

.preheader:                                       ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cq = icmp slt i32 %.4.lcssa, %i.d
  br i1 %i.cq, label %.lr.ph200, label %.critedge10

.lr.ph200:                                        ; preds = %.preheader, %bb.n
  %.5199 = phi i32 [ %i.cw, %bb.n ], [ %.4.lcssa, %.preheader ] ; 2 uses
  %.5113198 = phi ptr [ %i.cx, %bb.n ], [ %.4112.lcssa, %.preheader ] ; 2 uses
  %i.cr = phi i32 [ %i.cv, %bb.n ], [ 0, %.preheader ] ; 3 uses
  %i.cs = load i8, ptr %.5113198, align 1, !tbaa !145, !range !60, !noundef !61
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = icmp slt i32 %i.cr, %3
  %or.cond209 = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %or.cond209, label %bb.n, label %.critedge10

bb.n:                                             ; preds = %.lr.ph200
  %i.cv = add nuw nsw i32 %i.cr, 1                ; 3 uses
  store i32 %i.cv, ptr %i.cp, align 16, !tbaa !40
  %i.cw = add i32 %.5199, 1                       ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.5113198, i64 %i.ar
  %exitcond236.not = icmp eq i32 %i.cw, %i.d
  br i1 %exitcond236.not, label %.critedge10, label %.lr.ph200, !llvm.loop !206

.critedge10:                                      ; preds = %bb.n, %.lr.ph200, %.preheader
  %i.cy = phi i32 [ 0, %.preheader ], [ %i.cr, %.lr.ph200 ], [ %i.cv, %bb.n ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %.5199, %.lr.ph200 ], [ %i.d, %bb.n ]
  %.not133 = icmp slt i32 %i.cy, %3
  br i1 %.not133, label %bb.q, label %.critedge2.thread

bb.o:                                             ; preds = %.lr.ph192, %bb.p
  %i.cz = phi i32 [ 0, %.lr.ph192 ], [ %i.dc, %bb.p ] ; 2 uses
  %.6191 = phi i32 [ %.4.lcssa, %.lr.ph192 ], [ %i.dd, %bb.p ] ; 2 uses
  %.6114190 = phi ptr [ %.4112.lcssa, %.lr.ph192 ], [ %i.de, %bb.p ] ; 2 uses
  %i.da = load i8, ptr %.6114190, align 1, !tbaa !145, !range !60, !noundef !61
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.p, label %.critedge12

bb.p:                                             ; preds = %bb.o
  %i.dc = add nuw nsw i32 %i.cz, 1                ; 3 uses
  store i32 %i.dc, ptr %i.co, align 16, !tbaa !40
  %i.dd = add i32 %.6191, 1                       ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.6114190, i64 %i.ar
  %exitcond235.not = icmp eq i32 %i.dd, %i.d
  br i1 %exitcond235.not, label %.critedge12, label %bb.o, !llvm.loop !207

.critedge12:                                      ; preds = %bb.o, %bb.p, %.preheader142
  %i.df = phi i32 [ 0, %.preheader142 ], [ %i.dc, %bb.p ], [ %i.cz, %bb.o ] ; 2 uses
  %.6.lcssa = phi i32 [ %.4.lcssa, %.preheader142 ], [ %i.d, %bb.p ], [ %.6191, %bb.o ]
  %.not132 = icmp slt i32 %i.df, %3
  %spec.select140 = select i1 %.not132, i32 %spec.select, i32 2
  br label %bb.q

bb.q:                                             ; preds = %.critedge12, %.critedge10
  %i.dg = phi i32 [ %i.cy, %.critedge10 ], [ %i.df, %.critedge12 ]
  %.7 = phi i32 [ %.5.lcssa, %.critedge10 ], [ %.6.lcssa, %.critedge12 ]
  %.1 = phi i32 [ %spec.select, %.critedge10 ], [ %spec.select140, %.critedge12 ] ; 2 uses
  %i.dh = call noundef zeroext i1 @_ZN5zxing6qrcode19FinderPatternFinder17foundPatternCrossEPi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a)
  br i1 %i.dh, label %bb.r, label %.critedge2.thread

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !54 ; 2 uses
  %i.dk = icmp eq i32 %i.dj, 1
  %i.dl = icmp eq i32 %.1, 2
  %or.cond = and i1 %i.dl, %i.dk
  br i1 %or.cond, label %.critedge2.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = icmp eq i32 %i.dj, 2
  %i.dn = icmp eq i32 %.1, 1
  %or.cond15 = and i1 %i.dn, %i.dm
  br i1 %or.cond15, label %.critedge2.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = call noundef i32 @_ZN5zxing6qrcode19FinderPatternFinder18getStateCountTotalEPiRKNS1_15CrossCheckStateE(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.di) ; 2 uses
  %i.dp = sub nsw i32 %i.do, %4
  %i.dq = tail call i32 @llvm.abs.i32(i32 %i.dp, i1 true)
  %i.dr = mul nuw nsw i32 %i.dq, 5
  %i.ds = shl nsw i32 %4, 1
  %.not134 = icmp slt i32 %i.dr, %i.ds
  br i1 %.not134, label %bb.u, label %.critedge2.thread

bb.u:                                             ; preds = %bb.t
  %i.dt = sitofp i32 %i.do to float
  %i.du = fdiv float %i.dt, 7.000000e+00
  store float %i.du, ptr %5, align 4, !tbaa !66
  %i.dv = sub nsw i32 %.7, %i.dg
  %i.dw = sitofp i32 %i.dv to float
  %i.dx = add nuw i32 %i.cl, %i.bb
  %i.dy = add i32 %i.dx, %i.ca
  %i.dz = sitofp i32 %i.dy to float
  %i.ea = fmul nnan float %i.dz, 5.000000e-01
  %i.eb = fsub float %i.dw, %i.ea
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.h, %.critedge, %bb.k, %bb.l, %bb.f, %bb.t, %bb.r, %bb.s, %bb.q, %.critedge10, %.critedge8, %.critedge6, %.critedge2, %bb.d, %bb.e, %bb.u
  %.4120 = phi float [ %i.eb, %bb.u ], [ +qnan, %bb.d ], [ +qnan, %bb.f ], [ +qnan, %.critedge2 ], [ +qnan, %.critedge6 ], [ +qnan, %.critedge8 ], [ +qnan, %bb.q ], [ +qnan, %.critedge10 ], [ +qnan, %bb.r ], [ +qnan, %bb.e ], [ +qnan, %bb.t ], [ +qnan, %bb.s ], [ +qnan, %bb.l ], [ +qnan, %bb.k ], [ +qnan, %.critedge ], [ +qnan, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.4120
}

declare noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN5zxing6qrcode19FinderPatternFinder20crossCheckHorizontalEmmiiRf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = tail call noundef i32 @_ZNK5zxing9BitMatrix8getWidthEv(ptr noundef nonnull align 8 dereferenceable(346) %i.c) ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.e, align 16
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.g = trunc i64 %1 to i32                      ; 4 uses
  %i.h = trunc i64 %2 to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !141
  %i.k = mul nsw i32 %i.j, %i.h                   ; 3 uses
  %i.l = add nsw i32 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = sext i32 %i.l to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !144  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !tbaa !99
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.t = add nsw i32 %i.g, 1
  %i.u = icmp slt i32 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = trunc i64 %1 to i32
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = add nsw i32 %i.k, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !99
  %.not111 = icmp eq i8 %i.aa, 0
  br i1 %.not111, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = icmp sgt i32 %i.g, 1
  br i1 %i.ab, label %bb.e, label %.critedge2.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = trunc i64 %1 to i32
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ae = add nsw i32 %i.k, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !99
  %.not112 = icmp eq i8 %i.ah, 0
  br i1 %.not112, label %.critedge2.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %.pre-phi = phi i32 [ %i.ad, %bb.e ], [ %i.w, %bb.c ], [ %i.g, %bb.a ] ; 4 uses
  %i.ai = tail call noundef ptr @_ZN5zxing9BitMatrix13getRowBoolPtrEi(ptr noundef nonnull align 8 dereferenceable(346) %i.f, i32 noundef %i.h) ; 8 uses
  %i.aj = icmp sgt i32 %.pre-phi, -1
  br i1 %i.aj, label %.lr.ph, label %.critedge2.thread

.lr.ph:                                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %6 = zext nneg i32 %.pre-phi to i64
  %i.al = add nuw i32 %.pre-phi, 1                ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv235.a = phi i32 [ %i.al, %.lr.ph ], [ %indvars.iv.next236.a, %bb.h ] ; 2 uses
  %indvars.iv226 = phi i32 [ %.pre-phi, %.lr.ph ], [ %indvars.iv.next227, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.promoted153 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !145, !range !60, !noundef !61
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.g
  store i32 %.promoted153, ptr %i.ak, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %7 = zext i32 %indvars.iv226 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %.promoted153, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ar = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next227 = add i32 %indvars.iv226, -1
  %indvars.iv.next236.a = add i32 %indvars.iv235.a, -1
  br i1 %i.ar, label %bb.g, label %.critedge2.thread, !llvm.loop !208

bb.i:                                             ; preds = %.lr.ph137, %.critedge
  %indvars.iv238 = phi i32 [ %indvars.iv235.a, %.lr.ph137 ], [ %indvars.iv.next239, %.critedge ] ; 2 uses
  %indvars.iv229 = phi i64 [ %7, %.lr.ph137 ], [ %indvars.iv.next230, %.critedge ] ; 5 uses
  %i.as = phi i32 [ 0, %.lr.ph137 ], [ %i.aw, %.critedge ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv229
  %i.au = load i8, ptr %i.at, align 1, !tbaa !145, !range !60, !noundef !61
  %i.av = trunc nuw i8 %i.au to i1
  %.not113 = icmp sgt i32 %i.as, %3               ; 2 uses
  %or.cond196 = select i1 %i.av, i1 true, i1 %.not113
  br i1 %or.cond196, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.i
  %i.aw = add nuw nsw i32 %i.as, 1
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, -1
  %8 = trunc nuw i64 %indvars.iv229 to i32
  %i.ax = icmp sgt i32 %8, 0
  %indvars.iv.next239 = add i32 %indvars.iv238, -1
  br i1 %i.ax, label %bb.i, label %.critedge2.thread, !llvm.loop !209

.critedge2:                                       ; preds = %bb.i
  store i32 %i.as, ptr %i.ap, align 4
  br i1 %.not113, label %.critedge2.thread, label %.preheader129

.preheader129:                                    ; preds = %.critedge2
  %9 = and i64 %indvars.iv229, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %.lr.ph144, label %.critedge4

.lr.ph144:                                        ; preds = %.preheader129, %bb.j
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %bb.j ], [ %indvars.iv229, %.preheader129 ] ; 3 uses
  %i.ay = phi i32 [ %i.bc, %bb.j ], [ 0, %.preheader129 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv233
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !145, !range !60, !noundef !61
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %.lr.ph144
  %i.bc = add nuw nsw i32 %i.ay, 1
  %indvars.iv.next234 = add nsw i64 %indvars.iv233, -1
  %i.bd = icmp sgt i64 %indvars.iv233, 0
  br i1 %i.bd, label %.lr.ph144, label %.critedge4, !llvm.loop !210

.critedge4:                                       ; preds = %.lr.ph144, %bb.j, %.preheader129
  %.lcssa142 = phi i32 [ 0, %.preheader129 ], [ %indvars.iv238, %bb.j ], [ %i.ay, %.lr.ph144 ] ; 2 uses
  store i32 %.lcssa142, ptr %i.a, align 16
  %.not114.not = icmp sge i32 %.lcssa142, %3      ; 2 uses
  %spec.select = zext i1 %.not114.not to i32      ; 2 uses
  %i.be = icmp slt i32 %i.al, %i.d
  br i1 %i.be, label %.lr.ph149, label %.critedge6

.lr.ph149:                                        ; preds = %.critedge4
  %11 = sext i32 %i.al to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph149, %bb.l
  %indvars.iv242 = phi i64 [ %11, %.lr.ph149 ], [ %indvars.iv.next243, %bb.l ] ; 3 uses
  %i.bf = phi i32 [ %.promoted153, %.lr.ph149 ], [ %i.bj, %bb.l ] ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv242
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !145, !range !60, !noundef !61
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %..critedge6_crit_edge151

bb.l:                                             ; preds = %bb.k
  %i.bj = add nuw nsw i32 %i.bf, 1
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next243 to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge2.thread, label %bb.k, !llvm.loop !211

..critedge6_crit_edge151:                         ; preds = %bb.k
  %12 = trunc nsw i64 %indvars.iv242 to i32
  store i32 %i.bf, ptr %i.ak, align 8
  br label %.critedge6

.critedge6:                                       ; preds = %..critedge6_crit_edge151, %.critedge4
  %i.bk = phi i32 [ %.promoted153, %.critedge4 ], [ %i.bf, %..critedge6_crit_edge151 ]
  %.3.lcssa = phi i32 [ %i.al, %.critedge4 ], [ %12, %..critedge6_crit_edge151 ] ; 4 uses
  %i.bl = icmp eq i32 %.3.lcssa, %i.d
  br i1 %i.bl, label %.critedge2.thread, label %.preheader128

.preheader128:                                    ; preds = %.critedge6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bn = icmp slt i32 %.3.lcssa, %i.d
  br i1 %i.bn, label %.lr.ph159.preheader, label %.critedge8

.lr.ph159.preheader:                              ; preds = %.preheader128
  %i.bo = sext i32 %.3.lcssa to i64
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.m
  %indvars.iv245.a = phi i64 [ %i.bo, %.lr.ph159.preheader ], [ %indvars.iv.next246.a, %bb.m ] ; 3 uses
  %i.bp = phi i32 [ 0, %.lr.ph159.preheader ], [ %i.bu, %bb.m ] ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv245.a
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !145, !range !60, !noundef !61
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = icmp sge i32 %i.bp, %3
  %or.cond198.not = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond198.not, label %.critedge8.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph159
  %i.bu = add nuw nsw i32 %i.bp, 1
  %indvars.iv.next246.a = add nsw i64 %indvars.iv245.a, 1 ; 2 uses
  %lftr.wideiv248.a = trunc i64 %indvars.iv.next246.a to i32
  %exitcond249.not.a = icmp eq i32 %i.d, %lftr.wideiv248.a
  br i1 %exitcond249.not.a, label %.critedge2.thread, label %.lr.ph159, !llvm.loop !212

.critedge8.loopexit:                              ; preds = %.lr.ph159
  %i.bv = trunc nsw i64 %indvars.iv245.a to i32
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.preheader128
  %.lcssa157 = phi i32 [ 0, %.preheader128 ], [ %i.bp, %.critedge8.loopexit ] ; 3 uses
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader128 ], [ %i.bv, %.critedge8.loopexit ] ; 9 uses
  store i32 %.lcssa157, ptr %i.bm, align 4
  %i.bw = icmp ne i32 %.4.lcssa, %i.d
  %.not115 = icmp slt i32 %.lcssa157, %3
  %or.cond124 = select i1 %i.bw, i1 %.not115, i1 false
  br i1 %or.cond124, label %bb.n, label %.critedge2.thread

bb.n:                                             ; preds = %.critedge8
  br i1 %.not114.not, label %.preheader, label %.preheader127

.preheader127:                                    ; preds = %bb.n
  %i.bx = icmp slt i32 %.4.lcssa, %i.d
  br i1 %i.bx, label %.lr.ph169, label %.critedge12

.lr.ph169:                                        ; preds = %.preheader127
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bz = sext i32 %.4.lcssa to i64
  %i.ca = sub i32 %i.d, %.4.lcssa
  br label %bb.p

.preheader:                                       ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = icmp slt i32 %.4.lcssa, %i.d
  br i1 %i.cc, label %.lr.ph179.preheader, label %.critedge10

.lr.ph179.preheader:                              ; preds = %.preheader
  %i.cd = sext i32 %.4.lcssa to i64
  %i.ce = sub i32 %i.d, %.4.lcssa
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %bb.o
  %indvars.iv255 = phi i64 [ %i.cd, %.lr.ph179.preheader ], [ %indvars.iv.next256, %bb.o ] ; 3 uses
  %i.cf = phi i32 [ 0, %.lr.ph179.preheader ], [ %i.cj, %bb.o ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv255
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !145, !range !60, !noundef !61
  %i.ci = trunc nuw i8 %i.ch to i1
  %.not117 = icmp sle i32 %i.cf, %3
  %or.cond200.not = select i1 %i.ci, i1 %.not117, i1 false
  br i1 %or.cond200.not, label %bb.o, label %.critedge10.loopexit.split.loop.exit

bb.o:                                             ; preds = %.lr.ph179
  %i.cj = add nuw nsw i32 %i.cf, 1
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  %lftr.wideiv258 = trunc i64 %indvars.iv.next256 to i32
  %exitcond259.not = icmp eq i32 %i.d, %lftr.wideiv258
  br i1 %exitcond259.not, label %.critedge10, label %.lr.ph179, !llvm.loop !213

.critedge10.loopexit.split.loop.exit:             ; preds = %.lr.ph179
  %i.ck = trunc nsw i64 %indvars.iv255 to i32
  br label %.critedge10

.critedge10:                                      ; preds = %bb.o, %.critedge10.loopexit.split.loop.exit, %.preheader
  %.lcssa177 = phi i32 [ 0, %.preheader ], [ %i.cf, %.critedge10.loopexit.split.loop.exit ], [ %i.ce, %bb.o ] ; 3 uses
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %i.ck, %.critedge10.loopexit.split.loop.exit ], [ %i.d, %bb.o ]
  store i32 %.lcssa177, ptr %i.cb, align 16
  %.not118 = icmp slt i32 %.lcssa177, %3
  br i1 %.not118, label %bb.r, label %.critedge2.thread

bb.p:                                             ; preds = %.lr.ph169, %bb.q
  %indvars.iv250 = phi i64 [ %i.bz, %.lr.ph169 ], [ %indvars.iv.next251, %bb.q ] ; 3 uses
  %i.cl = phi i32 [ 0, %.lr.ph169 ], [ %i.cp, %bb.q ] ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv250
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !145, !range !60, !noundef !61
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.q, label %..critedge12_crit_edge171

bb.q:                                             ; preds = %bb.p
  %i.cp = add nuw nsw i32 %i.cl, 1
  %indvars.iv.next251 = add nsw i64 %indvars.iv250, 1 ; 2 uses
  %lftr.wideiv253 = trunc i64 %indvars.iv.next251 to i32
  %exitcond254.not = icmp eq i32 %i.d, %lftr.wideiv253
  br i1 %exitcond254.not, label %.critedge12.sink.split, label %bb.p, !llvm.loop !214

..critedge12_crit_edge171:                        ; preds = %bb.p
  %i.cq = trunc nsw i64 %indvars.iv250 to i32
  br label %.critedge12.sink.split

.critedge12.sink.split:                           ; preds = %bb.q, %..critedge12_crit_edge171
  %.lcssa280.sink = phi i32 [ %i.cl, %..critedge12_crit_edge171 ], [ %i.ca, %bb.q ] ; 2 uses
  %.6.lcssa.ph = phi i32 [ %i.cq, %..critedge12_crit_edge171 ], [ %i.d, %bb.q ]
  store i32 %.lcssa280.sink, ptr %i.by, align 16
  br label %.critedge12

.critedge12:                                      ; preds = %.critedge12.sink.split, %.preheader127
  %i.cr = phi i32 [ 0, %.preheader127 ], [ %.lcssa280.sink, %.critedge12.sink.split ] ; 2 uses
  %.6.lcssa = phi i32 [ %.4.lcssa, %.preheader127 ], [ %.6.lcssa.ph, %.critedge12.sink.split ]
  %.not116 = icmp slt i32 %i.cr, %3
  %spec.select125 = select i1 %.not116, i32 %spec.select, i32 2
  br label %bb.r

bb.r:                                             ; preds = %.critedge12, %.critedge10
  %.promoted193 = phi i32 [ %.lcssa177, %.critedge10 ], [ %i.cr, %.critedge12 ] ; 3 uses
  %.7 = phi i32 [ %.5.lcssa, %.critedge10 ], [ %.6.lcssa, %.critedge12 ] ; 4 uses
  %.1 = phi i32 [ %spec.select, %.critedge10 ], [ %spec.select125, %.critedge12 ] ; 2 uses
  %i.cs = icmp slt i32 %.7, %i.d
  br i1 %i.cs, label %.lr.ph189, label %.critedge14

.lr.ph189:                                        ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cu = sext i32 %.7 to i64
  %i.cv = add i32 %i.d, %.promoted193
  %i.cw = sub i32 %i.cv, %.7
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph189, %bb.t
  %indvars.iv260 = phi i64 [ %i.cu, %.lr.ph189 ], [ %indvars.iv.next261, %bb.t ] ; 3 uses
  %i.cx = phi i32 [ %.promoted193, %.lr.ph189 ], [ %i.db, %bb.t ] ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv260
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !145, !range !60, !noundef !61
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.t, label %..critedge14_crit_edge191

bb.t:                                             ; preds = %bb.s
  %i.db = add nsw i32 %i.cx, 1
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %i.d, %lftr.wideiv263
  br i1 %exitcond264.not, label %.critedge14.sink.split, label %bb.s, !llvm.loop !215

..critedge14_crit_edge191:                        ; preds = %bb.s
  %i.dc = trunc nsw i64 %indvars.iv260 to i32
  br label %.critedge14.sink.split

.critedge14.sink.split:                           ; preds = %bb.t, %..critedge14_crit_edge191
  %.lcssa.sink = phi i32 [ %i.cx, %..critedge14_crit_edge191 ], [ %i.cw, %bb.t ] ; 2 uses
  %.8.lcssa.ph = phi i32 [ %i.dc, %..critedge14_crit_edge191 ], [ %i.d, %bb.t ]
  store i32 %.lcssa.sink, ptr %i.ct, align 16
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge14.sink.split, %bb.r
  %i.dd = phi i32 [ %.promoted193, %bb.r ], [ %.lcssa.sink, %.critedge14.sink.split ]
  %.8.lcssa = phi i32 [ %.7, %bb.r ], [ %.8.lcssa.ph, %.critedge14.sink.split ]
  %i.de = call noundef zeroext i1 @_ZN5zxing6qrcode19FinderPatternFinder17foundPatternCrossEPi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.a)
  br i1 %i.de, label %bb.u, label %.critedge2.thread

bb.u:                                             ; preds = %.critedge14
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !54 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 1
  %i.di = icmp eq i32 %.1, 2
  %or.cond = and i1 %i.di, %i.dh
  br i1 %or.cond, label %.critedge2.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = icmp eq i32 %i.dg, 2
  %i.dk = icmp eq i32 %.1, 1
  %or.cond17 = and i1 %i.dk, %i.dj
  br i1 %or.cond17, label %.critedge2.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = call noundef i32 @_ZN5zxing6qrcode19FinderPatternFinder18getStateCountTotalEPiRKNS1_15CrossCheckStateE(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.df) ; 2 uses
  %i.dm = sub nsw i32 %i.dl, %4
  %i.dn = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = mul nuw nsw i32 %i.dn, 5
  %.not119 = icmp slt i32 %i.do, %4
  br i1 %.not119, label %bb.x, label %.critedge2.thread

bb.x:                                             ; preds = %bb.w
  %i.dp = sitofp i32 %i.dl to float
  %i.dq = fdiv float %i.dp, 7.000000e+00
  store float %i.dq, ptr %5, align 4, !tbaa !66
  %i.dr = sub nsw i32 %.8.lcssa, %i.dd
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = add nuw i32 %.lcssa157, %i.as
  %i.du = add i32 %i.dt, %i.bk
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fmul nnan float %i.dv, 5.000000e-01
  %i.dx = fsub float %i.ds, %i.dw
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.h, %.critedge, %bb.l, %bb.m, %bb.f, %bb.w, %bb.u, %bb.v, %.critedge14, %.critedge10, %.critedge8, %.critedge6, %.critedge2, %bb.d, %bb.e, %bb.x
  %.4104 = phi float [ %i.dx, %bb.x ], [ +qnan, %bb.d ], [ +qnan, %bb.f ], [ +qnan, %.critedge2 ], [ +qnan, %.critedge6 ], [ +qnan, %.critedge8 ], [ +qnan, %.critedge14 ], [ +qnan, %.critedge10 ], [ +qnan, %bb.u ], [ +qnan, %bb.e ], [ +qnan, %bb.w ], [ +qnan, %bb.v ], [ +qnan, %.critedge ], [ +qnan, %bb.l ], [ +qnan, %bb.m ], [ +qnan, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret float %.4104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN5zxing6qrcode19FinderPatternFinder26hasHorizontalCheckedResultEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.01014, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.j
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01014 = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.01014 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = icmp eq i64 %i.m, %2
  br i1 %i.n, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.q = phi float [ %i.p, %bb.c ], [ -1.000000e+00, %bb.a ], [ -1.000000e+00, %bb.b ]
  ret float %i.q
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5zxing6qrcode19FinderPatternFinder26addHorizontalCheckedResultEmmf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, float noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %i.e, align 8, !tbaa !83
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !78
  br label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !37   ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
  unreachable

_ZNKSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487)
  %i.r = select i1 %i.p, i64 576460752303423487, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 3 uses
  store i64 %2, ptr %i.u, align 8, !tbaa !83
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store float %3, ptr %.sroa.5.0..sroa_idx4, align 8, !tbaa !66
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #22
  br label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !37
  store ptr %i.w, ptr %i.d, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !38
  br label %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5zxing6qrcode19FinderPatternFinder23HorizontalCheckedResultESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret i32 1
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS4_12_GLOBAL__N_115CountComparatorEEvT_SE_T0_(ptr %0, ptr %1) unnamed_addr #13 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 128
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_(ptr %0, ptr nonnull %i.i)
  %.not6.i.i.i = icmp eq ptr %i.i, %1
  br i1 %.not6.i.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  tail call fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_T0_(ptr nonnull %.sroa.0.07.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %1
  br i1 %.not.i.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !12

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_(ptr %0, ptr %1)
  br label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_.exit

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS4_12_GLOBAL__N_115CountComparatorEEEEvT_SH_T0_.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.c
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  %.not.i = icmp eq ptr %1, %2
  br i1 %.not.i, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS4_S6_EESA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %.not11.i = icmp eq ptr %2, %i.j
  br i1 %.not11.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5zxing3RefINS2_6qrcode13FinderPatternEEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ab, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit.i.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
end_hunk_0
