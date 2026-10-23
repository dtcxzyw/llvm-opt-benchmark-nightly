Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/decode?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lxb_encoding_decode_x_mac_cyrillic:bb.a
  %i.q = getelementptr i8, ptr %i.p, i64 -1528
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 3 uses
  store i32 %i.r, ptr %i.b, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.r, 2097151
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.d, align 8, !tbaa !28
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.v
  %i.ac = shl i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.t, i64 %i.ac, i1 false)
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !26
  %i.af = add i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.c, align 8, !tbaa !26
  br label %.backedge

.backedge:                                        ; preds = %bb.h, %bb.j
  %.036.be = phi ptr [ %.1, %bb.j ], [ %i.n, %bb.h ] ; 2 uses
  %.not46 = icmp ult ptr %.036.be, %2
  br i1 %.not46, label %bb.b, label %.loopexit, !llvm.loop !81

bb.i:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !28
  %.not = icmp ult i64 %i.ag, %i.ah
  br i1 %.not, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sink73 = phi i64 [ %i.k, %bb.d ], [ %i.ag, %bb.i ] ; 2 uses
  %.sink = phi i32 [ %i.i, %bb.d ], [ %i.r, %bb.i ]
  %.1 = phi ptr [ %i.m, %bb.d ], [ %i.n, %bb.i ]  ; 2 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.aj = add nuw i64 %.sink73, 1
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.sink73
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !32
  store ptr %.1, ptr %1, align 8, !tbaa !15
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.i, %bb.g, %bb.c
  %.lcssa.sink = phi ptr [ %.03652, %bb.g ], [ %.03652, %bb.c ], [ %i.n, %bb.i ]
  store ptr %.lcssa.sink, ptr %1, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.backedge, %.loopexit.sink.split, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 15, %.loopexit.sink.split ], [ 1, %bb.f ], [ 0, %.backedge ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 16) i32 @lxb_encoding_decode_x_user_defined(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.c = icmp ult ptr %i.b, %2
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.d, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %bb.g ] ; 5 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !30
  %i.i = icmp sgt i8 %i.h, -1
  %i.j = load i64, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not14 = icmp ult i64 %i.j, %i.f               ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not14, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !15
  %i.l = load i8, ptr %i.g, align 1, !tbaa !30
  %i.m = zext i8 %i.l to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %.not14, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !15
  %i.o = load i8, ptr %i.g, align 1, !tbaa !30
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.p, 63232
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sink = phi i32 [ %i.q, %bb.f ], [ %i.m, %bb.d ]
  %i.r = phi ptr [ %i.n, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.t = add nuw i64 %i.j, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  store i32 %.sink, ptr %i.u, align 4, !tbaa !32
  %i.v = icmp ult ptr %i.r, %2
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 15, %bb.e ], [ 15, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lxb_encoding_decode_default_single(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @lxb_encoding_decode_utf_8_single(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lxb_encoding_decode_utf_8_single(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !30    ; 2 uses
  %.not131 = icmp eq i8 %i.e, 0
  %.pre145 = load ptr, ptr %1, align 8, !tbaa !15 ; 3 uses
  br i1 %.not131, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.pre145, align 1, !tbaa !30 ; 3 uses
  %i.g = icmp ult i8 %i.f, %i.e
  br i1 %i.g, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.i = load i8, ptr %i.h, align 1, !tbaa !30
  %i.j = icmp ugt i8 %i.f, %i.i
  br i1 %i.j, label %bb.ak, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pre145, i64 1
  store ptr %i.k, ptr %1, align 8, !tbaa !15
  %i.l = add i32 %i.c, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31
  %i.o = shl i32 %i.n, 6
  %i.p = and i8 %i.f, 63
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %i.o, %i.q
  store i32 %i.r, ptr %i.m, align 8, !tbaa !31
  store i8 0, ptr %i.d, align 4, !tbaa !30
  %.pre = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.ad

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !15     ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 10 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !15
  %i.u = load i8, ptr %i.s, align 1, !tbaa !30    ; 10 uses
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %bb.al, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp samesign ult i8 %i.u, -32
  br i1 %i.x, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.y = icmp samesign ult i8 %i.u, -62
  br i1 %i.y, label %bb.al, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !31
  br label %bb.ad

bb.j:                                             ; preds = %bb.g
  %i.ab = icmp samesign ult i8 %i.u, -16
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = and i32 %i.v, 15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = icmp eq ptr %i.t, %2
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i8 %i.u, label %bb.aj [
    i8 -32, label %bb.m
    i8 -19, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -96, ptr %i.af, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -65, ptr %i.ag, align 1, !tbaa !30
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -128, ptr %i.ah, align 4, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -97, ptr %i.ai, align 1, !tbaa !30
  br label %bb.aj

bb.o:                                             ; preds = %bb.k
  switch i8 %i.u, label %bb.ad [
    i8 -32, label %bb.p
    i8 -19, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !30   ; 2 uses
  %i.ak = add i8 %i.aj, 64
  %or.cond = icmp ult i8 %i.ak, -32
  br i1 %or.cond, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !15
  %i.am = and i8 %i.aj, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 0, %i.an
  store i32 %i.ao, ptr %i.ad, align 8, !tbaa !31
  br label %bb.ad

bb.r:                                             ; preds = %bb.o
  %i.ap = load i8, ptr %i.t, align 1, !tbaa !30   ; 2 uses
  %or.cond5 = icmp sgt i8 %i.ap, -97
  br i1 %or.cond5, label %bb.ak, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.aq, ptr %1, align 8, !tbaa !15
  %i.ar = and i8 %i.ap, 31
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 832, %i.as
  store i32 %i.at, ptr %i.ad, align 8, !tbaa !31
  br label %bb.ad

bb.t:                                             ; preds = %bb.j
  %i.au = icmp samesign ult i8 %i.u, -11
  br i1 %i.au, label %bb.u, label %bb.al

bb.u:                                             ; preds = %bb.t
  %i.av = and i32 %i.v, 7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !31
  %i.ax = icmp eq ptr %i.t, %2
  br i1 %i.ax, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  switch i8 %i.u, label %bb.aj [
    i8 -16, label %bb.w
    i8 -12, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -112, ptr %i.ay, align 4, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -65, ptr %i.az, align 1, !tbaa !30
  br label %bb.aj

bb.x:                                             ; preds = %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 -128, ptr %i.ba, align 4, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 69
  store i8 -113, ptr %i.bb, align 1, !tbaa !30
  br label %bb.aj

bb.y:                                             ; preds = %bb.u
  switch i8 %i.u, label %bb.ad [
    i8 -16, label %bb.z
    i8 -12, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.bc = load i8, ptr %i.t, align 1, !tbaa !30   ; 2 uses
  %i.bd = add i8 %i.bc, 64
  %or.cond8 = icmp ult i8 %i.bd, -48
  br i1 %or.cond8, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !15
  %i.bf = and i8 %i.bc, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 0, %i.bg
  store i32 %i.bh, ptr %i.aw, align 8, !tbaa !31
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.bi = load i8, ptr %i.t, align 1, !tbaa !30   ; 2 uses
  %or.cond11 = icmp sgt i8 %i.bi, -113
  br i1 %or.cond11, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  store ptr %i.bj, ptr %1, align 8, !tbaa !15
  %i.bk = and i8 %i.bi, 15
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 256, %i.bl
  store i32 %i.bm, ptr %i.aw, align 8, !tbaa !31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.o, %bb.s, %bb.q, %bb.aa, %bb.ac, %bb.i, %bb.b, %bb.e
  %i.bn = phi ptr [ %.pre, %bb.e ], [ %.pre145, %bb.b ], [ %i.t, %bb.i ], [ %i.al, %bb.q ], [ %i.aq, %bb.s ], [ %i.t, %bb.o ], [ %i.be, %bb.aa ], [ %i.bj, %bb.ac ], [ %i.t, %bb.y ] ; 4 uses
  %.0116 = phi i32 [ %i.l, %bb.e ], [ %i.c, %bb.b ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %bb.s ], [ 2, %bb.o ], [ 2, %bb.aa ], [ 2, %bb.ac ], [ 3, %bb.y ] ; 3 uses
  %i.bo = icmp ult ptr %i.bn, %2
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad
  %i.bp = ptrtoaddr ptr %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = trunc i64 %i.bp to i32
  %i.bs = add i32 %.0116, %i.br
  %i.bt = trunc i64 %i.a to i32
  %i.bu = sub i32 %i.bs, %i.bt
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ai
  %.0137 = phi ptr [ %i.bn, %.lr.ph ], [ %i.cd, %bb.ai ] ; 3 uses
  %.1136 = phi i32 [ %.0116, %.lr.ph ], [ %i.cb, %bb.ai ]
  %i.bv = load i8, ptr %.0137, align 1, !tbaa !30 ; 2 uses
  %or.cond14 = icmp sgt i8 %i.bv, -65
  br i1 %or.cond14, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.0137, ptr %1, align 8, !tbaa !15
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  %i.bw = load i32, ptr %i.bq, align 8, !tbaa !31
  %i.bx = shl i32 %i.bw, 6
  %i.by = and i8 %i.bv, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz            ; 2 uses
  store i32 %i.ca, ptr %i.bq, align 8, !tbaa !31
  %i.cb = add i32 %.1136, -1                      ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %.0137, i64 1 ; 4 uses
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.cd, ptr %1, align 8, !tbaa !15
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %exitcond.not = icmp eq ptr %i.cd, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.ai, %bb.ad
  %.1.lcssa = phi i32 [ %.0116, %bb.ad ], [ %i.bu, %bb.ai ]
  %.0.lcssa = phi ptr [ %i.bn, %bb.ad ], [ %i.cd, %bb.ai ]
  store ptr %.0.lcssa, ptr %1, align 8, !tbaa !15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.v, %bb.l, %bb.w, %bb.x, %bb.m, %bb.n, %._crit_edge
  %.2 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 2, %bb.m ], [ 2, %bb.n ], [ 2, %bb.l ], [ 3, %bb.w ], [ 3, %bb.x ], [ 3, %bb.v ]
  store i32 %.2, ptr %i.b, align 8, !tbaa !30
  br label %bb.al

bb.ak:                                            ; preds = %bb.ab, %bb.z, %bb.r, %bb.p, %bb.c, %bb.d, %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.ce, align 4, !tbaa !30
  store i32 0, ptr %i.b, align 8, !tbaa !30
  br label %bb.al

bb.al:                                            ; preds = %bb.t, %bb.h, %bb.f, %bb.ak, %bb.aj, %bb.ah
  %.0117 = phi i32 [ 2097151, %bb.ak ], [ %i.ca, %bb.ah ], [ 3145727, %bb.aj ], [ 2097151, %bb.h ], [ %i.v, %bb.f ], [ 2097151, %bb.t ]
  ret i32 %.0117
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lxb_encoding_decode_auto_single(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #6 {
bb.a:
  ret i32 2097151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @lxb_encoding_decode_undefined_single(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #6 {
bb.a:
  ret i32 2097151
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @lxb_encoding_decode_big5_single(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34   ; 3 uses
  %.not52 = icmp eq i32 %i.d, 0
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !15
  store i32 0, ptr %i.a, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.d, ptr %i.g, align 8, !tbaa !31
  store i32 0, ptr %i.c, align 4, !tbaa !34
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.h = trunc i32 %i.b to i8
  store i32 0, ptr %i.a, align 8, !tbaa !30
  %.pre = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !15
  %i.k = load i8, ptr %i.i, align 1, !tbaa !30    ; 4 uses
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i8 %i.k, 1
  %i.o = icmp ult i8 %i.n, -126
  br i1 %i.o, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not51 = icmp ult ptr %i.j, %2
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.l, ptr %i.a, align 8, !tbaa !30
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.j, %bb.g ] ; 3 uses
  %.0 = phi i8 [ %i.h, %bb.d ], [ %i.k, %bb.g ]   ; 5 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !30    ; 4 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = add nsw i32 %i.r, -64                    ; 2 uses
  %i.t = icmp ult i32 %i.s, 63
  %i.u = add i8 %i.q, 95
  %i.v = icmp ult i8 %i.u, 94
  %or.cond = or i1 %i.v, %i.t
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.w = icmp ult i8 %i.q, 127                    ; 2 uses
  %i.x = zext i8 %.0 to i32
  %i.y = mul nuw nsw i32 %i.x, 157
  %. = select i1 %i.w, i32 -20253, i32 -20351
  %.62 = select i1 %i.w, i32 %i.s, i32 %i.r
  %i.z = add nsw i32 %i.y, %.
  %i.aa = add nsw i32 %i.z, %.62                  ; 2 uses
  switch i32 %i.aa, label %bb.o [
    i32 1133, label %bb.k
    i32 1135, label %bb.l
    i32 1164, label %bb.m
    i32 1166, label %bb.n
    i32 0, label %.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.ab = zext i8 %.0 to i32
  store i32 %i.ab, ptr %i.a, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 772, ptr %i.ac, align 4, !tbaa !34
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ad = zext i8 %.0 to i32
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 780, ptr %i.ae, align 4, !tbaa !34
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.af = zext i8 %.0 to i32
  store i32 %i.af, ptr %i.a, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 772, ptr %i.ag, align 4, !tbaa !34
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.ah = zext i8 %.0 to i32
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 780, ptr %i.ai, align 4, !tbaa !34
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.aj = zext i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @lxb_encoding_multi_big5_map, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.al, ptr %i.am, align 8, !tbaa !31
  %i.an = icmp eq i32 %i.al, 2097151
  br i1 %i.an, label %.thread, label %bb.p

end_hunk_0
