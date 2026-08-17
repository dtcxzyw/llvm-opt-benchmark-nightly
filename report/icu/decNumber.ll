inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@uprv_decNumberCompare_78:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, i8 noundef zeroext 0) ; 3 uses
  %i.g = icmp eq i32 %i.f, -2147483648
  br i1 %i.g, label %.thread9, label %.thread139.i

.thread139.i:                                     ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !12
  br i1 %i.h, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread, label %bb.c

bb.c:                                             ; preds = %.thread139.i
  store i8 1, ptr %i.k, align 1, !tbaa !12
  %i.l = icmp slt i32 %i.f, 0
  br i1 %i.l, label %bb.d, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread

bb.d:                                             ; preds = %bb.c
  store i8 -128, ptr %i.i, align 4, !tbaa !8
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread

_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit: ; preds = %bb.a
  %i.m = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %2, ptr noundef readonly %3, ptr noundef nonnull %i.a) ; 0 uses
  %.pr.pre = load i32, ptr %i.a, align 4, !tbaa !16 ; 6 uses
  %.not = icmp eq i32 %.pr.pre, 0
  br i1 %.not, label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  %i.n = and i32 %.pr.pre, 221
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %.pr.pre, 1073741824
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %.thread9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %.pr.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread9:                                         ; preds = %bb.b, %bb.f
  %i.q = phi i32 [ %.pr.pre, %bb.f ], [ 16, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.t, align 1, !tbaa !12
  store i8 32, ptr %i.r, align 4, !tbaa !8
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.e, %bb.g, %.thread9
  %.0.i = phi i32 [ %i.p, %bb.g ], [ %i.q, %.thread9 ], [ %.pr.pre, %bb.e ]
  %i.u = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread

_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit.thread: ; preds = %bb.d, %bb.c, %.thread139.i, %_ZL9decStatusP9decNumberjP10decContext.exit, %_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL12decCompareOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i8 noundef zeroext range(i8 1, 9) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = icmp eq i8 %4, 4                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4, !tbaa !8     ; 6 uses
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre180 = load i8, ptr %.phi.trans.insert179, align 4, !tbaa !8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 4, !tbaa !8     ; 3 uses
  %.not114 = icmp sgt i8 %i.f, -1                 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not114, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %.not114, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.d
  %i.g = phi i8 [ %.pre180, %._crit_edge ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = zext i8 %i.d to i32                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = zext i8 %i.g to i32                      ; 3 uses
  %i.l = or i8 %i.g, %i.d                         ; 2 uses
  %i.m = and i8 %i.l, 48
  %.not115 = icmp eq i8 %i.m, 0
  br i1 %.not115, label %bb.y, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i8 %4, label %bb.h [
    i8 1, label %.thread139.thread159
    i8 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %5, align 4, !tbaa !16
  %i.o = or i32 %i.n, 1073741952
  store i32 %i.o, ptr %5, align 4, !tbaa !16
  br label %.thread139.thread159

bb.h:                                             ; preds = %bb.f
  br i1 %i.b, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.p = and i32 %i.i, 48
  %.not120 = icmp eq i32 %i.p, 0
  br i1 %.not120, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = and i32 %i.k, 48
  %.not121 = icmp eq i32 %i.q, 0
  br i1 %.not121, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = and i32 %i.i, 16
  %.not122 = icmp eq i32 %i.r, 0
  %i.s = and i32 %i.k, 32
  %.not123 = icmp eq i32 %i.s, 0
  %or.cond132 = or i1 %.not122, %.not123
  br i1 %or.cond132, label %bb.l, label %_ZL14decUnitComparePKhiS0_ii.exit

bb.l:                                             ; preds = %bb.k
  %i.t = and i8 %i.d, 32
  %.not124 = icmp eq i8 %i.t, 0
  %i.u = and i8 %i.g, 16
  %.not125 = icmp eq i8 %i.u, 0
  %or.cond175 = or i1 %.not124, %.not125
  br i1 %or.cond175, label %bb.m, label %_ZL14decUnitComparePKhiS0_ii.exit

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.w = icmp slt i32 %i.v, 50
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ab = phi i32 [ %i.aa, %bb.n ], [ %i.v, %bb.m ] ; 4 uses
  %i.ac = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 50
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = zext i8 %i.ag to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ai = phi i32 [ %i.ah, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ab, %i.ai
  br i1 %i.aj, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp samesign ult i32 %i.ab, %i.ai
  br i1 %i.ak, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not75.i201 = icmp eq i32 %i.ab, 0
  br i1 %.not75.i201, label %_ZL14decUnitComparePKhiS0_ii.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.al = zext nneg i32 %i.ab to i64              ; 2 uses
  %.pn.i.add200 = add nuw nsw i64 %i.al, 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %i.al
  %.062.i199 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.u

bb.t:                                             ; preds = %bb.v
  %.062.i = getelementptr inbounds i8, ptr %.062.i202, i64 -1
  %.pn.i.add = add nsw i64 %.pn.i.add203, -1
  %.not75.i = icmp slt i64 %.pn.i.add203, 10
  br i1 %.not75.i, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.u, !llvm.loop !64

bb.u:                                             ; preds = %.lr.ph, %bb.t
  %.pn.i.add203 = phi i64 [ %.pn.i.add200, %.lr.ph ], [ %.pn.i.add, %bb.t ] ; 3 uses
  %.062.i202 = phi ptr [ %.062.i199, %.lr.ph ], [ %.062.i, %bb.t ] ; 2 uses
  %.063.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.pn.i.add203
  %i.an = load i8, ptr %.063.i.ptr, align 1, !tbaa !12 ; 2 uses
  %i.ao = load i8, ptr %.062.i202, align 1, !tbaa !12 ; 2 uses
  %i.ap = icmp ugt i8 %i.an, %i.ao
  br i1 %i.ap, label %_ZL14decUnitComparePKhiS0_ii.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp ult i8 %i.an, %i.ao
  br i1 %i.aq, label %._ZL14decUnitComparePKhiS0_ii.exit.loopexit_crit_edge207, label %bb.t, !llvm.loop !64

._ZL14decUnitComparePKhiS0_ii.exit.loopexit_crit_edge207: ; preds = %bb.v
  br label %_ZL14decUnitComparePKhiS0_ii.exit, !llvm.loop !64

_ZL14decUnitComparePKhiS0_ii.exit:                ; preds = %bb.t, %bb.u, %bb.s, %._ZL14decUnitComparePKhiS0_ii.exit.loopexit_crit_edge207, %bb.l, %bb.r, %bb.q, %bb.k, %bb.j, %bb.i
  %.0102 = phi i32 [ 1, %bb.j ], [ -1, %bb.k ], [ 1, %bb.l ], [ -1, %bb.i ], [ -1, %bb.r ], [ 1, %bb.q ], [ -1, %._ZL14decUnitComparePKhiS0_ii.exit.loopexit_crit_edge207 ], [ 0, %bb.s ], [ 1, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.ar = sub nsw i32 0, %.0102
  %.not126177 = icmp slt i8 %i.d, 0
  %spec.select = select i1 %.not126177, i32 %i.ar, i32 %.0102
  br label %.thread139

bb.w:                                             ; preds = %bb.h
  %i.as = and i8 %i.l, 16
  %.not116 = icmp eq i8 %i.as, 0
  br i1 %.not116, label %bb.x, label %.thread139.thread159

bb.x:                                             ; preds = %bb.w
  %i.at = and i32 %i.i, 48
  %.not117 = icmp eq i32 %i.at, 0
  %i.au = and i32 %i.k, 48
  %.not118 = icmp eq i32 %i.au, 0
  %or.cond133 = or i1 %.not117, %.not118
  br i1 %or.cond133, label %.thread172, label %.thread139.thread159

.thread172:                                       ; preds = %bb.x
  %i.av = and i8 %i.d, 32
  %.not119 = icmp eq i8 %i.av, 0
  %. = select i1 %.not119, i32 1, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  br label %bb.an

.thread139.thread159:                             ; preds = %bb.w, %bb.g, %bb.f, %bb.x
  %i.aw = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %5) ; 0 uses
  br label %bb.ao

bb.y:                                             ; preds = %bb.e
  %i.ax = add nsw i8 %4, -7
  %or.cond = icmp ult i8 %i.ax, 2
  %.198 = zext i1 %or.cond to i8
  %i.ay = tail call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %.198) ; 2 uses
  %i.az = icmp eq i32 %i.ay, -2147483648
  br i1 %i.az, label %bb.z, label %.thread139

bb.z:                                             ; preds = %bb.y
  %i.ba = load i32, ptr %5, align 4, !tbaa !16
  %i.bb = or i32 %i.ba, 16
  store i32 %i.bb, ptr %5, align 4, !tbaa !16
  br label %bb.ao

.thread139:                                       ; preds = %_ZL14decUnitComparePKhiS0_ii.exit, %bb.y
  %.1142 = phi i32 [ %i.ay, %bb.y ], [ %spec.select, %_ZL14decUnitComparePKhiS0_ii.exit ] ; 4 uses
  switch i8 %4, label %bb.af [
    i8 6, label %bb.aa
    i8 4, label %bb.aa
    i8 1, label %bb.aa
    i8 5, label %bb.ao
  ]

bb.aa:                                            ; preds = %.thread139, %.thread139, %.thread139
  %i.bc = icmp eq i32 %.1142, 0                   ; 2 uses
  %or.cond10 = and i1 %i.b, %i.bc
  br i1 %or.cond10, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !10 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %.not129 = icmp eq i32 %i.be, %i.bg
  br i1 %.not129, label %.thread144, label %.thread147

.thread144:                                       ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bh, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bj, align 1, !tbaa !12
  br label %bb.ao

.thread147:                                       ; preds = %bb.ab
  %i.bk = icmp slt i32 %i.be, %i.bg
  %.134 = select i1 %i.bk, i32 -1, i32 1          ; 2 uses
  %i.bl = load i8, ptr %i.h, align 4, !tbaa !8
  %i.bm = sub nsw i32 0, %.134
  %.not130178 = icmp slt i8 %i.bl, 0
  %spec.select138 = select i1 %.not130178, i32 %i.bm, i32 %.134
  br label %.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bn, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.bp, align 1, !tbaa !12
  br i1 %i.bc, label %bb.ao, label %bb.ad

.sink.split:                                      ; preds = %bb.d, %bb.c, %.thread147
  %.3150.ph = phi i32 [ %spec.select138, %.thread147 ], [ 1, %bb.d ], [ -1, %bb.c ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.br, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ac
  %i.bt = phi ptr [ %i.bp, %bb.ac ], [ %i.bs, %.sink.split ]
  %i.bu = phi ptr [ %i.bn, %bb.ac ], [ %i.bq, %.sink.split ]
  %.3150 = phi i32 [ %.1142, %bb.ac ], [ %.3150.ph, %.sink.split ]
  store i8 1, ptr %i.bt, align 1, !tbaa !12
  %i.bv = icmp slt i32 %.3150, 0
  br i1 %i.bv, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  store i8 -128, ptr %i.bu, align 4, !tbaa !8
  br label %bb.ao

bb.af:                                            ; preds = %.thread139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !16
  %i.bw = icmp eq i32 %.1142, 0
  br i1 %i.bw, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.bx = load i8, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.by = and i8 %i.bx, -128                      ; 2 uses
  %i.bz = load i8, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.ca = and i8 %i.bz, -128
  %.not127 = icmp eq i8 %i.by, %i.ca
  br i1 %.not127, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not128 = icmp eq i8 %i.by, 0
  %.135 = select i1 %.not128, i32 1, i32 -1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.cb = and i8 %i.bz, %i.bx
  %or.cond12.not = icmp sgt i8 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !10 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10 ; 2 uses
  br i1 %or.cond12.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = icmp slt i32 %i.cd, %i.cf
  %.136 = select i1 %i.cg, i32 1, i32 -1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ch = icmp sgt i32 %i.cd, %i.cf
  %.137 = select i1 %i.ch, i32 1, i32 -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak, %bb.af
  %.5 = phi i32 [ %.1142, %bb.af ], [ %.135, %bb.ah ], [ %.137, %bb.ak ], [ %.136, %bb.aj ] ; 2 uses
  switch i8 %4, label %bb.an [
    i8 8, label %bb.am
    i8 3, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.ci = sub nsw i32 0, %.5
  br label %bb.an

bb.an:                                            ; preds = %.thread172, %bb.al, %bb.am
  %.6 = phi i32 [ %i.ci, %bb.am ], [ %.5, %bb.al ], [ %., %.thread172 ]
  %i.cj = icmp sgt i32 %.6, 0
  %i.ck = select i1 %i.cj, ptr %1, ptr %2         ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cm, ptr %i.cn, align 4, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 9
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !11
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef readonly %3, ptr noundef nonnull readonly %i.cr, i32 noundef %i.cs, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef %3, ptr noundef %i.a, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ao

bb.ao:                                            ; preds = %.thread139.thread159, %.thread144, %.thread139, %bb.ad, %bb.ae, %bb.ac, %bb.an, %bb.z
end_hunk_0
begin_hunk_1_@uprv_decNumberShift_78:bb.a
  %i.bk = add i32 %i.bj, %.4110.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.671109.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !157

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bd, %._crit_edge.i.unr-lcssa ], [ %i.bk, %.lr.ph.i.epil ] ; 5 uses
  %i.bm = icmp eq i32 %i.l, 10
  br i1 %i.bm, label %bb.g, label %.thread101.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = add nsw i32 %i.l, -2
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %scevgep = getelementptr i8, ptr %i.bp, i64 10
  %i.bq = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = sdiv i32 %.lcssa, %i.bs
  %i.bu = load i8, ptr %scevgep, align 1, !tbaa !12
  %i.bv = zext i8 %i.bu to i32
  %.not83.i = icmp ne i32 %i.bt, %i.bv
  %i.bw = icmp sgt i32 %.lcssa, 1999999997
  %or.cond.i = select i1 %i.m, i1 %i.bw, i1 false
  %or.cond91.i = or i1 %or.cond.i, %.not83.i
  %i.bx = icmp sgt i8 %i.f, -1
  %i.by = icmp sgt i32 %.lcssa, 999999999
  %or.cond4.i = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = select i1 %or.cond91.i, i1 true, i1 %or.cond4.i
  br i1 %i.bz, label %.thread.i, label %.thread101.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.ca = and i32 %i.t, 1
  %..i = or disjoint i32 %i.ca, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit

.thread101.i:                                     ; preds = %.preheader.i, %bb.g, %._crit_edge.i
  %.4.lcssa.i69 = phi i32 [ %.lcssa, %._crit_edge.i ], [ %.lcssa, %bb.g ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.cb = sub nsw i32 0, %.4.lcssa.i69
  %spec.select = select i1 %i.m, i32 %i.cb, i32 %.4.lcssa.i69
  br label %_ZL9decGetIntPK9decNumber.exit

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %.thread101.i, %.thread.i
  %.3.i = phi i32 [ %spec.select, %.thread101.i ], [ %..i, %.thread.i ] ; 2 uses
  switch i32 %.3.i, label %_ZL9decGetIntPK9decNumber.exit.thread [
    i32 -2147483645, label %.thread76
    i32 -2147483646, label %.thread76
    i32 -2147483648, label %.thread76
  ]

_ZL9decGetIntPK9decNumber.exit.thread:            ; preds = %bb.e, %_ZL9decGetIntPK9decNumber.exit
  %.3.i71 = phi i32 [ %.3.i, %_ZL9decGetIntPK9decNumber.exit ], [ 0, %bb.e ] ; 8 uses
  %i.cc = tail call i32 @llvm.abs.i32(i32 %.3.i71, i1 true)
  %i.cd = load i32, ptr %3, align 4, !tbaa !32
  %i.ce = icmp sgt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.thread76, label %bb.h

bb.h:                                             ; preds = %_ZL9decGetIntPK9decNumber.exit.thread
  %i.cf = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %.not60 = icmp eq i32 %.3.i71, 0
  br i1 %.not60, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !8
  %i.ci = and i8 %i.ch, 64
  %.not61 = icmp eq i8 %i.ci, 0
  br i1 %.not61, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cj = icmp sgt i32 %.3.i71, 0
  br i1 %i.cj, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %3, align 4, !tbaa !32    ; 3 uses
  %i.cl = icmp eq i32 %.3.i71, %i.ck
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cm, align 1, !tbaa !12
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.cn = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  %i.co = add nsw i32 %i.cn, %.3.i71              ; 2 uses
  %i.cp = icmp sgt i32 %i.co, %i.ck
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = sub nsw i32 %i.co, %i.ck
  %i.cr = tail call fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr noundef nonnull %0, i32 noundef %i.cq) ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cs = phi i32 [ %.pr, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %.not63 = icmp eq i8 %i.cv, 0
  br i1 %.not63, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cx = tail call fastcc noundef i32 @_ZL14decShiftToMostPhii(ptr noundef nonnull %i.cw, i32 noundef %i.cs, i32 noundef %.3.i71)
  store i32 %i.cx, ptr %0, align 4, !tbaa !11
  br label %.thread

bb.r:                                             ; preds = %bb.j
  %i.cy = sub nsw i32 0, %.3.i71                  ; 2 uses
  %i.cz = load i32, ptr %0, align 4, !tbaa !11    ; 4 uses
  %.not62 = icmp sgt i32 %i.cz, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %.not62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.da, align 1, !tbaa !12
  store i32 1, ptr %0, align 4, !tbaa !11
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.db = icmp samesign ult i32 %i.cz, 50
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.df = zext i8 %i.de to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dg = phi i32 [ %i.df, %bb.u ], [ %i.cz, %bb.t ]
  %i.dh = tail call fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef nonnull %i.da, i32 noundef %i.dg, i32 noundef %i.cy) ; 0 uses
  %i.di = load i32, ptr %0, align 4, !tbaa !11
  %i.dj = add nsw i32 %i.di, %.3.i71
  store i32 %i.dj, ptr %0, align 4, !tbaa !11
  br label %.thread

bb.w:                                             ; preds = %bb.a, %bb.b
  %i.dk = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %.pr72.pre = load i32, ptr %i.a, align 4, !tbaa !16 ; 6 uses
  %.not64 = icmp eq i32 %.pr72.pre, 0
  br i1 %.not64, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = and i32 %.pr72.pre, 221
  %.not.i65 = icmp eq i32 %i.dl, 0
  br i1 %.not.i65, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = and i32 %.pr72.pre, 1073741824
  %.not6.i = icmp eq i32 %i.dm, 0
  br i1 %.not6.i, label %.thread76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = and i32 %.pr72.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread76:                                        ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.c, %bb.d, %bb.y
  %i.do = phi i32 [ %.pr72.pre, %bb.y ], [ 128, %bb.c ], [ 128, %bb.d ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dq, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.dr, align 1, !tbaa !12
  store i8 32, ptr %i.dp, align 4, !tbaa !8
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.x, %bb.z, %.thread76
  %.0.i = phi i32 [ %i.dn, %bb.z ], [ %i.do, %.thread76 ], [ %.pr72.pre, %bb.x ]
  %i.ds = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.l, %bb.v, %bb.s, %bb.i, %bb.h, %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr nofree noundef returned captures(address, ret: address, provenance) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11     ; 2 uses
  %.not = icmp slt i32 %1, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !12
  br label %_ZL12decGetDigitsPhi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %i.a, %1                     ; 4 uses
  %i.d = icmp slt i32 %i.c, 50
  %2 = zext nneg i32 %i.c to i64                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn34 = phi i64 [ %i.h, %bb.d ], [ %2, %bb.c ]
  %i.i = phi i32 [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 4 uses
  %.neg35 = add i32 %i.c, 1
  %i.j = sub i32 %.neg35, %i.i                    ; 2 uses
  %.not33 = icmp eq i32 %i.j, 1
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn34
  %i.k = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = load i8, ptr %i.k, align 1, !tbaa !12
  %i.p = zext i8 %i.o to i32
  %i.q = urem i32 %i.p, %i.n
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %i.k, align 1, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = zext nneg i32 %i.i to i64
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %.01011.i = getelementptr i8, ptr %i.t, i64 -1  ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.b
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01014.i = phi ptr [ %.010.i, %bb.h ], [ %.01011.i, %bb.g ] ; 2 uses
  %.013.i = phi i32 [ %i.x, %bb.h ], [ %i.i, %bb.g ] ; 3 uses
  %i.u = load i8, ptr %.01014.i, align 1, !tbaa !12
  %i.v = icmp ne i8 %i.u, 0
  %i.w = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add nsw i32 %.013.i, -1                  ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.b
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !15

_ZL12decGetDigitsPhi.exit:                        ; preds = %bb.h, %.lr.ph.i, %bb.g, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ %i.i, %bb.g ], [ %i.x, %bb.h ], [ %.013.i, %.lr.ph.i ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !11
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberSquareRoot_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 11 uses
  %3 = alloca %struct.decContext, align 4         ; 25 uses
  %4 = alloca %struct.decContext, align 4         ; 8 uses
  %5 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %6 = alloca [4 x %struct.decNumber], align 16   ; 3 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %8 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %9 = alloca [2 x %struct.decNumber], align 16   ; 16 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !8     ; 5 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 112
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 64
  %.not237 = icmp eq i32 %i.m, 0
  br i1 %.not237, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not238 = icmp sgt i8 %i.j, -1
  br i1 %.not238, label %bb.d, label %.thread298.thread.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %0, %1
  br i1 %i.n, label %.thread298, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.j, ptr %i.o, align 4, !tbaa !8
  %i.p = load <2 x i32>, ptr %1, align 4, !tbaa !16
  store <2 x i32> %i.p, ptr %0, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %.thread298

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.w = icmp samesign ult i32 %i.t, 50
  %i.x = zext nneg i32 %i.t to i64                ; 2 uses
  br i1 %i.w, label %bb.g, label %iter.check

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.g
  %.pn.i = phi i64 [ %i.aa, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ad = add i64 %.pn.i, %i.b
  %i.ae = add i64 %i.ad, 9
  %i.af = add i64 %i.b, 11
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = add i64 %umax356, -10
  %i.ah = sub i64 %i.ag, %i.b                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  %i.ai = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond405 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond405, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check357 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, -32                     ; 5 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %n.vec
  %i.al = getelementptr i8, ptr %i.ac, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %next.gep358 = getelementptr i8, ptr %i.ac, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep358, align 1, !tbaa !12
  %wide.load359 = load <16 x i8>, ptr %i.am, align 1, !tbaa !12
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> %wide.load359, ptr %i.an, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.thread298, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec361 = and i64 %i.ah, -4                   ; 4 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %n.vec361
  %i.aq = getelementptr i8, ptr %i.ac, i64 %n.vec361
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next366, %vec.epilog.vector.body ] ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.v, i64 %index362
  %next.gep364 = getelementptr i8, ptr %i.ac, i64 %index362
  %wide.load365 = load <4 x i8>, ptr %next.gep364, align 1, !tbaa !12
  store <4 x i8> %wide.load365, ptr %next.gep363, align 1, !tbaa !12
  %index.next366 = add nuw i64 %index362, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n367 = icmp eq i64 %i.ah, %n.vec361
  br i1 %cmp.n367, label %.thread298, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
end_hunk_1
