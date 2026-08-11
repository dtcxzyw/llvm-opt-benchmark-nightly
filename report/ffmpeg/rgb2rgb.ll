inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@rgb16tobgr24_c:bb.a
  %i.ak = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ad, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.al = lshr <16 x i16> %i.ak, <i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9>
  %i.am = or disjoint <16 x i16> %i.aj, %i.al
  %i.an = trunc nuw <16 x i16> %i.am to <16 x i8>
  %i.ao = shufflevector <8 x i16> %i.ai, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = trunc nuw <16 x i16> %i.ao to <16 x i8>
  %interleaved.vec = shufflevector <16 x i8> %i.an, <16 x i8> %i.ap, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i8> %interleaved.vec, ptr %next.gep, align 1, !tbaa !10, !alias.scope !135, !noalias !132
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.01516.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader21, %.lr.ph
  %.017 = phi ptr [ %i.bk, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader21 ] ; 4 uses
  %.01516 = phi ptr [ %i.ar, %.lr.ph ], [ %.01516.ph, %.lr.ph.preheader21 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01516, i64 2 ; 2 uses
  %i.as = load i16, ptr %.01516, align 2, !tbaa !18 ; 4 uses
  %i.at = and i16 %i.as, 31                       ; 2 uses
  %i.au = shl nuw nsw i16 %i.at, 3
  %i.av = lshr i16 %i.at, 2
  %i.aw = or disjoint i16 %i.au, %i.av
  %i.ax = trunc nuw i16 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store i8 %i.ax, ptr %.017, align 1, !tbaa !10
  %i.az = and i16 %i.as, 2016                     ; 2 uses
  %i.ba = lshr exact i16 %i.az, 3
  %i.bb = lshr i16 %i.az, 9
  %i.bc = or disjoint i16 %i.ba, %i.bb
  %i.bd = trunc nuw i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.017, i64 2
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !10
  %i.bf = lshr i16 %i.as, 8
  %i.bg = and i16 %i.bf, 248
  %i.bh = lshr i16 %i.as, 13
  %i.bi = or disjoint i16 %i.bg, %i.bh
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.017, i64 3
  store i8 %i.bj, ptr %i.be, align 1, !tbaa !10
  %i.bl = icmp ult ptr %i.ar, %i.d
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16to32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = sext i32 %i.a to i64
  %.idx = shl nsw i64 %i.b, 1
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %2, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %i.y, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01617 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01617, i64 2 ; 2 uses
  %i.f = load i16, ptr %.01617, align 2, !tbaa !18 ; 4 uses
  %i.g = and i16 %i.f, 31                         ; 2 uses
  %i.h = shl nuw nsw i16 %i.g, 3
  %i.i = lshr i16 %i.g, 2
  %i.j = or disjoint i16 %i.h, %i.i
  %i.k = trunc nuw i16 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 1
  store i8 %i.k, ptr %.018, align 1, !tbaa !10
  %i.m = and i16 %i.f, 2016                       ; 2 uses
  %i.n = lshr exact i16 %i.m, 3
  %i.o = lshr i16 %i.m, 9
  %i.p = or disjoint i16 %i.n, %i.o
  %i.q = trunc nuw i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 2
  store i8 %i.q, ptr %i.l, align 1, !tbaa !10
  %i.s = lshr i16 %i.f, 8
  %i.t = and i16 %i.s, 248
  %i.u = lshr i16 %i.f, 13
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = trunc nuw i16 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 3
  store i8 %i.w, ptr %i.r, align 1, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i8 -1, ptr %i.x, align 1, !tbaa !10
  %i.z = icmp ult ptr %i.e, %i.c
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb16to15_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.d = icmp sgt i32 %2, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.g = add i64 %i.f, %i.a
  %i.h = add i64 %i.g, -3
  %i.i = add i64 %i.f, 4
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.k = xor i64 %i.f, -1
  %i.l = add i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  %i.o = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !9 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.t, align 4, !tbaa !9 ; 2 uses
  %i.u = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.v = lshr <4 x i32> %wide.load26, splat (i32 1)
  %i.w = and <4 x i32> %i.u, splat (i32 2145419232)
  %i.x = and <4 x i32> %i.v, splat (i32 2145419232)
  %i.y = and <4 x i32> %wide.load, splat (i32 2031647)
  %i.z = and <4 x i32> %wide.load26, splat (i32 2031647)
  %i.aa = or disjoint <4 x i32> %i.w, %i.y
  %i.ab = or disjoint <4 x i32> %i.x, %i.z
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.aa, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %i.ab, ptr %i.ac, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.01819.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.020 = phi ptr [ %i.ak, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.01819 = phi ptr [ %i.aj, %.lr.ph ], [ %.01819.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ae = load i32, ptr %.01819, align 4, !tbaa !9 ; 2 uses
  %i.af = lshr i32 %i.ae, 1
  %i.ag = and i32 %i.af, 2145419232
  %i.ah = and i32 %i.ae, 2031647
  %i.ai = or disjoint i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %.020, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.01819, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.c
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %middle.block ], [ %i.ak, %.lr.ph ]
  %i.am = icmp ult ptr %.018.lcssa, %i.b
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.an = load i16, ptr %.018.lcssa, align 2, !tbaa !18 ; 2 uses
  %i.ao = lshr i16 %i.an, 1
  %i.ap = and i16 %i.ao, 32736
  %i.aq = and i16 %i.an, 31
  %i.ar = or disjoint i16 %i.ap, %i.aq
  store i16 %i.ar, ptr %.0.lcssa, align 2, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr16_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.a, %i.b
  %i.f = add i64 %i.a, 3
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %3 = sub i64 %i.g, %i.a                         ; 2 uses
  %i.h = icmp ne i64 %3, 3
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %4 = sub i64 %3, %i.i
  %5 = add i64 %4, -3
  %i.j = udiv i64 %5, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add i64 %i.a, %i.b
  %i.n = add i64 %i.a, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = add i64 %umax, -3                        ; 2 uses
  %i.p = icmp ne i64 %i.o, %i.a
  %umin = zext i1 %i.p to i64                     ; 2 uses
  %i.q = add i64 %i.a, %umin
  %i.r = sub i64 %i.o, %i.q
  %i.s = udiv i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, %umin              ; 2 uses
  %i.u = shl nuw i64 %i.t, 1
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 2
  %i.w = mul i64 %i.t, 3
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep15 = getelementptr i8, ptr %i.x, i64 3
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = mul i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ae, i64 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.af, i64 6
  %i.ag = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ah, i64 12
  %i.ai = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 15
  %i.aj = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.aj, i64 18
  %i.ak = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 21
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 4
  %i.an = getelementptr i8, ptr %i.af, i64 7
  %i.ao = getelementptr i8, ptr %i.ag, i64 10
  %i.ap = getelementptr i8, ptr %i.ah, i64 13
  %i.aq = getelementptr i8, ptr %i.ai, i64 16
  %i.ar = getelementptr i8, ptr %i.aj, i64 19
  %i.as = getelementptr i8, ptr %i.ak, i64 22
  %i.at = load i8, ptr %next.gep16, align 1, !tbaa !10, !alias.scope !142
  %i.au = load i8, ptr %next.gep17, align 1, !tbaa !10, !alias.scope !142
  %i.av = load i8, ptr %next.gep18, align 1, !tbaa !10, !alias.scope !142
  %i.aw = load i8, ptr %next.gep19, align 1, !tbaa !10, !alias.scope !142
  %i.ax = load i8, ptr %next.gep20, align 1, !tbaa !10, !alias.scope !142
  %i.ay = load i8, ptr %next.gep21, align 1, !tbaa !10, !alias.scope !142
  %i.az = load i8, ptr %next.gep22, align 1, !tbaa !10, !alias.scope !142
  %i.ba = load i8, ptr %next.gep23, align 1, !tbaa !10, !alias.scope !142
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bk = getelementptr i8, ptr %i.ae, i64 5
  %i.bl = getelementptr i8, ptr %i.af, i64 8
  %i.bm = getelementptr i8, ptr %i.ag, i64 11
  %i.bn = getelementptr i8, ptr %i.ah, i64 14
  %i.bo = getelementptr i8, ptr %i.ai, i64 17
  %i.bp = getelementptr i8, ptr %i.aj, i64 20
  %i.bq = getelementptr i8, ptr %i.ak, i64 23
  %i.br = load i8, ptr %i.al, align 1, !tbaa !10, !alias.scope !142
  %i.bs = load i8, ptr %i.am, align 1, !tbaa !10, !alias.scope !142
  %i.bt = load i8, ptr %i.an, align 1, !tbaa !10, !alias.scope !142
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !10, !alias.scope !142
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !10, !alias.scope !142
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !10, !alias.scope !142
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !10, !alias.scope !142
  %i.by = load i8, ptr %i.as, align 1, !tbaa !10, !alias.scope !142
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !10, !alias.scope !142
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !10, !alias.scope !142
  %i.cj = load i8, ptr %i.bl, align 1, !tbaa !10, !alias.scope !142
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !10, !alias.scope !142
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !10, !alias.scope !142
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !10, !alias.scope !142
  %i.cn = load i8, ptr %i.bp, align 1, !tbaa !10, !alias.scope !142
  %i.co = load i8, ptr %i.bq, align 1, !tbaa !10, !alias.scope !142
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = lshr <8 x i8> %i.bi, splat (i8 3)
  %i.cy = zext nneg <8 x i8> %i.cx to <8 x i16>
  %i.cz = and <8 x i8> %i.cg, splat (i8 -4)
  %i.da = zext <8 x i8> %i.cz to <8 x i16>
  %i.db = shl nuw nsw <8 x i16> %i.da, splat (i16 3)
  %i.dc = or disjoint <8 x i16> %i.db, %i.cy
  %i.dd = and <8 x i8> %i.cw, splat (i8 -8)
  %i.de = zext <8 x i8> %i.dd to <8 x i16>
  %i.df = shl nuw <8 x i16> %i.de, splat (i16 8)
  %i.dg = or disjoint <8 x i16> %i.dc, %i.df
  store <8 x i16> %i.dg, ptr %next.gep, align 2, !tbaa !18, !alias.scope !145, !noalias !142
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01213.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.014 = phi ptr [ %i.dv, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.01213 = phi ptr [ %i.dk, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  %i.dj = load i8, ptr %.01213, align 1, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.dl = lshr i8 %i.dj, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = load <2 x i8>, ptr %i.di, align 1, !tbaa !10
  %i.do = and <2 x i8> %i.dn, <i8 -4, i8 -8>
  %i.dp = zext <2 x i8> %i.do to <2 x i16>
  %i.dq = shl nuw <2 x i16> %i.dp, <i16 3, i16 8> ; 2 uses
  %i.dr = extractelement <2 x i16> %i.dq, i64 0
  %i.ds = or disjoint i16 %i.dr, %i.dm
  %i.dt = extractelement <2 x i16> %i.dq, i64 1
  %i.du = or disjoint i16 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.du, ptr %.014, align 2, !tbaa !18
  %i.dw = icmp ult ptr %i.dk, %i.c
  br i1 %i.dw, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr15_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.a, %i.b
  %i.f = add i64 %i.a, 3
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %3 = sub i64 %i.g, %i.a                         ; 2 uses
  %i.h = icmp ne i64 %3, 3
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %4 = sub i64 %3, %i.i
  %5 = add i64 %4, -3
  %i.j = udiv i64 %5, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add i64 %i.a, %i.b
  %i.n = add i64 %i.a, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = add i64 %umax, -3                        ; 2 uses
  %i.p = icmp ne i64 %i.o, %i.a
  %umin = zext i1 %i.p to i64                     ; 2 uses
  %i.q = add i64 %i.a, %umin
  %i.r = sub i64 %i.o, %i.q
  %i.s = udiv i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, %umin              ; 2 uses
  %i.u = shl nuw i64 %i.t, 1
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 2
  %i.w = mul i64 %i.t, 3
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep15 = getelementptr i8, ptr %i.x, i64 3
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = mul i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ae, i64 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.af, i64 6
  %i.ag = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ah, i64 12
  %i.ai = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 15
  %i.aj = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.aj, i64 18
  %i.ak = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 21
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 4
  %i.an = getelementptr i8, ptr %i.af, i64 7
  %i.ao = getelementptr i8, ptr %i.ag, i64 10
  %i.ap = getelementptr i8, ptr %i.ah, i64 13
  %i.aq = getelementptr i8, ptr %i.ai, i64 16
  %i.ar = getelementptr i8, ptr %i.aj, i64 19
  %i.as = getelementptr i8, ptr %i.ak, i64 22
  %i.at = load i8, ptr %next.gep16, align 1, !tbaa !10, !alias.scope !149
  %i.au = load i8, ptr %next.gep17, align 1, !tbaa !10, !alias.scope !149
  %i.av = load i8, ptr %next.gep18, align 1, !tbaa !10, !alias.scope !149
  %i.aw = load i8, ptr %next.gep19, align 1, !tbaa !10, !alias.scope !149
  %i.ax = load i8, ptr %next.gep20, align 1, !tbaa !10, !alias.scope !149
  %i.ay = load i8, ptr %next.gep21, align 1, !tbaa !10, !alias.scope !149
  %i.az = load i8, ptr %next.gep22, align 1, !tbaa !10, !alias.scope !149
  %i.ba = load i8, ptr %next.gep23, align 1, !tbaa !10, !alias.scope !149
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bk = getelementptr i8, ptr %i.ae, i64 5
  %i.bl = getelementptr i8, ptr %i.af, i64 8
  %i.bm = getelementptr i8, ptr %i.ag, i64 11
  %i.bn = getelementptr i8, ptr %i.ah, i64 14
  %i.bo = getelementptr i8, ptr %i.ai, i64 17
  %i.bp = getelementptr i8, ptr %i.aj, i64 20
  %i.bq = getelementptr i8, ptr %i.ak, i64 23
  %i.br = load i8, ptr %i.al, align 1, !tbaa !10, !alias.scope !149
  %i.bs = load i8, ptr %i.am, align 1, !tbaa !10, !alias.scope !149
  %i.bt = load i8, ptr %i.an, align 1, !tbaa !10, !alias.scope !149
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !10, !alias.scope !149
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !10, !alias.scope !149
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !10, !alias.scope !149
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !10, !alias.scope !149
  %i.by = load i8, ptr %i.as, align 1, !tbaa !10, !alias.scope !149
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !10, !alias.scope !149
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !10, !alias.scope !149
  %i.cj = load i8, ptr %i.bl, align 1, !tbaa !10, !alias.scope !149
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !10, !alias.scope !149
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !10, !alias.scope !149
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !10, !alias.scope !149
  %i.cn = load i8, ptr %i.bp, align 1, !tbaa !10, !alias.scope !149
  %i.co = load i8, ptr %i.bq, align 1, !tbaa !10, !alias.scope !149
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = lshr <8 x i8> %i.bi, splat (i8 3)
  %i.cy = zext nneg <8 x i8> %i.cx to <8 x i16>
  %i.cz = and <8 x i8> %i.cg, splat (i8 -8)
  %i.da = zext <8 x i8> %i.cz to <8 x i16>
  %i.db = shl nuw nsw <8 x i16> %i.da, splat (i16 2)
  %i.dc = or disjoint <8 x i16> %i.db, %i.cy
  %i.dd = and <8 x i8> %i.cw, splat (i8 -8)
  %i.de = zext <8 x i8> %i.dd to <8 x i16>
  %i.df = shl nuw nsw <8 x i16> %i.de, splat (i16 7)
  %i.dg = or disjoint <8 x i16> %i.dc, %i.df
  store <8 x i16> %i.dg, ptr %next.gep, align 2, !tbaa !18, !alias.scope !152, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01213.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.014 = phi ptr [ %i.dv, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.01213 = phi ptr [ %i.dk, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  %i.dj = load i8, ptr %.01213, align 1, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.dl = lshr i8 %i.dj, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = load <2 x i8>, ptr %i.di, align 1, !tbaa !10
  %i.do = and <2 x i8> %i.dn, splat (i8 -8)
  %i.dp = zext <2 x i8> %i.do to <2 x i16>
  %i.dq = shl nuw nsw <2 x i16> %i.dp, <i16 2, i16 7> ; 2 uses
  %i.dr = extractelement <2 x i16> %i.dq, i64 0
  %i.ds = or disjoint i16 %i.dr, %i.dm
  %i.dt = extractelement <2 x i16> %i.dq, i64 1
  %i.du = or disjoint i16 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.du, ptr %.014, align 2, !tbaa !18
  %i.dw = icmp ult ptr %i.dk, %i.c
  br i1 %i.dw, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr32_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.m, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.01213 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  %i.e = load i8, ptr %.01213, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 1
  store i8 %i.e, ptr %.014, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  %i.h = load i8, ptr %i.d, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i8 %i.h, ptr %i.f, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.k = load i8, ptr %i.g, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 3
  store i8 %i.k, ptr %i.i, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 4
  store i8 -1, ptr %i.l, align 1, !tbaa !10
  %i.n = icmp ult ptr %i.j, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !156

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}
end_hunk_0
begin_hunk_1_@rgb32to16_c:bb.a
  %n.vec = and i64 %i.k, 9223372036854775800      ; 4 uses
  %i.l = shl nuw i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = shl i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.p  ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep14 = getelementptr i8, ptr %0, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !9 ; 3 uses
  %wide.load15 = load <4 x i32>, ptr %i.r, align 4, !tbaa !9 ; 3 uses
  %i.s = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.t = lshr <4 x i32> %wide.load15, splat (i32 3)
  %i.u = and <4 x i32> %i.s, splat (i32 31)
  %i.v = and <4 x i32> %i.t, splat (i32 31)
  %i.w = lshr <4 x i32> %wide.load, splat (i32 5)
  %i.x = lshr <4 x i32> %wide.load15, splat (i32 5)
  %i.y = and <4 x i32> %i.w, splat (i32 2016)
  %i.z = and <4 x i32> %i.x, splat (i32 2016)
  %i.aa = or disjoint <4 x i32> %i.u, %i.y
  %i.ab = or disjoint <4 x i32> %i.v, %i.z
  %i.ac = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.ad = lshr <4 x i32> %wide.load15, splat (i32 8)
  %i.ae = and <4 x i32> %i.ac, splat (i32 63488)
  %i.af = and <4 x i32> %i.ad, splat (i32 63488)
  %i.ag = or disjoint <4 x i32> %i.aa, %i.ae
  %i.ah = or disjoint <4 x i32> %i.ab, %i.af
  %i.ai = trunc nuw <4 x i32> %i.ag to <4 x i16>
  %i.aj = trunc nuw <4 x i32> %i.ah to <4 x i16>
  %i.ak = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ai, ptr %next.gep, align 2, !tbaa !18
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.013.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01112.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.013 = phi ptr [ %i.ax, %.lr.ph ], [ %.013.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01112 = phi ptr [ %i.an, %.lr.ph ], [ %.01112.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.am = load i32, ptr %.01112, align 4, !tbaa !9 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01112, i64 4 ; 2 uses
  %i.ao = lshr i32 %i.am, 3
  %i.ap = and i32 %i.ao, 31
  %i.aq = lshr i32 %i.am, 5
  %i.ar = and i32 %i.aq, 2016
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.am, 8
  %i.au = and i32 %i.at, 63488
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.013, i64 2
  store i16 %i.aw, ptr %.013, align 2, !tbaa !18
  %i.ay = icmp ult ptr %i.an, %i.b
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb32to15_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = add i64 %i.d, %i.a
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 28
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775800      ; 4 uses
  %i.l = shl nuw i64 %n.vec, 1
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %i.n = shl i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.p  ; 2 uses
  %i.q = shl i64 %index, 2
  %next.gep14 = getelementptr i8, ptr %0, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !9 ; 3 uses
  %wide.load15 = load <4 x i32>, ptr %i.r, align 4, !tbaa !9 ; 3 uses
  %i.s = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.t = lshr <4 x i32> %wide.load15, splat (i32 3)
  %i.u = and <4 x i32> %i.s, splat (i32 31)
  %i.v = and <4 x i32> %i.t, splat (i32 31)
  %i.w = lshr <4 x i32> %wide.load, splat (i32 6)
  %i.x = lshr <4 x i32> %wide.load15, splat (i32 6)
  %i.y = and <4 x i32> %i.w, splat (i32 992)
  %i.z = and <4 x i32> %i.x, splat (i32 992)
  %i.aa = or disjoint <4 x i32> %i.u, %i.y
  %i.ab = or disjoint <4 x i32> %i.v, %i.z
  %i.ac = lshr <4 x i32> %wide.load, splat (i32 9)
  %i.ad = lshr <4 x i32> %wide.load15, splat (i32 9)
  %i.ae = and <4 x i32> %i.ac, splat (i32 31744)
  %i.af = and <4 x i32> %i.ad, splat (i32 31744)
  %i.ag = or disjoint <4 x i32> %i.aa, %i.ae
  %i.ah = or disjoint <4 x i32> %i.ab, %i.af
  %i.ai = trunc nuw nsw <4 x i32> %i.ag to <4 x i16>
  %i.aj = trunc nuw nsw <4 x i32> %i.ah to <4 x i16>
  %i.ak = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ai, ptr %next.gep, align 2, !tbaa !18
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.013.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01112.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.013 = phi ptr [ %i.ax, %.lr.ph ], [ %.013.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01112 = phi ptr [ %i.an, %.lr.ph ], [ %.01112.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.am = load i32, ptr %.01112, align 4, !tbaa !9 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01112, i64 4 ; 2 uses
  %i.ao = lshr i32 %i.am, 3
  %i.ap = and i32 %i.ao, 31
  %i.aq = lshr i32 %i.am, 6
  %i.ar = and i32 %i.aq, 992
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.am, 9
  %i.au = and i32 %i.at, 31744
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = trunc nuw nsw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.013, i64 2
  store i16 %i.aw, ptr %.013, align 2, !tbaa !18
  %i.ay = icmp ult ptr %i.an, %i.b
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb32tobgr24_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext nneg i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.k, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %.01213 = phi ptr [ %i.l, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  %i.e = load i8, ptr %.01213, align 1, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 1
  store i8 %i.e, ptr %.014, align 1, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  %i.h = load i8, ptr %i.d, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i8 %i.h, ptr %i.f, align 1, !tbaa !10
  %i.j = load i8, ptr %i.g, align 1, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %.014, i64 3
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %.01213, i64 4 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24to15_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.a, %i.b
  %i.f = add i64 %i.a, 3
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %3 = sub i64 %i.g, %i.a                         ; 2 uses
  %i.h = icmp ne i64 %3, 3
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %4 = sub i64 %3, %i.i
  %5 = add i64 %4, -3
  %i.j = udiv i64 %5, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add i64 %i.a, %i.b
  %i.n = add i64 %i.a, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = add i64 %umax, -3                        ; 2 uses
  %i.p = icmp ne i64 %i.o, %i.a
  %umin = zext i1 %i.p to i64                     ; 2 uses
  %i.q = add i64 %i.a, %umin
  %i.r = sub i64 %i.o, %i.q
  %i.s = udiv i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, %umin              ; 2 uses
  %i.u = shl nuw i64 %i.t, 1
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 2
  %i.w = mul i64 %i.t, 3
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep15 = getelementptr i8, ptr %i.x, i64 3
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = mul i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ae, i64 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.af, i64 6
  %i.ag = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ah, i64 12
  %i.ai = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 15
  %i.aj = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.aj, i64 18
  %i.ak = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 21
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 4
  %i.an = getelementptr i8, ptr %i.af, i64 7
  %i.ao = getelementptr i8, ptr %i.ag, i64 10
  %i.ap = getelementptr i8, ptr %i.ah, i64 13
  %i.aq = getelementptr i8, ptr %i.ai, i64 16
  %i.ar = getelementptr i8, ptr %i.aj, i64 19
  %i.as = getelementptr i8, ptr %i.ak, i64 22
  %i.at = load i8, ptr %next.gep16, align 1, !tbaa !10, !alias.scope !162
  %i.au = load i8, ptr %next.gep17, align 1, !tbaa !10, !alias.scope !162
  %i.av = load i8, ptr %next.gep18, align 1, !tbaa !10, !alias.scope !162
  %i.aw = load i8, ptr %next.gep19, align 1, !tbaa !10, !alias.scope !162
  %i.ax = load i8, ptr %next.gep20, align 1, !tbaa !10, !alias.scope !162
  %i.ay = load i8, ptr %next.gep21, align 1, !tbaa !10, !alias.scope !162
  %i.az = load i8, ptr %next.gep22, align 1, !tbaa !10, !alias.scope !162
  %i.ba = load i8, ptr %next.gep23, align 1, !tbaa !10, !alias.scope !162
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bk = getelementptr i8, ptr %i.ae, i64 5
  %i.bl = getelementptr i8, ptr %i.af, i64 8
  %i.bm = getelementptr i8, ptr %i.ag, i64 11
  %i.bn = getelementptr i8, ptr %i.ah, i64 14
  %i.bo = getelementptr i8, ptr %i.ai, i64 17
  %i.bp = getelementptr i8, ptr %i.aj, i64 20
  %i.bq = getelementptr i8, ptr %i.ak, i64 23
  %i.br = load i8, ptr %i.al, align 1, !tbaa !10, !alias.scope !162
  %i.bs = load i8, ptr %i.am, align 1, !tbaa !10, !alias.scope !162
  %i.bt = load i8, ptr %i.an, align 1, !tbaa !10, !alias.scope !162
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !10, !alias.scope !162
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !10, !alias.scope !162
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !10, !alias.scope !162
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !10, !alias.scope !162
  %i.by = load i8, ptr %i.as, align 1, !tbaa !10, !alias.scope !162
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !10, !alias.scope !162
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !10, !alias.scope !162
  %i.cj = load i8, ptr %i.bl, align 1, !tbaa !10, !alias.scope !162
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !10, !alias.scope !162
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !10, !alias.scope !162
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !10, !alias.scope !162
  %i.cn = load i8, ptr %i.bp, align 1, !tbaa !10, !alias.scope !162
  %i.co = load i8, ptr %i.bq, align 1, !tbaa !10, !alias.scope !162
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = lshr <8 x i8> %i.cw, splat (i8 3)
  %i.cy = zext nneg <8 x i8> %i.cx to <8 x i16>
  %i.cz = and <8 x i8> %i.cg, splat (i8 -8)
  %i.da = zext <8 x i8> %i.cz to <8 x i16>
  %i.db = shl nuw nsw <8 x i16> %i.da, splat (i16 2)
  %i.dc = or disjoint <8 x i16> %i.db, %i.cy
  %i.dd = and <8 x i8> %i.bi, splat (i8 -8)
  %i.de = zext <8 x i8> %i.dd to <8 x i16>
  %i.df = shl nuw nsw <8 x i16> %i.de, splat (i16 7)
  %i.dg = or disjoint <8 x i16> %i.dc, %i.df
  store <8 x i16> %i.dg, ptr %next.gep, align 2, !tbaa !18, !alias.scope !165, !noalias !162
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01213.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.014 = phi ptr [ %i.dv, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.01213 = phi ptr [ %i.dj, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dl = lshr i8 %i.dk, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = load <2 x i8>, ptr %.01213, align 1, !tbaa !10
  %i.do = and <2 x i8> %i.dn, splat (i8 -8)
  %i.dp = zext <2 x i8> %i.do to <2 x i16>
  %i.dq = shl nuw nsw <2 x i16> %i.dp, <i16 7, i16 2> ; 2 uses
  %i.dr = extractelement <2 x i16> %i.dq, i64 1
  %i.ds = or disjoint i16 %i.dr, %i.dm
  %i.dt = extractelement <2 x i16> %i.dq, i64 0
  %i.du = or disjoint i16 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.du, ptr %.014, align 2, !tbaa !18
  %i.dw = icmp ult ptr %i.dj, %i.c
  br i1 %i.dw, label %.lr.ph, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24to16_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = zext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.a, %i.b
  %i.f = add i64 %i.a, 3
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %3 = sub i64 %i.g, %i.a                         ; 2 uses
  %i.h = icmp ne i64 %3, 3
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %4 = sub i64 %3, %i.i
  %5 = add i64 %4, -3
  %i.j = udiv i64 %5, 3
  %i.k = add nuw nsw i64 %i.j, %i.i               ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 15
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add i64 %i.a, %i.b
  %i.n = add i64 %i.a, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = add i64 %umax, -3                        ; 2 uses
  %i.p = icmp ne i64 %i.o, %i.a
  %umin = zext i1 %i.p to i64                     ; 2 uses
  %i.q = add i64 %i.a, %umin
  %i.r = sub i64 %i.o, %i.q
  %i.s = udiv i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, %umin              ; 2 uses
  %i.u = shl nuw i64 %i.t, 1
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 2
  %i.w = mul i64 %i.t, 3
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep15 = getelementptr i8, ptr %i.x, i64 3
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.y = shl i64 %n.vec, 1
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = mul i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ae, i64 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.af, i64 6
  %i.ag = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.ag, i64 9
  %i.ah = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ah, i64 12
  %i.ai = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 15
  %i.aj = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.aj, i64 18
  %i.ak = getelementptr i8, ptr %0, i64 %i.ad     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 21
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.am = getelementptr i8, ptr %i.ae, i64 4
  %i.an = getelementptr i8, ptr %i.af, i64 7
  %i.ao = getelementptr i8, ptr %i.ag, i64 10
  %i.ap = getelementptr i8, ptr %i.ah, i64 13
  %i.aq = getelementptr i8, ptr %i.ai, i64 16
  %i.ar = getelementptr i8, ptr %i.aj, i64 19
  %i.as = getelementptr i8, ptr %i.ak, i64 22
  %i.at = load i8, ptr %next.gep16, align 1, !tbaa !10, !alias.scope !169
  %i.au = load i8, ptr %next.gep17, align 1, !tbaa !10, !alias.scope !169
  %i.av = load i8, ptr %next.gep18, align 1, !tbaa !10, !alias.scope !169
  %i.aw = load i8, ptr %next.gep19, align 1, !tbaa !10, !alias.scope !169
  %i.ax = load i8, ptr %next.gep20, align 1, !tbaa !10, !alias.scope !169
  %i.ay = load i8, ptr %next.gep21, align 1, !tbaa !10, !alias.scope !169
  %i.az = load i8, ptr %next.gep22, align 1, !tbaa !10, !alias.scope !169
  %i.ba = load i8, ptr %next.gep23, align 1, !tbaa !10, !alias.scope !169
  %i.bb = insertelement <8 x i8> poison, i8 %i.at, i64 0
  %i.bc = insertelement <8 x i8> %i.bb, i8 %i.au, i64 1
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 2
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 3
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 4
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 5
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 6
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bk = getelementptr i8, ptr %i.ae, i64 5
  %i.bl = getelementptr i8, ptr %i.af, i64 8
  %i.bm = getelementptr i8, ptr %i.ag, i64 11
  %i.bn = getelementptr i8, ptr %i.ah, i64 14
  %i.bo = getelementptr i8, ptr %i.ai, i64 17
  %i.bp = getelementptr i8, ptr %i.aj, i64 20
  %i.bq = getelementptr i8, ptr %i.ak, i64 23
  %i.br = load i8, ptr %i.al, align 1, !tbaa !10, !alias.scope !169
  %i.bs = load i8, ptr %i.am, align 1, !tbaa !10, !alias.scope !169
  %i.bt = load i8, ptr %i.an, align 1, !tbaa !10, !alias.scope !169
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !10, !alias.scope !169
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !10, !alias.scope !169
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !10, !alias.scope !169
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !10, !alias.scope !169
  %i.by = load i8, ptr %i.as, align 1, !tbaa !10, !alias.scope !169
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !10, !alias.scope !169
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !10, !alias.scope !169
  %i.cj = load i8, ptr %i.bl, align 1, !tbaa !10, !alias.scope !169
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !10, !alias.scope !169
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !10, !alias.scope !169
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !10, !alias.scope !169
  %i.cn = load i8, ptr %i.bp, align 1, !tbaa !10, !alias.scope !169
  %i.co = load i8, ptr %i.bq, align 1, !tbaa !10, !alias.scope !169
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = lshr <8 x i8> %i.cw, splat (i8 3)
  %i.cy = zext nneg <8 x i8> %i.cx to <8 x i16>
  %i.cz = and <8 x i8> %i.cg, splat (i8 -4)
  %i.da = zext <8 x i8> %i.cz to <8 x i16>
  %i.db = shl nuw nsw <8 x i16> %i.da, splat (i16 3)
  %i.dc = or disjoint <8 x i16> %i.db, %i.cy
  %i.dd = and <8 x i8> %i.bi, splat (i8 -8)
  %i.de = zext <8 x i8> %i.dd to <8 x i16>
  %i.df = shl nuw <8 x i16> %i.de, splat (i16 8)
  %i.dg = or disjoint <8 x i16> %i.dc, %i.df
  store <8 x i16> %i.dg, ptr %next.gep, align 2, !tbaa !18, !alias.scope !172, !noalias !169
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.01213.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.014 = phi ptr [ %i.dv, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.01213 = phi ptr [ %i.dj, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dl = lshr i8 %i.dk, 3
  %i.dm = zext nneg i8 %i.dl to i16
  %i.dn = load <2 x i8>, ptr %.01213, align 1, !tbaa !10
  %i.do = and <2 x i8> %i.dn, <i8 -8, i8 -4>
  %i.dp = zext <2 x i8> %i.do to <2 x i16>
  %i.dq = shl nuw <2 x i16> %i.dp, <i16 8, i16 3> ; 2 uses
  %i.dr = extractelement <2 x i16> %i.dq, i64 1
  %i.ds = or disjoint i16 %i.dr, %i.dm
  %i.dt = extractelement <2 x i16> %i.dq, i64 0
  %i.du = or disjoint i16 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.du, ptr %.014, align 2, !tbaa !18
  %i.dw = icmp ult ptr %i.dj, %i.c
  br i1 %i.dw, label %.lr.ph, label %._crit_edge, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr24_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = add i32 %.015, 2
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %i.e = add nuw i32 %.015, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  store i8 %i.h, ptr %i.i, align 1, !tbaa !10
  %i.j = zext i32 %.015 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  store i8 %i.d, ptr %i.n, align 1, !tbaa !10
  %i.o = add i32 %.015, 3                         ; 2 uses
  %i.p = icmp ult i32 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
end_hunk_1
