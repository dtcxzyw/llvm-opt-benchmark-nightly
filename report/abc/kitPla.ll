inline.NumInlined: 58
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Kit_PlaFromTruthNew:bb.a
Vec_StrGrow.exit11.sink.split.i.i.i.1:            ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ah, %bb.m ], [ %i.ag, %bb.l ], [ %i.ad, %bb.i ], [ %i.ae, %bb.j ] ; 2 uses
  %spec.select.sink.i.i.i.1 = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i.i.i.1, %bb.i ], [ %spec.select.i.i.i.1, %bb.j ]
  store ptr %i.ai, ptr %i.h, align 8, !tbaa !44
  store i32 %spec.select.sink.i.i.i.1, ptr %3, align 8, !tbaa !43
  %.pre9.i.i.1 = load i32, ptr %i.g, align 4, !tbaa !40
  br label %Vec_StrPush.exit.i.i.1

Vec_StrPush.exit.i.i.1:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i.1, %bb.g, %.Vec_StrPush.exit_crit_edge.i.i.1
  %i.aj = phi i32 [ %i.w, %.Vec_StrPush.exit_crit_edge.i.i.1 ], [ %i.w, %bb.g ], [ %.pre9.i.i.1, %Vec_StrGrow.exit11.sink.split.i.i.i.1 ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i.1, %.Vec_StrPush.exit_crit_edge.i.i.1 ], [ %.pre8.i.i.1, %bb.g ], [ %i.ai, %Vec_StrGrow.exit11.sink.split.i.i.i.1 ]
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.g, align 4, !tbaa !40
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  store i8 %i.v, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = load i32, ptr %i.g, align 4, !tbaa !40  ; 7 uses
  %i.ar = load i32, ptr %3, align 8, !tbaa !43
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.n, label %.Vec_StrPush.exit_crit_edge.i.i.2

.Vec_StrPush.exit_crit_edge.i.i.2:                ; preds = %Vec_StrPush.exit.i.i.1
  %.pre.i.i.2 = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %Vec_StrPush.exit.i.i.2

bb.n:                                             ; preds = %Vec_StrPush.exit.i.i.1
  %i.at = icmp slt i32 %i.aq, 16
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = icmp samesign ult i32 %i.aq, 1073741823
  %i.av = shl nuw nsw i32 %i.aq, 1
  %spec.select.i.i.i.2 = select i1 %i.au, i32 %i.av, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.2 = icmp samesign ult i32 %i.aq, %spec.select.i.i.i.2
  %.pre8.i.i.2 = load ptr, ptr %i.h, align 8, !tbaa !44 ; 3 uses
  br i1 %.not.i9.i.i.i.2, label %bb.p, label %Vec_StrPush.exit.i.i.2

bb.p:                                             ; preds = %bb.o
  %.not9.i10.i.i.i.2 = icmp eq ptr %.pre8.i.i.2, null
  %i.aw = zext nneg i32 %spec.select.i.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.i.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %.pre8.i.i.2, i64 noundef %i.aw) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.2

bb.r:                                             ; preds = %bb.p
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.2

bb.s:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %.not9.i.i.i.i.2 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i.i.i.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.2

bb.u:                                             ; preds = %bb.s
  %i.bb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.i.2

Vec_StrGrow.exit11.sink.split.i.i.i.2:            ; preds = %bb.u, %bb.t, %bb.r, %bb.q
  %i.bc = phi ptr [ %i.bb, %bb.u ], [ %i.ba, %bb.t ], [ %i.ax, %bb.q ], [ %i.ay, %bb.r ] ; 2 uses
  %spec.select.sink.i.i.i.2 = phi i32 [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i.i.i.2, %bb.q ], [ %spec.select.i.i.i.2, %bb.r ]
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !44
  store i32 %spec.select.sink.i.i.i.2, ptr %3, align 8, !tbaa !43
  %.pre9.i.i.2 = load i32, ptr %i.g, align 4, !tbaa !40
  br label %Vec_StrPush.exit.i.i.2

Vec_StrPush.exit.i.i.2:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i.i.2, %bb.o, %.Vec_StrPush.exit_crit_edge.i.i.2
  %i.bd = phi i32 [ %i.aq, %.Vec_StrPush.exit_crit_edge.i.i.2 ], [ %i.aq, %bb.o ], [ %.pre9.i.i.2, %Vec_StrGrow.exit11.sink.split.i.i.i.2 ] ; 2 uses
  %i.be = phi ptr [ %.pre.i.i.2, %.Vec_StrPush.exit_crit_edge.i.i.2 ], [ %.pre8.i.i.2, %bb.o ], [ %i.bc, %Vec_StrGrow.exit11.sink.split.i.i.i.2 ]
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.g, align 4, !tbaa !40
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %i.bg
  store i8 %i.ap, ptr %i.bh, align 1, !tbaa !8
  %.pr = load i32, ptr %i.g, align 4, !tbaa !40   ; 7 uses
  %i.bi = load i32, ptr %3, align 8, !tbaa !43
  %i.bj = icmp eq i32 %.pr, %i.bi
  br i1 %i.bj, label %bb.v, label %Vec_StrPush.exit.i.i.2.Vec_StrPush.exit_crit_edge

Vec_StrPush.exit.i.i.2.Vec_StrPush.exit_crit_edge: ; preds = %Vec_StrPush.exit.i.i.2
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %Vec_StrPush.exit

bb.v:                                             ; preds = %Vec_StrPush.exit.i.i.2
  %i.bk = icmp slt i32 %.pr, 16
  br i1 %i.bk, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.v
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !44  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bl, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bm = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.bl, i64 noundef 16) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.x:                                             ; preds = %.thread
  %i.bn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.v
  %i.bo = icmp samesign ult i32 %.pr, 1073741823
  %i.bp = shl nuw nsw i32 %.pr, 1
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %.pr, %spec.select.i
  %.pre24 = load ptr, ptr %i.h, align 8, !tbaa !44 ; 3 uses
  br i1 %.not.i9.i, label %bb.z, label %Vec_StrPush.exit

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i = icmp eq ptr %.pre24, null
  %i.bq = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = tail call ptr @realloc(ptr noundef nonnull %.pre24, i64 noundef %i.bq) #15
  br label %Vec_StrGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.z
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #16
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.bt = phi ptr [ %i.bn, %bb.x ], [ %i.bm, %bb.w ], [ %i.br, %bb.aa ], [ %i.bs, %bb.ab ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i, %bb.aa ], [ %spec.select.i, %bb.ab ]
  store ptr %i.bt, ptr %i.h, align 8, !tbaa !44
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !43
  %.pre25 = load i32, ptr %i.g, align 4, !tbaa !40
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %Vec_StrPush.exit.i.i.2.Vec_StrPush.exit_crit_edge, %bb.y, %Vec_StrGrow.exit11.sink.split.i
  %i.bu = phi i32 [ %.pr, %Vec_StrPush.exit.i.i.2.Vec_StrPush.exit_crit_edge ], [ %.pr, %bb.y ], [ %.pre25, %Vec_StrGrow.exit11.sink.split.i ] ; 2 uses
  %i.bv = phi ptr [ %.pre, %Vec_StrPush.exit.i.i.2.Vec_StrPush.exit_crit_edge ], [ %.pre24, %bb.y ], [ %i.bt, %Vec_StrGrow.exit11.sink.split.i ]
  %i.bw = add nsw i32 %i.bu, 1
  store i32 %i.bw, ptr %i.g, align 4, !tbaa !40
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !8
  %.val22 = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %Kit_PlaComplement.exit

bb.ac:                                            ; preds = %bb.a, %bb.b
  %i.bz = tail call ptr @Kit_PlaFromIsop(ptr noundef %3, i32 noundef %1, ptr noundef nonnull %2) ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %Kit_PlaComplement.exit, label %.preheader

.preheader:                                       ; preds = %bb.ac, %bb.ah
  %.0.i = phi ptr [ %i.cd, %bb.ah ], [ %i.bz, %bb.ac ] ; 3 uses
  %i.ca = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.ca, label %bb.ah [
    i8 0, label %Kit_PlaComplement.exit
    i8 10, label %bb.ad
  ]

bb.ad:                                            ; preds = %.preheader
  %i.cb = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  switch i8 %i.cc, label %bb.ah [
    i8 48, label %.sink.split.i
    i8 49, label %bb.ae
    i8 120, label %bb.af
    i8 110, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ad
  br label %.sink.split.i

bb.ag:                                            ; preds = %bb.ad
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.sink.i = phi i8 [ 48, %bb.ae ], [ 120, %bb.ag ], [ 110, %bb.af ], [ 49, %bb.ad ]
  store i8 %.sink.i, ptr %i.cb, align 1, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.ad, %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader, !llvm.loop !13

Kit_PlaComplement.exit:                           ; preds = %.preheader, %bb.ac, %Vec_StrPush.exit
  %.0 = phi ptr [ %.val22, %Vec_StrPush.exit ], [ %i.bz, %bb.ac ], [ %i.bz, %.preheader ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @Kit_PlaToTruth6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %2 = add nuw i32 %1, 3
  %invariant.op = add nsw i32 %1, -1
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = trunc i32 %1 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.024.us = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.af, %._crit_edge.us ]
  %i.c = sext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.b, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %bb.g
  %indvars.iv43.a = phi i64 [ %indvars.iv.next44.1.a, %bb.g ], [ 0, %.lr.ph.us ] ; 4 uses
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %i.c, %.lr.ph.us ] ; 3 uses
  %.02636.us = phi i64 [ %.127.us.1, %bb.g ], [ -1, %.lr.ph.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.g ], [ 0, %.lr.ph.us ]
  %i.d = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  switch i8 %i.e, label %bb.d [
    i8 49, label %bb.c
    i8 48, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.us.new
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv43.a
  %i.g = load i64, ptr %i.f, align 16, !tbaa !47
  %i.h = xor i64 %i.g, -1
  %i.i = and i64 %.02636.us, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.new
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv43.a
  %i.k = load i64, ptr %i.j, align 16, !tbaa !47
  %i.l = and i64 %i.k, %.02636.us
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.us.new
  %.127.us = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ], [ %.02636.us, %.lr.ph.us.new ] ; 3 uses
  %indvars.iv.next44 = or disjoint i64 %indvars.iv43.a, 1 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 %indvars.iv.a
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  switch i8 %i.o, label %bb.g [
    i8 49, label %bb.f
    i8 48, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv.next44
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47
  %i.r = xor i64 %i.q, -1
  %i.s = and i64 %.127.us, %i.r
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv.next44
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = and i64 %i.u, %.127.us
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.127.us.1 = phi i64 [ %i.v, %bb.f ], [ %i.s, %bb.e ], [ %.127.us, %bb.d ] ; 3 uses
  %indvars.iv.next44.1.a = add nuw nsw i64 %indvars.iv43.a, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !49

._crit_edge.us.unr-lcssa:                         ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv43.epil.init.a = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next44.1.a, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ %i.c, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ]
  %.02636.us.epil.init = phi i64 [ -1, %.lr.ph.us ], [ %.127.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.w = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  switch i8 %i.x, label %._crit_edge.us [
    i8 49, label %bb.i
    i8 48, label %bb.h
  ]

bb.h:                                             ; preds = %.epil.preheader
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv43.epil.init.a
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  %i.aa = xor i64 %i.z, -1
  %i.ab = and i64 %.02636.us.epil.init, %i.aa
  br label %._crit_edge.us

bb.i:                                             ; preds = %.epil.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @Kit_PlaToTruth6.Truth, i64 %indvars.iv43.epil.init.a
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.ae = and i64 %i.ad, %.02636.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.epil.preheader, %bb.h, %bb.i, %._crit_edge.us.unr-lcssa
  %.127.us.lcssa = phi i64 [ %.127.us.1, %._crit_edge.us.unr-lcssa ], [ %i.ae, %bb.i ], [ %i.ab, %bb.h ], [ %.02636.us.epil.init, %.epil.preheader ]
  %3 = add i32 %invariant.op, %indvars.iv
  %i.af = or i64 %.127.us.lcssa, %.024.us         ; 2 uses
  %4 = sext i32 %3 to i64
  %5 = getelementptr i8, ptr %0, i64 %4
  %i.ag = getelementptr i8, ptr %5, i64 4
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %.not.us = icmp eq i8 %i.ah, 0
  %indvars.iv.next = add i32 %indvars.iv, %2
  br i1 %.not.us, label %.preheader, label %.lr.ph.us, !llvm.loop !50

.preheader:                                       ; preds = %._crit_edge.us, %bb.a
  %.us-phi = phi i64 [ -1, %bb.a ], [ %i.af, %._crit_edge.us ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.0.i = phi ptr [ %i.aj, %bb.k ], [ %0, %.preheader ] ; 3 uses
  %i.ai = load i8, ptr %.0.i, align 1, !tbaa !8
  switch i8 %i.ai, label %bb.k [
    i8 0, label %Kit_PlaIsComplement.exit.thread
    i8 10, label %Kit_PlaIsComplement.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.j, !llvm.loop !12

Kit_PlaIsComplement.exit:                         ; preds = %bb.j
  %i.ak = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp ne i8 %i.al, 48
  %i.an = icmp ne i8 %i.al, 110
  %narrow.i.not = and i1 %i.am, %i.an
  %i.ao = xor i64 %.us-phi, -1
  %cond.fr = freeze i1 %narrow.i.not
  br i1 %cond.fr, label %Kit_PlaIsComplement.exit.thread, label %bb.l

Kit_PlaIsComplement.exit.thread:                  ; preds = %bb.j, %Kit_PlaIsComplement.exit
  br label %bb.l

bb.l:                                             ; preds = %Kit_PlaIsComplement.exit, %Kit_PlaIsComplement.exit.thread
  %i.ap = phi i64 [ %.us-phi, %Kit_PlaIsComplement.exit.thread ], [ %i.ao, %Kit_PlaIsComplement.exit ]
  ret i64 %i.ap
}

; Function Attrs: nofree nounwind uwtable
define void @Kit_PlaToTruth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.b = add nsw i32 %1, 3
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = urem i64 %i.a, %i.c
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %Kit_TruthNot.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %1, 6
  %i.f = add nsw i32 %1, -5
  %i.g = shl nuw i32 1, %i.f
  %spec.select.i = select i1 %i.e, i32 1, i32 %i.g ; 13 uses
  %i.h = icmp slt i32 %spec.select.i, 1           ; 4 uses
  br i1 %i.h, label %Kit_TruthClear.exit, label %select.unfold.preheader.i

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.i = zext nneg i32 %spec.select.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %4, i8 0, i64 %i.j, i1 false), !tbaa !23
  br label %Kit_TruthClear.exit

Kit_TruthClear.exit:                              ; preds = %bb.c, %select.unfold.preheader.i
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %i.l = udiv i64 %i.k, %i.c
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph71, label %Kit_TruthNot.exit

.lr.ph71:                                         ; preds = %Kit_TruthClear.exit
  %i.o = sext i32 %1 to i64                       ; 2 uses
  %i.p = zext i32 %spec.select.i to i64           ; 24 uses
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  %i.r = icmp sgt i32 %1, 0
  %i.s = getelementptr i8, ptr %2, i64 8          ; 2 uses
  br i1 %i.r, label %.lr.ph71.split.us, label %.lr.ph71.split

.lr.ph71.split.us:                                ; preds = %.lr.ph71
  br i1 %i.h, label %Kit_TruthNot.exit, label %select.unfold.preheader.i47.us.preheader

select.unfold.preheader.i47.us.preheader:         ; preds = %.lr.ph71.split.us
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.t = shl nuw nsw i64 %i.p, 2                  ; 4 uses
  %scevgep114 = getelementptr i8, ptr %4, i64 %i.t
  %scevgep115 = getelementptr i8, ptr %3, i64 %i.t ; 3 uses
  %min.iters.check158 = icmp ult i32 %spec.select.i, 8
  %n.vec160 = and i64 %i.p, 2147483640
  %xtraiter192 = and i64 %i.p, 1
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  %indvars.iv.next.i54.us.prol = add nsw i64 %i.p, -1 ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i54.us.prol ; 2 uses
  %i.v = icmp eq i32 %spec.select.i, 1
  %min.iters.check139 = icmp ult i32 %spec.select.i, 8
  %n.vec141 = and i64 %i.p, 2147483640
  %xtraiter195 = and i64 %i.p, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  %i.w = icmp ult i32 %spec.select.i, 4
  %min.iters.check120 = icmp ult i32 %spec.select.i, 8
  %bound0116 = icmp ult ptr %4, %scevgep115
  %bound1117 = icmp ult ptr %3, %scevgep114
  %found.conflict118 = and i1 %bound0116, %bound1117
  %n.vec122 = and i64 %i.p, 2147483640
  %xtraiter198 = and i64 %i.p, 3                  ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  %i.x = icmp ult i32 %spec.select.i, 4
  br label %select.unfold.preheader.i47.us

select.unfold.preheader.i47.us:                   ; preds = %select.unfold.preheader.i47.us.preheader, %Kit_TruthOr.exit.loopexit.us
  %.03969.us = phi ptr [ %i.ei, %Kit_TruthOr.exit.loopexit.us ], [ %0, %select.unfold.preheader.i47.us.preheader ] ; 3 uses
  %.04068.us = phi i32 [ %i.ej, %Kit_TruthOr.exit.loopexit.us ], [ 0, %select.unfold.preheader.i47.us.preheader ]
  %i.y = getelementptr i8, ptr %.03969.us, i64 %i.o
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 -1, i64 %i.q, i1 false), !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %select.unfold.preheader.i47.us, %Kit_TruthAnd.exit.us74
  %indvars.iv = phi i64 [ 0, %select.unfold.preheader.i47.us ], [ %indvars.iv.next, %Kit_TruthAnd.exit.us74 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03969.us, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  switch i8 %i.ac, label %Kit_TruthAnd.exit.us74 [
    i8 49, label %select.unfold.preheader.i49.us
    i8 48, label %select.unfold.preheader.i51.us
  ]

select.unfold.preheader.i51.us:                   ; preds = %bb.d
  %.val.us = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 6 uses
  br i1 %min.iters.check158, label %select.unfold.i52.us.preheader, label %vector.memcheck152

select.unfold.i52.us.preheader:                   ; preds = %vector.memcheck152, %select.unfold.preheader.i51.us
  br i1 %lcmp.mod193.not, label %select.unfold.i52.us.prol.loopexit, label %select.unfold.i52.us.prol

select.unfold.i52.us.prol:                        ; preds = %select.unfold.i52.us.preheader
  %i.af = load i32, ptr %i.u, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i54.us.prol
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, %i.ai
  store i32 %i.aj, ptr %i.u, align 4, !tbaa !23
  br label %select.unfold.i52.us.prol.loopexit

select.unfold.i52.us.prol.loopexit:               ; preds = %select.unfold.i52.us.prol, %select.unfold.i52.us.preheader
  %indvars.iv.i53.us.unr = phi i64 [ %i.p, %select.unfold.i52.us.preheader ], [ %indvars.iv.next.i54.us.prol, %select.unfold.i52.us.prol ]
  br i1 %i.v, label %Kit_TruthAnd.exit.us74, label %select.unfold.i52.us

vector.memcheck152:                               ; preds = %select.unfold.preheader.i51.us
  %scevgep153 = getelementptr i8, ptr %i.ae, i64 %i.t
  %bound0154 = icmp ult ptr %3, %scevgep153
  %bound1155 = icmp ult ptr %i.ae, %scevgep115
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %select.unfold.i52.us.preheader, label %vector.body161

vector.body161:                                   ; preds = %vector.memcheck152, %vector.body161
  %index162 = phi i64 [ %index.next167, %vector.body161 ], [ 0, %vector.memcheck152 ] ; 2 uses
  %i.ak = xor i64 %index162, -1
  %i.al = add i64 %i.ak, %i.p                     ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28 ; 2 uses
  %wide.load163 = load <4 x i32>, ptr %i.an, align 4, !tbaa !23, !alias.scope !55, !noalias !58
  %wide.load164 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !23, !alias.scope !55, !noalias !58
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -12
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -28
  %wide.load165 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23, !alias.scope !58
  %wide.load166 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !23, !alias.scope !58
  %i.as = xor <4 x i32> %wide.load165, splat (i32 -1)
  %i.at = xor <4 x i32> %wide.load166, splat (i32 -1)
  %i.au = and <4 x i32> %wide.load163, %i.as
  %i.av = and <4 x i32> %wide.load164, %i.at
  store <4 x i32> %i.au, ptr %i.an, align 4, !tbaa !23, !alias.scope !55, !noalias !58
  store <4 x i32> %i.av, ptr %i.ao, align 4, !tbaa !23, !alias.scope !55, !noalias !58
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.aw = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.aw, label %Kit_TruthAnd.exit.us74, label %vector.body161, !llvm.loop !60

select.unfold.i52.us:                             ; preds = %select.unfold.i52.us.prol.loopexit, %select.unfold.i52.us
  %indvars.iv.i53.us = phi i64 [ %indvars.iv.next.i54.us.1, %select.unfold.i52.us ], [ %indvars.iv.i53.us.unr, %select.unfold.i52.us.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i54.us = add nsw i64 %indvars.iv.i53.us, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i54.us ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i54.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !23
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !23
  %indvars.iv.next.i54.us.1 = add nsw i64 %indvars.iv.i53.us, -2 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i54.us.1 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i54.us.1
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23
  %i.bh = xor i32 %i.bg, -1
  %i.bi = and i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !23
  %i.bj = icmp sgt i64 %indvars.iv.i53.us, 2
  br i1 %i.bj, label %select.unfold.i52.us, label %Kit_TruthAnd.exit.us74, !llvm.loop !61
end_hunk_0
