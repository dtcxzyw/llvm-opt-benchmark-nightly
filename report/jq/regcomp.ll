Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@recursive_call_check:bb.a
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.o, %bb.a
  %accumulator.tr.ph = phi i32 [ %i.ap, %bb.o ], [ 0, %bb.a ] ; 2 uses
  %.tr.ph = phi ptr [ %i.ao, %bb.o ], [ %0, %bb.a ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr = phi ptr [ %.tr.ph, %tailrecurse.outer ], [ %.tr.be, %tailrecurse.backedge ] ; 12 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.a, label %common.ret [
    i32 7, label %.preheader
    i32 8, label %.preheader
    i32 6, label %bb.c
    i32 4, label %tailrecurse.backedge
    i32 9, label %bb.d
    i32 5, label %bb.g
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.030 = phi ptr [ %i.g, %bb.b ], [ %.tr, %.preheader ] ; 2 uses
  %.029 = phi i32 [ %i.e, %bb.b ], [ 0, %.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call fastcc i32 @recursive_call_check(ptr noundef %i.c)
  %i.e = or i32 %i.d, %.029                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.not43 = icmp eq ptr %i.g, null
  br i1 %.not43, label %common.ret, label %bb.b, !llvm.loop !296

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %i.j = icmp slt i32 %i.i, 16
  br i1 %i.j, label %tailrecurse.backedge, label %common.ret

tailrecurse.backedge:                             ; preds = %bb.g, %tailrecurse, %bb.c
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !27
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = tail call fastcc i32 @recursive_call_check(ptr noundef %i.l)
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %common.ret, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = and i32 %i.p, 8
  %.not42 = icmp eq i32 %i.q, 0
  br i1 %.not42, label %common.ret, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = or i32 %i.s, 64
  store i32 %i.t, ptr %i.r, align 4, !tbaa !27
  br label %common.ret

bb.g:                                             ; preds = %tailrecurse
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !80
  switch i32 %i.v, label %tailrecurse.backedge [
    i32 0, label %bb.h
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 3 uses
  %i.y = and i32 %i.x, 16
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.i, label %common.ret

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.x, 8
  %.not40 = icmp eq i32 %i.z, 0
  br i1 %.not40, label %bb.j, label %common.ret

common.ret:                                       ; preds = %tailrecurse, %bb.c, %bb.b, %bb.d, %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  %.pn = phi i32 [ %i.ad, %bb.j ], [ 0, %bb.d ], [ %i.e, %bb.b ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %tailrecurse ]
  %common.ret.op = or i32 %.pn, %accumulator.tr.ph
  ret i32 %common.ret.op

bb.j:                                             ; preds = %bb.i
  %i.aa = or disjoint i32 %i.x, 16
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = tail call fastcc i32 @recursive_call_check(ptr noundef %i.ac)
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !27
  %i.af = and i32 %i.ae, -17
  store i32 %i.af, ptr %i.w, align 4, !tbaa !27
  br label %common.ret

bb.k:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call fastcc i32 @recursive_call_check(ptr noundef nonnull %i.ah)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.ai, %bb.l ], [ 0, %bb.k ]    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !27 ; 2 uses
  %.not38 = icmp eq ptr %i.ak, null
  br i1 %.not38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @recursive_call_check(ptr noundef nonnull %i.ak)
  %i.am = or i32 %i.al, %.1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.am, %bb.n ], [ %.1, %bb.m ]
  %i.an = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ap = or i32 %.2, %accumulator.tr.ph
  br label %tailrecurse.outer
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @infinite_recursive_call_check(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #16 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 14 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.a, label %common.ret226 [
    i32 7, label %.preheader
    i32 8, label %.preheader162
    i32 4, label %bb.f
    i32 6, label %bb.i
    i32 9, label %tailrecurse.backedge
    i32 5, label %bb.j
  ]

.preheader:                                       ; preds = %tailrecurse, %bb.d
  %.0106 = phi i32 [ %.1107, %bb.d ], [ %2, %tailrecurse ] ; 2 uses
  %.0101 = phi i32 [ %i.e, %bb.d ], [ 0, %tailrecurse ]
  %.0100 = phi ptr [ %i.i, %bb.d ], [ %.tr, %tailrecurse ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0100, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.c, ptr noundef %1, i32 noundef %.0106) ; 3 uses
  %or.cond = icmp samesign ult i32 %i.d, 4
  br i1 %or.cond, label %bb.b, label %common.ret226

bb.b:                                             ; preds = %.preheader
  %i.e = or i32 %i.d, %.0101                      ; 2 uses
  %.not140 = icmp eq i32 %.0106, 0
  br i1 %.not140, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.g = tail call fastcc i32 @node_min_byte_len(ptr noundef %i.f, ptr noundef nonnull %1)
  %.not141 = icmp eq i32 %i.g, 0
  %spec.select = zext i1 %.not141 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1107 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0100, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %.not142 = icmp eq ptr %i.i, null
  br i1 %.not142, label %common.ret226, label %.preheader, !llvm.loop !297

.preheader162:                                    ; preds = %tailrecurse, %bb.e
  %.0116 = phi ptr [ %i.q, %bb.e ], [ %.tr, %tailrecurse ] ; 2 uses
  %.2103 = phi i32 [ %i.n, %bb.e ], [ 0, %tailrecurse ]
  %.098 = phi i32 [ %i.o, %bb.e ], [ 2, %tailrecurse ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0116, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.k, ptr noundef %1, i32 noundef %2) ; 4 uses
  %or.cond143 = icmp samesign ult i32 %i.l, 4
  br i1 %or.cond143, label %bb.e, label %common.ret226

bb.e:                                             ; preds = %.preheader162
  %i.m = and i32 %i.l, 1
  %i.n = or i32 %i.m, %.2103                      ; 2 uses
  %i.o = and i32 %i.l, %.098                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0116, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not138 = icmp eq ptr %i.q, null
  br i1 %.not138, label %.thread152, label %.preheader162, !llvm.loop !298

.thread152:                                       ; preds = %bb.e
  %i.r = or disjoint i32 %i.n, %i.o
  br label %common.ret226

bb.f:                                             ; preds = %tailrecurse
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %common.ret226, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.w, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.y = and i32 %i.x, 2
  %or.cond159.not.not = icmp eq i32 %i.y, 0
  br i1 %or.cond159.not.not, label %common.ret226, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !27
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = and i32 %i.x, 5
  %spec.select144 = select i1 %i.ab, i32 %i.ac, i32 %i.x
  br label %common.ret226

bb.i:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.af = icmp slt i32 %i.ae, 16
  br i1 %i.af, label %tailrecurse.backedge, label %common.ret226

tailrecurse.backedge:                             ; preds = %bb.j, %tailrecurse, %bb.i
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !27
  br label %tailrecurse

bb.j:                                             ; preds = %tailrecurse
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !80
  switch i32 %i.ah, label %tailrecurse.backedge [
    i32 0, label %bb.k
    i32 3, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27 ; 3 uses
  %i.ak = and i32 %i.aj, 16
  %.not134 = icmp eq i32 %i.ak, 0
  br i1 %.not134, label %bb.l, label %common.ret226

bb.l:                                             ; preds = %bb.k
  %i.al = and i32 %i.aj, 8
  %.not135 = icmp eq i32 %i.al, 0
  br i1 %.not135, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq i32 %2, 0
  %i.an = select i1 %i.am, i32 3, i32 7
  br label %common.ret226

common.ret226:                                    ; preds = %bb.u, %bb.o, %bb.s, %bb.k, %bb.m, %bb.f, %bb.h, %.thread152, %bb.w, %bb.v, %bb.g, %bb.d, %.preheader, %.preheader162, %bb.i, %tailrecurse, %bb.n
  %common.ret226.op = phi i32 [ %i.ar, %bb.n ], [ %i.l, %.preheader162 ], [ %i.aw, %bb.o ], [ %i.x, %bb.g ], [ %i.bn, %bb.w ], [ %i.bi, %bb.u ], [ %spec.select148, %bb.v ], [ %i.be, %bb.s ], [ %i.r, %.thread152 ], [ 0, %bb.f ], [ %i.d, %.preheader ], [ %spec.select144, %bb.h ], [ %i.an, %bb.m ], [ 0, %bb.k ], [ %i.e, %bb.d ], [ 0, %bb.i ], [ 0, %tailrecurse ]
  ret i32 %common.ret226.op

bb.n:                                             ; preds = %bb.l
  %i.ao = or disjoint i32 %i.aj, 16
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.ar = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.aq, ptr noundef %1, i32 noundef %2)
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.at = and i32 %i.as, -17
  store i32 %i.at, ptr %i.ai, align 4, !tbaa !27
  br label %common.ret226

bb.o:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.aw = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.av, ptr noundef %1, i32 noundef %2) ; 4 uses
  %or.cond145 = icmp samesign ult i32 %i.aw, 4
  br i1 %or.cond145, label %bb.p, label %common.ret226

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not128 = icmp eq ptr %i.ay, null
  br i1 %.not128, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not129 = icmp eq i32 %2, 0
  br i1 %.not129, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.ba = tail call fastcc i32 @node_min_byte_len(ptr noundef %i.az, ptr noundef nonnull %1)
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bd = phi ptr [ %.pre, %bb.r ], [ %i.ay, %bb.q ]
  %.0 = phi i32 [ %i.bc, %bb.r ], [ 0, %bb.q ]
  %i.be = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef %i.bd, ptr noundef %1, i32 noundef %.0) ; 3 uses
  %or.cond146 = icmp samesign ult i32 %i.be, 4
  %i.bf = or i32 %i.be, %i.aw
  br i1 %or.cond146, label %bb.t, label %common.ret226

bb.t:                                             ; preds = %bb.s, %bb.p
  %.5 = phi i32 [ %i.bf, %bb.s ], [ %i.aw, %bb.p ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27 ; 2 uses
  %.not132 = icmp eq ptr %i.bh, null
  br i1 %.not132, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call fastcc i32 @infinite_recursive_call_check(ptr noundef nonnull %i.bh, ptr noundef %1, i32 noundef %2) ; 4 uses
  %or.cond147 = icmp samesign ult i32 %i.bi, 4
  br i1 %or.cond147, label %bb.v, label %common.ret226

bb.v:                                             ; preds = %bb.u
  %i.bj = and i32 %i.bi, 1
  %i.bk = or i32 %i.bj, %.5                       ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bi, 2
  %i.bm = and i32 %i.bk, -3
  %spec.select148 = select i1 %i.bl, i32 %i.bm, i32 %i.bk
  br label %common.ret226

bb.w:                                             ; preds = %bb.t
  %i.bn = and i32 %.5, -3
  br label %common.ret226
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @node_min_byte_len(ptr nofree noundef captures(address) %0, ptr noundef %1) unnamed_addr #16 {
bb.a:
  br label %tailrecurse188

tailrecurse188:                                   ; preds = %bb.u, %bb.a
  %accumulator.tr = phi i32 [ -1, %bb.a ], [ %i.cy, %bb.u ] ; 3 uses
  %.tr189 = phi ptr [ %0, %bb.a ], [ %i.cx, %bb.u ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse188
  %.tr = phi ptr [ %.tr189, %tailrecurse188 ], [ %.tr.be, %tailrecurse.backedge ] ; 23 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.a, label %common.ret [
    i32 3, label %bb.b
    i32 9, label %bb.e
    i32 7, label %.preheader
    i32 8, label %.preheader108
    i32 0, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.l
    i32 10, label %bb.v
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27   ; 2 uses
  %i.d = and i32 %i.c, 131072
  %.not99 = icmp eq i32 %i.d, 0
  br i1 %.not99, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %.not100 = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = select i1 %.not100, ptr %i.g, ptr %i.f   ; 2 uses
  %i.i = and i32 %i.c, 64
  %.not101 = icmp eq i32 %i.i, 0
  br i1 %.not101, label %bb.d, label %common.ret

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %.not102 = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.m = select i1 %.not102, ptr %i.l, ptr %i.k   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.r = tail call fastcc i32 @node_min_byte_len(ptr noundef %i.q, ptr noundef nonnull %1) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %.lr.ph, label %common.ret

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %.085121 = phi i32 [ %spec.select, %.lr.ph ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !151
end_hunk_0
