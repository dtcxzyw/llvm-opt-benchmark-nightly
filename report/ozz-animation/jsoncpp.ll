Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3523
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4Json5Value11swapPayloadERS0_:bb.a

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader9readTokenERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 18 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !84 ; 3 uses
  %.not15.i = icmp eq ptr %.promoted.i, %i.c
  br i1 %.not15.i, label %_ZN4Json6Reader10skipSpacesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.e, label %_ZN4Json6Reader10skipSpacesEv.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !84
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZN4Json6Reader10skipSpacesEv.exit, label %.lr.ph.i

_ZN4Json6Reader10skipSpacesEv.exit:               ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.g = phi ptr [ %.promoted.i, %bb.a ], [ %i.d, %.lr.ph.i ], [ %i.f, %bb.b ] ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !111
  %i.i = icmp eq ptr %i.g, %i.c
  br i1 %i.i, label %_ZN4Json6Reader11getNextCharEv.exit.thread, label %_ZN4Json6Reader11getNextCharEv.exit

_ZN4Json6Reader11getNextCharEv.exit:              ; preds = %_ZN4Json6Reader10skipSpacesEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 12 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !84
  %i.k = load i8, ptr %i.g, align 1, !tbaa !50
  switch i8 %i.k, label %.critedge19 [
    i8 123, label %bb.c
    i8 125, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.f
    i8 34, label %bb.g
    i8 47, label %.split
    i8 48, label %bb.j
    i8 49, label %bb.j
    i8 50, label %bb.j
    i8 51, label %bb.j
    i8 52, label %bb.j
    i8 53, label %bb.j
    i8 54, label %bb.j
    i8 55, label %bb.j
    i8 56, label %bb.j
    i8 57, label %bb.j
    i8 45, label %bb.j
    i8 116, label %bb.s
    i8 102, label %bb.t
    i8 110, label %bb.u
    i8 44, label %bb.v
    i8 58, label %bb.w
    i8 0, label %_ZN4Json6Reader11getNextCharEv.exit.thread
  ]

bb.c:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 1, ptr %1, align 8, !tbaa !104
  br label %.critedge

bb.d:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 2, ptr %1, align 8, !tbaa !104
  br label %.critedge

bb.e:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 3, ptr %1, align 8, !tbaa !104
  br label %.critedge

bb.f:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 4, ptr %1, align 8, !tbaa !104
  br label %.critedge

bb.g:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 5, ptr %1, align 8, !tbaa !104
  %.not6.i = icmp eq ptr %i.j, %i.c
  br i1 %.not6.i, label %.critedge19, label %_ZN4Json6Reader11getNextCharEv.exit.i

_ZN4Json6Reader11getNextCharEv.exit.i:            ; preds = %bb.g, %_ZN4Json6Reader11getNextCharEv.exit5.i
  %i.l = phi ptr [ %i.q, %_ZN4Json6Reader11getNextCharEv.exit5.i ], [ %i.j, %bb.g ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !84
  %i.n = load i8, ptr %i.l, align 1, !tbaa !50
  switch i8 %i.n, label %_ZN4Json6Reader11getNextCharEv.exit5.i [
    i8 92, label %bb.h
    i8 34, label %.critedge
  ]

bb.h:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit.i
  %i.o = icmp eq ptr %i.m, %i.c
  br i1 %i.o, label %_ZN4Json6Reader11getNextCharEv.exit5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4Json6Reader11getNextCharEv.exit5.i

_ZN4Json6Reader11getNextCharEv.exit5.i:           ; preds = %bb.i, %bb.h, %_ZN4Json6Reader11getNextCharEv.exit.i
  %i.q = phi ptr [ %i.p, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %_ZN4Json6Reader11getNextCharEv.exit.i ] ; 2 uses
  %.not.i21 = icmp eq ptr %i.q, %i.c
  br i1 %.not.i21, label %.critedge19, label %_ZN4Json6Reader11getNextCharEv.exit.i, !llvm.loop !3

.split:                                           ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 12, ptr %1, align 8, !tbaa !104
  %i.r = tail call noundef zeroext i1 @_ZN4Json6Reader11readCommentEv(ptr noundef nonnull align 8 dereferenceable(267) %0)
  br i1 %i.r, label %.critedge, label %.critedge19

bb.j:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit
  store i32 6, ptr %1, align 8, !tbaa !104
  store ptr %i.j, ptr %i.a, align 8, !tbaa !84
  %i.s = icmp ult ptr %i.j, %i.c
  br i1 %i.s, label %.lr.ph, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  store ptr %i.u, ptr %i.a, align 8, !tbaa !84
  %i.t = icmp ult ptr %i.u, %i.c
  br i1 %i.t, label %.lr.ph, label %.critedge, !llvm.loop !4

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.02835.i85 = phi ptr [ %i.u, %bb.k ], [ %i.j, %bb.j ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02835.i85, i64 1 ; 7 uses
  %i.v = load i8, ptr %.02835.i85, align 1, !tbaa !50 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.k, label %bb.l, !llvm.loop !4

bb.l:                                             ; preds = %.lr.ph
  %i.y = icmp eq i8 %i.v, 46
  br i1 %i.y, label %bb.m, label %.loopexit34.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.u, ptr %i.a, align 8, !tbaa !84
  %i.z = icmp ult ptr %i.u, %i.c
  br i1 %i.z, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.02835.i85, i64 2 ; 4 uses
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !50   ; 2 uses
  %i.ac = add i8 %i.ab, -48
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %.lr.ph.i22.preheader, label %.loopexit34.i

.lr.ph.i22.preheader:                             ; preds = %bb.n
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !84
  %i.ae = icmp ult ptr %i.aa, %i.c
  br i1 %i.ae, label %.lr.ph87, label %.critedge

.lr.ph.i22:                                       ; preds = %.lr.ph87
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !84
  %i.af = icmp ult ptr %i.ag, %i.c
  br i1 %i.af, label %.lr.ph87, label %.critedge, !llvm.loop !5

.lr.ph87:                                         ; preds = %.lr.ph.i22.preheader, %.lr.ph.i22
  %.33136.i86 = phi ptr [ %i.ag, %.lr.ph.i22 ], [ %i.aa, %.lr.ph.i22.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.33136.i86, i64 1 ; 4 uses
  %i.ah = load i8, ptr %.33136.i86, align 1, !tbaa !50 ; 2 uses
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %.lr.ph.i22, label %.loopexit34.i, !llvm.loop !5

.loopexit34.i:                                    ; preds = %.lr.ph87, %bb.n, %bb.l
  %.5.i = phi ptr [ %i.u, %bb.l ], [ %i.aa, %bb.n ], [ %i.ag, %.lr.ph87 ] ; 5 uses
  %.2.i = phi i8 [ %i.v, %bb.l ], [ %i.ab, %bb.n ], [ %i.ah, %.lr.ph87 ]
  %i.ak = and i8 %.2.i, -33
  %or.cond.i = icmp eq i8 %i.ak, 69
  br i1 %or.cond.i, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.loopexit34.i
  store ptr %.5.i, ptr %i.a, align 8, !tbaa !84
  %i.al = icmp ult ptr %.5.i, %i.c
  br i1 %i.al, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 4 uses
  %i.an = load i8, ptr %.5.i, align 1, !tbaa !50  ; 2 uses
  switch i8 %i.an, label %.thread.i [
    i8 45, label %bb.q
    i8 43, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  store ptr %i.am, ptr %i.a, align 8, !tbaa !84
  %i.ao = icmp ult ptr %i.am, %i.c
  br i1 %i.ao, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %.5.i, i64 2
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.p
  %.8.i = phi ptr [ %i.am, %bb.p ], [ %i.ap, %bb.r ] ; 3 uses
  %.3.i = phi i8 [ %i.an, %bb.p ], [ %i.aq, %bb.r ]
  %2 = add i8 %.3.i, -48
  %i.ar = icmp ult i8 %2, 10
  br i1 %i.ar, label %.lr.ph39.i.preheader, label %.critedge

.lr.ph39.i.preheader:                             ; preds = %.thread.i
  store ptr %.8.i, ptr %i.a, align 8, !tbaa !84
  %i.as = icmp ult ptr %.8.i, %i.c
  br i1 %i.as, label %.lr.ph89, label %.critedge

.lr.ph39.i:                                       ; preds = %.lr.ph89
  %i.at = getelementptr inbounds nuw i8, ptr %.938.i88, i64 1 ; 3 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !84
  %i.au = icmp ult ptr %i.at, %i.c
  br i1 %i.au, label %.lr.ph89, label %.critedge, !llvm.loop !6

.lr.ph89:                                         ; preds = %.lr.ph39.i.preheader, %.lr.ph39.i
  %.938.i88 = phi ptr [ %i.at, %.lr.ph39.i ], [ %.8.i, %.lr.ph39.i.preheader ] ; 2 uses
  %i.av = load i8, ptr %.938.i88, align 1, !tbaa !50
  %3 = add i8 %i.av, -48
  %i.aw = icmp ult i8 %3, 10
  br i1 %i.aw, label %.lr.ph39.i, label %..critedge.loopexit78_crit_edge, !llvm.loop !6

bb.s:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 7, ptr %1, align 8, !tbaa !104
  %i.ax = ptrtoint ptr %i.c to i64
  %i.ay = ptrtoint ptr %i.j to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp slt i64 %i.az, 3
  br i1 %i.ba, label %.critedge19, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !50
  %.not10.i = icmp eq i8 %i.bc, 101
  br i1 %.not10.i, label %.preheader.i.1, label %.critedge19

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !50
  %.not10.i.1 = icmp eq i8 %i.be, 117
  br i1 %.not10.i.1, label %.preheader.i.2, label %.critedge19

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bf = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i.2 = icmp eq i8 %i.bf, 114
  br i1 %.not10.i.2, label %.preheader.i.3, label %.critedge19

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !84
  br label %.critedge

bb.t:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 8, ptr %1, align 8, !tbaa !104
  %i.bh = ptrtoint ptr %i.c to i64
  %i.bi = ptrtoint ptr %i.j to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp slt i64 %i.bj, 4
  br i1 %i.bk, label %.critedge19, label %.preheader.i24.preheader

.preheader.i24.preheader:                         ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !50
  %.not10.i27 = icmp eq i8 %i.bm, 101
  br i1 %.not10.i27, label %.preheader.i24.1, label %.critedge19

.preheader.i24.1:                                 ; preds = %.preheader.i24.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !50
  %.not10.i27.1 = icmp eq i8 %i.bo, 115
  br i1 %.not10.i27.1, label %.preheader.i24.2, label %.critedge19

.preheader.i24.2:                                 ; preds = %.preheader.i24.1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !50
  %.not10.i27.2 = icmp eq i8 %i.bq, 108
  br i1 %.not10.i27.2, label %.preheader.i24.3, label %.critedge19

.preheader.i24.3:                                 ; preds = %.preheader.i24.2
  %i.br = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i27.3 = icmp eq i8 %i.br, 97
  br i1 %.not10.i27.3, label %.preheader.i24.4, label %.critedge19

.preheader.i24.4:                                 ; preds = %.preheader.i24.3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !84
  br label %.critedge

bb.u:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 9, ptr %1, align 8, !tbaa !104
  %i.bt = ptrtoint ptr %i.c to i64
  %i.bu = ptrtoint ptr %i.j to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp slt i64 %i.bv, 3
  br i1 %i.bw, label %.critedge19, label %.preheader.i30.preheader

.preheader.i30.preheader:                         ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50
  %.not10.i33 = icmp eq i8 %i.by, 108
  br i1 %.not10.i33, label %.preheader.i30.1, label %.critedge19

.preheader.i30.1:                                 ; preds = %.preheader.i30.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !50
  %.not10.i33.1 = icmp eq i8 %i.ca, 108
  br i1 %.not10.i33.1, label %.preheader.i30.2, label %.critedge19

.preheader.i30.2:                                 ; preds = %.preheader.i30.1
  %i.cb = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i33.2 = icmp eq i8 %i.cb, 117
  br i1 %.not10.i33.2, label %.preheader.i30.3, label %.critedge19

.preheader.i30.3:                                 ; preds = %.preheader.i30.2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !84
  br label %.critedge

bb.v:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 10, ptr %1, align 8, !tbaa !104
  br label %.critedge

bb.w:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 11, ptr %1, align 8, !tbaa !104
  br label %.critedge

_ZN4Json6Reader11getNextCharEv.exit.thread:       ; preds = %_ZN4Json6Reader10skipSpacesEv.exit, %_ZN4Json6Reader11getNextCharEv.exit
  store i32 0, ptr %1, align 8, !tbaa !104
  br label %.critedge

.critedge19:                                      ; preds = %_ZN4Json6Reader11getNextCharEv.exit5.i, %.preheader.i30.preheader, %.preheader.i30.1, %.preheader.i30.2, %.preheader.i24.preheader, %.preheader.i24.1, %.preheader.i24.2, %.preheader.i24.3, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2, %bb.u, %bb.t, %bb.s, %bb.g, %.split, %_ZN4Json6Reader11getNextCharEv.exit
  store i32 13, ptr %1, align 8, !tbaa !104
  br label %.critedge

..critedge.loopexit78_crit_edge:                  ; preds = %.lr.ph89
  br label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %bb.k, %.lr.ph.i22, %.lr.ph39.i, %_ZN4Json6Reader11getNextCharEv.exit.i, %bb.j, %.lr.ph.i22.preheader, %.lr.ph39.i.preheader, %..critedge.loopexit78_crit_edge, %.preheader.i30.3, %.preheader.i.3, %.preheader.i24.4, %.split, %.thread.i, %bb.q, %bb.o, %.loopexit34.i, %bb.m, %_ZN4Json6Reader11getNextCharEv.exit.thread, %bb.c, %bb.d, %bb.e, %bb.f, %bb.v, %bb.w, %.critedge19
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !112
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Json6Reader10skipSpacesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !84 ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.c
  br i1 %.not15, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.e, label %.thread [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i8 @_ZN4Json6Reader11getNextCharEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !84
  %i.g = load i8, ptr %i.b, align 1, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader10readStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !84 ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %_ZN4Json6Reader11getNextCharEv.exit._crit_edge, label %_ZN4Json6Reader11getNextCharEv.exit

_ZN4Json6Reader11getNextCharEv.exit:              ; preds = %bb.a, %_ZN4Json6Reader11getNextCharEv.exit5
  %i.d = phi ptr [ %i.i, %_ZN4Json6Reader11getNextCharEv.exit5 ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !84
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.f, label %_ZN4Json6Reader11getNextCharEv.exit5 [
    i8 92, label %bb.b
    i8 34, label %_ZN4Json6Reader11getNextCharEv.exit._crit_edge.loopexit
  ]

bb.b:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_ZN4Json6Reader11getNextCharEv.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN4Json6Reader11readCommentEv:bb.a
  br label %_ZN4Json6Reader11getNextCharEv.exit.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.idx58 = phi i64 [ 1, %bb.b ], [ %.add64, %bb.c ], [ %.add64, %bb.d ] ; 2 uses
  %.ptr65 = getelementptr inbounds i8, ptr %i.b, i64 %.idx58 ; 2 uses
  %i.l = icmp eq ptr %.ptr65, %i.e
  br i1 %i.l, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31, label %_ZN4Json6Reader17readCStyleCommentEv.exit

bb.e:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit.i16
  %.ptr67 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62 ; 2 uses
  %.not.i15 = icmp eq ptr %.ptr67, %i.e
  br i1 %.not.i15, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread, label %_ZN4Json6Reader11getNextCharEv.exit.i16

_ZN4Json6Reader11getNextCharEv.exit.i16:          ; preds = %.preheader, %bb.e
  %.ptr6782 = phi ptr [ %.ptr67, %bb.e ], [ %.ptr6779, %.preheader ]
  %.idx5981 = phi i64 [ %.add62, %bb.e ], [ 1, %.preheader ] ; 2 uses
  %.add62 = add nuw nsw i64 %.idx5981, 1          ; 8 uses
  %.ptr68 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62
  store ptr %.ptr68, ptr %i.a, align 8, !tbaa !84
  %i.m = load i8, ptr %.ptr6782, align 1, !tbaa !50
  switch i8 %i.m, label %bb.e [
    i8 10, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit.i16
  %.ptr68.le = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62 ; 2 uses
  %.not5.i = icmp eq ptr %.ptr68.le, %i.e
  br i1 %.not5.i, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i8, ptr %.ptr68.le, align 1, !tbaa !50
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %_ZN4Json6Reader11getNextCharEv.exit7.i, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread

_ZN4Json6Reader11getNextCharEv.exit7.i:           ; preds = %bb.g
  %.add63 = add nuw nsw i64 %.idx5981, 2          ; 2 uses
  %.ptr69 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add63
  store ptr %.ptr69, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread

_ZN4Json6Reader17readCStyleCommentEv.exit:        ; preds = %.thread.i
  %.add = add nsw i64 %.idx58, 1                  ; 2 uses
  %.ptr66 = getelementptr inbounds i8, ptr %i.b, i64 %.add
  store ptr %.ptr66, ptr %i.a, align 8, !tbaa !84
  %i.p = load i8, ptr %.ptr65, align 1, !tbaa !50
  %i.q = icmp eq i8 %i.p, 47
  br i1 %i.q, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31

_ZN4Json6Reader17readCStyleCommentEv.exit.thread: ; preds = %bb.e, %_ZN4Json6Reader11getNextCharEv.exit.i16, %.preheader, %_ZN4Json6Reader11getNextCharEv.exit7.i, %bb.g, %bb.f, %_ZN4Json6Reader17readCStyleCommentEv.exit
  %.idx = phi i64 [ %.add, %_ZN4Json6Reader17readCStyleCommentEv.exit ], [ %.add63, %_ZN4Json6Reader11getNextCharEv.exit7.i ], [ %.add62, %bb.g ], [ %.add62, %bb.f ], [ 1, %.preheader ], [ %.add62, %_ZN4Json6Reader11getNextCharEv.exit.i16 ], [ %.add62, %bb.e ] ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.s = load i8, ptr %i.r, align 2, !tbaa !70, !range !80, !noundef !81
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31

bb.h:                                             ; preds = %_ZN4Json6Reader17readCStyleCommentEv.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !114  ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4JsonL15containsNewLineEPKcS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp ult ptr %i.v, %i.c
  br i1 %i.w, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.068.i = phi ptr [ %i.y, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.x = load i8, ptr %.068.i, align 1, !tbaa !50
  switch i8 %i.x, label %bb.j [
    i8 10, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
    i8 13, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.y, %i.c
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.loopexit:                                        ; preds = %bb.j, %bb.i
  %.not13 = icmp eq i8 %i.g, 42
  %i.z = icmp sgt i64 %.idx, -1
  %or.cond = select i1 %.not13, i1 %i.z, i1 false
  br i1 %or.cond, label %.lr.ph.i19, label %_ZN4JsonL15containsNewLineEPKcS1_.exit

.lr.ph.i19:                                       ; preds = %.loopexit, %bb.k
  %.068.i20 = phi ptr [ %i.ab, %bb.k ], [ %i.c, %.loopexit ] ; 2 uses
  %i.aa = load i8, ptr %.068.i20, align 1, !tbaa !50
  switch i8 %i.aa, label %bb.k [
    i8 10, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
    i8 13, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
  ]

bb.k:                                             ; preds = %.lr.ph.i19
  %i.ab = getelementptr inbounds nuw i8, ptr %.068.i20, i64 1 ; 2 uses
  %exitcond.not.i21 = icmp eq ptr %i.ab, %.ptr
  br i1 %exitcond.not.i21, label %_ZN4JsonL15containsNewLineEPKcS1_.exit, label %.lr.ph.i19, !llvm.loop !7

_ZN4JsonL15containsNewLineEPKcS1_.exit:           ; preds = %.lr.ph.i, %.lr.ph.i, %bb.k, %.lr.ph.i19, %.lr.ph.i19, %.loopexit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %.loopexit ], [ 0, %.lr.ph.i19 ], [ 1, %bb.k ], [ 0, %.lr.ph.i19 ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph.i ]
  tail call void @_ZN4Json6Reader10addCommentEPKcS2_NS_16CommentPlacementE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %.ptr, i32 noundef %.0)
  br label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31

_ZN4Json6Reader17readCStyleCommentEv.exit.thread31: ; preds = %bb.a, %_ZN4Json6Reader11getNextCharEv.exit, %.thread.i, %_ZN4Json6Reader17readCStyleCommentEv.exit.thread, %_ZN4JsonL15containsNewLineEPKcS1_.exit, %_ZN4Json6Reader17readCStyleCommentEv.exit
  %.0928 = phi i1 [ true, %_ZN4Json6Reader17readCStyleCommentEv.exit.thread ], [ true, %_ZN4JsonL15containsNewLineEPKcS1_.exit ], [ false, %_ZN4Json6Reader17readCStyleCommentEv.exit ], [ false, %.thread.i ], [ false, %_ZN4Json6Reader11getNextCharEv.exit ], [ false, %bb.a ]
  ret i1 %.0928
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Json6Reader10readNumberEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 9 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !84
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph72, label %.loopexit

bb.b:                                             ; preds = %.lr.ph72
  store ptr %i.g, ptr %i.a, align 8, !tbaa !84
  %i.f = icmp ult ptr %i.g, %i.d
  br i1 %i.f, label %.lr.ph72, label %.loopexit, !llvm.loop !4

.lr.ph72:                                         ; preds = %bb.a, %bb.b
  %.0283571 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0283571, i64 1 ; 7 uses
  %i.h = load i8, ptr %.0283571, align 1, !tbaa !50 ; 3 uses
  %i.i = add i8 %i.h, -48
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph72
  %i.k = icmp eq i8 %i.h, 46
  br i1 %i.k, label %bb.d, label %.loopexit34

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.a, align 8, !tbaa !84
  %i.l = icmp ult ptr %i.g, %i.d
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0283571, i64 2 ; 4 uses
  %i.n = load i8, ptr %i.g, align 1, !tbaa !50    ; 2 uses
  %i.o = add i8 %i.n, -48
  %i.p = icmp ult i8 %i.o, 10
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit34

.lr.ph.preheader:                                 ; preds = %bb.e
  store ptr %i.m, ptr %i.a, align 8, !tbaa !84
  %i.q = icmp ult ptr %i.m, %i.d
  br i1 %i.q, label %.lr.ph74, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph74
  store ptr %i.s, ptr %i.a, align 8, !tbaa !84
  %i.r = icmp ult ptr %i.s, %i.d
  br i1 %i.r, label %.lr.ph74, label %.loopexit, !llvm.loop !5

.lr.ph74:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.3313673 = phi ptr [ %i.s, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.3313673, i64 1 ; 4 uses
  %i.t = load i8, ptr %.3313673, align 1, !tbaa !50 ; 2 uses
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %.lr.ph, label %.loopexit34, !llvm.loop !5

.loopexit34:                                      ; preds = %.lr.ph74, %bb.e, %bb.c
  %.5 = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.e ], [ %i.s, %.lr.ph74 ] ; 5 uses
  %.2 = phi i8 [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ %i.t, %.lr.ph74 ]
  %i.w = and i8 %.2, -33
  %or.cond = icmp eq i8 %i.w, 69
  br i1 %or.cond, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.loopexit34
  store ptr %.5, ptr %i.a, align 8, !tbaa !84
  %i.x = icmp ult ptr %.5, %i.d
  br i1 %i.x, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.z = load i8, ptr %.5, align 1, !tbaa !50     ; 2 uses
  switch i8 %i.z, label %.thread [
    i8 45, label %bb.h
    i8 43, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  store ptr %i.y, ptr %i.a, align 8, !tbaa !84
  %i.aa = icmp ult ptr %i.y, %i.d
  br i1 %i.aa, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g
  %.8 = phi ptr [ %i.y, %bb.g ], [ %i.ab, %bb.i ] ; 3 uses
  %.3 = phi i8 [ %i.z, %bb.g ], [ %i.ac, %bb.i ]
  %1 = add i8 %.3, -48
  %i.ad = icmp ult i8 %1, 10
  br i1 %i.ad, label %.lr.ph39.preheader, label %.loopexit

.lr.ph39.preheader:                               ; preds = %.thread
  store ptr %.8, ptr %i.a, align 8, !tbaa !84
  %i.ae = icmp ult ptr %.8, %i.d
  br i1 %i.ae, label %.lr.ph76, label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph76
  %i.af = getelementptr inbounds nuw i8, ptr %.93875, i64 1 ; 3 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !84
  %i.ag = icmp ult ptr %i.af, %i.d
  br i1 %i.ag, label %.lr.ph76, label %.loopexit, !llvm.loop !6

.lr.ph76:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %.93875 = phi ptr [ %i.af, %.lr.ph39 ], [ %.8, %.lr.ph39.preheader ] ; 2 uses
  %i.ah = load i8, ptr %.93875, align 1, !tbaa !50
  %2 = add i8 %i.ah, -48
  %i.ai = icmp ult i8 %2, 10
  br i1 %i.ai, label %.lr.ph39, label %..loopexit.loopexit_crit_edge, !llvm.loop !6

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph76
  br label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph39, %bb.a, %.lr.ph.preheader, %.lr.ph39.preheader, %..loopexit.loopexit_crit_edge, %bb.f, %bb.h, %bb.d, %.thread, %.loopexit34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader5matchEPKci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sext i32 %2 to i64                       ; 3 uses
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.k = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.k, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !332

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv12 = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.h, %.preheader.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv12, -1 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  %.not10 = icmp eq i8 %i.m, %i.o
  br i1 %.not10, label %.preheader, label %.loopexit, !llvm.loop !332

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  store ptr %i.p, ptr %i.c, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader._crit_edge ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader17readCStyleCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !84 ; 3 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.thread, label %_ZN4Json6Reader11getNextCharEv.exit

_ZN4Json6Reader11getNextCharEv.exit:              ; preds = %bb.a, %_ZN4Json6Reader11getNextCharEv.exit.backedge
  %i.d = phi ptr [ %i.e, %_ZN4Json6Reader11getNextCharEv.exit.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !84
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  %i.g = icmp eq i8 %i.f, 42
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %i.h = load i8, ptr %i.e, align 1, !tbaa !50
  %i.i = icmp eq i8 %i.h, 47
  %.not = icmp eq ptr %i.e, %i.c
  %or.cond = select i1 %i.i, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %_ZN4Json6Reader11getNextCharEv.exit.backedge

bb.c:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %.not.old = icmp eq ptr %i.e, %i.c
  br i1 %.not.old, label %.thread, label %_ZN4Json6Reader11getNextCharEv.exit.backedge

_ZN4Json6Reader11getNextCharEv.exit.backedge:     ; preds = %bb.c, %bb.b
  br label %_ZN4Json6Reader11getNextCharEv.exit

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi ptr [ %.promoted, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZN4Json6Reader11getNextCharEv.exit3, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %i.a, align 8, !tbaa !84
  %i.m = load i8, ptr %i.j, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 47
  br label %_ZN4Json6Reader11getNextCharEv.exit3

_ZN4Json6Reader11getNextCharEv.exit3:             ; preds = %.thread, %bb.d
  %.0.i2 = phi i1 [ %i.n, %bb.d ], [ false, %.thread ]
  ret i1 %.0.i2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader19readCppStyleCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(267) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !84 ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.c
  br i1 %.not18, label %.thread, label %_ZN4Json6Reader11getNextCharEv.exit

bb.b:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %.thread, label %_ZN4Json6Reader11getNextCharEv.exit

_ZN4Json6Reader11getNextCharEv.exit:              ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !84
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.f, label %bb.b [
    i8 10, label %.thread
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %.not5 = icmp eq ptr %i.e, %i.c
  br i1 %.not5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.e, align 1, !tbaa !50
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_ZN4Json6Reader11getNextCharEv.exit7, label %.thread

_ZN4Json6Reader11getNextCharEv.exit7:             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !84
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN4Json6Reader11getNextCharEv.exit, %bb.a, %bb.c, %bb.d, %_ZN4Json6Reader11getNextCharEv.exit7
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json6Reader10addCommentEPKcS2_NS_16CommentPlacementE(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call fastcc void @_ZN4JsonL12normalizeEOLB5cxx11EPKcS1_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %2)
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.d = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #43
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store i64 3, ptr %i.i, align 8
  %.ptr13.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr13.i.i, i8 0, i64 24, i1 false), !tbaa !110
  store ptr %.ptr13.i.i, ptr %i.g, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.j = phi ptr [ %.ptr13.i.i, %.noexc ], [ %i.h, %bb.b ]
  %.not14.i.i = icmp eq i64 %i.f, 0
  br i1 %.not14.i.i, label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.f, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 10
  %spec.select.i.i = select i1 %i.n, i64 %i.k, i64 %i.f
  br label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i

_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN4Json5Value11CommentInfo10setCommentEPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef readonly %i.d, i64 noundef %.0.i.i)
          to label %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h, %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN4Json9OurReader9readArrayERNS0_5TokenE:bb.a
  br label %bb.h

.loopexit.split-lp54:                             ; preds = %.loopexit.split-lp54.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn26 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp54.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %.loopexit.split-lp49.loopexit.split-lp

bb.z:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.aa

bb.aa:                                            ; preds = %.thread43, %.thread, %bb.z, %bb.f
  %.424 = phi i1 [ true, %bb.f ], [ false, %.thread43 ], [ true, %bb.z ], [ false, %.thread ]
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret i1 %.424

.loopexit.split-lp49.loopexit.split-lp:           ; preds = %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.t, %.loopexit.split-lp54, %bb.g
  %.pn30 = phi { ptr, i32 } [ %i.an, %bb.g ], [ %i.cv, %bb.t ], [ %.pn26, %.loopexit.split-lp54 ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader12decodeNumberERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Json::Value", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, -512
  store i16 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = invoke noundef zeroext i1 @_ZN4Json9OurReader12decodeNumberERNS0_5TokenERNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93, !noalias !463 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96, !noalias !463
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95, !noalias !463
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i16, ptr %i.t, align 8              ; 2 uses
  %i.v = load i16, ptr %i.a, align 8              ; 2 uses
  %i.w = and i16 %i.u, -512
  %i.x = and i16 %i.v, -512
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.s, align 8, !tbaa !50
  %i.y = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.y, ptr %i.s, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i, ptr %2, align 8, !tbaa !50
  %i.z = and i16 %i.v, 511
  %i.aa = or disjoint i16 %i.z, %i.w
  store i16 %i.aa, ptr %i.t, align 8
  %i.ab = and i16 %i.u, 511
  %i.ac = or disjoint i16 %i.x, %i.ab
  store i16 %i.ac, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader12decodeStringERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = invoke noundef zeroext i1 @_ZN4Json9OurReader12decodeStringERNS0_5TokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %2, align 8, !tbaa !78
  %i.h = load i64, ptr %i.b, align 8, !tbaa !49
  %i.i = trunc i64 %i.h to i32
  %i.j = invoke fastcc noundef ptr @_ZN4JsonL29duplicateAndPrefixStringValueEPKcj(ptr noundef %i.g, i32 noundef %i.i)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !93, !noalias !466 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96, !noalias !466
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = ptrtoint ptr %i.j to i64
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95, !noalias !466
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.l, %bb.e ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i16 %i.z, -512
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.x, align 8, !tbaa !50
  store i64 %i.p, ptr %i.x, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !tbaa !50
  %i.ab = or disjoint i16 %i.aa, 260
  store i16 %i.ab, ptr %i.y, align 8
  %i.ac = and i16 %i.z, 511
  store i16 %i.ac, ptr %i.e, align 8
  call void @_ZN4Json5ValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.g
  %i.ae = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !50
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret i1 %i.c

bb.j:                                             ; preds = %bb.h, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %i.d, %bb.c ]
  %i.ai = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.j
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !50
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader9readTokenERNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 11 uses
  %.promoted.i = load ptr, ptr %i.a, align 8, !tbaa !159 ; 3 uses
  %.not15.i = icmp eq ptr %.promoted.i, %i.c
  br i1 %.not15.i, label %_ZN4Json9OurReader10skipSpacesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.e, label %_ZN4Json9OurReader10skipSpacesEv.exit [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !159
  %.not.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i, label %_ZN4Json9OurReader10skipSpacesEv.exit, label %.lr.ph.i

_ZN4Json9OurReader10skipSpacesEv.exit:            ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.g = phi ptr [ %.promoted.i, %bb.a ], [ %i.d, %.lr.ph.i ], [ %i.f, %bb.b ] ; 31 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !171
  %i.i = icmp eq ptr %i.g, %i.c
  br i1 %i.i, label %_ZN4Json9OurReader11getNextCharEv.exit.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %_ZN4Json9OurReader10skipSpacesEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 21 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !159
  %i.k = load i8, ptr %i.g, align 1, !tbaa !50
  switch i8 %i.k, label %.critedge [
    i8 123, label %bb.c
    i8 125, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.f
    i8 34, label %bb.g
    i8 39, label %bb.j
    i8 47, label %_ZN4Json9OurReader10readStringEv.exit
    i8 48, label %bb.k
    i8 49, label %bb.k
    i8 50, label %bb.k
    i8 51, label %bb.k
    i8 52, label %bb.k
    i8 53, label %bb.k
    i8 54, label %bb.k
    i8 55, label %bb.k
    i8 56, label %bb.k
    i8 57, label %bb.k
    i8 45, label %6
    i8 116, label %bb.x
    i8 102, label %bb.y
    i8 110, label %bb.z
    i8 78, label %bb.aa
    i8 73, label %bb.ac
    i8 44, label %bb.ae
    i8 58, label %bb.af
    i8 0, label %_ZN4Json9OurReader11getNextCharEv.exit.thread
  ]

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 1, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.d:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 2, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.e:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 3, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.f:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 4, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.g:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 5, ptr %1, align 8, !tbaa !170
  %.not6.i = icmp eq ptr %i.j, %i.c
  br i1 %.not6.i, label %.critedge, label %_ZN4Json9OurReader11getNextCharEv.exit.i

_ZN4Json9OurReader11getNextCharEv.exit.i:         ; preds = %bb.g, %_ZN4Json9OurReader11getNextCharEv.exit5.i
  %i.l = phi ptr [ %i.q, %_ZN4Json9OurReader11getNextCharEv.exit5.i ], [ %i.j, %bb.g ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !159
  %i.n = load i8, ptr %i.l, align 1, !tbaa !50
  switch i8 %i.n, label %_ZN4Json9OurReader11getNextCharEv.exit5.i [
    i8 92, label %bb.h
    i8 34, label %.critedge24
  ]

bb.h:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit.i
  %i.o = icmp eq ptr %i.m, %i.c
  br i1 %i.o, label %_ZN4Json9OurReader11getNextCharEv.exit5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !159
  br label %_ZN4Json9OurReader11getNextCharEv.exit5.i

_ZN4Json9OurReader11getNextCharEv.exit5.i:        ; preds = %bb.i, %bb.h, %_ZN4Json9OurReader11getNextCharEv.exit.i
  %i.q = phi ptr [ %i.p, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %_ZN4Json9OurReader11getNextCharEv.exit.i ] ; 2 uses
  %.not.i26 = icmp eq ptr %i.q, %i.c
  br i1 %.not.i26, label %.critedge, label %_ZN4Json9OurReader11getNextCharEv.exit.i, !llvm.loop !12

bb.j:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load i8, ptr %i.r, align 8, !tbaa !467, !range !80, !noundef !81
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split, label %_ZN4Json9OurReader10readStringEv.exit

.split:                                           ; preds = %bb.j
  store i32 5, ptr %1, align 8, !tbaa !170
  %i.u = tail call noundef zeroext i1 @_ZN4Json9OurReader21readStringSingleQuoteEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br i1 %i.u, label %.critedge24, label %.critedge

bb.k:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 6, ptr %1, align 8, !tbaa !170
  %i.v = load ptr, ptr %i.b, align 8              ; 9 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !159
  %i.w = icmp ult ptr %i.j, %i.v
  br i1 %i.w, label %.lr.ph.a, label %.critedge24

bb.l:                                             ; preds = %.lr.ph.a
  store ptr %i.y, ptr %i.a, align 8, !tbaa !159
  %i.x = icmp ult ptr %i.y, %i.v
  br i1 %i.x, label %.lr.ph.a, label %.critedge24, !llvm.loop !13

.lr.ph.a:                                         ; preds = %bb.k, %bb.l
  %.03345.i114 = phi ptr [ %i.y, %bb.l ], [ %i.j, %bb.k ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03345.i114, i64 1 ; 7 uses
  %i.z = load i8, ptr %.03345.i114, align 1, !tbaa !50 ; 3 uses
  %i.aa = add i8 %i.z, -48
  %i.ab = icmp ult i8 %i.aa, 10
  br i1 %i.ab, label %bb.l, label %bb.m, !llvm.loop !13

bb.m:                                             ; preds = %.lr.ph.a
  %i.ac = icmp eq i8 %i.z, 46
  br i1 %i.ac, label %bb.n, label %.loopexit44.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.y, ptr %i.a, align 8, !tbaa !159
  %i.ad = icmp ult ptr %i.y, %i.v
  br i1 %i.ad, label %bb.o, label %.critedge24

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.03345.i114, i64 2 ; 4 uses
  %i.af = load i8, ptr %i.y, align 1, !tbaa !50   ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  br i1 %i.ah, label %.lr.ph.i28.preheader, label %.loopexit44.i

.lr.ph.i28.preheader:                             ; preds = %bb.o
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !159
  %i.ai = icmp ult ptr %i.ae, %i.v
  br i1 %i.ai, label %.lr.ph116, label %.critedge24

.lr.ph.i28:                                       ; preds = %.lr.ph116
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !159
  %i.aj = icmp ult ptr %i.ak, %i.v
  br i1 %i.aj, label %.lr.ph116, label %.critedge24, !llvm.loop !14

.lr.ph116:                                        ; preds = %.lr.ph.i28.preheader, %.lr.ph.i28
  %.33646.i115 = phi ptr [ %i.ak, %.lr.ph.i28 ], [ %i.ae, %.lr.ph.i28.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.33646.i115, i64 1 ; 4 uses
  %i.al = load i8, ptr %.33646.i115, align 1, !tbaa !50 ; 2 uses
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10
  br i1 %i.an, label %.lr.ph.i28, label %.loopexit44.i, !llvm.loop !14

.loopexit44.i:                                    ; preds = %.lr.ph116, %bb.o, %bb.m
  %.5.i = phi ptr [ %i.y, %bb.m ], [ %i.ae, %bb.o ], [ %i.ak, %.lr.ph116 ] ; 5 uses
  %.2.i = phi i8 [ %i.z, %bb.m ], [ %i.af, %bb.o ], [ %i.al, %.lr.ph116 ]
  %i.ao = and i8 %.2.i, -33
  %or.cond.i = icmp eq i8 %i.ao, 69
  br i1 %or.cond.i, label %bb.p, label %.critedge24

bb.p:                                             ; preds = %.loopexit44.i
  store ptr %.5.i, ptr %i.a, align 8, !tbaa !159
  %i.ap = icmp ult ptr %.5.i, %i.v
  br i1 %i.ap, label %bb.q, label %.critedge24

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 4 uses
  %i.ar = load i8, ptr %.5.i, align 1, !tbaa !50  ; 2 uses
  switch i8 %i.ar, label %.thread.i [
    i8 45, label %bb.r
    i8 43, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !159
  %i.as = icmp ult ptr %i.aq, %i.v
  br i1 %i.as, label %bb.s, label %.critedge24

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %.5.i, i64 2
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !50
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.q
  %.8.i = phi ptr [ %i.aq, %bb.q ], [ %i.at, %bb.s ] ; 3 uses
  %.3.i = phi i8 [ %i.ar, %bb.q ], [ %i.au, %bb.s ]
  %2 = add i8 %.3.i, -48
  %i.av = icmp ult i8 %2, 10
  br i1 %i.av, label %.lr.ph49.i.preheader, label %.critedge24

.lr.ph49.i.preheader:                             ; preds = %.thread.i
  store ptr %.8.i, ptr %i.a, align 8, !tbaa !159
  %i.aw = icmp ult ptr %.8.i, %i.v
  br i1 %i.aw, label %.lr.ph176, label %.critedge24

.lr.ph49.i:                                       ; preds = %.lr.ph176
  %i.ax = getelementptr inbounds nuw i8, ptr %.948.i175, i64 1 ; 3 uses
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !159
  %i.ay = icmp ult ptr %i.ax, %i.v
  br i1 %i.ay, label %.lr.ph176, label %.critedge24, !llvm.loop !15

.lr.ph176:                                        ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i
  %.948.i175 = phi ptr [ %i.ax, %.lr.ph49.i ], [ %.8.i, %.lr.ph49.i.preheader ] ; 2 uses
  %3 = load i8, ptr %.948.i175, align 1, !tbaa !50
  %4 = add i8 %3, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %.lr.ph49.i, label %..critedge24.loopexit107_crit_edge, !llvm.loop !15

6:                                                ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %7 = load ptr, ptr %i.b, align 8                ; 11 uses
  %.not.i29.not = icmp eq ptr %i.j, %7
  br i1 %.not.i29.not, label %11, label %8

8:                                                ; preds = %6
  %9 = load i8, ptr %i.j, align 1, !tbaa !50
  %10 = icmp eq i8 %9, 73
  br i1 %10, label %bb.w, label %11

11:                                               ; preds = %8, %6
  store ptr %i.j, ptr %i.a, align 8, !tbaa !159
  %12 = icmp ult ptr %i.j, %7
  br i1 %12, label %.lr.ph118, label %.loopexit

13:                                               ; preds = %.lr.ph118
  store ptr %15, ptr %i.a, align 8, !tbaa !159
  %14 = icmp ult ptr %15, %7
  br i1 %14, label %.lr.ph118, label %.loopexit, !llvm.loop !13

.lr.ph118:                                        ; preds = %11, %13
  %.948.i117 = phi ptr [ %15, %13 ], [ %i.j, %11 ] ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %.948.i117, i64 1 ; 7 uses
  %16 = load i8, ptr %.948.i117, align 1, !tbaa !50 ; 3 uses
  %17 = add i8 %16, -48
  %i.az = icmp ult i8 %17, 10
  br i1 %i.az, label %13, label %18, !llvm.loop !13

18:                                               ; preds = %.lr.ph118
  %19 = icmp eq i8 %16, 46
  br i1 %19, label %20, label %.loopexit44.i31

20:                                               ; preds = %18
  store ptr %15, ptr %i.a, align 8, !tbaa !159
  %21 = icmp ult ptr %15, %7
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %.948.i117, i64 2 ; 4 uses
  %24 = load i8, ptr %15, align 1, !tbaa !50      ; 2 uses
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %bb.t, label %.loopexit44.i31

bb.t:                                             ; preds = %22
  store ptr %23, ptr %i.a, align 8, !tbaa !159
  %27 = icmp ult ptr %23, %7
  br i1 %27, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.v
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !159
  %28 = icmp ult ptr %i.ba, %7
  br i1 %28, label %bb.v, label %.loopexit, !llvm.loop !14

bb.v:                                             ; preds = %bb.t, %bb.u
  %.33646.i41167 = phi ptr [ %i.ba, %bb.u ], [ %23, %bb.t ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.33646.i41167, i64 1 ; 4 uses
  %i.bb = load i8, ptr %.33646.i41167, align 1, !tbaa !50 ; 2 uses
  %29 = add i8 %i.bb, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %bb.u, label %.loopexit44.i31, !llvm.loop !14

.loopexit44.i31:                                  ; preds = %bb.v, %22, %18
  %.5.i32 = phi ptr [ %15, %18 ], [ %23, %22 ], [ %i.ba, %bb.v ] ; 5 uses
  %.2.i33 = phi i8 [ %16, %18 ], [ %24, %22 ], [ %i.bb, %bb.v ]
  %31 = and i8 %.2.i33, -33
  %or.cond.i34 = icmp eq i8 %31, 69
  br i1 %or.cond.i34, label %32, label %.loopexit

32:                                               ; preds = %.loopexit44.i31
  store ptr %.5.i32, ptr %i.a, align 8, !tbaa !159
  %33 = icmp ult ptr %.5.i32, %7
  br i1 %33, label %34, label %.loopexit

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.5.i32, i64 1 ; 4 uses
  %36 = load i8, ptr %.5.i32, align 1, !tbaa !50  ; 2 uses
  switch i8 %36, label %.thread.i35 [
    i8 45, label %37
    i8 43, label %37
  ]

37:                                               ; preds = %34, %34
  store ptr %35, ptr %i.a, align 8, !tbaa !159
  %38 = icmp ult ptr %35, %7
  br i1 %38, label %39, label %.loopexit

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %.5.i32, i64 2
  %41 = load i8, ptr %35, align 1, !tbaa !50
  br label %.thread.i35

.thread.i35:                                      ; preds = %39, %34
  %.8.i36 = phi ptr [ %35, %34 ], [ %40, %39 ]    ; 3 uses
  %.3.i37 = phi i8 [ %36, %34 ], [ %41, %39 ]
  %42 = add i8 %.3.i37, -48
  %43 = icmp ult i8 %42, 10
  br i1 %43, label %.lr.ph49.i38.preheader, label %.loopexit

.lr.ph49.i38.preheader:                           ; preds = %.thread.i35
  store ptr %.8.i36, ptr %i.a, align 8, !tbaa !159
  %44 = icmp ult ptr %.8.i36, %7
  br i1 %44, label %.lr.ph170, label %.loopexit

.lr.ph49.i38:                                     ; preds = %.lr.ph170
  %45 = getelementptr inbounds nuw i8, ptr %.948.i39169, i64 1 ; 3 uses
  store ptr %45, ptr %i.a, align 8, !tbaa !159
  %46 = icmp ult ptr %45, %7
  br i1 %46, label %.lr.ph170, label %.loopexit, !llvm.loop !15

.lr.ph170:                                        ; preds = %.lr.ph49.i38.preheader, %.lr.ph49.i38
  %.948.i39169 = phi ptr [ %45, %.lr.ph49.i38 ], [ %.8.i36, %.lr.ph49.i38.preheader ] ; 2 uses
  %47 = load i8, ptr %.948.i39169, align 1, !tbaa !50
  %48 = add i8 %47, -48
  %49 = icmp ult i8 %48, 10
  br i1 %49, label %.lr.ph49.i38, label %..loopexit.loopexit_crit_edge, !llvm.loop !15

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph170
  br label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %13, %bb.u, %.lr.ph49.i38, %11, %bb.t, %.lr.ph49.i38.preheader, %..loopexit.loopexit_crit_edge, %.loopexit44.i31, %.thread.i35, %37, %32, %20
  store i32 6, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.w:                                             ; preds = %8
  %50 = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  store ptr %50, ptr %i.a, align 8, !tbaa !159
  store i32 12, ptr %1, align 8, !tbaa !170
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 275
  %52 = load i8, ptr %51, align 1, !tbaa !468, !range !80, !noundef !81
  %53 = trunc nuw i8 %52 to i1
  %i.bc = ptrtoint ptr %7 to i64
  %i.bd = ptrtoint ptr %50 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %54 = icmp sgt i64 %i.be, 6
  %or.cond.not = select i1 %53, i1 %54, i1 false
  br i1 %or.cond.not, label %.preheader.i.preheader, label %.critedge

.preheader.i.preheader:                           ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %.not10.i = icmp eq i8 %i.bg, 121
  br i1 %.not10.i, label %.preheader.i.1, label %.critedge

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50
  %.not10.i.1 = icmp eq i8 %i.bi, 116
  br i1 %.not10.i.1, label %.preheader.i.2, label %.critedge

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !50
  %.not10.i.2 = icmp eq i8 %i.bk, 105
  br i1 %.not10.i.2, label %.preheader.i.3, label %.critedge

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !50
  %.not10.i.3 = icmp eq i8 %i.bm, 110
  br i1 %.not10.i.3, label %.preheader.i.4, label %.critedge

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !50
  %.not10.i.4 = icmp eq i8 %i.bo, 105
  br i1 %.not10.i.4, label %.preheader.i.5, label %.critedge

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !50
  %.not10.i.5 = icmp eq i8 %i.bq, 102
  br i1 %.not10.i.5, label %.preheader.i.6, label %.critedge

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %i.br = load i8, ptr %50, align 1, !tbaa !50
  %.not10.i.6 = icmp eq i8 %i.br, 110
  br i1 %.not10.i.6, label %.preheader.i.7, label %.critedge

.preheader.i.7:                                   ; preds = %.preheader.i.6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.x:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 7, ptr %1, align 8, !tbaa !170
  %i.bt = ptrtoint ptr %i.c to i64
  %i.bu = ptrtoint ptr %i.j to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp slt i64 %i.bv, 3
  br i1 %i.bw, label %.critedge, label %.preheader.i30.preheader

.preheader.i30.preheader:                         ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50
  %.not10.i33 = icmp eq i8 %i.by, 101
  br i1 %.not10.i33, label %.preheader.i30.1, label %.critedge

.preheader.i30.1:                                 ; preds = %.preheader.i30.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !50
  %.not10.i33.1 = icmp eq i8 %i.ca, 117
  br i1 %.not10.i33.1, label %.preheader.i30.2, label %.critedge

.preheader.i30.2:                                 ; preds = %.preheader.i30.1
  %i.cb = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i33.2 = icmp eq i8 %i.cb, 114
  br i1 %.not10.i33.2, label %.preheader.i30.3, label %.critedge

.preheader.i30.3:                                 ; preds = %.preheader.i30.2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.y:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 8, ptr %1, align 8, !tbaa !170
  %i.cd = ptrtoint ptr %i.c to i64
  %i.ce = ptrtoint ptr %i.j to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp slt i64 %i.cf, 4
  br i1 %i.cg, label %.critedge, label %.preheader.i36.preheader

.preheader.i36.preheader:                         ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50
  %.not10.i39 = icmp eq i8 %i.ci, 101
  br i1 %.not10.i39, label %.preheader.i36.1, label %.critedge

.preheader.i36.1:                                 ; preds = %.preheader.i36.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !50
  %.not10.i39.1 = icmp eq i8 %i.ck, 115
  br i1 %.not10.i39.1, label %.preheader.i36.2, label %.critedge

.preheader.i36.2:                                 ; preds = %.preheader.i36.1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !50
  %.not10.i39.2 = icmp eq i8 %i.cm, 108
  br i1 %.not10.i39.2, label %.preheader.i36.3, label %.critedge

.preheader.i36.3:                                 ; preds = %.preheader.i36.2
  %i.cn = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i39.3 = icmp eq i8 %i.cn, 97
  br i1 %.not10.i39.3, label %.preheader.i36.4, label %.critedge

.preheader.i36.4:                                 ; preds = %.preheader.i36.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store ptr %i.co, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.z:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 9, ptr %1, align 8, !tbaa !170
  %i.cp = ptrtoint ptr %i.c to i64
  %i.cq = ptrtoint ptr %i.j to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp slt i64 %i.cr, 3
  br i1 %i.cs, label %.critedge, label %.preheader.i42.preheader

.preheader.i42.preheader:                         ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !50
  %.not10.i45 = icmp eq i8 %i.cu, 108
  br i1 %.not10.i45, label %.preheader.i42.1, label %.critedge

.preheader.i42.1:                                 ; preds = %.preheader.i42.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !50
  %.not10.i45.1 = icmp eq i8 %i.cw, 108
  br i1 %.not10.i45.1, label %.preheader.i42.2, label %.critedge

.preheader.i42.2:                                 ; preds = %.preheader.i42.1
  %i.cx = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i45.2 = icmp eq i8 %i.cx, 117
  br i1 %.not10.i45.2, label %.preheader.i42.3, label %.critedge

.preheader.i42.3:                                 ; preds = %.preheader.i42.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.aa:                                            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !468, !range !80, !noundef !81
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  store i32 10, ptr %1, align 8, !tbaa !170
  %i.dc = ptrtoint ptr %i.c to i64
  %i.dd = ptrtoint ptr %i.j to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp slt i64 %i.de, 2
  br i1 %i.df, label %.critedge, label %.preheader.i48.preheader

.preheader.i48.preheader:                         ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !50
  %.not10.i51 = icmp eq i8 %i.dh, 78
  br i1 %.not10.i51, label %.preheader.i48.1, label %.critedge

.preheader.i48.1:                                 ; preds = %.preheader.i48.preheader
  %i.di = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i51.1 = icmp eq i8 %i.di, 97
  br i1 %.not10.i51.1, label %.preheader.i48.2, label %.critedge

.preheader.i48.2:                                 ; preds = %.preheader.i48.1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.ac:                                            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !468, !range !80, !noundef !81
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  store i32 11, ptr %1, align 8, !tbaa !170
  %i.dn = ptrtoint ptr %i.c to i64
  %i.do = ptrtoint ptr %i.j to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp slt i64 %i.dp, 7
  br i1 %i.dq, label %.critedge, label %.preheader.i54.preheader

.preheader.i54.preheader:                         ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !50
  %.not10.i57 = icmp eq i8 %i.ds, 121
  br i1 %.not10.i57, label %.preheader.i54.1, label %.critedge

.preheader.i54.1:                                 ; preds = %.preheader.i54.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !50
  %.not10.i57.1 = icmp eq i8 %i.du, 116
  br i1 %.not10.i57.1, label %.preheader.i54.2, label %.critedge

.preheader.i54.2:                                 ; preds = %.preheader.i54.1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !50
  %.not10.i57.2 = icmp eq i8 %i.dw, 105
  br i1 %.not10.i57.2, label %.preheader.i54.3, label %.critedge

.preheader.i54.3:                                 ; preds = %.preheader.i54.2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !50
  %.not10.i57.3 = icmp eq i8 %i.dy, 110
  br i1 %.not10.i57.3, label %.preheader.i54.4, label %.critedge

.preheader.i54.4:                                 ; preds = %.preheader.i54.3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !50
  %.not10.i57.4 = icmp eq i8 %i.ea, 105
  br i1 %.not10.i57.4, label %.preheader.i54.5, label %.critedge

.preheader.i54.5:                                 ; preds = %.preheader.i54.4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !50
  %.not10.i57.5 = icmp eq i8 %i.ec, 102
  br i1 %.not10.i57.5, label %.preheader.i54.6, label %.critedge

.preheader.i54.6:                                 ; preds = %.preheader.i54.5
  %i.ed = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i57.6 = icmp eq i8 %i.ed, 110
  br i1 %.not10.i57.6, label %.preheader.i54.7, label %.critedge

.preheader.i54.7:                                 ; preds = %.preheader.i54.6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ee, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.ae:                                            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 13, ptr %1, align 8, !tbaa !170
  br label %.critedge24

bb.af:                                            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 14, ptr %1, align 8, !tbaa !170
  br label %.critedge24

_ZN4Json9OurReader11getNextCharEv.exit.thread:    ; preds = %_ZN4Json9OurReader10skipSpacesEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit
  store i32 0, ptr %1, align 8, !tbaa !170
  br label %.critedge24

_ZN4Json9OurReader10readStringEv.exit:            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit, %bb.j
  store i32 15, ptr %1, align 8, !tbaa !170
  %i.ef = tail call noundef zeroext i1 @_ZN4Json9OurReader11readCommentEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br i1 %i.ef, label %.critedge24, label %.critedge

.critedge:                                        ; preds = %_ZN4Json9OurReader11getNextCharEv.exit5.i, %.preheader.i54.preheader, %.preheader.i54.1, %.preheader.i54.2, %.preheader.i54.3, %.preheader.i54.4, %.preheader.i54.5, %.preheader.i54.6, %.preheader.i48.preheader, %.preheader.i48.1, %.preheader.i42.preheader, %.preheader.i42.1, %.preheader.i42.2, %.preheader.i36.preheader, %.preheader.i36.1, %.preheader.i36.2, %.preheader.i36.3, %.preheader.i30.preheader, %.preheader.i30.1, %.preheader.i30.2, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.5, %.preheader.i.6, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.g, %.split, %bb.ac, %bb.aa, %bb.w, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader10readStringEv.exit
  store i32 16, ptr %1, align 8, !tbaa !170
  br label %.critedge24

..critedge24.loopexit107_crit_edge:               ; preds = %.lr.ph176
  br label %.critedge24, !llvm.loop !15

.critedge24:                                      ; preds = %bb.l, %.lr.ph.i28, %.lr.ph49.i, %_ZN4Json9OurReader11getNextCharEv.exit.i, %bb.k, %.lr.ph.i28.preheader, %.lr.ph49.i.preheader, %..critedge24.loopexit107_crit_edge, %.preheader.i36.4, %.preheader.i54.7, %.preheader.i30.3, %.preheader.i42.3, %.preheader.i.7, %.preheader.i48.2, %.split, %.thread.i, %bb.r, %bb.p, %.loopexit44.i, %bb.n, %bb.ae, %bb.c, %bb.d, %bb.e, %bb.f, %.loopexit, %_ZN4Json9OurReader11getNextCharEv.exit.thread, %bb.af, %.critedge, %_ZN4Json9OurReader10readStringEv.exit
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !172
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Json9OurReader10skipSpacesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.c
  br i1 %.not15, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.e, label %.thread [
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !159
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i8 @_ZN4Json9OurReader11getNextCharEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !159
  %i.g = load i8, ptr %i.b, align 1, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader10readStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %_ZN4Json9OurReader11getNextCharEv.exit5
  %i.d = phi ptr [ %i.i, %_ZN4Json9OurReader11getNextCharEv.exit5 ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.f, label %_ZN4Json9OurReader11getNextCharEv.exit5 [
    i8 92, label %bb.b
    i8 34, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit
  ]

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_ZN4Json9OurReader11getNextCharEv.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !159
  br label %_ZN4Json9OurReader11getNextCharEv.exit5

_ZN4Json9OurReader11getNextCharEv.exit5:          ; preds = %bb.c, %bb.b, %_ZN4Json9OurReader11getNextCharEv.exit
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %_ZN4Json9OurReader11getNextCharEv.exit ] ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit, label %_ZN4Json9OurReader11getNextCharEv.exit, !llvm.loop !12

_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit: ; preds = %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit5
  %i.j = icmp eq i8 %i.f, 34
  br label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge

_ZN4Json9OurReader11getNextCharEv.exit._crit_edge: ; preds = %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.j, %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader21readStringSingleQuoteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %_ZN4Json9OurReader11getNextCharEv.exit5
  %i.d = phi ptr [ %i.i, %_ZN4Json9OurReader11getNextCharEv.exit5 ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.f, label %_ZN4Json9OurReader11getNextCharEv.exit5 [
    i8 92, label %bb.b
    i8 39, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit
  ]

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_ZN4Json9OurReader11getNextCharEv.exit5, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !159
  br label %_ZN4Json9OurReader11getNextCharEv.exit5

_ZN4Json9OurReader11getNextCharEv.exit5:          ; preds = %bb.c, %bb.b, %_ZN4Json9OurReader11getNextCharEv.exit
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %_ZN4Json9OurReader11getNextCharEv.exit ] ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit, label %_ZN4Json9OurReader11getNextCharEv.exit, !llvm.loop !469

_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit: ; preds = %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader11getNextCharEv.exit5
  %i.j = icmp eq i8 %i.f, 39
  br label %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge

_ZN4Json9OurReader11getNextCharEv.exit._crit_edge: ; preds = %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.j, %_ZN4Json9OurReader11getNextCharEv.exit._crit_edge.loopexit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader11readCommentEv(ptr noundef nonnull align 8 dereferenceable(281) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 14 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 8 uses
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a
  %.ptr71 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %.ptr71, ptr %i.a, align 8, !tbaa !159
  %i.g = load i8, ptr %i.b, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.g, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31 [
    i8 42, label %bb.b
    i8 47, label %.preheader
  ]

.preheader:                                       ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.ptr6779 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.i1580 = icmp eq ptr %.ptr6779, %i.e
  br i1 %.not.i1580, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.i16

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not6.i = icmp eq ptr %.ptr71, %i.e
  br i1 %.not6.i, label %.thread.i, label %_ZN4Json9OurReader11getNextCharEv.exit.i

_ZN4Json9OurReader11getNextCharEv.exit.i:         ; preds = %bb.b, %_ZN4Json9OurReader11getNextCharEv.exit.i.backedge
  %.idx61 = phi i64 [ %.add64, %_ZN4Json9OurReader11getNextCharEv.exit.i.backedge ], [ 1, %bb.b ] ; 2 uses
  %.ptr72 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx61
  %.add64 = add nuw nsw i64 %.idx61, 1            ; 4 uses
  %.ptr73 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add64 ; 4 uses
  store ptr %.ptr73, ptr %i.a, align 8, !tbaa !159
  %i.h = load i8, ptr %.ptr72, align 1, !tbaa !50
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit.i
  %i.j = load i8, ptr %.ptr73, align 1, !tbaa !50
  %i.k = icmp eq i8 %i.j, 47
  %.not.i = icmp eq ptr %.ptr73, %i.e
  %or.cond.i = select i1 %i.k, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN4Json9OurReader11getNextCharEv.exit.i.backedge

bb.d:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit.i
  %.not.old.i = icmp eq ptr %.ptr73, %i.e
  br i1 %.not.old.i, label %.thread.i, label %_ZN4Json9OurReader11getNextCharEv.exit.i.backedge

_ZN4Json9OurReader11getNextCharEv.exit.i.backedge: ; preds = %bb.d, %bb.c
  br label %_ZN4Json9OurReader11getNextCharEv.exit.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %.idx58 = phi i64 [ 1, %bb.b ], [ %.add64, %bb.c ], [ %.add64, %bb.d ] ; 2 uses
  %.ptr65 = getelementptr inbounds i8, ptr %i.b, i64 %.idx58 ; 2 uses
  %i.l = icmp eq ptr %.ptr65, %i.e
end_hunk_2
begin_hunk_3_@_ZN4Json9OurReader11readCommentEv:bb.a
  %.idx5981 = phi i64 [ %.add62, %bb.e ], [ 1, %.preheader ] ; 2 uses
  %.add62 = add nuw nsw i64 %.idx5981, 1          ; 8 uses
  %.ptr68 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62
  store ptr %.ptr68, ptr %i.a, align 8, !tbaa !159
  %i.m = load i8, ptr %.ptr6782, align 1, !tbaa !50
  switch i8 %i.m, label %bb.e [
    i8 10, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit.i16
  %.ptr68.le = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62 ; 2 uses
  %.not5.i = icmp eq ptr %.ptr68.le, %i.e
  br i1 %.not5.i, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i8, ptr %.ptr68.le, align 1, !tbaa !50
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %_ZN4Json9OurReader11getNextCharEv.exit7.i, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread

_ZN4Json9OurReader11getNextCharEv.exit7.i:        ; preds = %bb.g
  %.add63 = add nuw nsw i64 %.idx5981, 2          ; 2 uses
  %.ptr69 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add63
  store ptr %.ptr69, ptr %i.a, align 8, !tbaa !159
  br label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread

_ZN4Json9OurReader17readCStyleCommentEv.exit:     ; preds = %.thread.i
  %.add = add nsw i64 %.idx58, 1                  ; 2 uses
  %.ptr66 = getelementptr inbounds i8, ptr %i.b, i64 %.add
  store ptr %.ptr66, ptr %i.a, align 8, !tbaa !159
  %i.p = load i8, ptr %.ptr65, align 1, !tbaa !50
  %i.q = icmp eq i8 %i.p, 47
  br i1 %i.q, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31

_ZN4Json9OurReader17readCStyleCommentEv.exit.thread: ; preds = %bb.e, %_ZN4Json9OurReader11getNextCharEv.exit.i16, %.preheader, %_ZN4Json9OurReader11getNextCharEv.exit7.i, %bb.g, %bb.f, %_ZN4Json9OurReader17readCStyleCommentEv.exit
  %.idx = phi i64 [ %.add, %_ZN4Json9OurReader17readCStyleCommentEv.exit ], [ %.add63, %_ZN4Json9OurReader11getNextCharEv.exit7.i ], [ %.add62, %bb.g ], [ %.add62, %bb.f ], [ 1, %.preheader ], [ %.add62, %_ZN4Json9OurReader11getNextCharEv.exit.i16 ], [ %.add62, %bb.e ] ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.s = load i8, ptr %i.r, align 8, !tbaa !155, !range !80, !noundef !81
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31

bb.h:                                             ; preds = %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173  ; 3 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %_ZN4JsonL15containsNewLineEPKcS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp ult ptr %i.v, %i.c
  br i1 %i.w, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.068.i = phi ptr [ %i.y, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.x = load i8, ptr %.068.i, align 1, !tbaa !50
  switch i8 %i.x, label %bb.j [
    i8 10, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
    i8 13, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.068.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.y, %i.c
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.loopexit:                                        ; preds = %bb.j, %bb.i
  %.not13 = icmp eq i8 %i.g, 42
  %i.z = icmp sgt i64 %.idx, -1
  %or.cond = select i1 %.not13, i1 %i.z, i1 false
  br i1 %or.cond, label %.lr.ph.i19, label %_ZN4JsonL15containsNewLineEPKcS1_.exit

.lr.ph.i19:                                       ; preds = %.loopexit, %bb.k
  %.068.i20 = phi ptr [ %i.ab, %bb.k ], [ %i.c, %.loopexit ] ; 2 uses
  %i.aa = load i8, ptr %.068.i20, align 1, !tbaa !50
  switch i8 %i.aa, label %bb.k [
    i8 10, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
    i8 13, label %_ZN4JsonL15containsNewLineEPKcS1_.exit
  ]

bb.k:                                             ; preds = %.lr.ph.i19
  %i.ab = getelementptr inbounds nuw i8, ptr %.068.i20, i64 1 ; 2 uses
  %exitcond.not.i21 = icmp eq ptr %i.ab, %.ptr
  br i1 %exitcond.not.i21, label %_ZN4JsonL15containsNewLineEPKcS1_.exit, label %.lr.ph.i19, !llvm.loop !7

_ZN4JsonL15containsNewLineEPKcS1_.exit:           ; preds = %.lr.ph.i, %.lr.ph.i, %bb.k, %.lr.ph.i19, %.lr.ph.i19, %.loopexit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %.loopexit ], [ 0, %.lr.ph.i19 ], [ 1, %bb.k ], [ 0, %.lr.ph.i19 ], [ 0, %.lr.ph.i ], [ 0, %.lr.ph.i ]
  tail call void @_ZN4Json9OurReader10addCommentEPKcS2_NS_16CommentPlacementE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %.ptr, i32 noundef %.0)
  br label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31

_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31: ; preds = %bb.a, %_ZN4Json9OurReader11getNextCharEv.exit, %.thread.i, %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread, %_ZN4JsonL15containsNewLineEPKcS1_.exit, %_ZN4Json9OurReader17readCStyleCommentEv.exit
  %.0928 = phi i1 [ true, %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread ], [ true, %_ZN4JsonL15containsNewLineEPKcS1_.exit ], [ false, %_ZN4Json9OurReader17readCStyleCommentEv.exit ], [ false, %.thread.i ], [ false, %_ZN4Json9OurReader11getNextCharEv.exit ], [ false, %bb.a ]
  ret i1 %.0928
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader10readNumberEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %.not = icmp ne ptr %i.b, %i.d
  %or.cond42.not = select i1 %1, i1 %.not, i1 false
  br i1 %or.cond42.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !50
  %i.f = icmp eq i8 %i.e, 73
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.g, ptr %i.a, align 8, !tbaa !159
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  store ptr %i.b, ptr %i.a, align 8, !tbaa !159
  %i.h = icmp ult ptr %i.b, %i.d
  br i1 %i.h, label %.lr.ph83, label %.loopexit

bb.e:                                             ; preds = %.lr.ph83
  store ptr %i.j, ptr %i.a, align 8, !tbaa !159
  %i.i = icmp ult ptr %i.j, %i.d
  br i1 %i.i, label %.lr.ph83, label %.loopexit, !llvm.loop !13

.lr.ph83:                                         ; preds = %bb.d, %bb.e
  %.0334582 = phi ptr [ %i.j, %bb.e ], [ %i.b, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0334582, i64 1 ; 7 uses
  %i.k = load i8, ptr %.0334582, align 1, !tbaa !50 ; 3 uses
  %i.l = add i8 %i.k, -48
  %i.m = icmp ult i8 %i.l, 10
  br i1 %i.m, label %bb.e, label %bb.f, !llvm.loop !13

bb.f:                                             ; preds = %.lr.ph83
  %i.n = icmp eq i8 %i.k, 46
  br i1 %i.n, label %bb.g, label %.loopexit44

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %i.a, align 8, !tbaa !159
  %i.o = icmp ult ptr %i.j, %i.d
  br i1 %i.o, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.0334582, i64 2 ; 4 uses
  %i.q = load i8, ptr %i.j, align 1, !tbaa !50    ; 2 uses
  %i.r = add i8 %i.q, -48
  %i.s = icmp ult i8 %i.r, 10
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit44

.lr.ph.preheader:                                 ; preds = %bb.h
  store ptr %i.p, ptr %i.a, align 8, !tbaa !159
  %i.t = icmp ult ptr %i.p, %i.d
  br i1 %i.t, label %.lr.ph85, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph85
  store ptr %i.v, ptr %i.a, align 8, !tbaa !159
  %i.u = icmp ult ptr %i.v, %i.d
  br i1 %i.u, label %.lr.ph85, label %.loopexit, !llvm.loop !14

.lr.ph85:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.3364684 = phi ptr [ %i.v, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.3364684, i64 1 ; 4 uses
  %i.w = load i8, ptr %.3364684, align 1, !tbaa !50 ; 2 uses
  %i.x = add i8 %i.w, -48
  %i.y = icmp ult i8 %i.x, 10
  br i1 %i.y, label %.lr.ph, label %.loopexit44, !llvm.loop !14

.loopexit44:                                      ; preds = %.lr.ph85, %bb.h, %bb.f
  %.5 = phi ptr [ %i.j, %bb.f ], [ %i.p, %bb.h ], [ %i.v, %.lr.ph85 ] ; 5 uses
  %.2 = phi i8 [ %i.k, %bb.f ], [ %i.q, %bb.h ], [ %i.w, %.lr.ph85 ]
  %i.z = and i8 %.2, -33
  %or.cond = icmp eq i8 %i.z, 69
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.loopexit44
  store ptr %.5, ptr %i.a, align 8, !tbaa !159
  %i.aa = icmp ult ptr %.5, %i.d
  br i1 %i.aa, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 4 uses
  %i.ac = load i8, ptr %.5, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.ac, label %.thread [
    i8 45, label %bb.k
    i8 43, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !159
  %i.ad = icmp ult ptr %i.ab, %i.d
  br i1 %i.ad, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.j
  %.8 = phi ptr [ %i.ab, %bb.j ], [ %i.ae, %bb.l ] ; 3 uses
  %.3 = phi i8 [ %i.ac, %bb.j ], [ %i.af, %bb.l ]
  %2 = add i8 %.3, -48
  %i.ag = icmp ult i8 %2, 10
  br i1 %i.ag, label %.lr.ph49.preheader, label %.loopexit

.lr.ph49.preheader:                               ; preds = %.thread
  store ptr %.8, ptr %i.a, align 8, !tbaa !159
  %i.ah = icmp ult ptr %.8, %i.d
  br i1 %i.ah, label %.lr.ph87, label %.loopexit

.lr.ph49:                                         ; preds = %.lr.ph87
  %i.ai = getelementptr inbounds nuw i8, ptr %.94886, i64 1 ; 3 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !159
  %i.aj = icmp ult ptr %i.ai, %i.d
  br i1 %i.aj, label %.lr.ph87, label %.loopexit, !llvm.loop !15

.lr.ph87:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %.94886 = phi ptr [ %i.ai, %.lr.ph49 ], [ %.8, %.lr.ph49.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.94886, align 1, !tbaa !50
  %3 = add i8 %i.ak, -48
  %i.al = icmp ult i8 %3, 10
  br i1 %i.al, label %.lr.ph49, label %..loopexit.loopexit_crit_edge, !llvm.loop !15

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph87
  br label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %.lr.ph49, %bb.d, %.lr.ph.preheader, %.lr.ph49.preheader, %..loopexit.loopexit_crit_edge, %bb.i, %bb.k, %bb.g, %.thread, %.loopexit44, %bb.c
  %.038 = phi i1 [ false, %bb.c ], [ true, %.loopexit44 ], [ true, %.thread ], [ true, %.lr.ph.preheader ], [ true, %bb.k ], [ true, %bb.i ], [ true, %.lr.ph49.preheader ], [ true, %bb.g ], [ true, %bb.d ], [ true, %..loopexit.loopexit_crit_edge ], [ true, %.lr.ph ], [ true, %.lr.ph49 ], [ true, %bb.e ]
  ret i1 %.038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader5matchEPKci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sext i32 %2 to i64                       ; 3 uses
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.k = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.k, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !470

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv12 = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.h, %.preheader.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv12, -1 ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next
  %i.o = load i8, ptr %i.n, align 1, !tbaa !50
  %.not10 = icmp eq i8 %i.m, %i.o
  br i1 %.not10, label %.preheader, label %.loopexit, !llvm.loop !470

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  store ptr %i.p, ptr %i.c, align 8, !tbaa !159
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader._crit_edge, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader._crit_edge ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader17readCStyleCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 4 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 3 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %_ZN4Json9OurReader11getNextCharEv.exit.backedge
  %i.d = phi ptr [ %i.e, %_ZN4Json9OurReader11getNextCharEv.exit.backedge ], [ %.promoted, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  %i.g = icmp eq i8 %i.f, 42
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.h = load i8, ptr %i.e, align 1, !tbaa !50
  %i.i = icmp eq i8 %i.h, 47
  %.not = icmp eq ptr %i.e, %i.c
  %or.cond = select i1 %i.i, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.backedge

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not.old = icmp eq ptr %i.e, %i.c
  br i1 %.not.old, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.backedge

_ZN4Json9OurReader11getNextCharEv.exit.backedge:  ; preds = %bb.c, %bb.b
  br label %_ZN4Json9OurReader11getNextCharEv.exit

.thread:                                          ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi ptr [ %.promoted, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZN4Json9OurReader11getNextCharEv.exit3, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %i.a, align 8, !tbaa !159
  %i.m = load i8, ptr %i.j, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 47
  br label %_ZN4Json9OurReader11getNextCharEv.exit3

_ZN4Json9OurReader11getNextCharEv.exit3:          ; preds = %.thread, %bb.d
  %.0.i2 = phi i1 [ %i.n, %bb.d ], [ false, %.thread ]
  ret i1 %.0.i2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader19readCppStyleCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(281) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %.not18 = icmp eq ptr %.promoted, %i.c
  br i1 %.not18, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

bb.b:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %.thread, label %_ZN4Json9OurReader11getNextCharEv.exit

_ZN4Json9OurReader11getNextCharEv.exit:           ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.e, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 5 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !159
  %i.f = load i8, ptr %i.d, align 1, !tbaa !50
  switch i8 %i.f, label %bb.b [
    i8 10, label %.thread
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %.not5 = icmp eq ptr %i.e, %i.c
  br i1 %.not5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.e, align 1, !tbaa !50
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_ZN4Json9OurReader11getNextCharEv.exit7, label %.thread

_ZN4Json9OurReader11getNextCharEv.exit7:          ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !159
  br label %.thread

.thread:                                          ; preds = %bb.b, %_ZN4Json9OurReader11getNextCharEv.exit, %bb.a, %bb.c, %bb.d, %_ZN4Json9OurReader11getNextCharEv.exit7
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json9OurReader10addCommentEPKcS2_NS_16CommentPlacementE(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call fastcc void @_ZN4JsonL12normalizeEOLB5cxx11EPKcS1_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %2)
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174
  %i.d = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #43
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store i64 3, ptr %i.i, align 8
  %.ptr13.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr13.i.i, i8 0, i64 24, i1 false), !tbaa !110
  store ptr %.ptr13.i.i, ptr %i.g, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b
  %i.j = phi ptr [ %.ptr13.i.i, %.noexc ], [ %i.h, %bb.b ]
  %.not14.i.i = icmp eq i64 %i.f, 0
  br i1 %.not14.i.i, label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i64 %i.f, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !50
  %i.n = icmp eq i8 %i.m, 10
  %spec.select.i.i = select i1 %i.n, i64 %i.k, i64 %i.f
  br label %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i

_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN4Json5Value11CommentInfo10setCommentEPKcm(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef readonly %i.d, i64 noundef %.0.i.i)
          to label %_ZN4Json5Value10setCommentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16CommentPlacementE.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h, %_ZN4Json5Value10setCommentEPKcmNS_16CommentPlacementE.exit.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_3
