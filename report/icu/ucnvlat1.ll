inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %n.vec = and i64 %i.bo, 2147483632              ; 6 uses
  %i.bv = trunc nuw nsw i64 %n.vec to i32
  %i.bw = sub nsw i32 %.174126, %i.bv
  %i.bx = shl nuw nsw i64 %n.vec, 1
  %i.by = getelementptr i8, ptr %.180124, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %.183122, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.180124, i64 %i.ca ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.183122, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep149, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep149, align 1, !tbaa !22, !alias.scope !29
  %wide.load150 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !22, !alias.scope !29
  %i.cc = zext <8 x i8> %wide.load to <8 x i16>
  %i.cd = zext <8 x i8> %wide.load150 to <8 x i16>
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.cc, ptr %next.gep, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  store <8 x i16> %i.cd, ptr %i.ce, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.bo, 2147483644           ; 5 uses
  %i.cg = trunc nuw nsw i64 %n.vec153 to i32
  %i.ch = sub nsw i32 %.174126, %i.cg
  %i.ci = shl nuw nsw i64 %n.vec153, 1
  %i.cj = getelementptr i8, ptr %.180124, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %.183122, i64 %n.vec153 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.cl = shl i64 %index154, 1
  %next.gep155 = getelementptr i8, ptr %.180124, i64 %i.cl
  %next.gep156 = getelementptr i8, ptr %.183122, i64 %index154
  %wide.load157 = load <4 x i8>, ptr %next.gep156, align 1, !tbaa !22, !alias.scope !29
  %i.cm = zext <4 x i8> %wide.load157 to <4 x i16>
  store <4 x i16> %i.cm, ptr %next.gep155, align 2, !tbaa !23, !alias.scope !32, !noalias !29
  %index.next158 = add nuw i64 %index154, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %n.vec153, %i.bo
  br i1 %cmp.n159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.27897.ph = phi i32 [ %.174126, %iter.check ], [ %.174126, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  %.28196.ph = phi ptr [ %.180124, %iter.check ], [ %.180124, %vector.memcheck ], [ %i.by, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  %.28495.ph = phi ptr [ %.183122, %iter.check ], [ %.183122, %vector.memcheck ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.27897 = phi i32 [ %i.cs, %.lr.ph ], [ %.27897.ph, %.lr.ph.preheader ] ; 2 uses
  %.28196 = phi ptr [ %i.cr, %.lr.ph ], [ %.28196.ph, %.lr.ph.preheader ] ; 2 uses
  %.28495 = phi ptr [ %i.co, %.lr.ph ], [ %.28495.ph, %.lr.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.28495, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.28495, align 1, !tbaa !22
  %i.cq = zext i8 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.28196, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.28196, align 2, !tbaa !23
  %i.cs = add nsw i32 %.27897, -1
  %i.ct = icmp samesign ugt i32 %.27897, 1
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa142 = phi ptr [ %i.ck, %vec.epilog.middle.block ], [ %i.bz, %middle.block ], [ %i.co, %.lr.ph ]
  %.lcssa141 = phi ptr [ %i.cj, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cr, %.lr.ph ]
  store ptr %.lcssa142, ptr %i.a, align 8, !tbaa !8
  store ptr %.lcssa141, ptr %i.c, align 8, !tbaa !16
  %.not90 = icmp eq ptr %.271127, null
  br i1 %.not90, label %bb.g, label %.lr.ph102.preheader

._crit_edge.thread:                               ; preds = %.loopexit
  store ptr %.183, ptr %i.a, align 8, !tbaa !8
  store ptr %.180, ptr %i.c, align 8, !tbaa !16
  %.not90116 = icmp eq ptr %.271, null
  br i1 %.not90116, label %bb.g, label %._crit_edge103

.lr.ph102.preheader:                              ; preds = %._crit_edge
  %i.cu = add i32 %.174126, %.2129
  %min.iters.check163 = icmp samesign ult i32 %.174126, 8
  br i1 %min.iters.check163, label %.lr.ph102.preheader173, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph102.preheader
  %n.vec165 = and i64 %i.bo, 2147483640           ; 4 uses
  %i.cv = trunc nuw nsw i64 %n.vec165 to i32
  %i.cw = add i32 %.2129, %i.cv
  %i.cx = shl nuw nsw i64 %n.vec165, 2
  %i.cy = getelementptr i8, ptr %.271127, i64 %i.cx ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2129, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next169, %vector.body166 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph164 ], [ %vec.ind.next, %vector.body166 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cz = shl i64 %index167, 2
  %next.gep168 = getelementptr i8, ptr %.271127, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep168, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep168, align 4, !tbaa !27
  store <4 x i32> %step.add, ptr %i.da, align 4, !tbaa !27
  %index.next169 = add nuw i64 %index167, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.db = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.db, label %middle.block170, label %vector.body166, !llvm.loop !40

middle.block170:                                  ; preds = %vector.body166
  %cmp.n171 = icmp eq i64 %n.vec165, %i.bo
  br i1 %cmp.n171, label %._crit_edge103, label %.lr.ph102.preheader173

.lr.ph102.preheader173:                           ; preds = %.lr.ph102.preheader, %middle.block170
  %.3101.ph = phi i32 [ %.2129, %.lr.ph102.preheader ], [ %i.cw, %middle.block170 ]
  %.372100.ph = phi ptr [ %.271127, %.lr.ph102.preheader ], [ %i.cy, %middle.block170 ]
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader173, %.lr.ph102
  %.3101 = phi i32 [ %i.dc, %.lr.ph102 ], [ %.3101.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %.372100 = phi ptr [ %i.dd, %.lr.ph102 ], [ %.372100.ph, %.lr.ph102.preheader173 ] ; 2 uses
  %i.dc = add i32 %.3101, 1                       ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.372100, i64 4 ; 2 uses
  store i32 %.3101, ptr %.372100, align 4, !tbaa !27
  %exitcond.not = icmp eq i32 %i.dc, %i.cu
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !41

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block170, %._crit_edge.thread
  %.372.lcssa = phi ptr [ %.271, %._crit_edge.thread ], [ %i.cy, %middle.block170 ], [ %i.dd, %.lr.ph102 ]
  store ptr %.372.lcssa, ptr %i.l, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge103, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp eq ptr %i.r, @_Latin1Data_78
  %. = select i1 %i.s, i32 255, i32 127           ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !53   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0                      ; 3 uses
  %i.w = sext i1 %i.v to i32                      ; 6 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %i.d to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr i64 %i.z, 1
  %i.ab = trunc i64 %i.aa to i32
  %.0184 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.n) ; 6 uses
  %i.ac = icmp sgt i32 %.0184, 0
  %or.cond = select i1 %i.v, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp sgt i32 %.0184, 15
  br i1 %i.ad, label %bb.c, label %.loopexit227

bb.c:                                             ; preds = %bb.b
  %i.ae = lshr i32 %.0184, 4                      ; 2 uses
  %i.af = trunc nuw nsw i32 %. to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0187 = phi i32 [ %i.ae, %bb.c ], [ %i.bd, %bb.e ] ; 3 uses
  %.0172 = phi ptr [ %i.h, %bb.c ], [ %i.bb, %bb.e ] ; 18 uses
  %.0171 = phi ptr [ %i.d, %bb.c ], [ %i.bc, %bb.e ] ; 18 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0171, i64 2
  %2 = load i16, ptr %.0171, align 2, !tbaa !23   ; 2 uses
  %3 = trunc i16 %2 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0172, i64 1
  store i8 %3, ptr %.0172, align 1, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %.0171, i64 4
  %4 = load i16, ptr %i.ag, align 2, !tbaa !23    ; 2 uses
  %5 = or i16 %4, %2
  %6 = trunc i16 %4 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0172, i64 2
  store i8 %6, ptr %i.ah, align 1, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %.0171, i64 6
  %7 = load i16, ptr %i.ai, align 2, !tbaa !23    ; 2 uses
  %8 = or i16 %5, %7
  %9 = trunc i16 %7 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.0172, i64 3
  store i8 %9, ptr %i.aj, align 1, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %.0171, i64 8
  %10 = load i16, ptr %i.ak, align 2, !tbaa !23   ; 2 uses
  %11 = or i16 %8, %10
  %12 = trunc i16 %10 to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.0172, i64 4
  store i8 %12, ptr %i.al, align 1, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %.0171, i64 10
  %13 = load i16, ptr %i.am, align 2, !tbaa !23   ; 2 uses
  %14 = or i16 %11, %13
  %15 = trunc i16 %13 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0172, i64 5
  store i8 %15, ptr %i.an, align 1, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.0171, i64 12
  %i.ar = load i16, ptr %i.ao, align 2, !tbaa !23 ; 2 uses
  %16 = or i16 %14, %i.ar
  %i.as = trunc i16 %i.ar to i8
  %17 = getelementptr inbounds nuw i8, ptr %.0172, i64 6
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !22
  %18 = getelementptr inbounds nuw i8, ptr %.0171, i64 14
  %19 = load i16, ptr %i.aq, align 2, !tbaa !23   ; 2 uses
  %20 = or i16 %16, %19
  %i.at = trunc i16 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %.0172, i64 7
  store i8 %i.at, ptr %17, align 1, !tbaa !22
  %22 = getelementptr inbounds nuw i8, ptr %.0171, i64 16
  %23 = load i16, ptr %18, align 2, !tbaa !23     ; 2 uses
  %24 = or i16 %20, %23
  %i.au = trunc i16 %23 to i8
  %25 = getelementptr inbounds nuw i8, ptr %.0172, i64 8
  store i8 %i.au, ptr %21, align 1, !tbaa !22
  %26 = getelementptr inbounds nuw i8, ptr %.0171, i64 18
  %27 = load i16, ptr %22, align 2, !tbaa !23     ; 2 uses
  %28 = or i16 %24, %27
  %i.av = trunc i16 %27 to i8
  %29 = getelementptr inbounds nuw i8, ptr %.0172, i64 9
  store i8 %i.av, ptr %25, align 1, !tbaa !22
  %30 = getelementptr inbounds nuw i8, ptr %.0171, i64 20
  %31 = load i16, ptr %26, align 2, !tbaa !23     ; 2 uses
  %32 = or i16 %28, %31
  %i.aw = trunc i16 %31 to i8
  %33 = getelementptr inbounds nuw i8, ptr %.0172, i64 10
  store i8 %i.aw, ptr %29, align 1, !tbaa !22
  %34 = getelementptr inbounds nuw i8, ptr %.0171, i64 22
  %35 = load i16, ptr %30, align 2, !tbaa !23     ; 2 uses
  %36 = or i16 %32, %35
  %i.ax = trunc i16 %35 to i8
  %37 = getelementptr inbounds nuw i8, ptr %.0172, i64 11
  store i8 %i.ax, ptr %33, align 1, !tbaa !22
  %38 = getelementptr inbounds nuw i8, ptr %.0171, i64 24
  %39 = load i16, ptr %34, align 2, !tbaa !23     ; 2 uses
  %40 = or i16 %36, %39
  %i.ay = trunc i16 %39 to i8
  %41 = getelementptr inbounds nuw i8, ptr %.0172, i64 12
  store i8 %i.ay, ptr %37, align 1, !tbaa !22
  %42 = getelementptr inbounds nuw i8, ptr %.0171, i64 26
  %43 = load i16, ptr %38, align 2, !tbaa !23     ; 2 uses
  %44 = or i16 %40, %43
  %45 = trunc i16 %43 to i8
  %46 = getelementptr inbounds nuw i8, ptr %.0172, i64 13
  store i8 %45, ptr %41, align 1, !tbaa !22
  %47 = getelementptr inbounds nuw i8, ptr %.0171, i64 28
  %48 = load i16, ptr %42, align 2, !tbaa !23     ; 2 uses
  %49 = or i16 %44, %48
  %50 = trunc i16 %48 to i8
  %51 = getelementptr inbounds nuw i8, ptr %.0172, i64 14
  store i8 %50, ptr %46, align 1, !tbaa !22
  %52 = getelementptr inbounds nuw i8, ptr %.0171, i64 30
  %53 = load i16, ptr %47, align 2, !tbaa !23     ; 2 uses
  %54 = or i16 %49, %53
  %55 = trunc i16 %53 to i8
  %56 = getelementptr inbounds nuw i8, ptr %.0172, i64 15
  store i8 %55, ptr %51, align 1, !tbaa !22
  %57 = load i16, ptr %52, align 2, !tbaa !23     ; 2 uses
  %58 = or i16 %54, %57
  %i.az = trunc i16 %57 to i8
  store i8 %i.az, ptr %56, align 1, !tbaa !22
  %i.ba = icmp ugt i16 %58, %i.af
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.0172, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0171, i64 32 ; 2 uses
  %i.bd = add nsw i32 %.0187, -1
  %i.be = icmp sgt i32 %.0187, 1
  br i1 %i.be, label %bb.d, label %bb.f, !llvm.loop !54

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1188 = phi i32 [ 0, %bb.e ], [ %.0187, %bb.d ] ; 3 uses
  %.1173 = phi ptr [ %i.bb, %bb.e ], [ %.0172, %bb.d ] ; 4 uses
  %.1 = phi ptr [ %i.bc, %bb.e ], [ %.0171, %bb.d ] ; 4 uses
  %i.bf = sub nsw i32 %i.ae, %.1188               ; 4 uses
  %i.bg = shl nsw i32 %i.bf, 4                    ; 2 uses
  %i.bh = sub nsw i32 %.0184, %i.bg               ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit227, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = sext i32 %i.bg to i64
  %i.bj = getelementptr inbounds i8, ptr %i.h, i64 %i.bi ; 3 uses
  %i.bk = icmp sgt i32 %i.bf, 0
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit227

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bl = lshr i32 %.0184, 4                      ; 2 uses
  %i.bm = sub i32 %i.bl, %.1188
  %.neg = add i32 %.1188, 1
  %xtraiter = and i32 %i.bm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bn = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bp = add nsw <4 x i32> %i.bo, <i32 4, i32 5, i32 6, i32 7>
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.br = add nsw <4 x i32> %i.bo, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.br, ptr %i.p, align 4, !tbaa !27
  %i.bs = add nsw <4 x i32> %i.bo, <i32 8, i32 9, i32 10, i32 11>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store <4 x i32> %i.bp, ptr %i.bq, align 4, !tbaa !27
  %i.bu = add nsw <4 x i32> %i.bo, <i32 12, i32 13, i32 14, i32 15>
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store <4 x i32> %i.bs, ptr %i.bt, align 4, !tbaa !27
  %i.bw = select i1 %i.v, i32 15, i32 16          ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 2 uses
  store <4 x i32> %i.bu, ptr %i.bv, align 4, !tbaa !27
  %i.by = add nsw i32 %i.bf, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2189230.unr = phi i32 [ %i.bf, %.lr.ph.preheader ], [ %i.by, %.lr.ph.prol ]
  %.0190229.unr = phi i32 [ %i.w, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %.0203228.unr = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.prol ]
  %.lcssa275.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %.lcssa274.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bx, %.lr.ph.prol ]
  %i.bz = icmp eq i32 %i.bl, %.neg
  br i1 %i.bz, label %.loopexit227, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.2189230 = phi i32 [ %i.cw, %.lr.ph ], [ %.2189230.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0190229 = phi i32 [ %i.cu, %.lr.ph ], [ %.0190229.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0203228 = phi ptr [ %i.cv, %.lr.ph ], [ %.0203228.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ca = insertelement <4 x i32> poison, i32 %.0190229, i64 0
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cc = add nsw <4 x i32> %i.cb, <i32 4, i32 5, i32 6, i32 7>
  %i.cd = getelementptr inbounds nuw i8, ptr %.0203228, i64 16
  %i.ce = add nsw <4 x i32> %i.cb, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ce, ptr %.0203228, align 4, !tbaa !27
  %i.cf = add nsw <4 x i32> %i.cb, <i32 8, i32 9, i32 10, i32 11>
  %i.cg = getelementptr inbounds nuw i8, ptr %.0203228, i64 32
  store <4 x i32> %i.cc, ptr %i.cd, align 4, !tbaa !27
  %i.ch = add nsw <4 x i32> %i.cb, <i32 12, i32 13, i32 14, i32 15>
  %i.ci = getelementptr inbounds nuw i8, ptr %.0203228, i64 48
  store <4 x i32> %i.cf, ptr %i.cg, align 4, !tbaa !27
  %i.cj = add nsw i32 %.0190229, 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.0203228, i64 64
  store <4 x i32> %i.ch, ptr %i.ci, align 4, !tbaa !27
  %i.cl = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %i.cm = shufflevector <4 x i32> %i.cl, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cn = add nsw <4 x i32> %i.cm, <i32 4, i32 5, i32 6, i32 7>
  %i.co = getelementptr inbounds nuw i8, ptr %.0203228, i64 80
  %i.cp = add nsw <4 x i32> %i.cm, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.cp, ptr %i.ck, align 4, !tbaa !27
  %i.cq = add nsw <4 x i32> %i.cm, <i32 8, i32 9, i32 10, i32 11>
  %i.cr = getelementptr inbounds nuw i8, ptr %.0203228, i64 96
  store <4 x i32> %i.cn, ptr %i.co, align 4, !tbaa !27
  %i.cs = add nsw <4 x i32> %i.cm, <i32 12, i32 13, i32 14, i32 15>
  %i.ct = getelementptr inbounds nuw i8, ptr %.0203228, i64 112
  store <4 x i32> %i.cq, ptr %i.cr, align 4, !tbaa !27
  %i.cu = add nsw i32 %.0190229, 32               ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0203228, i64 128 ; 2 uses
  store <4 x i32> %i.cs, ptr %i.ct, align 4, !tbaa !27
  %i.cw = add nsw i32 %.2189230, -2
  %i.cx = icmp sgt i32 %.2189230, 2
  br i1 %i.cx, label %.lr.ph, label %.loopexit227, !llvm.loop !55

.loopexit227:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g, %bb.f, %bb.b
  %.2205 = phi ptr [ %i.p, %bb.b ], [ null, %bb.f ], [ %i.p, %bb.g ], [ %.lcssa274.unr, %.lr.ph.prol.loopexit ], [ %i.cv, %.lr.ph ] ; 4 uses
  %.2192 = phi i32 [ %i.w, %bb.b ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %.lcssa275.unr, %.lr.ph.prol.loopexit ], [ %i.cu, %.lr.ph ] ; 4 uses
  %.1185 = phi i32 [ %.0184, %bb.b ], [ %i.bh, %bb.f ], [ %i.bh, %bb.g ], [ %i.bh, %.lr.ph ], [ %i.bh, %.lr.ph.prol.loopexit ] ; 2 uses
  %.1180 = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.f ], [ %i.bj, %bb.g ], [ %i.bj, %.lr.ph ], [ %i.bj, %.lr.ph.prol.loopexit ] ; 4 uses
  %.2174 = phi ptr [ %i.h, %bb.b ], [ %.1173, %bb.f ], [ %.1173, %bb.g ], [ %.1173, %.lr.ph ], [ %.1173, %.lr.ph.prol.loopexit ] ; 2 uses
  %.2 = phi ptr [ %i.d, %bb.b ], [ %.1, %bb.f ], [ %.1, %bb.g ], [ %.1, %.lr.ph ], [ %.1, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.cy = icmp sgt i32 %.1185, 0
  br i1 %i.cy, label %.lr.ph235.preheader, label %.critedge.thread

.lr.ph235.preheader:                              ; preds = %.loopexit227
  %i.cz = trunc nuw nsw i32 %. to i16
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %bb.h
  %.3234 = phi ptr [ %i.da, %bb.h ], [ %.2, %.lr.ph235.preheader ] ; 2 uses
  %.3175233 = phi ptr [ %i.dd, %bb.h ], [ %.2174, %.lr.ph235.preheader ] ; 3 uses
  %.2186232 = phi i32 [ %i.de, %bb.h ], [ %.1185, %.lr.ph235.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.3234, i64 2 ; 4 uses
  %i.db = load i16, ptr %.3234, align 2, !tbaa !23 ; 3 uses
  %.not219 = icmp ugt i16 %i.db, %i.cz
  br i1 %.not219, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph235
  %i.dc = trunc nuw i16 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.3175233, i64 1 ; 2 uses
  store i8 %i.dc, ptr %.3175233, align 1, !tbaa !22
  %i.de = add nsw i32 %.2186232, -1
  %i.df = icmp sgt i32 %.2186232, 1
  br i1 %i.df, label %.lr.ph235, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.lr.ph235, %bb.h
  %.3175.lcssa.ph = phi ptr [ %.3175233, %.lr.ph235 ], [ %i.dd, %bb.h ] ; 3 uses
  %i.dg = zext i16 %i.db to i32                   ; 4 uses
  %i.dh = icmp samesign ult i32 %., %i.dg
  br i1 %i.dh, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.critedge
  %i.di = and i32 %i.dg, 64512
  %or.cond225 = icmp eq i32 %i.di, 55296
  br i1 %or.cond225, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.a
  %.3206 = phi ptr [ %i.p, %bb.a ], [ %.2205, %bb.i ] ; 2 uses
  %.0200 = phi i32 [ %i.u, %bb.a ], [ %i.dg, %bb.i ] ; 3 uses
  %.3193 = phi i32 [ %i.w, %bb.a ], [ %.2192, %bb.i ] ; 2 uses
  %.2181 = phi ptr [ %i.h, %bb.a ], [ %.1180, %bb.i ] ; 2 uses
  %.4176 = phi ptr [ %i.h, %bb.a ], [ %.3175.lcssa.ph, %bb.i ] ; 2 uses
  %.5 = phi ptr [ %i.d, %bb.a ], [ %i.da, %bb.i ] ; 4 uses
  %i.dj = icmp ult ptr %.5, %i.f
  br i1 %i.dj, label %bb.k, label %.critedge.thread.sink.split

bb.k:                                             ; preds = %bb.j
  %i.dk = load i16, ptr %.5, align 2, !tbaa !23
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %i.dm = and i32 %i.dl, 64512
  %i.dn = icmp eq i32 %i.dm, 56320                ; 2 uses
  %i.do = shl i32 %.0200, 10
  %i.dp = add i32 %i.do, -56613888
  %i.dq = add i32 %i.dp, %i.dl
  %.1201 = select i1 %i.dn, i32 %i.dq, i32 %.0200
  %.6.idx = select i1 %i.dn, i64 2, i64 0
  %.6 = getelementptr inbounds nuw i8, ptr %.5, i64 %.6.idx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.4207 = phi ptr [ %.3206, %bb.k ], [ %.2205, %bb.i ]
  %.2202 = phi i32 [ %.1201, %bb.k ], [ %i.dg, %bb.i ] ; 2 uses
  %.4194 = phi i32 [ %.3193, %bb.k ], [ %.2192, %bb.i ]
  %.3182 = phi ptr [ %.2181, %bb.k ], [ %.1180, %bb.i ]
  %.5177 = phi ptr [ %.4176, %bb.k ], [ %.3175.lcssa.ph, %bb.i ]
  %.7 = phi ptr [ %.6, %bb.k ], [ %i.da, %bb.i ]
  %i.dr = and i32 %.2202, -2048
  %i.ds = icmp eq i32 %i.dr, 55296
  %i.dt = select i1 %i.ds, i32 12, i32 10
  store i32 %i.dt, ptr %1, align 4, !tbaa !20
  br label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %bb.j, %bb.l
  %.2202.sink = phi i32 [ %.2202, %bb.l ], [ %.0200, %bb.j ]
  %.5208.ph = phi ptr [ %.4207, %bb.l ], [ %.3206, %bb.j ]
  %.5195.ph = phi i32 [ %.4194, %bb.l ], [ %.3193, %bb.j ]
  %.4183.ph = phi ptr [ %.3182, %bb.l ], [ %.2181, %bb.j ]
  %.6178.ph = phi ptr [ %.5177, %bb.l ], [ %.4176, %bb.j ]
  %.8.ph = phi ptr [ %.7, %bb.l ], [ %.5, %bb.j ]
  store i32 %.2202.sink, ptr %i.t, align 4, !tbaa !53
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %.loopexit227, %.critedge
  %.5208 = phi ptr [ %.2205, %.critedge ], [ %.2205, %.loopexit227 ], [ %.5208.ph, %.critedge.thread.sink.split ] ; 5 uses
  %.5195 = phi i32 [ %.2192, %.critedge ], [ %.2192, %.loopexit227 ], [ %.5195.ph, %.critedge.thread.sink.split ] ; 3 uses
  %.4183 = phi ptr [ %.1180, %.critedge ], [ %.1180, %.loopexit227 ], [ %.4183.ph, %.critedge.thread.sink.split ]
  %.6178 = phi ptr [ %.3175.lcssa.ph, %.critedge ], [ %.2174, %.loopexit227 ], [ %.6178.ph, %.critedge.thread.sink.split ] ; 3 uses
  %.8 = phi ptr [ %i.da, %.critedge ], [ %.2, %.loopexit227 ], [ %.8.ph, %.critedge.thread.sink.split ] ; 2 uses
  %.not220 = icmp eq ptr %.5208, null
  br i1 %.not220, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.du = ptrtoint ptr %.6178 to i64
  %i.dv = ptrtoint ptr %.4183 to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL19_ASCIIGetUnicodeSetPK10UConverterPK9USetAdder20UConverterUnicodeSetP10UErrorCode:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !62
  tail call void %i.b(ptr noundef %i.c, i32 noundef 0, i32 noundef 127)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp sgt i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -127, ptr %2, align 4, !tbaa !20
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.q) ; 4 uses
  %i.v = icmp sgt i32 %spec.select, 15
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %spec.select, 4                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.089 = phi i32 [ %i.w, %bb.d ], [ %i.cj, %bb.f ] ; 3 uses
  %.085 = phi ptr [ %i.k, %bb.d ], [ %i.ch, %bb.f ] ; 18 uses
  %.0 = phi ptr [ %i.g, %bb.d ], [ %i.ci, %bb.f ] ; 18 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.y = load i8, ptr %.0, align 1, !tbaa !22     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.085, i64 1
  store i8 %i.y, ptr %.085, align 1, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !22   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.085, i64 2
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !22
  %i.ad = or i8 %i.ab, %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !22  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.085, i64 3
  store i8 %i.af, ptr %i.ac, align 1, !tbaa !22
  %i.ah = or i8 %i.ad, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !22  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.085, i64 4
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !22
  %i.al = or i8 %i.ah, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !22  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.085, i64 5
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !22
  %i.ap = or i8 %i.al, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.ar = load i8, ptr %i.am, align 1, !tbaa !22  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.085, i64 6
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !22
  %i.at = or i8 %i.ap, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !22  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.085, i64 7
  store i8 %i.av, ptr %i.as, align 1, !tbaa !22
  %i.ax = or i8 %i.at, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.az = load i8, ptr %i.au, align 1, !tbaa !22  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.085, i64 8
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !22
  %i.bb = or i8 %i.ax, %i.az
  %i.bc = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !22  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.085, i64 9
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !22
  %i.bf = or i8 %i.bb, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 10
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !22  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.085, i64 10
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !22
  %i.bj = or i8 %i.bf, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.0, i64 11
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !22  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.085, i64 11
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !22
  %i.bn = or i8 %i.bj, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !22  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.085, i64 12
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !22
  %i.br = or i8 %i.bn, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 13
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !22  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.085, i64 13
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !22
  %i.bv = or i8 %i.br, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 14
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !22  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.085, i64 14
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !22
  %i.bz = or i8 %i.bv, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %.0, i64 15
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !22  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.085, i64 15
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !22
  %i.cd = or i8 %i.bz, %i.cb
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !22  ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !22
  %i.cf = or i8 %i.cd, %i.ce
  %i.cg = icmp slt i8 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %.085, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.cj = add nsw i32 %.089, -1
  %i.ck = icmp sgt i32 %.089, 1
  br i1 %i.ck, label %bb.e, label %bb.g, !llvm.loop !73

bb.g:                                             ; preds = %bb.e, %bb.f
  %.190 = phi i32 [ 0, %bb.f ], [ %.089, %bb.e ]
  %.186 = phi ptr [ %i.ch, %bb.f ], [ %.085, %bb.e ]
  %.1 = phi ptr [ %i.ci, %bb.f ], [ %.0, %bb.e ]
  %.neg = sub i32 %.190, %i.w
  %.neg100 = shl i32 %.neg, 4
  %i.cl = add i32 %.neg100, %spec.select
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.194 = phi i32 [ %i.cl, %bb.g ], [ %spec.select, %bb.c ] ; 2 uses
  %.287 = phi ptr [ %.186, %bb.g ], [ %i.k, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %.1, %bb.g ], [ %i.g, %bb.c ]   ; 2 uses
  %i.cm = icmp sgt i32 %.194, 0
  br i1 %i.cm, label %.lr.ph, label %.critedge101

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.3108 = phi ptr [ %i.cp, %bb.i ], [ %.2, %bb.h ] ; 3 uses
  %.388107 = phi ptr [ %i.cq, %bb.i ], [ %.287, %bb.h ] ; 3 uses
  %.295106 = phi i32 [ %i.cr, %bb.i ], [ %.194, %bb.h ] ; 2 uses
  %i.cn = load i8, ptr %.3108, align 1, !tbaa !22 ; 2 uses
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %.3108, i64 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.388107, i64 1 ; 2 uses
  store i8 %i.cn, ptr %.388107, align 1, !tbaa !22
  %i.cr = add nsw i32 %.295106, -1
  %i.cs = icmp sgt i32 %.295106, 1
  br i1 %i.cs, label %.lr.ph, label %.critedge101, !llvm.loop !74

.critedge101:                                     ; preds = %bb.i, %bb.h
  %.388.lcssa = phi ptr [ %.287, %bb.h ], [ %i.cq, %bb.i ] ; 4 uses
  %.3.lcssa = phi ptr [ %.2, %bb.h ], [ %i.cp, %bb.i ] ; 4 uses
  %i.ct = icmp ult ptr %.3.lcssa, %i.i
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge101
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !47
  %.not = icmp ult ptr %.388.lcssa, %i.cu
  br i1 %.not, label %bb.k, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.j
  %.sink = phi i32 [ 15, %bb.j ], [ -127, %.lr.ph ]
  %.388105.ph = phi ptr [ %.388.lcssa, %bb.j ], [ %.388107, %.lr.ph ]
  %.3103.ph = phi ptr [ %.3.lcssa, %bb.j ], [ %.3108, %.lr.ph ]
  store i32 %.sink, ptr %2, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.critedge101, %bb.j
  %.388105 = phi ptr [ %.388.lcssa, %.critedge101 ], [ %.388.lcssa, %bb.j ], [ %.388105.ph, %.sink.split ]
  %.3103 = phi ptr [ %.3.lcssa, %.critedge101 ], [ %.3.lcssa, %bb.j ], [ %.3103.ph, %.sink.split ]
  store ptr %.3103, ptr %i.f, align 8, !tbaa !8
  store ptr %.388105, ptr %i.j, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 16}
!9 = !{!"_ZTS23UConverterToUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !15, i64 48}
!10 = !{!"short", !6, i64 0}
!11 = !{!"p1 _ZTS10UConverter", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 char16_t", !12, i64 0}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!9, !14, i64 32}
!17 = !{!9, !14, i64 40}
!18 = !{!9, !15, i64 48}
!19 = !{!9, !13, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTS10UErrorCode", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"char16_t", !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !26, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = distinct !{!38, !26, !35, !36}
!39 = distinct !{!39, !26, !35}
!40 = distinct !{!40, !26, !35, !36}
!41 = distinct !{!41, !26, !36, !35}
!42 = !{!43, !11, i64 8}
!43 = !{!"_ZTS25UConverterFromUnicodeArgs", !10, i64 0, !6, i64 2, !11, i64 8, !14, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !15, i64 48}
!44 = !{!43, !14, i64 16}
!45 = !{!43, !14, i64 24}
!46 = !{!43, !13, i64 32}
!47 = !{!43, !13, i64 40}
!48 = !{!43, !15, i64 48}
!49 = !{!50, !51, i64 48}
!50 = !{!"_ZTS10UConverter", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !51, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !6, i64 64, !6, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 104, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 208, !6, i64 212, !6, i64 250, !6, i64 281, !6, i64 282, !6, i64 283, !52, i64 284}
!51 = !{!"p1 _ZTS20UConverterSharedData", !12, i64 0}
!52 = !{!"_ZTS24UConverterCallbackReason", !6, i64 0}
!53 = !{!50, !5, i64 84}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26, !35, !36}
!58 = distinct !{!58, !26, !36, !35}
!59 = !{!60, !12, i64 16}
!60 = !{!"_ZTS9USetAdder", !61, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!61 = !{!"p1 _ZTS4USet", !12, i64 0}
!62 = !{!60, !61, i64 0}
!63 = !{!9, !11, i64 8}
!64 = !{!50, !6, i64 64}
!65 = !{!50, !5, i64 72}
!66 = distinct !{!66, !26}
!67 = !{!50, !5, i64 76}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26, !35, !36}
!72 = distinct !{!72, !26, !36, !35}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
end_hunk_1
