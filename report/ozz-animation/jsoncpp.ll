Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4Json6Reader9readTokenERNS0_5TokenE:bb.a
.preheader.i.preheader:                           ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !50
  %.not10.i = icmp eq i8 %i.bg, 101
  br i1 %.not10.i, label %.preheader.i.1, label %.critedge19

.preheader.i.1:                                   ; preds = %.preheader.i.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50
  %.not10.i.1 = icmp eq i8 %i.bi, 117
  br i1 %.not10.i.1, label %.preheader.i.2, label %.critedge19

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.bj = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i.2 = icmp eq i8 %i.bj, 114
  br i1 %.not10.i.2, label %.preheader.i.3, label %.critedge19

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !84
  br label %.critedge

bb.t:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 8, ptr %1, align 8, !tbaa !104
  %i.bl = ptrtoint ptr %i.c to i64
  %i.bm = ptrtoint ptr %i.j to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp slt i64 %i.bn, 4
  br i1 %i.bo, label %.critedge19, label %.preheader.i24.preheader

.preheader.i24.preheader:                         ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !50
  %.not10.i27 = icmp eq i8 %i.bq, 101
  br i1 %.not10.i27, label %.preheader.i24.1, label %.critedge19

.preheader.i24.1:                                 ; preds = %.preheader.i24.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !50
  %.not10.i27.1 = icmp eq i8 %i.bs, 115
  br i1 %.not10.i27.1, label %.preheader.i24.2, label %.critedge19

.preheader.i24.2:                                 ; preds = %.preheader.i24.1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !50
  %.not10.i27.2 = icmp eq i8 %i.bu, 108
  br i1 %.not10.i27.2, label %.preheader.i24.3, label %.critedge19

.preheader.i24.3:                                 ; preds = %.preheader.i24.2
  %i.bv = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i27.3 = icmp eq i8 %i.bv, 97
  br i1 %.not10.i27.3, label %.preheader.i24.4, label %.critedge19

.preheader.i24.4:                                 ; preds = %.preheader.i24.3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !84
  br label %.critedge

bb.u:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  store i32 9, ptr %1, align 8, !tbaa !104
  %i.bx = ptrtoint ptr %i.c to i64
  %i.by = ptrtoint ptr %i.j to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp slt i64 %i.bz, 3
  br i1 %i.ca, label %.critedge19, label %.preheader.i30.preheader

.preheader.i30.preheader:                         ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !50
  %.not10.i33 = icmp eq i8 %i.cc, 108
  br i1 %.not10.i33, label %.preheader.i30.1, label %.critedge19

.preheader.i30.1:                                 ; preds = %.preheader.i30.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !50
  %.not10.i33.1 = icmp eq i8 %i.ce, 108
  br i1 %.not10.i33.1, label %.preheader.i30.2, label %.critedge19

.preheader.i30.2:                                 ; preds = %.preheader.i30.1
  %i.cf = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i33.2 = icmp eq i8 %i.cf, 117
  br i1 %.not10.i33.2, label %.preheader.i30.3, label %.critedge19

.preheader.i30.3:                                 ; preds = %.preheader.i30.2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !84
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
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !112
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
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !84
  br label %_ZN4Json6Reader11getNextCharEv.exit5

_ZN4Json6Reader11getNextCharEv.exit5:             ; preds = %bb.c, %bb.b, %_ZN4Json6Reader11getNextCharEv.exit
  %i.i = phi ptr [ %i.h, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %_ZN4Json6Reader11getNextCharEv.exit ] ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %_ZN4Json6Reader11getNextCharEv.exit._crit_edge.loopexit, label %_ZN4Json6Reader11getNextCharEv.exit, !llvm.loop !3

_ZN4Json6Reader11getNextCharEv.exit._crit_edge.loopexit: ; preds = %_ZN4Json6Reader11getNextCharEv.exit, %_ZN4Json6Reader11getNextCharEv.exit5
  %.lcssa = phi i8 [ 34, %_ZN4Json6Reader11getNextCharEv.exit ], [ %i.f, %_ZN4Json6Reader11getNextCharEv.exit5 ]
  %i.j = icmp eq i8 %.lcssa, 34
  br label %_ZN4Json6Reader11getNextCharEv.exit._crit_edge

_ZN4Json6Reader11getNextCharEv.exit._crit_edge:   ; preds = %_ZN4Json6Reader11getNextCharEv.exit._crit_edge.loopexit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.j, %_ZN4Json6Reader11getNextCharEv.exit._crit_edge.loopexit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader11readCommentEv(ptr noundef nonnull align 8 dereferenceable(267) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 14 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 8 uses
  %i.f = icmp eq ptr %i.b, %i.e
  br i1 %i.f, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31, label %_ZN4Json6Reader11getNextCharEv.exit

_ZN4Json6Reader11getNextCharEv.exit:              ; preds = %bb.a
  %.ptr71 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %.ptr71, ptr %i.a, align 8, !tbaa !84
  %i.g = load i8, ptr %i.b, align 1, !tbaa !50    ; 2 uses
  switch i8 %i.g, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread31 [
    i8 42, label %bb.b
    i8 47, label %.preheader
  ]

.preheader:                                       ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %.ptr6779 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.i1580 = icmp eq ptr %.ptr6779, %i.e
  br i1 %.not.i1580, label %_ZN4Json6Reader17readCStyleCommentEv.exit.thread, label %_ZN4Json6Reader11getNextCharEv.exit.i16

bb.b:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit
  %.not6.i = icmp eq ptr %.ptr71, %i.e
  br i1 %.not6.i, label %.thread.i, label %_ZN4Json6Reader11getNextCharEv.exit.i

_ZN4Json6Reader11getNextCharEv.exit.i:            ; preds = %bb.b, %_ZN4Json6Reader11getNextCharEv.exit.i.backedge
  %.idx61 = phi i64 [ %.add64, %_ZN4Json6Reader11getNextCharEv.exit.i.backedge ], [ 1, %bb.b ] ; 2 uses
  %.ptr72 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx61
  %.add64 = add nuw nsw i64 %.idx61, 1            ; 4 uses
  %.ptr73 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add64 ; 4 uses
  store ptr %.ptr73, ptr %i.a, align 8, !tbaa !84
  %i.h = load i8, ptr %.ptr72, align 1, !tbaa !50
  %i.i = icmp eq i8 %i.h, 42
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit.i
  %i.j = load i8, ptr %.ptr73, align 1, !tbaa !50
  %i.k = icmp eq i8 %i.j, 47
  %.not.i = icmp eq ptr %.ptr73, %i.e
  %or.cond.i = select i1 %i.k, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN4Json6Reader11getNextCharEv.exit.i.backedge

bb.d:                                             ; preds = %_ZN4Json6Reader11getNextCharEv.exit.i
  %.not.old.i = icmp eq ptr %.ptr73, %i.e
  br i1 %.not.old.i, label %.thread.i, label %_ZN4Json6Reader11getNextCharEv.exit.i.backedge

_ZN4Json6Reader11getNextCharEv.exit.i.backedge:   ; preds = %bb.d, %bb.c
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

end_hunk_0
begin_hunk_1_@_ZN4JsonL15codePointToUTF8B5cxx11Ej:bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !49
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.b
  %i.d = trunc nuw nsw i32 %1 to i8
  br label %.sink.split

bb.c:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %1, 2048
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 2, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit16 unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit16: ; preds = %bb.e
  %i.k = trunc i32 %1 to i8
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = load ptr, ptr %0, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.m, ptr %i.o, align 1, !tbaa !50
  %i.p = lshr i32 %1, 6
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -64
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.s = icmp ult i32 %1, 65536
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 3, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit17 unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit17: ; preds = %bb.g
  %i.t = trunc i32 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = load ptr, ptr %0, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.v, ptr %i.x, align 1, !tbaa !50
  %i.y = lshr i32 %1, 6
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = load ptr, ptr %0, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !50
  %i.ae = lshr i32 %1, 12
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = or disjoint i8 %i.af, -32
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ult i32 %1, 1114112
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 4, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit18 unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit18: ; preds = %bb.i
  %i.ai = trunc i32 %1 to i8
  %i.aj = and i8 %i.ai, 63
  %i.ak = or disjoint i8 %i.aj, -128
  %i.al = load ptr, ptr %0, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !50
  %i.an = lshr i32 %1, 6
  %i.ao = trunc i32 %i.an to i8
  %i.ap = and i8 %i.ao, 63
  %i.aq = or disjoint i8 %i.ap, -128
  %i.ar = load ptr, ptr %0, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !50
  %i.at = lshr i32 %1, 12
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 63
  %i.aw = or disjoint i8 %i.av, -128
  %i.ax = load ptr, ptr %0, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !50
  %i.az = lshr i32 %1, 18
  %i.ba = trunc nuw nsw i32 %i.az to i8
  %i.bb = or disjoint i8 %i.ba, -16
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.sink = phi i8 [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit17 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit18 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit16 ]
  %i.bc = load ptr, ptr %0, align 8, !tbaa !78
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json6Reader27decodeUnicodeEscapeSequenceERNS0_5TokenERPKcS4_Rj(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !117    ; 6 uses
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %i.f, 4
  br i1 %i.g, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 60, ptr %i.b, align 8, !tbaa !113
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !78
  %i.j = load i64, ptr %i.b, align 8, !tbaa !113  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.i, ptr noundef nonnull align 1 dereferenceable(60) @.str.17, i64 60, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.m = load ptr, ptr %2, align 8, !tbaa !117
  %i.n = invoke noundef zeroext i1 @_ZN4Json6Reader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.m)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.h, align 8, !tbaa !50
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !50
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.c
  %.pn48 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !117
  %i.z = load i8, ptr %i.c, align 1, !tbaa !50    ; 4 uses
  %7 = zext nneg i8 %i.z to i32
  %i.aa = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.aa, 10
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add i8 %i.z, -97
  %or.cond5 = icmp ult i8 %i.ab, 6
  br i1 %or.cond5, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add i8 %i.z, -65
  %or.cond8 = icmp ult i8 %i.ac, 6
  br i1 %or.cond8, label %bb.j, label %.noexc.i55

.noexc.i55:                                       ; preds = %bb.x, %bb.r, %bb.l, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 66, ptr %i.a, align 8, !tbaa !113
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.h   ; 3 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.ae, ptr %6, align 8, !tbaa !78
  %i.af = load i64, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.ae, ptr noundef nonnull align 1 dereferenceable(66) @.str.18, i64 66, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ai = load ptr, ptr %2, align 8, !tbaa !117
  %i.aj = invoke noundef zeroext i1 @_ZN4Json6Reader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(267) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ai)
          to label %.critedge unwind label %bb.i  ; 0 uses

.critedge:                                        ; preds = %.noexc56
  %i.ak = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.critedge
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %.loopexit

bb.h:                                             ; preds = %.noexc.i55
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.i:                                             ; preds = %.noexc56
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ad
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink74 = phi i32 [ -48, %bb.e ], [ -87, %bb.f ], [ -55, %bb.g ]
  %i.au = add nsw i32 %.sink74, %7                ; 2 uses
  store i32 %i.au, ptr %4, align 4, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !117
  %i.aw = load i8, ptr %i.y, align 1, !tbaa !50   ; 4 uses
  %i.ax = shl nuw nsw i32 %i.au, 4                ; 4 uses
  store i32 %i.ax, ptr %4, align 4, !tbaa !101
  %i.ay = sext i8 %i.aw to i32                    ; 3 uses
  %i.az = add i8 %i.aw, -48
  %or.cond.1 = icmp ult i8 %i.az, 10
  br i1 %or.cond.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.aw, -97
  %or.cond5.1 = icmp ult i8 %i.ba, 6
  br i1 %or.cond5.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add i8 %i.aw, -65
  %or.cond8.1 = icmp ult i8 %i.bb, 6
  br i1 %or.cond8.1, label %bb.m, label %.noexc.i55

bb.m:                                             ; preds = %bb.l
  %i.bc = add nuw nsw i32 %i.ax, %i.ay
  %i.bd = add nsw i32 %i.bc, -55
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.be = add nuw nsw i32 %i.ax, %i.ay
  %i.bf = add nsw i32 %i.be, -87
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bg = add nsw i32 %i.ay, -48
  %i.bh = or disjoint i32 %i.ax, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink = phi i32 [ %i.bh, %bb.o ], [ %i.bf, %bb.n ], [ %i.bd, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %i.bi, ptr %2, align 8, !tbaa !117
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !50  ; 4 uses
  %i.bk = shl nuw nsw i32 %.sink, 4               ; 4 uses
  store i32 %i.bk, ptr %4, align 4, !tbaa !101
  %i.bl = sext i8 %i.bj to i32                    ; 3 uses
  %i.bm = add i8 %i.bj, -48
  %or.cond.2 = icmp ult i8 %i.bm, 10
  br i1 %or.cond.2, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add i8 %i.bj, -97
  %or.cond5.2 = icmp ult i8 %i.bn, 6
  br i1 %or.cond5.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = add i8 %i.bj, -65
  %or.cond8.2 = icmp ult i8 %i.bo, 6
  br i1 %or.cond8.2, label %bb.s, label %.noexc.i55

bb.s:                                             ; preds = %bb.r
  %i.bp = add nuw nsw i32 %i.bk, %i.bl
  %i.bq = add nsw i32 %i.bp, -55
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.br = add nuw nsw i32 %i.bk, %i.bl
  %i.bs = add nsw i32 %i.br, -87
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bt = add nsw i32 %i.bl, -48
  %i.bu = or disjoint i32 %i.bk, %i.bt
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink75 = phi i32 [ %i.bu, %bb.u ], [ %i.bs, %bb.t ], [ %i.bq, %bb.s ] ; 2 uses
  store i32 %.sink75, ptr %4, align 4, !tbaa !101
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.bv, ptr %2, align 8, !tbaa !117
  %i.bw = load i8, ptr %i.bi, align 1, !tbaa !50  ; 4 uses
  %i.bx = shl nuw nsw i32 %.sink75, 4             ; 4 uses
  store i32 %i.bx, ptr %4, align 4, !tbaa !101
  %i.by = sext i8 %i.bw to i32                    ; 3 uses
  %i.bz = add i8 %i.bw, -48
  %or.cond.3 = icmp ult i8 %i.bz, 10
  br i1 %or.cond.3, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add i8 %i.bw, -97
  %or.cond5.3 = icmp ult i8 %i.ca, 6
  br i1 %or.cond5.3, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = add i8 %i.bw, -65
  %or.cond8.3 = icmp ult i8 %i.cb, 6
  br i1 %or.cond8.3, label %bb.y, label %.noexc.i55

bb.y:                                             ; preds = %bb.x
  %i.cc = add nuw nsw i32 %i.bx, %i.by
  %i.cd = add nsw i32 %i.cc, -55
  store i32 %i.cd, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.ce = add nuw nsw i32 %i.bx, %i.by
  %i.cf = add nsw i32 %i.ce, -87
  store i32 %i.cf, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.aa:                                            ; preds = %bb.v
  %i.cg = add nsw i32 %i.by, -48
  %i.ch = or disjoint i32 %i.bx, %i.cg
  store i32 %i.ch, ptr %4, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  ret i1 %.3

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn48.pn
end_hunk_1
begin_hunk_2_@_ZN4Json9OurReader9readTokenERNS0_5TokenE:bb.a
  store i32 10, ptr %1, align 8, !tbaa !170
  %i.dm = ptrtoint ptr %i.c to i64
  %i.dn = ptrtoint ptr %i.j to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp slt i64 %i.do, 2
  br i1 %i.dp, label %.critedge, label %.preheader.i48.preheader

.preheader.i48.preheader:                         ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !50
  %.not10.i51 = icmp eq i8 %i.dr, 78
  br i1 %.not10.i51, label %.preheader.i48.1, label %.critedge

.preheader.i48.1:                                 ; preds = %.preheader.i48.preheader
  %i.ds = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i51.1 = icmp eq i8 %i.ds, 97
  br i1 %.not10.i51.1, label %.preheader.i48.2, label %.critedge

.preheader.i48.2:                                 ; preds = %.preheader.i48.1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !159
  br label %.critedge24

bb.ac:                                            ; preds = %_ZN4Json9OurReader11getNextCharEv.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !468, !range !80, !noundef !81
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  store i32 11, ptr %1, align 8, !tbaa !170
  %i.dx = ptrtoint ptr %i.c to i64
  %i.dy = ptrtoint ptr %i.j to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp slt i64 %i.dz, 7
  br i1 %i.ea, label %.critedge, label %.preheader.i54.preheader

.preheader.i54.preheader:                         ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !50
  %.not10.i57 = icmp eq i8 %i.ec, 121
  br i1 %.not10.i57, label %.preheader.i54.1, label %.critedge

.preheader.i54.1:                                 ; preds = %.preheader.i54.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !50
  %.not10.i57.1 = icmp eq i8 %i.ee, 116
  br i1 %.not10.i57.1, label %.preheader.i54.2, label %.critedge

.preheader.i54.2:                                 ; preds = %.preheader.i54.1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !50
  %.not10.i57.2 = icmp eq i8 %i.eg, 105
  br i1 %.not10.i57.2, label %.preheader.i54.3, label %.critedge

.preheader.i54.3:                                 ; preds = %.preheader.i54.2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !50
  %.not10.i57.3 = icmp eq i8 %i.ei, 110
  br i1 %.not10.i57.3, label %.preheader.i54.4, label %.critedge

.preheader.i54.4:                                 ; preds = %.preheader.i54.3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !50
  %.not10.i57.4 = icmp eq i8 %i.ek, 105
  br i1 %.not10.i57.4, label %.preheader.i54.5, label %.critedge

.preheader.i54.5:                                 ; preds = %.preheader.i54.4
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !50
  %.not10.i57.5 = icmp eq i8 %i.em, 102
  br i1 %.not10.i57.5, label %.preheader.i54.6, label %.critedge

.preheader.i54.6:                                 ; preds = %.preheader.i54.5
  %i.en = load i8, ptr %i.j, align 1, !tbaa !50
  %.not10.i57.6 = icmp eq i8 %i.en, 110
  br i1 %.not10.i57.6, label %.preheader.i54.7, label %.critedge

.preheader.i54.7:                                 ; preds = %.preheader.i54.6
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.eo, ptr %i.a, align 8, !tbaa !159
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
  %i.ep = tail call noundef zeroext i1 @_ZN4Json9OurReader11readCommentEv(ptr noundef nonnull align 8 dereferenceable(281) %0)
  br i1 %i.ep, label %.critedge24, label %.critedge

.critedge:                                        ; preds = %_ZN4Json9OurReader11getNextCharEv.exit5.i, %.preheader.i54.preheader, %.preheader.i54.1, %.preheader.i54.2, %.preheader.i54.3, %.preheader.i54.4, %.preheader.i54.5, %.preheader.i54.6, %.preheader.i48.preheader, %.preheader.i48.1, %.preheader.i42.preheader, %.preheader.i42.1, %.preheader.i42.2, %.preheader.i36.preheader, %.preheader.i36.1, %.preheader.i36.2, %.preheader.i36.3, %.preheader.i30.preheader, %.preheader.i30.1, %.preheader.i30.2, %.preheader.i.preheader, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.5, %.preheader.i.6, %bb.ad, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.g, %.split, %bb.ac, %bb.aa, %bb.v, %_ZN4Json9OurReader11getNextCharEv.exit, %_ZN4Json9OurReader10readStringEv.exit
  store i32 16, ptr %1, align 8, !tbaa !170
  br label %.critedge24

..critedge24.loopexit107_crit_edge:               ; preds = %.lr.ph118
  br label %.critedge24, !llvm.loop !15

.critedge24:                                      ; preds = %bb.l, %.lr.ph.i28, %.lr.ph49.i, %_ZN4Json9OurReader11getNextCharEv.exit.i, %bb.k, %.lr.ph.i28.preheader, %.lr.ph49.i.preheader, %..critedge24.loopexit107_crit_edge, %.preheader.i36.4, %.preheader.i54.7, %.preheader.i30.3, %.preheader.i42.3, %.preheader.i.7, %.preheader.i48.2, %.split, %.thread.i, %bb.r, %bb.p, %.loopexit44.i, %bb.n, %bb.ae, %bb.c, %bb.d, %bb.e, %bb.f, %bb.u, %_ZN4Json9OurReader11getNextCharEv.exit.thread, %bb.af, %.critedge, %_ZN4Json9OurReader10readStringEv.exit
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !172
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
  %.lcssa = phi i8 [ 34, %_ZN4Json9OurReader11getNextCharEv.exit ], [ %i.f, %_ZN4Json9OurReader11getNextCharEv.exit5 ]
  %i.j = icmp eq i8 %.lcssa, 34
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
  %.lcssa = phi i8 [ 39, %_ZN4Json9OurReader11getNextCharEv.exit ], [ %i.f, %_ZN4Json9OurReader11getNextCharEv.exit5 ]
  %i.j = icmp eq i8 %.lcssa, 39
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
  br i1 %i.l, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread31, label %_ZN4Json9OurReader17readCStyleCommentEv.exit

bb.e:                                             ; preds = %_ZN4Json9OurReader11getNextCharEv.exit.i16
  %.ptr67 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add62 ; 2 uses
  %.not.i15 = icmp eq ptr %.ptr67, %i.e
  br i1 %.not.i15, label %_ZN4Json9OurReader17readCStyleCommentEv.exit.thread, label %_ZN4Json9OurReader11getNextCharEv.exit.i16

_ZN4Json9OurReader11getNextCharEv.exit.i16:       ; preds = %.preheader, %bb.e
  %.ptr6782 = phi ptr [ %.ptr67, %bb.e ], [ %.ptr6779, %.preheader ]
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
end_hunk_2
begin_hunk_3_@_ZN4Json9OurReader22decodeUnicodeCodePointERNS0_5TokenERPKcS4_Rj:bb.a
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.f
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !50
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.e
  %.pn31 = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !117
  %i.ad = load i8, ptr %i.g, align 1, !tbaa !50
  %i.ae = icmp eq i8 %i.ad, 92
  br i1 %i.ae, label %bb.h, label %.noexc.i38

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.af, ptr %2, align 8, !tbaa !117
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !50
  %i.ah = icmp eq i8 %i.ag, 117
  br i1 %i.ah, label %bb.i, label %.noexc.i38

bb.i:                                             ; preds = %bb.h
  %i.ai = call noundef zeroext i1 @_ZN4Json9OurReader27decodeUnicodeEscapeSequenceERNS0_5TokenERPKcS4_Rj(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.ai, label %bb.m, label %.thread

.noexc.i38:                                       ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 79, ptr %i.a, align 8, !tbaa !113
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc39 unwind label %bb.k   ; 3 uses

.noexc39:                                         ; preds = %.noexc.i38
  store ptr %i.ak, ptr %6, align 8, !tbaa !78
  %i.al = load i64, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %i.ak, ptr noundef nonnull align 1 dereferenceable(79) @.str.16, i64 79, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ao = load ptr, ptr %2, align 8, !tbaa !117
  %i.ap = invoke noundef zeroext i1 @_ZN4Json9OurReader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ao)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %.noexc39
  %i.aq = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.j
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %.thread

bb.k:                                             ; preds = %.noexc.i38
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.l:                                             ; preds = %.noexc39
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aj
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.l
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !50
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.av, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.o

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %4, align 4, !tbaa !101
  %i.bb = shl i32 %i.ba, 10
  %i.bc = and i32 %i.bb, 1047552
  %i.bd = add nuw nsw i32 %i.bc, 65536
  %i.be = load i32, ptr %i.c, align 4, !tbaa !101
  %i.bf = and i32 %i.be, 1023
  %i.bg = or disjoint i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %4, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.m, %.thread, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.128 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ], [ false, %.thread ], [ true, %bb.m ], [ true, %bb.b ]
  ret i1 %.128

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ]
  resume { ptr, i32 } %.pn31.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4Json9OurReader27decodeUnicodeEscapeSequenceERNS0_5TokenERPKcS4_Rj(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !117    ; 6 uses
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %i.f, 4
  br i1 %i.g, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 60, ptr %i.b, align 8, !tbaa !113
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !78
  %i.j = load i64, ptr %i.b, align 8, !tbaa !113  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.i, ptr noundef nonnull align 1 dereferenceable(60) @.str.17, i64 60, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.m = load ptr, ptr %2, align 8, !tbaa !117
  %i.n = invoke noundef zeroext i1 @_ZN4Json9OurReader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.m)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.h, align 8, !tbaa !50
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !50
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.c
  %.pn48 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !117
  %i.z = load i8, ptr %i.c, align 1, !tbaa !50    ; 4 uses
  %7 = zext nneg i8 %i.z to i32
  %i.aa = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.aa, 10
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add i8 %i.z, -97
  %or.cond5 = icmp ult i8 %i.ab, 6
  br i1 %or.cond5, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add i8 %i.z, -65
  %or.cond8 = icmp ult i8 %i.ac, 6
  br i1 %or.cond8, label %bb.j, label %.noexc.i55

.noexc.i55:                                       ; preds = %bb.x, %bb.r, %bb.l, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ad, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 66, ptr %i.a, align 8, !tbaa !113
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.h   ; 3 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.ae, ptr %6, align 8, !tbaa !78
  %i.af = load i64, ptr %i.a, align 8, !tbaa !113 ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.ae, ptr noundef nonnull align 1 dereferenceable(66) @.str.18, i64 66, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ah, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ai = load ptr, ptr %2, align 8, !tbaa !117
  %i.aj = invoke noundef zeroext i1 @_ZN4Json9OurReader8addErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_5TokenEPKc(ptr noundef nonnull align 8 dereferenceable(281) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ai)
          to label %.critedge unwind label %bb.i  ; 0 uses

.critedge:                                        ; preds = %.noexc56
  %i.ak = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %.critedge
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %.loopexit

bb.h:                                             ; preds = %.noexc.i55
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.i:                                             ; preds = %.noexc56
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ad
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !50
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink74 = phi i32 [ -48, %bb.e ], [ -87, %bb.f ], [ -55, %bb.g ]
  %i.au = add nsw i32 %.sink74, %7                ; 2 uses
  store i32 %i.au, ptr %4, align 4, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !117
  %i.aw = load i8, ptr %i.y, align 1, !tbaa !50   ; 4 uses
  %i.ax = shl nuw nsw i32 %i.au, 4                ; 4 uses
  store i32 %i.ax, ptr %4, align 4, !tbaa !101
  %i.ay = sext i8 %i.aw to i32                    ; 3 uses
  %i.az = add i8 %i.aw, -48
  %or.cond.1 = icmp ult i8 %i.az, 10
  br i1 %or.cond.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.aw, -97
  %or.cond5.1 = icmp ult i8 %i.ba, 6
  br i1 %or.cond5.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = add i8 %i.aw, -65
  %or.cond8.1 = icmp ult i8 %i.bb, 6
  br i1 %or.cond8.1, label %bb.m, label %.noexc.i55

bb.m:                                             ; preds = %bb.l
  %i.bc = add nuw nsw i32 %i.ax, %i.ay
  %i.bd = add nsw i32 %i.bc, -55
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.be = add nuw nsw i32 %i.ax, %i.ay
  %i.bf = add nsw i32 %i.be, -87
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bg = add nsw i32 %i.ay, -48
  %i.bh = or disjoint i32 %i.ax, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink = phi i32 [ %i.bh, %bb.o ], [ %i.bf, %bb.n ], [ %i.bd, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %i.bi, ptr %2, align 8, !tbaa !117
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !50  ; 4 uses
  %i.bk = shl nuw nsw i32 %.sink, 4               ; 4 uses
  store i32 %i.bk, ptr %4, align 4, !tbaa !101
  %i.bl = sext i8 %i.bj to i32                    ; 3 uses
  %i.bm = add i8 %i.bj, -48
  %or.cond.2 = icmp ult i8 %i.bm, 10
  br i1 %or.cond.2, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = add i8 %i.bj, -97
  %or.cond5.2 = icmp ult i8 %i.bn, 6
  br i1 %or.cond5.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = add i8 %i.bj, -65
  %or.cond8.2 = icmp ult i8 %i.bo, 6
  br i1 %or.cond8.2, label %bb.s, label %.noexc.i55

bb.s:                                             ; preds = %bb.r
  %i.bp = add nuw nsw i32 %i.bk, %i.bl
  %i.bq = add nsw i32 %i.bp, -55
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.br = add nuw nsw i32 %i.bk, %i.bl
  %i.bs = add nsw i32 %i.br, -87
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bt = add nsw i32 %i.bl, -48
  %i.bu = or disjoint i32 %i.bk, %i.bt
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink75 = phi i32 [ %i.bu, %bb.u ], [ %i.bs, %bb.t ], [ %i.bq, %bb.s ] ; 2 uses
  store i32 %.sink75, ptr %4, align 4, !tbaa !101
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.bv, ptr %2, align 8, !tbaa !117
  %i.bw = load i8, ptr %i.bi, align 1, !tbaa !50  ; 4 uses
  %i.bx = shl nuw nsw i32 %.sink75, 4             ; 4 uses
  store i32 %i.bx, ptr %4, align 4, !tbaa !101
  %i.by = sext i8 %i.bw to i32                    ; 3 uses
  %i.bz = add i8 %i.bw, -48
  %or.cond.3 = icmp ult i8 %i.bz, 10
  br i1 %or.cond.3, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add i8 %i.bw, -97
  %or.cond5.3 = icmp ult i8 %i.ca, 6
  br i1 %or.cond5.3, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = add i8 %i.bw, -65
  %or.cond8.3 = icmp ult i8 %i.cb, 6
  br i1 %or.cond8.3, label %bb.y, label %.noexc.i55

bb.y:                                             ; preds = %bb.x
  %i.cc = add nuw nsw i32 %i.bx, %i.by
  %i.cd = add nsw i32 %i.cc, -55
  store i32 %i.cd, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.ce = add nuw nsw i32 %i.bx, %i.by
  %i.cf = add nsw i32 %i.ce, -87
  store i32 %i.cf, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.aa:                                            ; preds = %bb.v
  %i.cg = add nsw i32 %i.by, -48
  %i.ch = or disjoint i32 %i.bx, %i.cg
  store i32 %i.ch, ptr %4, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  ret i1 %.3

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn48.pn
end_hunk_3
begin_hunk_4_@_ZNK4Json4Path7resolveERKNS_5ValueES3_:bb.a
bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.01939, i64 8
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 255
  %i.z = icmp eq i16 %i.y, 7
  br i1 %i.z, label %bb.f, label %.thread32

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %.sroa.024.038, align 8, !tbaa !78 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %i.ae = tail call noundef ptr @_ZNK4Json5Value4findEPKcS2_(ptr noundef nonnull readonly align 8 dereferenceable(32) %.01939, ptr noundef %i.aa, ptr noundef %i.ad) ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  %i.af = icmp eq ptr %i.ae, @_ZN4JsonL5kNullE
  %i.ag = or i1 %.not.i, %i.af
  br i1 %i.ag, label %.thread32, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f, %bb.d
  %.2.ph = phi ptr [ %.01939, %.lr.ph ], [ %i.ae, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !238
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %.thread32, label %.lr.ph, !llvm.loop !587

.thread32:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %_ZNK4Json5Value12isValidIndexEj.exit, %bb.c, %bb.a
  %.sink = phi ptr [ %2, %bb.a ], [ %3, %bb.e ], [ %3, %bb.b ], [ %3, %bb.f ], [ %3, %bb.c ], [ %3, %_ZNK4Json5Value12isValidIndexEj.exit ], [ %.2.ph, %bb.g ]
  tail call void @_ZN4Json5ValueC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4Json4Path4makeERNS_5ValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !238
  %.not15 = icmp eq ptr %i.a, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %bb.d ]
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.017 = phi ptr [ %.1, %bb.d ], [ %1, %bb.a ]   ; 3 uses
  %.sroa.012.016 = phi ptr [ %i.n, %bb.d ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !236
  switch i32 %i.e, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !235
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5ValueixEj(ptr noundef nonnull align 8 dereferenceable(32) %.017, i32 noundef %i.g)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %.sroa.012.016, align 8, !tbaa !78 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Json5Value16resolveReferenceEPKcS2_(ptr noundef nonnull align 8 dereferenceable(32) %.017, ptr noundef %i.i, ptr noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %.017, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !238
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !588
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  tail call void @_ZN4Json13valueToStringB5cxx11Ex(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Ej(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [25 x i8], align 16               ; 3 uses
  %i.c = zext i32 %1 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40, !noalias !591
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !50, !noalias !591
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %i.e = urem i64 %.0.i.i, 10
  %i.f = trunc nuw nsw i64 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !tbaa !50, !noalias !591
  %i.i = udiv i64 %.0.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.0.i.i, 10
  br i1 %.not.i.i, label %bb.c, label %bb.b, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !46, !alias.scope !591
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #40, !noalias !591 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !591
  store i64 %i.k, ptr %i.a, align 8, !tbaa !113, !noalias !591
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !78, !alias.scope !591
  %i.n = load i64, ptr %i.a, align 8, !tbaa !113, !noalias !591
  store i64 %i.n, ptr %i.j, align 8, !tbaa !50, !alias.scope !591
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc.i.i ], [ %i.j, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4Json13valueToStringB5cxx11Ey.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !50, !noalias !591
  store i8 %i.p, ptr %i.o, align 1, !tbaa !50
  br label %_ZN4Json13valueToStringB5cxx11Ey.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4Json13valueToStringB5cxx11Ey.exit

_ZN4Json13valueToStringB5cxx11Ey.exit:            ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.q = load i64, ptr %i.a, align 8, !tbaa !113, !noalias !591 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !49, !alias.scope !591
  %i.s = load ptr, ptr %0, align 8, !tbaa !78, !alias.scope !591
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40, !noalias !591
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Json13valueToStringB5cxx11Edbj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 53 uses
  %i.c = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 6, ptr noundef nonnull @.str.77, i32 noundef %3) #40 ; 0 uses
  %i.e = tail call double @llvm.fabs.f64(double %1)
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull %i.c, double noundef %1) #40
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp uno double %1, 0.000000e+00
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = select i1 %2, ptr @.str.78, ptr @.str.79
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull %i.i) #40
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = fcmp olt double %1, 0.000000e+00
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = select i1 %2, ptr @.str.80, ptr @.str.81
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull %i.l) #40
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = select i1 %2, ptr @.str.82, ptr @.str.83
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull %i.n) #40
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.m, %bb.f ], [ %i.o, %bb.g ] ; 5 uses
  %i.p = sext i32 %.0 to i64                      ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  %i.r = icmp sgt i32 %.0, 0
  br i1 %i.r, label %iter.check, label %_ZN4JsonL16fixNumericLocaleEPcS0_.exit

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i32 %.0, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i32 %.0, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.p, 2147483616               ; 4 uses
  %i.s = getelementptr i8, ptr %i.b, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue106
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue106 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %i.b, i64 %index
  %next.gep14 = getelementptr i8, ptr %i.t, i64 1
  %i.u = getelementptr i8, ptr %i.b, i64 %index
  %next.gep15 = getelementptr i8, ptr %i.u, i64 2
  %i.v = getelementptr i8, ptr %i.b, i64 %index
  %next.gep16 = getelementptr i8, ptr %i.v, i64 3
  %i.w = getelementptr i8, ptr %i.b, i64 %index
  %next.gep17 = getelementptr i8, ptr %i.w, i64 4
  %i.x = getelementptr i8, ptr %i.b, i64 %index
  %next.gep18 = getelementptr i8, ptr %i.x, i64 5
  %i.y = getelementptr i8, ptr %i.b, i64 %index
  %next.gep19 = getelementptr i8, ptr %i.y, i64 6
  %i.z = getelementptr i8, ptr %i.b, i64 %index
  %next.gep20 = getelementptr i8, ptr %i.z, i64 7
  %i.aa = getelementptr i8, ptr %i.b, i64 %index
  %next.gep21 = getelementptr i8, ptr %i.aa, i64 8
  %i.ab = getelementptr i8, ptr %i.b, i64 %index
  %next.gep22 = getelementptr i8, ptr %i.ab, i64 9
  %i.ac = getelementptr i8, ptr %i.b, i64 %index
  %next.gep23 = getelementptr i8, ptr %i.ac, i64 10
  %i.ad = getelementptr i8, ptr %i.b, i64 %index
  %next.gep24 = getelementptr i8, ptr %i.ad, i64 11
  %i.ae = getelementptr i8, ptr %i.b, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 12
  %i.af = getelementptr i8, ptr %i.b, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.af, i64 13
  %i.ag = getelementptr i8, ptr %i.b, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.ag, i64 14
  %i.ah = getelementptr i8, ptr %i.b, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.ah, i64 15
  %i.ai = getelementptr i8, ptr %i.b, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.ai, i64 16
  %i.aj = getelementptr i8, ptr %i.b, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.aj, i64 17
  %i.ak = getelementptr i8, ptr %i.b, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.ak, i64 18
  %i.al = getelementptr i8, ptr %i.b, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.al, i64 19
  %i.am = getelementptr i8, ptr %i.b, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.am, i64 20
  %i.an = getelementptr i8, ptr %i.b, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.an, i64 21
  %i.ao = getelementptr i8, ptr %i.b, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.ao, i64 22
  %i.ap = getelementptr i8, ptr %i.b, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.ap, i64 23
  %i.aq = getelementptr i8, ptr %i.b, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.aq, i64 24
  %i.ar = getelementptr i8, ptr %i.b, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.ar, i64 25
  %i.as = getelementptr i8, ptr %i.b, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.as, i64 26
  %i.at = getelementptr i8, ptr %i.b, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.at, i64 27
  %i.au = getelementptr i8, ptr %i.b, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.au, i64 28
  %i.av = getelementptr i8, ptr %i.b, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.av, i64 29
  %i.aw = getelementptr i8, ptr %i.b, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.aw, i64 30
  %i.ax = getelementptr i8, ptr %i.b, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.ax, i64 31
  %wide.load = load <32 x i8>, ptr %next.gep, align 16, !tbaa !50
  %i.ay = icmp eq <32 x i8> %wide.load, splat (i8 44) ; 32 uses
  %i.az = extractelement <32 x i1> %i.ay, i64 0
  br i1 %i.az, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 46, ptr %next.gep, align 16, !tbaa !50
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ba = extractelement <32 x i1> %i.ay, i64 1
  br i1 %i.ba, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue
  store i8 46, ptr %next.gep14, align 1, !tbaa !50
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue
  %i.bb = extractelement <32 x i1> %i.ay, i64 2
  br i1 %i.bb, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  store i8 46, ptr %next.gep15, align 2, !tbaa !50
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.bc = extractelement <32 x i1> %i.ay, i64 3
  br i1 %i.bc, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  store i8 46, ptr %next.gep16, align 1, !tbaa !50
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.bd = extractelement <32 x i1> %i.ay, i64 4
  br i1 %i.bd, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  store i8 46, ptr %next.gep17, align 4, !tbaa !50
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.be = extractelement <32 x i1> %i.ay, i64 5
  br i1 %i.be, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  store i8 46, ptr %next.gep18, align 1, !tbaa !50
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.bf = extractelement <32 x i1> %i.ay, i64 6
  br i1 %i.bf, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  store i8 46, ptr %next.gep19, align 2, !tbaa !50
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.bg = extractelement <32 x i1> %i.ay, i64 7
  br i1 %i.bg, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  store i8 46, ptr %next.gep20, align 1, !tbaa !50
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.bh = extractelement <32 x i1> %i.ay, i64 8
  br i1 %i.bh, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  store i8 46, ptr %next.gep21, align 8, !tbaa !50
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.bi = extractelement <32 x i1> %i.ay, i64 9
  br i1 %i.bi, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  store i8 46, ptr %next.gep22, align 1, !tbaa !50
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.bj = extractelement <32 x i1> %i.ay, i64 10
  br i1 %i.bj, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  store i8 46, ptr %next.gep23, align 2, !tbaa !50
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bk = extractelement <32 x i1> %i.ay, i64 11
  br i1 %i.bk, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  store i8 46, ptr %next.gep24, align 1, !tbaa !50
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.bl = extractelement <32 x i1> %i.ay, i64 12
  br i1 %i.bl, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  store i8 46, ptr %next.gep25, align 4, !tbaa !50
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.bm = extractelement <32 x i1> %i.ay, i64 13
  br i1 %i.bm, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  store i8 46, ptr %next.gep26, align 1, !tbaa !50
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.bn = extractelement <32 x i1> %i.ay, i64 14
  br i1 %i.bn, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  store i8 46, ptr %next.gep27, align 2, !tbaa !50
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.bo = extractelement <32 x i1> %i.ay, i64 15
  br i1 %i.bo, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  store i8 46, ptr %next.gep28, align 1, !tbaa !50
  br label %pred.store.continue74
end_hunk_4
