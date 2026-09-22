Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bufpage?download=true
inline.NumInlined: 49
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@compactify_tuples:bb.a
  %i.bf = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %indvars.iv154 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %4, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bk, i64 %i.bn, i1 false)
  %i.bo = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %indvars.iv154 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = sext i16 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %4, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = zext i16 %i.bv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !16

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next155.1, %.unr-lcssa ]
  %lcmp.mod219 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod219)
  %i.bx = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %indvars.iv154.epil.init ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = sext i16 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %2, i64 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = zext i16 %i.ce to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %i.cc, i64 %i.cf, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load i16, ptr %i.cg, align 8
  %i.ci = zext i16 %i.ch to i32
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %1, -1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = mul nuw nsw i64 %i.cn, 6
  %scevgep = getelementptr i8, ptr %0, i64 %i.co
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %.3117 = phi i32 [ %i.cx, %bb.m ], [ %i.cl, %bb.k ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [6 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = zext i16 %i.cu to i32                   ; 2 uses
  %i.cw = add nsw i32 %i.cv, %i.cs
  %.not = icmp eq i32 %.3117, %i.cw
  br i1 %.not, label %bb.m, label %.split.loop.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = sub nsw i32 %.3117, %i.cv               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit191, label %bb.l, !llvm.loop !17

.split.loop.exit:                                 ; preds = %bb.l
  %i.cy = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit191

.split.loop.exit191:                              ; preds = %bb.m, %.split.loop.exit
  %.lcssa152 = phi ptr [ %i.cp, %.split.loop.exit ], [ %scevgep, %bb.m ]
  %.4118 = phi i32 [ %.3117, %.split.loop.exit ], [ %i.cx, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %i.cy, %.split.loop.exit ], [ %1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.da = load i16, ptr %i.cz, align 2            ; 2 uses
  %i.db = zext i16 %i.da to i32
  %i.dc = zext i16 %i.da to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc
  %i.df = sub nsw i32 %.4118, %i.db
  %i.dg = sext i32 %i.df to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr align 1 %i.de, i64 %i.dg, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %.split.loop.exit191, %bb.j
  %.5119 = phi i32 [ %i.ci, %bb.j ], [ %.4118, %.split.loop.exit191 ] ; 2 uses
  %.0107 = phi ptr [ %0, %bb.j ], [ %.lcssa152, %.split.loop.exit191 ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.j ], [ %.5, %.split.loop.exit191 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0107, i64 2
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = sext i16 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %.0107, i64 4
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = zext i16 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, %i.dj                ; 4 uses
  %i.do = icmp slt i32 %.6, %1
  br i1 %i.do, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.dp = getelementptr i8, ptr %2, i64 20
  %i.dq = sext i32 %.6 to i64
  %wide.trip.count162 = sext i32 %1 to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv159 = phi i64 [ %i.dq, %.lr.ph ], [ %indvars.iv.next160, %bb.q ] ; 2 uses
  %.1109134 = phi i32 [ %i.dn, %.lr.ph ], [ %.pre-phi177, %bb.q ] ; 3 uses
  %.2112133 = phi i32 [ %i.dn, %.lr.ph ], [ %.3113, %bb.q ] ; 2 uses
  %.6120132 = phi i32 [ %.5119, %.lr.ph ], [ %i.eo, %bb.q ] ; 2 uses
  %i.dr = getelementptr inbounds [6 x i8], ptr %0, i64 %indvars.iv159 ; 3 uses
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = add i16 %i.ds, 1
  %i.du = zext i16 %i.dt to i64
  %i.dv = getelementptr [4 x i8], ptr %i.dp, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 2 ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = sext i16 %i.dx to i32                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = add nsw i32 %i.eb, %i.dy
  %.not128 = icmp eq i32 %.1109134, %i.ec
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = sext i32 %.6120132 to i64
  %i.ee = getelementptr inbounds i8, ptr %2, i64 %i.ed
  %i.ef = sext i32 %.1109134 to i64
  %i.eg = getelementptr inbounds i8, ptr %4, i64 %i.ef
  %i.eh = sub nsw i32 %.2112133, %.1109134
  %i.ei = sext i32 %i.eh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr nonnull align 1 %i.eg, i64 %i.ei, i1 false)
  %i.ej = load i16, ptr %i.dw, align 2
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = load i16, ptr %i.dz, align 2
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = add nsw i32 %i.em, %i.ek
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre-phi177 = phi i32 [ %i.ek, %bb.p ], [ %i.dy, %bb.o ] ; 2 uses
  %.pre-phi176 = phi i32 [ %i.em, %bb.p ], [ %i.eb, %bb.o ]
  %.3113 = phi i32 [ %i.en, %bb.p ], [ %.2112133, %bb.o ] ; 2 uses
  %i.eo = sub i32 %.6120132, %.pre-phi176         ; 3 uses
  %i.ep = load i32, ptr %i.dv, align 4
  %i.eq = and i32 %i.eo, 32767
  %i.er = and i32 %i.ep, -32768
  %i.es = or disjoint i32 %i.er, %i.eq
  store i32 %i.es, ptr %i.dv, align 4
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge, label %bb.o, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.q, %bb.n
  %.6120.lcssa = phi i32 [ %.5119, %bb.n ], [ %i.eo, %bb.q ] ; 2 uses
  %.2112.lcssa = phi i32 [ %i.dn, %bb.n ], [ %.3113, %bb.q ]
  %.1109.lcssa = phi i32 [ %i.dn, %bb.n ], [ %.pre-phi177, %bb.q ] ; 2 uses
  %i.et = sext i32 %.6120.lcssa to i64
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et
  %i.ev = sext i32 %.1109.lcssa to i64
  %i.ew = getelementptr inbounds i8, ptr %4, i64 %i.ev
  %i.ex = sub nsw i32 %.2112.lcssa, %.1109.lcssa
  %i.ey = sext i32 %i.ex to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr nonnull align 1 %i.ew, i64 %i.ey, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %._crit_edge144
  %.7121 = phi i32 [ %.2116.lcssa, %._crit_edge144 ], [ %.6120.lcssa, %._crit_edge ]
  %i.ez = trunc i32 %.7121 to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 %i.ez, ptr %i.fa, align 2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @PageTruncateLinePointerArray(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %.val = load i16, ptr %i.a, align 4             ; 3 uses
  %i.b = icmp ult i16 %.val, 25
  %i.c = zext i16 %.val to i32
  %i.d = add nuw nsw i32 %i.c, 262120
  %i.e = lshr i32 %i.d, 2                         ; 2 uses
  %i.f = and i32 %i.e, 65535                      ; 2 uses
  %.not383948 = icmp eq i32 %i.f, 0
  %.not3839 = select i1 %i.b, i1 true, i1 %.not383948
  br i1 %.not3839, label %.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 20
  %1 = and i32 %i.e, 65535
  %2 = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.01942.a = phi i32 [ %i.f, %.lr.ph ], [ %i.m, %bb.d ]
  %.01942 = phi i32 [ 0, %.lr.ph ], [ %.237, %bb.d ] ; 3 uses
  %.02340 = phi i1 [ false, %.lr.ph ], [ %.22535, %bb.d ] ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = icmp eq i64 %indvars.iv, 1
  %or.cond.not = or i1 %.02340, %i.i
  %i.j = load i32, ptr %i.h, align 4
  %i.k = and i32 %i.j, 98304
  %.not.not = icmp eq i32 %i.k, 0                 ; 3 uses
  br i1 %or.cond.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %not..not27 = xor i1 %.not.not, true
  %i.l = zext i1 %.not.not to i32
  %spec.select28 = add i32 %.01942, %i.l
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.237 = phi i32 [ %spec.select28, %.thread ], [ %.01942, %bb.c ] ; 2 uses
  %.22535 = phi i1 [ %not..not27, %.thread ], [ %.02340, %bb.c ]
  %i.m = add nsw i32 %.01942.a, -1                ; 2 uses
  %.not38 = icmp eq i32 %i.m, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not38, label %._crit_edge, label %bb.b, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.019.lcssa = phi i32 [ %.237, %bb.d ], [ %.01942, %bb.c ] ; 2 uses
  %.222 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.n = icmp sgt i32 %.019.lcssa, 0
  br i1 %i.n, label %.split, label %bb.e

.split:                                           ; preds = %._crit_edge
  %i.o = trunc i32 %.019.lcssa to i16
  %i.p = shl i16 %i.o, 2
  %i.q = sub i16 %.val, %i.p
  store i16 %i.q, ptr %i.a, align 4
  br i1 %.222, label %bb.f, label %.thread53

bb.e:                                             ; preds = %._crit_edge
  br i1 %.222, label %bb.f, label %.thread53

bb.f:                                             ; preds = %.split, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %i.t = or i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 2
  br label %bb.g

.thread53:                                        ; preds = %bb.a, %.split, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2
  %i.w = and i16 %i.v, -2
  store i16 %i.w, ptr %i.u, align 2
  br label %bb.g

bb.g:                                             ; preds = %.thread53, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 65532) i64 @PageGetFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %narrow = add nsw i32 %i.h, -4
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @PageGetFreeSpaceForMultipleTuples(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl i32 %1, 2                            ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  %i.j = sub i32 %i.g, %i.h
  %narrow = select i1 %i.i, i32 0, i32 %i.j
  %.0 = sext i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 65536) i64 @PageGetExactFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4
  %i.f = zext i16 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i64 0, 65532) i64 @PageGetHeapFreeSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = sub nsw i32 %i.c, %i.f
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %narrow.i = add nsw i32 %i.h, -4                ; 3 uses
  %.not = icmp eq i32 %narrow.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i16 %i.e, 25
  %i.j = add nuw nsw i32 %i.f, 262120
  %i.k = lshr i32 %i.j, 2
  %i.l = trunc i32 %i.k to i16
  %.0.i23 = select i1 %i.i, i16 0, i16 %i.l       ; 2 uses
  %i.m = icmp samesign ugt i16 %.0.i23, 290
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 10
  %.val22 = load i16, ptr %i.n, align 2
  %i.o = trunc i16 %.val22 to i1
  br i1 %i.o, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.p = getelementptr i8, ptr %0, i64 20
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.q = add i16 %.01424, 1                       ; 2 uses
  %.not20 = icmp ugt i16 %i.q, %.0.i23
  br i1 %.not20, label %.loopexit, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %.preheader, %bb.d
  %.01424 = phi i16 [ 1, %.preheader ], [ %i.q, %bb.d ] ; 2 uses
  %i.r = zext i16 %.01424 to i64
  %i.s = getelementptr [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 98304
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.c, %bb.a
  %.1.shrunk = phi i32 [ 0, %bb.a ], [ %narrow.i, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %narrow.i, %bb.e ]
  %.1 = zext nneg i32 %.1.shrunk to i64
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @PageIndexTupleDelete(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i16, ptr %i.a, align 4              ; 5 uses
  %i.c = icmp ult i16 %i.b, 24
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2              ; 4 uses
  %i.f = icmp ugt i16 %i.b, %i.e
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i16, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ugt i16 %i.e, %i.h
  %i.j = icmp ugt i16 %i.h, 8192
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i16 %i.h to i64                ; 3 uses
  %i.l = add nuw nsw i64 %i.k, 7
  %i.m = and i64 %i.l, 32760
  %.not = icmp eq i64 %i.m, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 16779816) #11 ; 0 uses
  %i.p = load i16, ptr %i.a, align 4
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i16, ptr %i.u, align 8
  %i.w = zext i16 %i.v to i32
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.q, i32 noundef %i.t, i32 noundef %i.w) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1083, ptr noundef nonnull @__func__.PageIndexTupleDelete) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = icmp eq i16 %i.b, 24
  %i.z = zext i16 %i.b to i32
  %i.aa = add nuw nsw i32 %i.z, 262120
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = trunc i32 %i.ab to i16
  %.0.i = select i1 %i.y, i16 0, i16 %i.ac
  %i.ad = freeze i16 %.0.i                        ; 4 uses
  %i.ae = add i16 %1, -1
  %or.cond75.not = icmp ult i16 %i.ae, %i.ad
  br i1 %or.cond75.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = zext i16 %1 to i32
  %i.ag = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.af) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1087, ptr noundef nonnull @__func__.PageIndexTupleDelete) #11
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i16 %1 to i64                 ; 3 uses
end_hunk_0
