Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbbitblb?download=true
inline.NumInlined: 154
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6icu_7816RBBITableBuilder12removeColumnEi:bb.a
  %i.g = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.06)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60
  tail call void @_ZN6icu_789UVector3215removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef %1)
  %i.j = add nuw nsw i32 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131
}

declare void @_ZN6icu_789UVector3215removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6icu_7816RBBITableBuilder18findDuplicateStateEPSt4pairIiiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call noundef i32 @_ZNK6icu_7814RBBISetBuilder20getNumCharCategoriesEv(ptr noundef nonnull align 8 dereferenceable(53) %i.g) ; 2 uses
  %i.i = add nsw i32 %i.d, -1                     ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !73     ; 3 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.split.us.us
  %i.n = phi i32 [ %.pre-phi, %._crit_edge.split.us.us ], [ %i.j, %.lr.ph.split.us.preheader ]
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.p = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %i.n) ; 4 uses
  %storemerge.in67.us = load i32, ptr %1, align 4, !tbaa !64
  %storemerge68.us = add nsw i32 %storemerge.in67.us, 1 ; 4 uses
  store i32 %storemerge68.us, ptr %i.l, align 4, !tbaa !74
  %i.q = icmp slt i32 %storemerge68.us, %i.d
  br i1 %i.q, label %.lr.ph70.us, label %._crit_edge.split.us.us

.lr.ph70.us:                                      ; preds = %.lr.ph.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.thread.thread.us.us, %.lr.ph70.us
  %storemerge69.us.us = phi i32 [ %storemerge68.us, %.lr.ph70.us ], [ %storemerge.us.us, %.thread.thread.us.us ]
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.w = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i32 noundef %storemerge69.us.us) ; 4 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65
  %.not.us.us = icmp eq i32 %i.x, %i.z
  br i1 %.not.us.us, label %bb.c, label %.thread.thread.us.us

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !66
  %.not51.us.us = icmp eq i32 %i.aa, %i.ac
  br i1 %.not51.us.us, label %bb.d, label %.thread.thread.us.us

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68
  %.not52.us.us = icmp eq i32 %i.ad, %i.af
  br i1 %.not52.us.us, label %.preheader.us.us, label %.thread.thread.us.us

.preheader.us.us:                                 ; preds = %bb.d
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = sext i32 %i.ai to i64
  %i.aq = sext i32 %i.an to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.preheader.us.us ] ; 5 uses
  %i.ar = icmp slt i64 %indvars.iv, %i.ap
  br i1 %i.ar, label %bb.f, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us.us:   ; preds = %bb.f, %bb.e
  %i.av = phi i32 [ %i.au, %bb.f ], [ 0, %bb.e ]  ; 3 uses
  %i.aw = icmp slt i64 %indvars.iv, %i.aq
  br i1 %i.aw, label %bb.g, label %_ZNK6icu_789UVector3210elementAtiEi.exit53.us.us

bb.g:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit53.us.us

_ZNK6icu_789UVector3210elementAtiEi.exit53.us.us: ; preds = %bb.g, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us
  %i.ba = phi i32 [ %i.az, %bb.g ], [ 0, %_ZNK6icu_789UVector3210elementAtiEi.exit.us.us ] ; 3 uses
  %i.bb = icmp eq i32 %i.av, %i.ba
  br i1 %i.bb, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit53.us.us
  %i.bc = load i32, ptr %1, align 4, !tbaa !73    ; 2 uses
  %i.bd = icmp eq i32 %i.av, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load i32, ptr %i.l, align 4, !tbaa !74
  %i.bf = icmp eq i32 %i.av, %i.be
  br i1 %i.bf, label %bb.j, label %.thread.thread.us.us

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load i32, ptr %i.l, align 4, !tbaa !74
  %i.bi = icmp eq i32 %i.ba, %i.bh
  br i1 %i.bi, label %bb.l, label %.thread.thread.us.us

bb.l:                                             ; preds = %bb.k, %bb.j, %_ZNK6icu_789UVector3210elementAtiEi.exit53.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.e, !llvm.loop !132

.thread.thread.us.us:                             ; preds = %bb.i, %bb.k, %bb.d, %bb.c, %bb.b
  %storemerge.in.us.us = load i32, ptr %i.l, align 4, !tbaa !64
  %storemerge.us.us = add nsw i32 %storemerge.in.us.us, 1 ; 3 uses
  store i32 %storemerge.us.us, ptr %i.l, align 4, !tbaa !74
  %i.bj = icmp slt i32 %storemerge.us.us, %i.d
  br i1 %i.bj, label %bb.b, label %._crit_edge.split.us.us.loopexit, !llvm.loop !133

._crit_edge.split.us.us.loopexit:                 ; preds = %.thread.thread.us.us
  %.pre81 = load i32, ptr %1, align 4, !tbaa !73
  %.pre82 = add nsw i32 %.pre81, 1
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.lr.ph.split.us
  %.pre-phi = phi i32 [ %.pre82, %._crit_edge.split.us.us.loopexit ], [ %storemerge68.us, %.lr.ph.split.us ] ; 3 uses
  store i32 %.pre-phi, ptr %1, align 4, !tbaa !73
  %i.bk = icmp slt i32 %.pre-phi, %i.i
  br i1 %i.bk, label %.lr.ph.split.us, label %.thread, !llvm.loop !134

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge.split
  %i.bl = phi i32 [ %.pre-phi84, %._crit_edge.split ], [ %i.j, %.lr.ph ]
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.bn = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i32 noundef %i.bl) ; 3 uses
  %storemerge.in67 = load i32, ptr %1, align 4, !tbaa !64
  %storemerge68 = add nsw i32 %storemerge.in67, 1 ; 4 uses
  store i32 %storemerge68, ptr %i.l, align 4, !tbaa !74
  %i.bo = icmp slt i32 %storemerge68, %i.d
  br i1 %i.bo, label %.lr.ph70, label %._crit_edge.split

.lr.ph70:                                         ; preds = %.lr.ph.split
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph70, %.thread.thread
  %storemerge69 = phi i32 [ %storemerge68, %.lr.ph70 ], [ %storemerge, %.thread.thread ]
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.bt = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, i32 noundef %storemerge69) ; 3 uses
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !65
  %.not = icmp eq i32 %i.bu, %i.bw
  br i1 %.not, label %bb.n, label %.thread.thread

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !66
  %.not51 = icmp eq i32 %i.bx, %i.bz
  br i1 %.not51, label %bb.o, label %.thread.thread

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %i.br, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !68
  %.not52 = icmp eq i32 %i.ca, %i.cc
  br i1 %.not52, label %.thread, label %.thread.thread

.thread.thread:                                   ; preds = %bb.o, %bb.n, %bb.m
  %storemerge.in = load i32, ptr %i.l, align 4, !tbaa !64
  %storemerge = add nsw i32 %storemerge.in, 1     ; 3 uses
  store i32 %storemerge, ptr %i.l, align 4, !tbaa !74
  %i.cd = icmp slt i32 %storemerge, %i.d
  br i1 %i.cd, label %bb.m, label %._crit_edge.split.loopexit, !llvm.loop !133

._crit_edge.split.loopexit:                       ; preds = %.thread.thread
  %.pre = load i32, ptr %1, align 4, !tbaa !73
  %.pre83 = add nsw i32 %.pre, 1
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %.lr.ph.split
  %.pre-phi84 = phi i32 [ %.pre83, %._crit_edge.split.loopexit ], [ %storemerge68, %.lr.ph.split ] ; 3 uses
  store i32 %.pre-phi84, ptr %1, align 4, !tbaa !73
  %i.ce = icmp slt i32 %.pre-phi84, %i.i
  br i1 %i.ce, label %.lr.ph.split, label %.thread, !llvm.loop !134

.thread:                                          ; preds = %._crit_edge.split, %bb.o, %._crit_edge.split.us.us, %bb.l, %bb.a
  %i.cf = phi i1 [ false, %._crit_edge.split.us.us ], [ true, %bb.l ], [ false, %bb.a ], [ true, %bb.o ], [ false, %._crit_edge.split ]
  ret i1 %i.cf
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6icu_7816RBBITableBuilder22findDuplicateSafeStateEPSt4pairIiiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !73     ; 2 uses
  %i.g = icmp slt i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph.a, label %.critedge52

.lr.ph.a:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.a, %.critedge
  %i.i = phi i32 [ %i.f, %.lr.ph.a ], [ %6, %.critedge ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %i.i) ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %storemerge.in.pre = load i32, ptr %1, align 4, !tbaa !64 ; 2 uses
  %storemerge108 = add nsw i32 %storemerge.in.pre, 1 ; 3 uses
  store i32 %storemerge108, ptr %i.h, align 4, !tbaa !74
  %.not109 = icmp slt i32 %storemerge108, %i.d
  br i1 %.not109, label %.lr.ph111, label %.critedge

.lr.ph111:                                        ; preds = %bb.b, %.thread
  %storemerge110 = phi i32 [ %storemerge, %.thread ], [ %storemerge108, %bb.b ]
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i32 noundef %storemerge110) ; 4 uses
  %i.n = load i16, ptr %2, align 8, !tbaa !75     ; 3 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = load i32, ptr %3, align 4
  %i.s = select i1 %i.o, i32 %i.r, i32 %i.q       ; 2 uses
  %.not5157 = icmp sgt i32 %i.s, 0
  br i1 %.not5157, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %.critedge52

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %.lr.ph111
  %i.t = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.t, 0
  %i.u = load ptr, ptr %5, align 8
  %i.v = select i1 %.not.i.i.i, ptr %i.u, ptr %4  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !75
  %.fr62 = freeze i16 %i.x                        ; 3 uses
  %i.y = icmp slt i16 %.fr62, 0
  %i.z = lshr i16 %.fr62, 5
  %i.aa = zext nneg i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = select i1 %i.y, i32 %i.ac, i32 %i.aa
  %i.ae = and i16 %.fr62, 2
  %.not.i.i.i47 = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ah = zext i32 %i.ad to i64                   ; 2 uses
  %wide.trip.count71 = zext nneg i32 %i.s to i64  ; 2 uses
  br i1 %.not.i.i.i47, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.us:      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %bb.h
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %bb.h ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv68
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !77 ; 2 uses
  %i.ak = zext i16 %i.aj to i32                   ; 2 uses
  %i.al = icmp samesign ult i64 %indvars.iv68, %i.ah
  br i1 %i.al, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.us

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv68
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !77
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit48.us

_ZNK6icu_7813UnicodeString6charAtEi.exit48.us:    ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %.0.i.i46.us = phi i16 [ %i.ao, %bb.c ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us ] ; 2 uses
  %i.ap = zext i16 %.0.i.i46.us to i32            ; 2 uses
  %i.aq = icmp eq i16 %i.aj, %.0.i.i46.us
  br i1 %i.aq, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit48.us
  %i.ar = load i32, ptr %1, align 4, !tbaa !73    ; 4 uses
  %i.as = icmp eq i32 %i.ar, %i.ak
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = load i32, ptr %i.h, align 4, !tbaa !74  ; 2 uses
  %i.au = icmp eq i32 %i.at, %i.ak
  br i1 %i.au, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = icmp eq i32 %i.ar, %i.ap
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load i32, ptr %i.h, align 4, !tbaa !74  ; 2 uses
  %i.ax = icmp eq i32 %i.aw, %i.ap
  br i1 %i.ax, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit48.us
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %.critedge52, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, !llvm.loop !135

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !77 ; 2 uses
  %i.ba = zext i16 %i.az to i32                   ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv, %i.ah
  br i1 %i.bb, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit48

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !77
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit48

_ZNK6icu_7813UnicodeString6charAtEi.exit48:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.i
  %.0.i.i46 = phi i16 [ %i.bd, %bb.i ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit ] ; 2 uses
  %i.be = zext i16 %.0.i.i46 to i32               ; 2 uses
  %i.bf = icmp eq i16 %i.az, %.0.i.i46
  br i1 %i.bf, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit48
  %i.bg = load i32, ptr %1, align 4, !tbaa !73    ; 4 uses
  %i.bh = icmp eq i32 %i.bg, %i.ba
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.h, align 4, !tbaa !74  ; 2 uses
  %i.bj = icmp eq i32 %i.bi, %i.ba
  br i1 %i.bj, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = icmp eq i32 %i.bg, %i.be
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !74  ; 2 uses
  %i.bm = icmp eq i32 %i.bl, %i.be
  br i1 %i.bm, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l, %_ZNK6icu_7813UnicodeString6charAtEi.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count71
  br i1 %exitcond.not, label %.critedge52, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, !llvm.loop !135

.thread:                                          ; preds = %bb.m, %bb.k, %bb.e, %bb.g
  %i.bn = phi i32 [ %i.ar, %bb.e ], [ %i.ar, %bb.g ], [ %i.bg, %bb.k ], [ %i.bg, %bb.m ]
  %storemerge.in74 = phi i32 [ %i.at, %bb.e ], [ %i.aw, %bb.g ], [ %i.bl, %bb.m ], [ %i.bi, %bb.k ]
  %storemerge = add nsw i32 %storemerge.in74, 1   ; 3 uses
  store i32 %storemerge, ptr %i.h, align 4, !tbaa !74
  %.not = icmp slt i32 %storemerge, %i.d
  br i1 %.not, label %.lr.ph111, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %.thread, %bb.b
  %.lcssa104 = phi i32 [ %storemerge.in.pre, %bb.b ], [ %i.bn, %.thread ]
  %6 = add nsw i32 %.lcssa104, 1                  ; 3 uses
  store i32 %6, ptr %1, align 4, !tbaa !73
  %i.bo = icmp slt i32 %6, %i.e
  br i1 %i.bo, label %bb.b, label %.critedge52, !llvm.loop !137

.critedge52:                                      ; preds = %.critedge, %.lr.ph111, %bb.n, %bb.h, %bb.a
  %i.bp = phi i1 [ true, %.lr.ph111 ], [ true, %bb.h ], [ true, %bb.n ], [ false, %bb.a ], [ false, %.critedge ]
  ret i1 %i.bp
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816RBBITableBuilder11removeStateESt4pairIiiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %.sroa.2.0.extract.trunc) ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %.sroa.2.0.extract.trunc)
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7819RBBIStateDescriptorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = tail call noundef i32 @_ZNK6icu_7814RBBISetBuilder20getNumCharCategoriesEv(ptr noundef nonnull align 8 dereferenceable(53) %i.k) ; 2 uses
  %i.m = icmp sgt i32 %i.h, 0
  br i1 %i.m, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.c
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph.us.preheader, label %.lr.ph29.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph29
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.02327.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.p = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef %.02327.us)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us, %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %_ZNK6icu_789UVector3210elementAtiEi.exit.us ] ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv, %i.u
  br i1 %i.v, label %bb.e, label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64
  br label %_ZNK6icu_789UVector3210elementAtiEi.exit.us

_ZNK6icu_789UVector3210elementAtiEi.exit.us:      ; preds = %bb.e, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]   ; 3 uses
  %i.ab = icmp eq i32 %i.aa, %.sroa.2.0.extract.trunc
  %i.ac = icmp sgt i32 %i.aa, %.sroa.2.0.extract.trunc
  %i.ad = sext i1 %i.ac to i32
  %spec.select.us = add nsw i32 %i.aa, %i.ad
  %.0.us = select i1 %i.ab, i32 %.sroa.0.0.extract.trunc, i32 %spec.select.us
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN6icu_789UVector3212setElementAtEii(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %.0.us, i32 noundef %i.ae)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond33.not, label %._crit_edge.us, label %bb.d, !llvm.loop !138

._crit_edge.us:                                   ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.us
  %i.af = add nuw nsw i32 %.02327.us, 1           ; 2 uses
  %exitcond34.not = icmp eq i32 %i.af, %i.h
  br i1 %exitcond34.not, label %._crit_edge30, label %.lr.ph.us, !llvm.loop !139

._crit_edge30:                                    ; preds = %.lr.ph29.split, %._crit_edge.us, %bb.c
  ret void

.lr.ph29.split:                                   ; preds = %.lr.ph29, %.lr.ph29.split
  %.02327 = phi i32 [ %i.ai, %.lr.ph29.split ], [ 0, %.lr.ph29 ] ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.ah = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i32 noundef %.02327) ; 0 uses
  %i.ai = add nuw nsw i32 %.02327, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.h
  br i1 %exitcond.not, label %._crit_edge30, label %.lr.ph29.split, !llvm.loop !139
}

declare void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7816RBBITableBuilder15removeSafeStateESt4pairIiiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i16
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %.sroa.2.0.extract.trunc)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph27, label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph27:                                         ; preds = %bb.a, %._crit_edge
  %.02225 = phi i32 [ %i.t, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.h = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i32 noundef %.02225) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph27
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %.lr.ph27
  %i.t = add nuw nsw i32 %.02225, 1               ; 2 uses
  %exitcond30.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond30.not, label %._crit_edge28, label %.lr.ph27, !llvm.loop !140

bb.b:                                             ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_7813UnicodeString6charAtEi.exit ] ; 4 uses
  %i.u = load i16, ptr %i.i, align 8, !tbaa !75   ; 3 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.n, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = and i16 %i.u, 2
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = select i1 %.not.i.i.i, ptr %i.ad, ptr %i.r
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !77
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b, %bb.c
  %.0.i.i = phi i16 [ %i.ag, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.ah = zext i16 %.0.i.i to i32                 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %.sroa.2.0.extract.trunc
  %i.aj = icmp sgt i32 %i.ah, %.sroa.2.0.extract.trunc
  %i.ak = sext i1 %i.aj to i16
  %spec.select = add i16 %.0.i.i, %i.ak
  %.0 = select i1 %i.ai, i16 %.sroa.0.0.extract.trunc, i16 %spec.select
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef %i.al, i16 noundef zeroext %.0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !141
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7816RBBITableBuilder21removeDuplicateStatesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i32 3, ptr %1, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !74
  %i.b = call noundef zeroext i1 @_ZN6icu_7816RBBITableBuilder18findDuplicateStateEPSt4pairIiiE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull %1)
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  tail call void @_ZN6icu_7816RBBITableBuilder11removeStateESt4pairIiiE(ptr noundef nonnull align 8 dereferenceable(52) %0, i64 %.sroa.0.0.copyload)
  %i.c = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.d = call noundef zeroext i1 @_ZN6icu_7816RBBITableBuilder18findDuplicateStateEPSt4pairIiiE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull %1)
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !142
end_hunk_0
